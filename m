Return-Path: <devicetree+bounces-266194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHXYBS+GlGl9FQIAu9opvQ
	(envelope-from <devicetree+bounces-266194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:15:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CDC14D819
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF50C303CEFC
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8740127E06C;
	Tue, 17 Feb 2026 15:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="gfs/H7Nb"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011005.outbound.protection.outlook.com [40.93.194.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47273280A29;
	Tue, 17 Feb 2026 15:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.5
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771341319; cv=fail; b=M0aC0aNmoQcMjbPf+2EGtAmniA3sBm6oNgQi9gLtKvyUKFOeXCfPs1kmyhgttmbqUREKkfsiyfyi/cSL0eMB0v91wxtAuD17a7KSv4DKgjLcnwSDuYY6JiaP9A+Lu7OJEO+2SBGIt/3YQD+zoRlm3ti5aEZMcpy7blFv2rPwEnE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771341319; c=relaxed/simple;
	bh=BW7rY/UB1gS9ULW9BoAkiSdz6JIUYn6bK0Yngc5NYHU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TINjQyHjXzNIevy7p+ujeK+1RftcQvMZ2aLqHzFoRBEmooS5+Ke8voCtVd33qtYSZzeN8JmGCCE7RyUX65BTUpaW1fzkBPMozOAXYJQIRCEJpdvHraZNUaFtc5DLRwRO0ZhZyKt+NO4oWYa+MnKNcXOprPb4rV6lMRQVQuvK2Lk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=gfs/H7Nb; arc=fail smtp.client-ip=40.93.194.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mf3eY5KwRmgxvQmVVD9QIfsWzVmZHK33B4fjYW/mKrwegaKCjvtYZX3ljieFcsZ/FkxSF1WMW9/Bg5o60DiQWVU9JW5AU3lneFmEGvz84CmwU8gm88NrZnQK33eI4WimAvSHSz11yYHjVgddCAQ1Qqntgiglq+Ipw53nQzIPPY+A7uNHThU3witPaBrOg0PVjSmrwnT6zwVpqsJT0thVUeEpkK+TvfWveV8maO4hvKYKL89lkY6WfyPEVCRpRMSLAm+u9uOzQLMh1txFV2dZ2VcLdBEf9vi5w0SuGjzAu7N/oPfOyDDey9cCAX3TPWbc810rW/Yem5X0L37571nFZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/bl+k1GV91xykRRXb61NiR5J72EFBAoOR+XEhRiy6yg=;
 b=sufriap0wgkkvuWajIGewD4VttW1gDrwcqyazWbSl/gMNt6l5WPKZbgcuwfxOELw7gXCksIUf/pKxa68dnhaU+balmYayHpV2cr4BVctO6ub+lAr7AsMs12TFtN2IFwfLl3Vr9LI7ps2B/rkyPnJH5By/+n6mDZZnWLq2zlWCuJFBXoKygg8pNTJtHCMf0uIxAqcsJhu0teXgCQ/Jz29nEwzGLxPAOzCK49qXgX4mC3A8eR0xHRtg7V6pKE9YXSOE0HtZS7awJzab+MNUmO/U+I12I7Wq9bQcgelHb0E+EMloi60PqEHWF40QwXFWFLrR1OwzBniJ713Cpx66aJSpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/bl+k1GV91xykRRXb61NiR5J72EFBAoOR+XEhRiy6yg=;
 b=gfs/H7NbFOEyZ/mN2r0uhQh4WAaN7842qHd9u0cz/RPMBHUwaYRPkYn7TWDz0nebJwaITq0ZWWYUoPmNPnfTETI5aSgn/yiiZQjIsJr/2UMZv8VkXJ5OodkG18tDzD5iYJN4l8e5fG+v6bR8MolRmqPz6+eFOECnYFLP1mWQpKh8daZNJCkMeiLZJM7Rx3EVv6DUQSX6a06yPa7k+A1JWZe1kZd491DRXtdT96o093vohXvaN9A9+JNqH32mLi0GgVCDtggelMZkqUDNEHcFzG0AxSSknJWEMJBrL3YmrsV4V7P0cP6l5BgfqXCuCbu25icARQA6d+sWJWt9/nz+xg==
Received: from CH2PR10CA0002.namprd10.prod.outlook.com (2603:10b6:610:4c::12)
 by PH7PR22MB4045.namprd22.prod.outlook.com (2603:10b6:510:244::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 15:15:13 +0000
Received: from DS2PEPF0000343F.namprd02.prod.outlook.com
 (2603:10b6:610:4c:cafe::bf) by CH2PR10CA0002.outlook.office365.com
 (2603:10b6:610:4c::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.16 via Frontend Transport; Tue,
 17 Feb 2026 15:15:12 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay1.compute.ge-healthcare.net;
Received: from atlrelay1.compute.ge-healthcare.net (165.85.157.49) by
 DS2PEPF0000343F.mail.protection.outlook.com (10.167.18.42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 15:15:12 +0000
Received: from zeus (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 95392E8F41;
	Tue, 17 Feb 2026 17:15:09 +0200 (EET)
Date: Tue, 17 Feb 2026 17:15:09 +0200
From: Ian Ray <ian.ray@gehealthcare.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] ARM: dts: imx: bx50v3: Configure phy-mode
Message-ID: <aZSF_VIBRPodKCD6@zeus>
References: <20260217125952.53997-1-ian.ray@gehealthcare.com>
 <20260217125952.53997-3-ian.ray@gehealthcare.com>
 <fa3805bd-d242-4399-8175-4b8dcd0f84b6@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fa3805bd-d242-4399-8175-4b8dcd0f84b6@lunn.ch>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF0000343F:EE_|PH7PR22MB4045:EE_
X-MS-Office365-Filtering-Correlation-Id: ebb2b801-4675-49e9-9ba5-08de6e3758d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WGZ1dCtCbUdIM3h6WjZKMjNESE9NMnlSSVgyWnNmbGQ5dnZLM05Ia2VBaXdL?=
 =?utf-8?B?bW5aYkd4cVd6WmN3Y0JEL09ReU1jZHU3OFVyRDJiRzVHYTdDbWs0MGplVGIw?=
 =?utf-8?B?dG9NV1dTcUJ5Wm1SaGhyUXJzSFNXMDdqUk8wNzFKbFJPMjZod0ZIeGhFejhD?=
 =?utf-8?B?cEZUNlJoamRIWnJuVzU3Q1JoZEE0VWRQMWtrL0Jmd0o2WHpSejdTdzBrcXlX?=
 =?utf-8?B?c0pYV1dMeSs2b1dpb3V2cmZDUmxWaWpaY2dPR1ovaEQ1aDVISUxYSmRnU2gw?=
 =?utf-8?B?dlZkMzNVRTNGVU5DU1F2dU0vK2xUWVNURnBmdHdOWkNUYitGdC93ai95NHlW?=
 =?utf-8?B?Y3JRVzdzU3UvelhZZXkxU3dNeU9QTmVacGFLd2Y5dXc5M3YzbDNVdVJ1SzdU?=
 =?utf-8?B?eHY5SXoySzN1cVF4eUk2NGlRUGI0cy9waUlFbTJRMWhmNko5TkY4NStnMnZT?=
 =?utf-8?B?TmhrSEM2OTRubThJQWcvbmtkT2J5N2dkTFNmM2V6bnpIem5oUUUrS2ducTk0?=
 =?utf-8?B?UmRBMGF3eGh1TElncFdWMU5MckRmaXJZVENmMGdJc1FUdER1bnJYQXVwYkpR?=
 =?utf-8?B?YnREQm1mWkQ3TmpGR0VoTHBnZVdhMi9yMDhpQVRPK09OcWZZbFpsQmg2Mmts?=
 =?utf-8?B?QnRDaU4xbmFWZE9rRURHVGhPUVZRVnVtVCt6eC9wTzBZMmtPVWpMSFVRUzYy?=
 =?utf-8?B?aFBvdElQcWVGSjFHbE0rb3ZKNFpuNmh3WXJRV3Y1TXZQWXVFTHk5VEd3aHdJ?=
 =?utf-8?B?M1p4SHZ2TnRlaklNYnRGYnNMaVp1bzlabkk2Q2Q2bVVac0xITXpTSFZCdVQr?=
 =?utf-8?B?TUtsYkl4ekd2VXFqQTBHVnR6UlN2Z1NuNUxTVVoyN3Flc2ZqZ3NWS1lXVGtk?=
 =?utf-8?B?UVd4cWZKaXNNTVhUMGxScnNmV1c5eWJMSkFDeFZYZEtkVDZKZmJsSHpiLzg2?=
 =?utf-8?B?SVZZUGJ5L3pHWXJLSDBJN09GaTB6d0NrZXdRYW4zbUdsbDFnWUk1TnRuNzZ1?=
 =?utf-8?B?Nk1lb3BRZVBDK3NYY2xldGJ5VTJyZm80SS81QXBpRWk3dmkzWWxKdGJxYkl2?=
 =?utf-8?B?akg5ZUR5TWQ4TWJaTWpLVUcxV3JyMEQxQjEwOGZ5alMyQU9QcnhNdHVjSmxS?=
 =?utf-8?B?dllNUXNoZHoxdnQwb0t3SjhnVk1nem5JaTcwSTlZWEFFc1NWdjFKUkZIVENX?=
 =?utf-8?B?N1R5alFCSllRNnBpWkJ5b3IyT2dGaWF5ditBR1d6TkthRFFueDhjYVV1aEhm?=
 =?utf-8?B?QkRSemIvU0l2U3NQNkJUOU42SlViaHZWTGxTSWNKUkVFSy85d2JZTWlRVVRK?=
 =?utf-8?B?R0RiT2l0UUVuVlkxSDZ0ODRhZHdSWldXV0hTem5BbFZITVVEV2JuQ05QcjNQ?=
 =?utf-8?B?a2RGalV6NklIb1h5ODVDQ0ZtZVcwanFWdjd0cEovaGRBT3hFNHZkd01EaGY4?=
 =?utf-8?B?dkpUNWo2RXdGSUorN2QreDA2OHpNT2ZuQVpWT3ZyUjlhRmJBK1BIUlZUUUlU?=
 =?utf-8?B?a21iYVZnV2Y3ZlU2Slhycy93d0ZEc3hXT0d4T204U3ExbDBYNkF3Tk5lcjhu?=
 =?utf-8?B?NFF1K1I2czJuRHovZkZwQXowamhoS29PdnpOQjJjUEJaT2MrWE9CelE2ZXBo?=
 =?utf-8?B?Wkwrd2xZNUtrUVlONUlGbi9jY09taVh6TkxaZWE0QzZTenVaL2JXNFNnTzZq?=
 =?utf-8?B?aGhjVUtmQmk5eUJGTzBTbHNDR2dnNnBhZ05vR3l4ZGJGUkluNCthV1NzNHl5?=
 =?utf-8?B?aXZxTWpCbHJGNGVjZjdZQWI4ano5VkZYRzA1QTFEUE5HMzRxR1AxRVp3UTBK?=
 =?utf-8?B?SVVybGtnNnBjMjFJcUI3TFpZcHgxSUlkVEhOczh3cHhpSWxZUHB6bkJHcm12?=
 =?utf-8?B?bmNqd1h2Y0dPRk9yMDRXcEtkb0ovUVY4dnpSa0dCb3hxODBROGpUTmkzYmtI?=
 =?utf-8?B?UlVqaFQvbVUrbnF5NElhbXpwUEVrTjNpSStlVEJYc05PY1V4YVN5MDN1dm9s?=
 =?utf-8?B?a1pGb0Z3ZGljTEx0VTlHRDNRVzVKaXZIemRETmRnTWlhd0JyWUxlYkZkaW1i?=
 =?utf-8?B?dmNYMUJCSkw5NnlMNittQTJHa3ZhMU5McHJEblBlT3FWZWVtdmJOcXlWSHdh?=
 =?utf-8?B?ajNFaFFlMHR1bjJmaTN5Qmh3aStsYjlDK25INWIxSmVwWElzMER3Wk1rVVVT?=
 =?utf-8?B?VWY2TEpkSTRWOVE5WTl5azY5Nmx0aUtIQTNmYzJ3ZUpEYW5PcWdZdFdmc2lV?=
 =?utf-8?B?aHBEUThBWThGUzU4UUg4ejl0eHRnPT0=?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:atlrelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	oATQtZbt1N5S8GfBEMydY6FSsF3sLUXDs/ZXzJjCmDC1bP2saejQGUuYrCO1WAWeQ+z5mwa9SHCLLb44N7wttCysNJK+Oj+HbPe2Q/u9NK4ZpVno/AGimLr1BKk9mqmltSDbwGAx/R3TClYQM2QwSQj+p57l/7PYOcXfCFasDO6Pdcm0GXD3kkUscgh7r0xeFj0uosudG3tt1OwXF6iL9/KBWTQezMQl2xRHDZ7mmGPvBd+eC7WBkwbWC2TOW7QdfNB5GRFnmw7QQlQGSQqjiBui7mat5YCymI4Ys5MZ+hc5yH2BH9tVpxPRM1kYaV7PZnWIFnSBgn/C/7y7mWVHzEJq+mbehWNhywq1zdI+YcQ0nD/7TCZSuQS1hCG47UHKpcw1Mb++FIaIdZ1u0emNp1xIdrPP3dDtPrQIUXH9niyNqOypBehXgWJVhJya70m+
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 15:15:12.3466
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ebb2b801-4675-49e9-9ba5-08de6e3758d7
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[atlrelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-DS2PEPF0000343F.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR22MB4045
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266194-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.4:email,0.0.0.3:email,gehealthcare.com:email,gehealthcare.com:dkim];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 96CDC14D819
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 03:58:42PM +0100, Andrew Lunn wrote:
> CAUTION: This email originated from outside of GE HealthCare. Only open links or attachments if you trust the sender. Report suspicious emails using Outlook’s “Report” button.
> 
> On Tue, Feb 17, 2026 at 02:59:49PM +0200, Ian Ray wrote:
> > Set `phy-mode' on network switch CPU ports to eliminate a warning.
> >
> > Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
> > ---
> >  arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts | 1 +
> >  arch/arm/boot/dts/nxp/imx/imx6q-b650v3.dts | 1 +
> >  arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts | 1 +
> >  3 files changed, 3 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts
> > index d994b32ad825..7326b8ad08cb 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts
> > @@ -140,6 +140,7 @@ port@3 {
> >       port@4 {
> >               reg = <4>;
> >               label = "cpu";
> > +             phy-mode = "gmii";
> 
> Are the PHYs external to the switch?

Yes, port 4 is connected to an I210.

> 
> >       port@4 {
> >               reg = <4>;
> >               label = "cpu";
> > +             phy-mode = "gmii";
> >               ethernet = <&switch_nic>;
> >               phy-handle = <&switchphy4>;
> 
> You have back to back PHYs on the CPU port? This is not wrong, but
> unusual.

No, the patch sets `phy-mode' on three different boards.  (If I
understand your question correctly.)

Thanks,
Ian

> 
>         Andrew

