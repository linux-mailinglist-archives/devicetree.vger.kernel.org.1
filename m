Return-Path: <devicetree+bounces-139933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A9EA17932
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:18:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A0BD188396E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 08:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 292031B040A;
	Tue, 21 Jan 2025 08:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nokia.com header.i=@nokia.com header.b="VMRQpAnp"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11011025.outbound.protection.outlook.com [52.101.65.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAE6137E;
	Tue, 21 Jan 2025 08:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737447531; cv=fail; b=JEZsCD9SO9eBtTqKDIGGtNQTrLoNGkQkNvCOB+LJKEF5H176jLyk2ZvtjUrUtfwFyam+ch/ll5Qd6aetuUpmfEzf51D7ubJqOUkW3Gqw8jr482GAwGi6c8lo4KPVhWC2R0imIgivyapkdMrucmFgSfwDZ80TRDec3yMOrhPuQnw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737447531; c=relaxed/simple;
	bh=TUYQKLtvPWA4GTU7FoLhz/ZgD02RLraiMDrBifpupvI=;
	h=Message-ID:Date:From:Subject:To:Cc:Content-Type:MIME-Version; b=VPF497uNf9wLmh7WRraWx8Fsu3pCJgfloSUiBuAIUUniu3p+io4ulD22cdAKTfhwII7/f8CLqw+XPqUshwqmxlB0B/b3cbNsfg5Q/z0R0fJm6MVbOvcFV08U+ensfec4ldLQQgSmx3uWIPFTQUq9r9JOavhQnKo9PCsFzbwgNcY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nokia.com; spf=fail smtp.mailfrom=nokia.com; dkim=pass (2048-bit key) header.d=nokia.com header.i=@nokia.com header.b=VMRQpAnp; arc=fail smtp.client-ip=52.101.65.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nokia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nokia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XPr7cm4HzHVPpE/C2HIkRw+yYNn//zwO4BEILUmM8e1V90EVCa7M0ANC9Oqd4UXR1IKDsSZVSp+phuwFW+xWRW98aT+dAY5vRdZFyI0lAjY+GAWKtOldlfR1R/j4idw6eJL+6lRT8fAneKD0z1IDAGf5a9unhm424T1mSfyK5433KqHOKfbtmdMGeJU5iW1o21agxeRfrLKZsOjPlaV/bKyzgeLpT3cpdTStYrRQGfC35t5PwtucKK0/FxkEdjPCS+KnAkw5mZQGeLZ5IbGGWiXulijkYEtEJNSwvMXsUP4BsYD+O70lKtAw0dfUdoPxSq95NDO0nNRgNvCoQPwSMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TUYQKLtvPWA4GTU7FoLhz/ZgD02RLraiMDrBifpupvI=;
 b=Lf5gvIDrEWw1I3f4+K2uU0wM05jbS2Kbb/ctwouXqMz7rU309f4kLLZmsez3fOIVDDeWQhxiEIaHrBUwPTyR6HequQyN0hLbS88UiX2IKu5f4KjMDd2tI7MKbdzwbvsWO3aH2e0jb+2ugSQECyueN6Wh0JAMRQD87FCQwssyvO9rpUpi7HqYzLd9NjQ74ASgM6XUrr2w7NSaNEQ55++QSz545NkaqxCxNiOa8YybMr2MavyYUbpiaTOJSSk4Zf7bZqyeZOpQ3QnOUu7MEdouwGpghzAF+/hucn65FO3VBg0xnq66miQrpn6vCz0rqCdDBcmD9hx3y7A5qBPbss8laQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUYQKLtvPWA4GTU7FoLhz/ZgD02RLraiMDrBifpupvI=;
 b=VMRQpAnpmQqSJlThBRB2aN6k+2mbJHm9uIF0pzYEy5IBBhT9jckAPy095RkRSyWFShmm9I4p84fIGXEkejq/BDw6YfQ3tMmIVGHpXtmmLAR3xVAEmUqWdlDHr/dZsf0fIGLFh8R5ouvehh7FXj3IdxynTk2ddR0I8gMR+1YmkXw0OEvRW61iqTjlSmFtIY12PovdiBz/YtZN100b6zXbe0rMjNJK/5DCxI0MRmRoHEsKFmESWdrG+y8FqC0s1oBGSF2rSA1nTQ9Gto86MfshJpldNbn5J/LxlvgXMETei+pCC4PgG62xV9Lzt4wWynfN0BXX+WC3KjWcCC3bh0qcQA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nokia.com;
Received: from PAWPR07MB9688.eurprd07.prod.outlook.com (2603:10a6:102:383::17)
 by AS5PR07MB10106.eurprd07.prod.outlook.com (2603:10a6:20b:680::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Tue, 21 Jan
 2025 08:18:46 +0000
Received: from PAWPR07MB9688.eurprd07.prod.outlook.com
 ([fe80::6b9d:9c50:8fe6:b8c5]) by PAWPR07MB9688.eurprd07.prod.outlook.com
 ([fe80::6b9d:9c50:8fe6:b8c5%7]) with mapi id 15.20.8356.017; Tue, 21 Jan 2025
 08:18:46 +0000
Message-ID: <6592d024-8d43-4b0c-8036-16df2bac9446@nokia.com>
Date: Tue, 21 Jan 2025 09:18:44 +0100
User-Agent: Mozilla Thunderbird
From: Stefan Wiehler <stefan.wiehler@nokia.com>
Subject: Keep bootloader DTB when ACPI is enabled
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Language: en-US
Organization: Nokia
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::12) To PAWPR07MB9688.eurprd07.prod.outlook.com
 (2603:10a6:102:383::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAWPR07MB9688:EE_|AS5PR07MB10106:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f8aeace-2ea5-46ee-342d-08dd39f439be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?c1ZVRktZUksvOStabWJhWnV6aFJTbVFObjZXaWM1UDZXUURJUm1KMWxLbU5S?=
 =?utf-8?B?dHJKSk9hL1c5czF3NC9say91b1VOOTR2SC81bU5DbWpDOTUwN1Q0dTdUQXlT?=
 =?utf-8?B?ZmhGUWhrS1hhRjFkek5SMTltclB2SVVVY0dhQjZucndQdXN5Wmo1NCtYUXUw?=
 =?utf-8?B?eW11OG5GN2paMVN3NnJaZkdSVjdmVWdFc2EzK05SWkZJNkpvSXMwQ2JaODha?=
 =?utf-8?B?Y05mV0djMEhvZlpRZkRqZVJndWJzbW5Rc3l6QUF4UUpSLzRtSFpDWkZTYkhP?=
 =?utf-8?B?L1dUL1NHSVNSd2VTRStMaWxpNzRMYVZzNWFqU29hSkdLUE9FT0dqLzh1R1I4?=
 =?utf-8?B?Si94dkVYLzIxTGdIa3BTcEdycUxXSU15UFNLcVIzK3NNNVN0bFY2d0YxRkg4?=
 =?utf-8?B?cHRmRWpXMWVmeW5FeU90UHNXblFCcUk2ZGozUGxuZXVZbFJENFJmQkpWZGlX?=
 =?utf-8?B?dkJUdVNMbVRjS0psMnRqQ0NpSVN4VlVSWnhKbEs1WmJ3dVUwNVN0bDI2dXRC?=
 =?utf-8?B?eUFkY2tpa0VoMHJiWTlRSlo4NWdiRlIrVUdBTEhHY2tQT3FvMHMzYVd2bzdI?=
 =?utf-8?B?eWZOamhsbUlua0twTDR5UUsxT3FvWGFmVlhleW5sSVZzK0JHQ0NVZ2VtU2ky?=
 =?utf-8?B?T0x2Z3Y5aDJNeEFpTFgxY2tIbHpQemptMURKZXNmUStJYmdPejZrSHBZUTF5?=
 =?utf-8?B?V2JOekxmbS84bC9rcTBJRHFCWjBWUW5ya2tTWDAvMXBjQUg3cXZub2lVbkg4?=
 =?utf-8?B?bSt5TUw5TVp4ZHl3L2p6ZldFS2IxN21PWEtjT0ZyV1FHbmdzYUxCNkg2c0JE?=
 =?utf-8?B?b2pJR0VhejR6cnQ3eUZZSm9XYzBRZ1pEREJxSWZWa29weEY5ME9URE5HZUVs?=
 =?utf-8?B?ZE56WXJQL2psdWo0emJxZUYyL2wvQW43VHdCY2hvRmg1bFFES3ZIN2lWYVhW?=
 =?utf-8?B?bnByN3ZSTXQvcUdrVnpVT0hMZlQ0MnQ0SWZaSXZaQ1diYVZSVldEQ29ySVdo?=
 =?utf-8?B?aWF1MUNkVWtSSThUSCsyM0o4SWxBQ0dUUFdza3NkR3VKU2dFQjhQcTRCbEw4?=
 =?utf-8?B?QVE1bTEydXJ3akU5TzlaZ3A0a0RLOFBRcHc2YVB1QjFwdHc4VG11cjNBcnUv?=
 =?utf-8?B?dUlhR3FDQVo0RDYxWHB4RDNZM1lwbDErcWcvNi9jcCt6UndNRk9VdWswdHE1?=
 =?utf-8?B?bVpvS0c0QXlLNXd6d1RRMjlpc1pyOC95bWdMeVZjaDBjVUVrUGJRSWVJUnJY?=
 =?utf-8?B?OWVWN3BmcldVa3E5b1REQ0dZWUtXcEtBcHlPSnZSMGxuMGkyMk5CSk0rL2VR?=
 =?utf-8?B?b3g5cDlSQ0UvS3FaRjBsVzhqalZiZmE0NFh4QVVuY1pkbFdkSHM1Qm9uQXJ5?=
 =?utf-8?B?aWdRMThjbElsRkdQc1U1M0s2WnlvYzNHQmRKWEQ4RmlFMjhXV0YzVkZpTGtt?=
 =?utf-8?B?Y2s1ZENva1UydURRK0xGRXFSb0dHQU42OUlVVFdyRzZ5UU9aWHJIQ0JZSVF3?=
 =?utf-8?B?RzJVOUphNGJIbk1mUkNzcHA0WW42VDJ5RUpDRUNEVGRyTTZ5SXpTbkRTaDVo?=
 =?utf-8?B?ZDlwKzFQK3RyZXpuZFpIK2ZQUTRCRU1HNm9SdkpBdUhxL1hKY1g4WDVoaGxa?=
 =?utf-8?B?aVE2SFNrcXh5K1EyV2dvMGJTaDdraXhVSHpRNWw2eVVSejdMTzJBak9PdWk2?=
 =?utf-8?B?RTJZRjJLdTlvcUFYS2cyemJPcVFkVUhRc2kwdjVCaGdQMjQvSnJGMW14aDdy?=
 =?utf-8?B?bWs2VzVrSGF3bWxvZ3lsNXNJTVlzanNTeDZNbnR1cllhK0sxR0ZPelczVk41?=
 =?utf-8?B?c0s0bVh5OEo3djdidEFwZz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAWPR07MB9688.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?T2xSeUprYkl5Rk4rZ25uVXgxWlArQTU1WnZyTmFTa2hMVzVsN0ZKc3N5TGMz?=
 =?utf-8?B?cCs0MnJHNFA2UnhzeWpsNkd5Q3ZheTJoK1dXdU53dmVrYzdnYkJQY0c4SVZy?=
 =?utf-8?B?ZXdUZ1REOE9peDVLQ0FlT2tWbGh3N1NDbFpPOTBwM0ZXMUplU0pGQVFMRjhn?=
 =?utf-8?B?WWlUeGUveUUwM0RIWXk1bzhXejFoQ2oycytQT1J6Q3kxNlg5MXVaNk5IVkU0?=
 =?utf-8?B?OFROQ3VUWFdJYloyL1FJbFoxcTRwR08vN3FqWG51NG5jdlN5bFAxaE43Y0x1?=
 =?utf-8?B?S2VvNlhJSGJtVUtyaG9JK1o3a1MzLzE2UXYyaFBpdXF0aFNLTHMyZ0tJTm1V?=
 =?utf-8?B?UEFOZGxXaDJrQVpzdUE4enZoWDJBZWJPVGdha29qekc5NVQyYnp3QnRTYTBW?=
 =?utf-8?B?WXZMOC9JWTlQUG5qZVlQTjljM1IxcGVEVm56ZVNaTThNTGJWQWIvSHRJVDF3?=
 =?utf-8?B?VEdDMStxVXRzWXY2T3VBVFZIc2F3V1graHBjRGhieDE2Q2pwRnVucVZTbDlO?=
 =?utf-8?B?cG5hc2N6QnJKVkZjbTNSamIrd1hGMmZYVmFuRS9QMEtBQlVlOEkwQUhJN3Ru?=
 =?utf-8?B?NDl0aEsrZ3B5UFozQS9ZZG0vbVBNTFRCMHI5VVpodm9WN1ZQNFJCNVhUWUJI?=
 =?utf-8?B?MER5NHRnTzRDTm5TK2pqOE5aZmhUVWhUQTBUWWJFdUlQeHhxbGdyR2dhcG9p?=
 =?utf-8?B?ZnRkeVc5WjN1a2Q4Q0tYSVJOMzQ1WkYrZlZBL1BFTndEcndRaU1uRUVDZ3Fa?=
 =?utf-8?B?TGVRVWRxc3Zvb090dzlnZzMzNDkyZU5WeFZ5enJFRWlpbmpIR3lzeE5TQlBX?=
 =?utf-8?B?UUFZOTNqVWl3N0cvWGZxVHI3cGE4VXhtUGNZcllVcVM1c0ZrWEZ1VmNGM0I4?=
 =?utf-8?B?N0ZQQXJGQXZWb2RmYThzZnNHaGJBb3NYVFFBMTlRMDQzSjNvQjdHaDEwRFY3?=
 =?utf-8?B?TEJXcjJ0V05JTHBuODRMeG0wOGp4UXVHWDhaR3VmSFlGOGk2eXVnTlZMZG5q?=
 =?utf-8?B?VUNvcGdxeUFRNUFQN1V0OEtlbXVJVGFqWFNRVm5NalJHK0NDYS9QL3ozWkd3?=
 =?utf-8?B?aitRT0ZyNHkxSmc3QVVpRVBoMDI5WWNES2dleGlTVTN2d1dhOEZNZ1dBZ1E2?=
 =?utf-8?B?ckduN2dmd0YwVElkRUFrU2RaZ1BXcWlZbnJXYTNaMmQvbUc1MFM4ZUNvcTE3?=
 =?utf-8?B?NGZEZGZueFJhZ29QMTRHaFIyMGk5TENPYjkrUmtsN0VjaDU5aU9SRHFFNkl1?=
 =?utf-8?B?RXhZeG5LcTRmMUhnd1JocmdydXU5bmk1M1krZGpJRWViaDUzcklUZTA2cm5D?=
 =?utf-8?B?WmlBSnBCTzJ4bEJkbEhsWXluQS8ySlNKa2VkTFZUUU82aG9IZERFclpWRlhW?=
 =?utf-8?B?b0tEVzJCVUtZOURwaiswNlI2eXoxbndvV2JaMk5iWWQrdVpsa2xNOGx3MXJV?=
 =?utf-8?B?Lzg2cjE3dWxITW56MDdXd0J4eDI1cktDMm5zZFVsSTRDeWpHcyt5NGxXTmhi?=
 =?utf-8?B?aTZHVGFaeXpHdDRGVURVTytpTzdHRU9acWdBeXNmYU1NY2hGb0lOaTk3Qmor?=
 =?utf-8?B?VjFKUWtjODc0N3BwbTNFZUxKTWsybDEyREhvbTgvM0cvcXRGRUdsSjZBc3U0?=
 =?utf-8?B?aElPMlFMcGNxeHlVMmxYTmgyOGJyZHVRdkRDQXJzclQ5TzM1YUVFcEFzZDRW?=
 =?utf-8?B?TlJjZ2N1UE1OdWEzSHdiQm1HUlpodlAyS0wyR1ZRNnpVazcraHVGUHRPbG16?=
 =?utf-8?B?dFR3L2lLU0t3RWVlcEpFaDJkRVozNTF2WXdHL1lTdEJmWWZnamRxdDVzWHM2?=
 =?utf-8?B?UFZpYUh6ZWtFTTdocDBVd0hlYjBRMk5LdVQ2OVYrUEYzeDFQVHN4SzlQeEZX?=
 =?utf-8?B?alhqUmNYOG05ekljY2YzYTZwdXgxSFh0VHJyMEhLMkpxUEI1blFaaFN5bTkz?=
 =?utf-8?B?ZmxsaG1UUDFvanRjakFHZUxIbDd1Y0IrZ1VqRzJaTGo0VlU1YmFzMURhdGMr?=
 =?utf-8?B?dmZsUVZEOVVhbGJZUjlNV0g5cHBaSzIyY25LRXp1K3hTMmUwK2tVWk5iY0U3?=
 =?utf-8?B?emUwcXYyM2JudDZFaFRmU2g0VEJJYS9Rei9iTHJQMnVLWVJ1Z1E1NmV2Q0t0?=
 =?utf-8?B?QWh0TkI1d1ZZV2Q3UDhrT1lPUnlnMDZLaktWRHMzUSs1YmE5V3k0ZnBkTCtw?=
 =?utf-8?B?UkZkazl6UVdiMkRlVVhqUi9Ub0lZZTdQV2ZydWxyM1F2eWZCbitqczVsbUt6?=
 =?utf-8?B?Q1ZhaDh1WXRCOHgwZ2FVSE5zd0hRPT0=?=
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f8aeace-2ea5-46ee-342d-08dd39f439be
X-MS-Exchange-CrossTenant-AuthSource: PAWPR07MB9688.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 08:18:46.1446
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gNS4I07/HnDCr5CS/bLWiFYYCZtHPM5zOBp478om8O7vU8LF1bAxa2x0TwjIXUZXMvidF0D1xaOcgAooRb0FwY3vhsdMpAqugFKg3eiMRw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR07MB10106

Hi all,

We store various metadata (e.g. IDs and serial numbers) in the DT which must be
consistent over multiple product generations; therefore we enable CONFIG_OF
even when ACPI is used for boot. On such ACPI-based (i.e. x86) boards, ACPI is
used for boot while the DT holds only product-specific nodes not of any
interest to the core kernel. While this is currently not an issue on our 6.1
kernel, I noticed that commit 7b937cc243e5 ("of: Create of_root if no dtb
provided by firmware") drops the bootloader provided DTB if ACPI is not
disabled [1]. When one removes this check, several warnings are emitted because
register_lapic_address() and topology_register_boot_apic() are called from both
ACPI and DT initialization [2] [3].

As we need to maintain above use case for the foreseeable future, we would like
to introduce an alternate mode that keeps the bootloader provided DTB even if
ACPI is enabled, via e.g. a new command line parameter "acpi_keep_dtb".
Regarding above warnings, ACPI initialization should take precedence and we
would simply skip the following initialization from DT code if the
"acpi_keep_dtb" command line parameter is present.

Please provide feedback if you would accept such a solution before I start to
implement something.

Kind regards,

Stefan

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/of/fdt.c?id=ffd294d346d185b70e28b1a28abe367bbfe53c04#n1219
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/x86/kernel/apic/apic.c?id=ffd294d346d185b70e28b1a28abe367bbfe53c04#n2083
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/x86/kernel/cpu/topology.c?id=ffd294d346d185b70e28b1a28abe367bbfe53c04#n305

