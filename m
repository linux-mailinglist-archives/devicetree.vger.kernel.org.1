Return-Path: <devicetree+bounces-258664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MyOAuDXcmmqqAAAu9opvQ
	(envelope-from <devicetree+bounces-258664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:07:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF2B6F70E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:07:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F0143007202
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB78D37F8DE;
	Fri, 23 Jan 2026 02:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="jzB7dFMG"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011064.outbound.protection.outlook.com [40.93.194.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D290737C11A;
	Fri, 23 Jan 2026 02:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.64
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769134040; cv=fail; b=oETq6zZhiTshNk5bxSZegZ1hjBFEpeAxWCskJlNr3G908nvvz1dtWJ2rxEBaMe+q2OTGFpjy52tCFcpydQ3g4ei000sm0uQJTQlEJ7KgV8Qpke9ZErtJ43f86XftqA+TwlpEr224bPqiX45CSb5YG2UCjKwI6yuIKGVJVQennxc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769134040; c=relaxed/simple;
	bh=+ZzN19ZMqjEEOqxN+tBneBsVqVjtaM3vbgDnavcrfEU=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=FjPDs5tmkgYO4dyVLoQdkkKTBiGYc2DBkVYZFDcmaKgzLNB2PgFbfgHLGXhQ24rIUKOVum0vA4qwVfpy2jiWaadK6vMOlZS2CsJlxv7syinVU7biP3YlYbbcAwdMnAZ1znJ0zokWz8nr9VFwTHVfX8ZjOVkxnTld6D9UDwz3yrY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=jzB7dFMG; arc=fail smtp.client-ip=40.93.194.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XUdw2K68i/zoCdFndM4GSxfWn0VvIPG6TeFnvCzcgoyHd85X6RktveX5qU9hhaVlTPy8o/LAvLVTtqdF0TKI5KtgNg7QTkCdPO4Hbda0gwIbG/z8qIlGB9dp/SasNQpN1jBalG4EWpNzTBypYFz4zHJlqM8QqWaBZeTVOnFZYnjyqmVVOxxqIIob1pGG2tCHRhFGb4Auxufb9FmbcJgNOwBApSEmDZsRZgeE/yW1XR9f1fnrfgRLukF2WoghAqXQ8vvSHSAw1DTiJ8dxb5FilFU0ETeFy/ggQwJnMQwnlvxBrwu7Wiis9QUcYXQlJebrSFhBmPJjPXWZpqqjBro+pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vtc5JrvNJqPbLm5csTC6DK0NTBmTed8kZHXeBAG5Asc=;
 b=azok0WmcNdeSYbMZJH9k0YtOPrq75Q+0P7thyHX06c+t1ikcB+VX5GP5kWCK1+/3YxNjuDds6whEIoGhhUotkBQtMtAShucFIodORgXpRPKKXvvkwmhy5TCHA4DQyj7zeVXoTv7akccxefNw07F7nJGvDE3lJ++MSFx8WBHeSMAB/2K3AbYYQmPI++OI7uojE+mpF+ykviUd6Tk0B+6FbVYo64c7nKYOWUbyil+muai6nJOxem78k2IQBR5E7a/5mb5ojH0lz7HsmOcCT4xScZrmeQh5h4nAQB2JT/n+JIMGqcyxoOCO9+sKkNPsRcdxUGIb/xIQb8G1PzjGOJS7bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vtc5JrvNJqPbLm5csTC6DK0NTBmTed8kZHXeBAG5Asc=;
 b=jzB7dFMGGqZD574JU37ld2od8Zjesmq1LXb3bebo5zm8KrO4c7/3b6MI4HwxHZM4WYXIdbPre3CysfAcLSWqohBVii4qEYJOhVjDbXaYp6ghv8prwl76G+w4lnvbE7xcCYds+OTeYbF8loskRobyimid7k0/jC0OMeKLloO+FHrMaR19EoUVZ2lFoh8B6K/CuFqVJFbRti2SJfvOKS+hWKotjNU6klKNIP5j7LINv4sYZCqBmPRsgFPny+EWQ2k6x9DyxjAGi9YN2mxoCIxtkX8+7BlnAK51dj+ec7m7bzPfqY4v6PZgQ3q1c1lcKMnlgctNxENMANWs6eUzhyAanQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by PH7PR03MB7415.namprd03.prod.outlook.com (2603:10b6:510:2e7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Fri, 23 Jan
 2026 02:06:56 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9542.009; Fri, 23 Jan 2026
 02:06:56 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] Add eMMC support for Stratix 10 SoCDK
Date: Thu, 22 Jan 2026 18:06:52 -0800
Message-ID: <cover.1769133034.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::19) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|PH7PR03MB7415:EE_
X-MS-Office365-Filtering-Correlation-Id: 04fd0838-1857-41eb-33ab-08de5a2415bc
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?E+5bBspOjm/+sAsaH/9uA3CiIKOOwgFdz5OLqoYOax8DsIQKrx95YuToE/W9?=
 =?us-ascii?Q?+09oPry2RorlEc7bAAWhEpWVUJG30KIbiNU1VLDuwwwJG0EHpjr1fhuIwcHt?=
 =?us-ascii?Q?BpEslrBWQuhq/vZvwbBHEzrMrtrfSrsAUws0uGJU2f1vObJHsFsR48zZl09R?=
 =?us-ascii?Q?F8XmrTOLCW3hDYIlpcCKecQbmn2C5x8WoiPIq9sQgM9zfW6by/AO+mJMLwdq?=
 =?us-ascii?Q?uwjbwZU1VK2O9vRLqX4I/v2Jf3FhOsxbeFLU/4TytFUCkY9FhlSDM8VcT+uu?=
 =?us-ascii?Q?JN7B7FlaS7jvWWSeUETlKrjZAWploIqMEKBDU2WSrckXJlvunuNcmhUwEenJ?=
 =?us-ascii?Q?twe7aA3cUumaUbKCTz+a4xUU3yYxA6CXxsqzMFHZrh/5JaKfHpYMF0O2nPnz?=
 =?us-ascii?Q?oVzEjuBZqMJH+D739u7b2+XOaAgrMtHbubAYKiPlDoesZzpWUZr2zF7BmCTE?=
 =?us-ascii?Q?i+5iym/dwcTeztqkkQzDspUk7IzXXs1JF6iOSTJuh78XNQESrSkaU10UQPC7?=
 =?us-ascii?Q?TeWRysxqtlGxdfy4RmqxN/cdIjuWeiDP6l0Mn5saPEWp8oj04M3C95xs76iE?=
 =?us-ascii?Q?4WipS4DAXXSVWVEodHUWG5EGcJ4gKwU0CPpvxnAtdmP60DD/o1hu9xQM5IQP?=
 =?us-ascii?Q?WrM/BbbrEBAxZ3dWmXjZFOZfgu2oEqh2BzeTsJl9d/hEA5uoThZn/oBF3U6u?=
 =?us-ascii?Q?okCpSaZHnF07HVTyYprwoc7rv/chYCKpnoldlMXo+eUYyPpjcFd6liHWUKIR?=
 =?us-ascii?Q?Lu2JCVL0KK03vuzM6+ETjsx4CBNulN6WwLCQlGAUCvF8dTjkAVhznOZbEk9O?=
 =?us-ascii?Q?oVfdxKRIh3Od4GMfuX4U92a4Q/hx2plCbIdErYJLqkBTfeIRXHN73cvQQ4fR?=
 =?us-ascii?Q?qzVGo83zPgQ3qqqSfyoDXwfpQkIWiEzHYo/z9CTnZobn3r7nXtd4K9Gbfqal?=
 =?us-ascii?Q?o0qIfzeNLKefbBFGkey9hVnreVhsXg1n1SnhrUHqccAseOlqkIt4GmLLoKmQ?=
 =?us-ascii?Q?EaBiTCq59GGzIUUDJyWruXjVj8dfK4Rx9g6w9ZVeIqGtcnUorx4WmdTVQZuS?=
 =?us-ascii?Q?ziXv5q2qoZhxaEjP6sYTVhVpcj+L5UaMRcxNnNsoyCER1GRvMoSalFy6Z4yK?=
 =?us-ascii?Q?zXkx+deljjP3PPkpsbRAILTu9mm1hCUJtwGlDkCv/WhGPPcJtLfx0LmvQbx3?=
 =?us-ascii?Q?/8TKbyKvScwyW9EjKdZXpp2UZzqKOF1I8kWoTUnlK0X5R2wvI0HPIkvfza6x?=
 =?us-ascii?Q?mrKWTLVcjHeoBywDscgAi0djGFzGMy/ze1vakgDEaimm8qrHChoS0iF2/wlc?=
 =?us-ascii?Q?lRrx/e9Mf8q9az2CFzxNjHRVRZ8lQNRDJj4Ed6Q/fmLhd0ve0i6K1uC2D7zq?=
 =?us-ascii?Q?HkLY+q3mrV53uXV0vkzM8Brsu5LTnPPjhncKr7/F+UX99LAIjv5H7lL5RAXy?=
 =?us-ascii?Q?0+nGRJfSMRhDx/DBSJa6461FlfCDheKTdY/JxnaG0FFdzyCVBFAqY/mzefRg?=
 =?us-ascii?Q?J7ZB2paFVTVZXZUehim/hNL7hUYBc3Xj8W4Vfq37A/bheBpH/3w2cUr1HEN+?=
 =?us-ascii?Q?oVBpTJdGu/Jx2ePHhik=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?MIsY6goeSL8WERt8VR1p+a26al/C1G0/twUhNZyLWGVaAHHIccA9s10POWpj?=
 =?us-ascii?Q?mfwnaEbGh350DqwnYLbcI+sVTFqBRpv8QtT7dQvBjySzU00fFpHpUDI50WMU?=
 =?us-ascii?Q?RXyrCnl7O9vSnu4Sju0GeKwXYVg4mdP4j4kSZozPlQT9eoZLKb5z0EuZRIgY?=
 =?us-ascii?Q?ClaahTbTUpn57yKHwhEDM3muh1dbiW2rG+QmkQ5z+NYadJ6qwzqY8HNTVKWS?=
 =?us-ascii?Q?IXySyjz0lIX2XTsRF8GiK3+Bq1571LYSKV4ecPpjo52zexWJKf7a4uu4ZgZK?=
 =?us-ascii?Q?hmi/S87Xit0tVSGk1OhRQY0TmxSnt8VAs8zhZjlo7BgvhPdW/pxNYtITl5kV?=
 =?us-ascii?Q?iiV1ZaX8owDsU0VZ7eLI17mnueb64fjEEjpxGVZFGlyz8hMFBIn4JYK/kOrR?=
 =?us-ascii?Q?kwPVdBVOGhZA2lFgrJa/23ZLbnXJt17xYmFNT8Ah+4mjDE/dXZWjK8pfmqk1?=
 =?us-ascii?Q?C4rPOl6B21Svksm2M72wHLp+GAV9w8LF/NqXpC3EFvQ7D1kQ3nVIZjQNv+CF?=
 =?us-ascii?Q?TuvYVZRCOSRXsXhDKkD48ZCTs3lpxzSpM1bgpl6MngsgGAvLNTTRhMQBIYbg?=
 =?us-ascii?Q?n9RVYtuh4k33Qyk/ogK8Wgar+sDjiiDcIc4q0tK5Rp2ViEmGQZLmKVJ6St89?=
 =?us-ascii?Q?SSbqaNrMvoMt5J5crvfYCb806C7i/hwsfnnAlzE/tSMdpakd8KFjVMObT+Xz?=
 =?us-ascii?Q?78Vo/lO39c4/GFL4Ry70ChfNgvNhBYZalEWiJ/dBezqDXPdCAMl1GtmdBTXM?=
 =?us-ascii?Q?Hl9Ezc4jrSkX01fHkLY+L8LDWeKVVbCYuQB8xhx8w554N8a63GCCwT/svixN?=
 =?us-ascii?Q?AKpkFfJv9BF8B9Paz6zSVmyHbpAgm7xs/s4CuiCAuFNh1QYRl3+KA4T7G9ay?=
 =?us-ascii?Q?TAwTwh140RZOkLTPW5hJ6SkXIASVcpus/hmzpC0Pf0viQeLX1re/Hh5AP2lJ?=
 =?us-ascii?Q?3+5s36n5j019515ef/IlHXpz/N0zx4Sz5y4t9OtSnxEPDqq4QWTCqV1zZi3k?=
 =?us-ascii?Q?dI3dpzGaE8npBABieJ2d+7NkyrXb1PHYGZ5+Pz+L5o264+eFk0YlGUkFNVPA?=
 =?us-ascii?Q?/fAoRlgDztu89doklDLTL11v3eDQ9LUDFy097IsIU4tDTmMer8nOrfTRUtp7?=
 =?us-ascii?Q?swybSvCfRWE48Mf1+ALxcLP7sCjj1SEGj2GifnBMYLYRh15HFYqUzcKJvMPq?=
 =?us-ascii?Q?mvgtRLTfqKYqlFog/+THDbM+w/+SYQ/xHn+ipuviau2QehLle9t244DyVrvD?=
 =?us-ascii?Q?6WSpjDxrYBqAQOXP/LbJ+1EjBuSsy+0y9kI+QNhH0u1NLRBFCTlcZ6nuAYMO?=
 =?us-ascii?Q?5Ryf/FH1Qgxbpzx8mZFmT8ZbgaFzzLTx9RaU7czyGmXzJx/Fe2IPATx8K7KO?=
 =?us-ascii?Q?a5OW0vH4PwTlq8SiYTt+DZGB7BtxrNy2NdKZ6CW2QUZLKjdur230tmZkb7Ix?=
 =?us-ascii?Q?09Na4SKtFjvw800gZRX6IvMW4Uxhl5vtg7AHfIVmhOfFBHgU2aLV6XxvMSt7?=
 =?us-ascii?Q?UZacLhPUImmCpHXVaTQqggR3jw6hP7WU0M+MvHLcLQkugPIvut02QxywyGjw?=
 =?us-ascii?Q?EzDTy7zrevpzKolUIaZ0+/pzGOkdiUsvwWA47ROz8iXVdnfNZHTIjNGnERHM?=
 =?us-ascii?Q?IpqbWUNe8xfSQgOtkEYsDuD0uvuDIX3PqJ9t2NYimGfcIce9moL636O6PKhM?=
 =?us-ascii?Q?wPMa0iJqLmqukCm3SCINNysiO9tcK8gNAXIVSCxfB/VGP1kd3W93+WFn3ZHS?=
 =?us-ascii?Q?M6jVOK/aXQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04fd0838-1857-41eb-33ab-08de5a2415bc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 02:06:56.5226
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GsPTmoqRHlH1/afZJ3iKKzhpE7kCFROtnmOeumo+6+Jr1jOINWRwslNDZ7+mE/LtfjbnEXedWLlhEmaRUrvx5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB7415
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-258664-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0DF2B6F70E
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The first patch adds the device tree binding documentation for the new
board compatible string. The second patch introduces a new base device
tree include file (socfpga_stratix10_socdk.dtsi) containing common board
configurations, and the eMMC-specific device tree file
(socfpga_stratix10_socdk_emmc.dts) that includes the base dtsi along
with eMMC controller configuration.

This follows a hierarchical structure:
- socfpga_stratix10.dtsi: SoC-level definitions
- socfpga_stratix10_socdk.dtsi: Board-level common configurations
- socfpga_stratix10_socdk_emmc.dts: eMMC daughter board specifics

Changes in v3:
- Refactor socfpga_stratix10_socdk.dts to use the new common dtsi file,
  eliminating code duplication
- Move gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi to
  socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
  daughter board variant
- Fix PHY address in socfpga_stratix10_socdk.dts from @0 to @4

Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the binding documentation for broader compatibility

Ng Tze Yee (2):
  dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC
    variant
  arm64: dts: socfpga: stratix10: Add emmc support

 .../devicetree/bindings/arm/altera.yaml       |  6 ++
 arch/arm64/boot/dts/altera/Makefile           |  1 +
 .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
 5 files changed, 161 insertions(+), 65 deletions(-)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

-- 
2.25.1


