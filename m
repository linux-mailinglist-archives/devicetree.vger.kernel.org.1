Return-Path: <devicetree+bounces-93158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E818094FE1B
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 08:53:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A07BF2844EB
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 06:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 842C63BBFB;
	Tue, 13 Aug 2024 06:53:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SE2P216CU007.outbound.protection.outlook.com (mail-koreacentralazon11021094.outbound.protection.outlook.com [40.107.42.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F347A4D8A3;
	Tue, 13 Aug 2024 06:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.42.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723531981; cv=fail; b=K64LTvN7EQnOa+M9V+6DjkRqOsxIx5OCqnbewRP9RLkWdH2IxfZEsrwYi93UBZ9pmT0droNfNKley5SSVlDaNX/2We/Upjfi6nTQkrFoSbtuLPh3oa2Jy3s4zMN++A+/GkbKzIy3C8q+lPliWh68zUha4aYlFvzfbMA9AJV9O74=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723531981; c=relaxed/simple;
	bh=pmgZ/+JaVj+K4SAjn/6h0cNihHj+LFXO5e58K0DPjrM=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=QeBBOK8Ss/RVsHAg5AiKHXtDx9082ROHs8xhDTQ9g76gNYNYCY9oZUwPlmrwqZIG21nzBqE1biqAQjjqBKaAjeA2y9tbnJ9t9JU5Dt/adBLHJRzh16M5QFJskcO330ztVW17G3bLiIwBhpfBbq/u/Jfpt2FscGZyHACtsY651wk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=40.107.42.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mnq4j5IkF2MK/c3uCvpNfLg3MfV3F79EEH8TX4NtOsL6htcVpCLMXBIQtGnHbNGzSH8YBS6CVfEuzVZN4Ji5CA+22q2PGdrVSNyzYxDZDYTh3We8cSaR3ESPDOFcRHbf+FnQDsdwCszucObr5yCh29nJkaiJqNId7eLq80QhUCO8dpuQ9GI7jOpG2vcqAMKmvrgGPtv1vlRMesW+szgggUzCpVDZ2MIVMu36dw1pGqi0xKoulaR9IPZS3dFI0mvBMHMUHUTwCym++Br3fTyHtPMR/jiOZbEOdhdBWQPrWfP4o8YUmuXGh2w4gAIjkMa6rBi4lzVFAd7ChAx+2Iskdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pmgZ/+JaVj+K4SAjn/6h0cNihHj+LFXO5e58K0DPjrM=;
 b=jmIOUdrN6rgGyKWg7VhMzzfyFpWckH6O5Ih4XE+PFBSld44ANtoFbgI3llcjHWhTuD9PGo8i5tfW0M+9Mp06+0jEfJ8Cz7Wv0p4GsQsyDZbMvX31PSnDjL1mhUShzGp1+VvOaZY7QFxu6wo1rzqhCZd7QXTqfVamfvsTldr2crLlUcpoanc2RhI0f/zOCiBpAwYMlyi/rzmAghxXcac3BpTOS8W5GF3Si5BqCbcwy+AsHB3mFTBPqhSCRlHUKGUEIksCbczxv4ytoBmo+z0RKSUEp1voslRzyIFkdCIdroXrpxnvnEQ2rcXc3kqC6NUwY+FwbX23EGgajRRbOO/kcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by SL2P216MB2861.KORP216.PROD.OUTLOOK.COM (2603:1096:101:283::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Tue, 13 Aug
 2024 06:52:56 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%3]) with mapi id 15.20.7849.021; Tue, 13 Aug 2024
 06:52:56 +0000
From: Ki-Seok Jo <kiseok.jo@irondevice.com>
To: Ki-Seok Jo <kiseok.jo@irondevice.com>, Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela
	<perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
CC: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
	"linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/2] Add a driver for the Iron Device SMA1307 Amp
Thread-Topic: [PATCH 0/2] Add a driver for the Iron Device SMA1307 Amp
Thread-Index: AQHa7UFSwCSKMDdL5k2hIbyW4i1A2rIkvxAAgAABRnA=
Date: Tue, 13 Aug 2024 06:52:56 +0000
Message-ID:
 <SL2P216MB23372538AD49361CCEE01C858C862@SL2P216MB2337.KORP216.PROD.OUTLOOK.COM>
References: <20240813052609.56527-1-kiseok.jo@irondevice.com>
 <5094cee1-d5f7-4ffe-9297-d865dd6949c8@kernel.org>
In-Reply-To: <5094cee1-d5f7-4ffe-9297-d865dd6949c8@kernel.org>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SL2P216MB2337:EE_|SL2P216MB2861:EE_
x-ms-office365-filtering-correlation-id: e8b075bc-0517-44c8-95fb-08dcbb648fd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?MkY4b1lqVVZaeTNMZmxRWEUxZGJFdHJBSERkNG5EUW5jQkhQTjJXS2o3a0Vk?=
 =?utf-8?B?aG1HWWRGWjNWdDJjVHpPZCtJV2ZmaDJMVlJyMHlkTWxUdDN0cSt3ZUUxbnQ2?=
 =?utf-8?B?UnFlQmFMbVNxNW5RNmRRWjhIa2RoTWg3LzBuWHJIQmp0WVhQakIvd214VjQ2?=
 =?utf-8?B?RklPZnV5T281N2NaSDQvWGNITDRuU2orNEo5K3Rwc2tVcVJrVmJwaE9URFVU?=
 =?utf-8?B?YTE2eE5jRTEzYW1OeStKRXhocE9vNU5XLy9wdk11ZG9ubUhCclNwUlh3VFNK?=
 =?utf-8?B?YzR3a0dGc1RFVW1rRlArSFh4cTlrdWkwVXlicTFXUkp3bHlaS2Z5VzNuZ3By?=
 =?utf-8?B?MC9YVkhqZitURnFTUGhzOHdRT2FNZW9mbFRzbEZLSDZlVTZYMzFwWEZ4bm0y?=
 =?utf-8?B?bkNFUlhqVnVENVV1YXUzTnFtOWZyMHhrWFhub09mUW9aaXhKdmVBaTVEMXBV?=
 =?utf-8?B?aUVOMlBSSFpkZnBLTTM5YlVBblFLT3BqOTBzZHMvSCt2UXduQ1hUaURyMzR0?=
 =?utf-8?B?NzYzYVNUQ2o0eFhwKzB0VGs1NFZ6V3RJRXYwU3ZKTFlmcnFrTHJaT0htcUdw?=
 =?utf-8?B?WXNZQUxkK25FbTRwSGd4SEsrMEpPV3BsQ1U5NGJSZVZydUFNdDlnSXJvdzg5?=
 =?utf-8?B?NjVKc0E2QkQrUXJ0M2E2S1pXMVdOdFNZcUF2TUJ4T21zd1Y0ais2Y0tEZm4w?=
 =?utf-8?B?QXhFM3VmTnRDSDZZTVhURmkyZHA1VE9hU210YVdGaVhRejk1dklLcDBDaGY4?=
 =?utf-8?B?SERRSVYyMWl4SjFQRU03b1hSMTNob2o4VHY1MElxWnIxNmJVQnQvdHdYVUgz?=
 =?utf-8?B?M0hlOEJ4Zzk3d2JCVGNnZGdSdyt2L2xNOTlMYXh1YmdLbTFFMXNaWTl5dWVL?=
 =?utf-8?B?aEVVVkhUcU4xRU5uOEpLdHVVOWJHZkMrV0dmNVhPV0JtZmp3RnpERytxSW1o?=
 =?utf-8?B?eTJ1UTBqQ1BaNnBUdVBMR1d2eFNzR1pKQTIwaWdvYTFhUzRIM1VxVGVYelJp?=
 =?utf-8?B?cDJEbFg2QVR0VnRuTk82bE8wSndaZ2dKMmtLWHdwWk50ZDByZlI0OWZ5UlNo?=
 =?utf-8?B?QkdGSTR2MEtPaHVrT1N2UlA5QmNUYVFhZWNQb1BOL1MyQzJhNDF0QnRLcTk2?=
 =?utf-8?B?U0RPOEFFN2cvQWpTUnNpUmNPczZFWS9NeGVpdVhjbmIraW1NT00zR3QvUFdu?=
 =?utf-8?B?Wkd6TkJTRm9neGJHb2ZqQmdHWXd6NUpPMXdzVTBuSEVDbHQzMUNoNE40SEgy?=
 =?utf-8?B?SWI5V0l0YVU2OVQyOE1PZElZYlhTOFJ6V0xxRFVOWjArY2xRQUEyYzM1MXZO?=
 =?utf-8?B?eGRqbUM0dm81YnliUXlPdHRDV1U4VXBocGI3a1RqaSsvaEY0ZXo4UGFvelRw?=
 =?utf-8?B?VldLMHhyRzJydkF2S1NhMlg5NjdJRkVNL0ViRHRFc0F2eHNZdVpIK2tsTWsx?=
 =?utf-8?B?OCtYYmVBYWV1OFJNcEJZakZpMGVNOXptYVgzNGNBTllVS3ROcmZ0dCtuNDFJ?=
 =?utf-8?B?dHk2VVVrcjhySkJ2ZTMwWUZjYlI2OGpiSHV1eGhNNXBoZ1AzN2N3aDJzR1Vw?=
 =?utf-8?B?Yk1BOXQxenY3SWVEZlhyYmw4K0o2eFVJRWNxLzliUXJLcWdpUTNpYmVmT1Qz?=
 =?utf-8?B?L3R6b0dRRThRdFNuWUVyN0NuYjRDU0VnYS9sbXZVeU1adG9aSWd1aWFNN3VQ?=
 =?utf-8?B?c2ZFWnpkNGRlK1FpNlNuOFlkVysvV1dwbTVtZlN0VUREWlRIamY5bFVTRWJZ?=
 =?utf-8?B?bjVESHhYVDFCWTQ4L00wTEtoWXRMM0hEMHRKaWFxRmdyM1hMK1hpTGdJbE9r?=
 =?utf-8?B?RXhLb2doWTF0RFNCRGtCNDNGY0N6a3UrU1ZxVk1RSFF1dVZ0QWNRM3VCYUgz?=
 =?utf-8?B?RDVRYmxDSjVQclhHZGJVaTRTejBYR01teExPcnMrZ1lVclE9PQ==?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:ko;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?QVFNQ2FhL2ZWL3dMM3doSUUwVFd0ak93WjVsY2lEeG9xQzg0aEl1dTlDQWVG?=
 =?utf-8?B?K0VKMmpyWkhPVHdUdHZXTmxaU0xlRU5teXl5K3E2TjgwZ2traGREbkl6RDdR?=
 =?utf-8?B?aHRlNDR6NEdQTTVDdDZDK2RSRndYTU9oZWlaYWgxTWRoTEZuK2FVSmVWVm1X?=
 =?utf-8?B?ckZRd2RDMmI0L0RrRldYUG1ob2xJNllCYUlYRk5TUU9kaS9qYVduTG1kTUxu?=
 =?utf-8?B?MjF0ZG9FeHQ3dFRzR1grVERKQ1hQUnE5YW4wN3R1OWJDT21NVTJjMHZtN29v?=
 =?utf-8?B?Rm8rWjloMjlaaDlKM0ZXRVhRVW5ZNjlOZVF3eUtBRlg0eDVqNUhZaHM3Y2sv?=
 =?utf-8?B?WTFpWkFCOE5SdXRwMVQwSkJONzFUNUFGWHlDRlNNY01lczFkQVJBdXdZaVlj?=
 =?utf-8?B?S2FTSG1MRHljeGs2QVBWU1RyVTFoZVhpaEMxUUhiVVlpV1hGVTF1cTlBK2Ev?=
 =?utf-8?B?U0tYZUJKU2JJNnRHb2VaZnQ2R1pQdTdubklrUUJBSURmcDUzcEdaNzZnUlpK?=
 =?utf-8?B?Q0tWeW9oOEhBUVF1ZWRsSUVHRUNZcG5VWlV1Z2hKcm1tYUQvUVRTUnFIZTc0?=
 =?utf-8?B?TXF2OEwzRXRjencvd3V6UG5aeml5bkJWa3JoYzZNejVpOFhEdUsrODgrUVRp?=
 =?utf-8?B?K24vUVh3QlFUc3FTclZ1R2dLYXJuN0RCQUVSN3pkN2JLRzF0K1JZOGNDc3Jv?=
 =?utf-8?B?ay9qNW15N2JSN2tuYkVueDJDSDRrUmZPK1d6WHZVaWk3anl1dnZsUGlCYk5Y?=
 =?utf-8?B?WTZLYTZ6RldYRkhzSnNOM1N5SVh1ZXl5UWlya0hlYmFlTnNRSkhNQ0NJc2JJ?=
 =?utf-8?B?dDhwTFZnM3gwdVdURktIdTBWVzd0aitTSmozM3lsNXpFQjQvSEY2Y2dTMkEr?=
 =?utf-8?B?eU5MZFhLN2VhR1Q0RHh3WkxmaVplTzF6aHFIUHpLZkZGaTJKcDRxN0RoRVM3?=
 =?utf-8?B?R2I3bHhKWGhwU0ZPYVRzdnZPNndDWUJlUXM5ZUgzd3pJTzhqNDlNYmdYS3Jw?=
 =?utf-8?B?UFFnTTRWUm1aL2w1b2VBSUxjdEpEVXRYOU5BRDBNNXFJL3ZCQWxkenBKS1U3?=
 =?utf-8?B?Wi9DRTJ3d1IrS0ZROFdHZDc5YjJYNWdRYW9yL3owTElqbldLdlNoSkNZN3JP?=
 =?utf-8?B?QXJFUlQyTVF4UGRaczFrU2dMR0RkUk13eXBtT25SRE5lbGQ0OTJLdHdBQ1NS?=
 =?utf-8?B?SFFRQXlRT012NDlIYm1oY0ZiYkV1cEhTMEZCczVianNONkRpRzF6TnVUdHNQ?=
 =?utf-8?B?RnoxcXJjSEVkcnNJWE9yYzZ0eC9MblpZcUVld0FHeXVTcmpBYmV5K1FxekZQ?=
 =?utf-8?B?Nm0vL1ZOMjd1c2R1RDVpZWk0TTQrL2poT0R3eFQ2MUdGeHU0cWVJaDd6YmN5?=
 =?utf-8?B?blNKSExnRUdob3h6dkRHVzBDOE8xa3FsS0hYZHdubWliQ2lpSFpDcmpTN2F4?=
 =?utf-8?B?TGtDb1JDVncyekl4Zkp0ZWdIVGxiZ2hlM2phMXp2VXNMK2ZhbyttYm1Lc1lN?=
 =?utf-8?B?bUNDSC9IUGZBR0NaOU5ZUzRiN1RqN2Z6aHd4bFUzcnRURnkvaTluY2pGZmcz?=
 =?utf-8?B?b0dobm5MTmlXVTBwUEdGeDdQM0MrQk1FMUxIRFJlQ0NwL1Nrd1NUNmZBZVR3?=
 =?utf-8?B?ejE5bDZJa2YvTFFaMGx3SURKTHQrbTJwN0x1SXdEcy9NR2wyeFQ5dWZ5ZTNE?=
 =?utf-8?B?aWlYalJQRXBubVlvWGJkUjZuQVVqZW1rTnVqU1grVUxrWXlyWUZOMmZOTURE?=
 =?utf-8?B?OUVPbzdDZE01TU50TC9FNUQ3Q2NaTU54WkJ5RUdMQnFtcXJmeTk4ZGhYa0pQ?=
 =?utf-8?B?cmhJZGYrNkN5TlB1SFExQXArV2JsQitReHFURmpBTGJJRGVyK2VaQS9xNXF1?=
 =?utf-8?B?RHFLTUlxRWNjZ2IvZWtDbHQveXlUb2pqZDY5VjJETG1TWGxUNmw3NE5xMThS?=
 =?utf-8?B?M3lSR3JId1FDY0pjNStqWFZpVHg4U3YzOEQ3VVMwRXJyYXEwUnZiajBXcWVU?=
 =?utf-8?B?LzdFRDZQQmw2Yy9RUFZ4Sm04TnppNjZCTzR2dDRQek52bjZ5eVNjMHNYNUNt?=
 =?utf-8?B?anRyZXI2dXJsNzZ3QWltWnpQVU1Zb25jcUhibTFEWllpZ25kcnNvdDFIRFIw?=
 =?utf-8?Q?vn3lPxRr6W7EUwxZ9BSc+++g0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e8b075bc-0517-44c8-95fb-08dcbb648fd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2024 06:52:56.3466
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C5vw0xYXh4k8E9DqV92uzFR+LBVhWZFT6zvHcZuOKUmQsKhMKo4cTitS3HF4v7rCQD9u+f7rL2kZlFFv11QdwOc//f4c82Hr1ws97y5ZwlE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2P216MB2861

DQpJIHRob3VnaHQgSSBzaG91bGQgc2VuZCBpdCB0aGUgc2FtZSB3YXkgYmVjYXVzZSBpdCBpcyBz
dGlsbCBhbiB1bnJlZ2lzdGVyZWQgZmlsZS4gSSBiZWxpZXZlZCBJIHNob3VsZCBwb3N0IHRoZSBw
YXRjaCBhZnRlciBtYWtpbmcgbW9kaWZpY2F0aW9ucyBmb2xsb3dpbmcgcmVnaXN0cmF0aW9uLiBJ
IHdpbGwgaW5jcmVhc2UgdGhlIHBhdGNoIHZlcnNpb24gbnVtYmVyIGluIGZ1dHVyZSBzdWJtaXNz
aW9ucy4NCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEtyenlzenRv
ZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4NCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDEz
LCAyMDI0IDM6NDggUE0NCj4gVG86IEtpLVNlb2sgSm8gPGtpc2Vvay5qb0Bpcm9uZGV2aWNlLmNv
bT47IExpYW0gR2lyZHdvb2QNCj4gPGxnaXJkd29vZEBnbWFpbC5jb20+OyBNYXJrIEJyb3duIDxi
cm9vbmllQGtlcm5lbC5vcmc+OyBKYXJvc2xhdiBLeXNlbGENCj4gPHBlcmV4QHBlcmV4LmN6Pjsg
VGFrYXNoaSBJd2FpIDx0aXdhaUBzdXNlLmNvbT4NCj4gQ2M6IGFsc2EtZGV2ZWxAYWxzYS1wcm9q
ZWN0Lm9yZzsgbGludXgtc291bmRAdmdlci5rZXJuZWwub3JnOw0KPiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvMl0gQWRkIGEgZHJpdmVyIGZvciB0
aGUgSXJvbiBEZXZpY2UgU01BMTMwNyBBbXANCj4gDQo+IE9uIDEzLzA4LzIwMjQgMDc6MjYsIEtp
c2VvayBKbyB3cm90ZToNCj4gPiBUaGlzIGFkZHMgYmFzaWMgYXVkaW8gc3VwcG9ydCBmb3IgdGhl
IElyb24gRGV2aWNlIFNNQTEzMDcgYW1wbGlmaWVyDQo+ID4NCj4gPiBLaXNlb2sgSm8gKDIpOg0K
PiA+ICAgQVNvQzogc21hMTMwNzogQWRkIGRyaXZlciBmb3IgSXJvbiBEZXZpY2UgU01BMTMwNw0K
PiA+ICAgQVNvQzogc21hMTMwNzogQWRkIGJpbmRpbmdzIGZvciBJcm9uIERldmljZSBTTUExMzA3
IGFtcGxpZmllcg0KPiANCj4gV2h5IGRvIHlvdSBzZW5kIHRoZSBzYW1lIHN0dWZmIHNlY29uZCB0
aW1lLCB3aXRob3V0IGFkZHJlc3NpbmcgZmVlZGJhY2s/DQo+IA0KPiBObywgcGxlYXNlIHZlcnNp
b24geW91ciBwYXRjaGVzLCBwcm92aWRlIGNoYW5nZWxvZywgcmVzcG9uZCB0byBjb21tZW50cw0K
PiBhbmQgdGhlbiBzZW5kIGEgdjMgd2l0aCBhbGwgYWJvdmUuDQo+IA0KPiBCZXN0IHJlZ2FyZHMs
DQo+IEtyenlzenRvZg0KDQo=

