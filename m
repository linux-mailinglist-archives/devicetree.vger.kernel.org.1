Return-Path: <devicetree+bounces-132628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4D39F7A5B
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:26:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F6FD1697C2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 008F72236EC;
	Thu, 19 Dec 2024 11:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="B3CBUpu2";
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="B3CBUpu2"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2080.outbound.protection.outlook.com [40.107.21.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7442594;
	Thu, 19 Dec 2024 11:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.80
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734607592; cv=fail; b=OkGRJpmDkfDl98DYESIqnOCPrAsCvoEgHxYcch/RaLZtAvFhovUBq9kCBqTpRbGEAl3Md9tTWE2pA4JK3hPqpxrCfrRsA88urUDFmR56paBxFC90FKm254A+edDh/GgZfiWZgaO0wK6iR+ws/plgeYQn/qwJ66bapRQ4MXmDBSk=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734607592; c=relaxed/simple;
	bh=hVepgxYOLSfUyCOFB1GRp13fnQjBKZ6ADhOorPmmQLk=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=rb1+uP8EuHYWACzN8QpFhZED7/wJ29Fk7SaJhX9Q3S19QboMJvRyhVpxp9trl1fD+hbI+r8IcnK41dW+IFzH2wubxe4RF1KRk/quA5sOUwC9QQTQpG/oTRFMBSiOKXrIGBNarlwN0DwpCfiglCOtEuMaUyeR4W6DcqwDs/c+IOc=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=B3CBUpu2; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=B3CBUpu2; arc=fail smtp.client-ip=40.107.21.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Esu87Wh0R6gSZLuwG898YxkvIu+v56jGOHAM3fpwzFTiQt1wUqsLH2mcNG5FurlS2E9d/hIQrHBp+5Yw5nrgSnNflRmeOVEAfDL6j/6j8jAhjhcfqU21FU3fk4/1RoNVe3wWEBBiGi/26OEYoVDrRi4CN805gEJ7mMOXejm4u7OX6qMv3WjbHETD46FbJJOkL2W91xLbZMsTbCk5mE+B7GasW/nF/eU6xDEBAHTgmWocAMJLqtwIBmD2lBegbl73Aifs+s6as5LqHzfWCvVloz6y5JorjAqeuoAnk+uGhIeJdy13TLo5U+3BHPwHdp8IwRpwevVa8DdsiM5lZWTPkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+t0XsEUB8iBMvKvGZ/FlN6yox/B3IwP18+oEN5U/lLw=;
 b=cfJz/rvEc2rxPm8dzeYcZVW4TwX18yJAxHDv8DWtjdkinKRA0I8TdXd6vySr8zp0ZtFunNDkMh3DIFVXoQUdJ6+aR98+IWu2VwUMcELQ9MElTahgAW50mlKSQbj44fO+zaHm9Un27tJMjQv/vGxeSxGrlsj47sX0R4tyd2pbS9Z1trYBW0eaZt5YEq9BDiUpGhdLvUG8zTxwj70Sfu+LFezVtGWnr232IEtdEGNTAmSGjKSZVqmuyICR3p8K2yt4y5a6Z3v79+L0FgKXlMS+sGXvj0JxoOzyaHDP3rrQXHnMz50BnFA5ylHompghs33AbDu6NEkGKpagB2tHgjBHDA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=0
 ltdi=1)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+t0XsEUB8iBMvKvGZ/FlN6yox/B3IwP18+oEN5U/lLw=;
 b=B3CBUpu2lDfIxRUHcXsl4dUgELHopRY0Voyi5PxvbO78YPaw8yQIWEbdO8t5nJXp+ytNZQc2cSKrj+KxXXgQLlniU0LIm92o8T7Ha8eEhEakN00VrHbjBCOwsvkDkoZTcKiPhIXs6rHhevG+ONemu+/s3hnoo0V0X5Rg2InTi+U=
Received: from DUZPR01CA0160.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::20) by AM9PR08MB6052.eurprd08.prod.outlook.com
 (2603:10a6:20b:2d5::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.15; Thu, 19 Dec
 2024 11:26:22 +0000
Received: from DU2PEPF0001E9C0.eurprd03.prod.outlook.com
 (2603:10a6:10:4bd:cafe::79) by DUZPR01CA0160.outlook.office365.com
 (2603:10a6:10:4bd::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.24 via Frontend Transport; Thu,
 19 Dec 2024 11:26:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9C0.mail.protection.outlook.com (10.167.8.69) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.15 via
 Frontend Transport; Thu, 19 Dec 2024 11:26:21 +0000
Received: ("Tessian outbound b519d6c64997:v528"); Thu, 19 Dec 2024 11:26:20 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: cd0096afaedbe872
X-TessianGatewayMetadata: MDgeBcxovLdUwQjbkxRUdXBpz+0nBiSdhs2/PtnEZwapUOTDcGNR1NzSF+D04frIf4MNQSg7E4MPz0S1fdd0ZwppGoN4gUPf7PLlvObIDRigPrcgEZymvr/zDbMMsN/cC0yBOY246Z/Qjn4h6HFr3y4+wQPf4mB+HTo6M76fcus=
X-CR-MTA-TID: 64aa7808
Received: from L581a8c5d96ac.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F5812DE9-FCEA-4A80-A12A-A6C0E26682BB.1;
	Thu, 19 Dec 2024 11:26:14 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L581a8c5d96ac.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Thu, 19 Dec 2024 11:26:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YRMj+mbApEfYRzrX1v+cjIUQJmfwvuFGPcAbrC0QN563bFPjynUWHIopbdff41oJ0vEfjRyBIas78KyIkepsKykk3ysO3YkMMoF6GkJQMD9i4cCfX+MrWEORQJ6cZv4GJMhLqfrGeLYK03j38kO4EIt8WkQfm0EYhxwVk2J1o4wnWGFObKXLRSOTaEQ2UcJh2i8blhbabY5Awr5ffvKFekHVx0Ev4ffKgS2xHCZTiAVkr9BNppHrjRO5/Epr182GU306xNXzw1je27gkqzrr1AJzawJxXQ6C4zJjgBUr6STNV/5uGvUdpLDxTSDJvD5U3dys7HccURYUZaotfnNhIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+t0XsEUB8iBMvKvGZ/FlN6yox/B3IwP18+oEN5U/lLw=;
 b=AqAHgUYlBoeW7Uq25m2Wulp1zo9Hsx/I6qBoAfoB4Prd7+l7cCCHG6LdXh/SDsOpBOMHUefj28A4eiqzbKf7NWkzvpPFrmyAzScpxMgtaoHl4lqkQZpddDnfNPQMxSEFQWOwWQ624qFGL9WkftPqI3Mpsqj18parEhtYKMPJDoWSEefk4phmhXAYTpn/Nm2HHSXyc+v3elUA4TI/jiYsL3AKgkWtizZryD2SO+ODw/vdKDEcrWxvH7cjhx7gvraPe+dTynfp9qIfpsaPCPqpW8Iv5Z5vMMdopmOoJDbXA0W1Jla/a4+uh0KvygrMzSVQphsOajJyy6TAoHLwPq72Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 172.205.89.229) smtp.rcpttodomain=sntech.de smtp.mailfrom=arm.com; dmarc=fail
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+t0XsEUB8iBMvKvGZ/FlN6yox/B3IwP18+oEN5U/lLw=;
 b=B3CBUpu2lDfIxRUHcXsl4dUgELHopRY0Voyi5PxvbO78YPaw8yQIWEbdO8t5nJXp+ytNZQc2cSKrj+KxXXgQLlniU0LIm92o8T7Ha8eEhEakN00VrHbjBCOwsvkDkoZTcKiPhIXs6rHhevG+ONemu+/s3hnoo0V0X5Rg2InTi+U=
Received: from AM0PR02CA0017.eurprd02.prod.outlook.com (2603:10a6:208:3e::30)
 by AM8PR08MB5747.eurprd08.prod.outlook.com (2603:10a6:20b:1c7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.15; Thu, 19 Dec
 2024 11:26:12 +0000
Received: from AMS1EPF0000004B.eurprd04.prod.outlook.com
 (2603:10a6:208:3e:cafe::82) by AM0PR02CA0017.outlook.office365.com
 (2603:10a6:208:3e::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.22 via Frontend Transport; Thu,
 19 Dec 2024 11:26:12 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 172.205.89.229)
 smtp.mailfrom=arm.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 172.205.89.229 as permitted sender)
 receiver=protection.outlook.com; client-ip=172.205.89.229;
 helo=nebula.arm.com;
Received: from nebula.arm.com (172.205.89.229) by
 AMS1EPF0000004B.mail.protection.outlook.com (10.167.16.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8251.15 via Frontend Transport; Thu, 19 Dec 2024 11:26:12 +0000
Received: from AZ-NEU-EX02.Emea.Arm.com (10.251.26.5) by AZ-NEU-EX05.Arm.com
 (10.240.25.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 19 Dec
 2024 11:26:10 +0000
Received: from AZ-NEU-EX06.Arm.com (10.240.25.134) by AZ-NEU-EX02.Emea.Arm.com
 (10.251.26.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 19 Dec
 2024 11:26:09 +0000
Received: from e123574.cambridge.arm.com (10.1.197.68) by mail.arm.com
 (10.240.25.134) with Microsoft SMTP Server id 15.1.2507.39 via Frontend
 Transport; Thu, 19 Dec 2024 11:26:09 +0000
From: <anton.kirilov@arm.com>
To: <heiko@sntech.de>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, <krzk+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>, <robh@kernel.org>, <nd@arm.com>, "Anton
 Kirilov" <anton.kirilov@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Enable the USB 3.0 port on NanoPi R6C/R6S
Date: Thu, 19 Dec 2024 11:25:32 +0000
Message-ID: <20241219112532.482891-1-anton.kirilov@arm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 1
X-MS-TrafficTypeDiagnostic:
	AMS1EPF0000004B:EE_|AM8PR08MB5747:EE_|DU2PEPF0001E9C0:EE_|AM9PR08MB6052:EE_
X-MS-Office365-Filtering-Correlation-Id: c23e221e-73bf-49f1-ced0-08dd201ff6aa
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info-Original:
 =?us-ascii?Q?CsRl1d7h80HvGz5IUZvqklugQAlzZFDV+Me7pqUX+hGInNF4AfPWRV+4y1eI?=
 =?us-ascii?Q?YeKcmXsd/M32OsYX0wan5Hw6yBNe6NuORbMCJd3lx3Nvf10+uhFInl352g1B?=
 =?us-ascii?Q?KVRbEupu+xoum201ALHBp28ipMdx/6Js2B/cbWEJtbQ4K7b+yGpT6n795zLn?=
 =?us-ascii?Q?JxGmWmGEcOxpJMyrNPF24J5Fw4Z1AG+isJ8vPi0zqX+VYr//hRZbm1uSldYG?=
 =?us-ascii?Q?jAP5sGiaZ0GgmTJ7bcPPGz8h4mIXncLJvGb2eA7qQch2VoKqo3sd0dQZyFaf?=
 =?us-ascii?Q?g0PQ33/2Zmk5qkr63Egy54AuxT15o82GdQM4FDhI5UnwwkNJd1ElaWLR7uQr?=
 =?us-ascii?Q?bAqKFDEFVNJRfkv8x681i595beksof96SSp0Dx4SrbcPg4LK9bXMhi1Hfw79?=
 =?us-ascii?Q?wAyn8d7LedD5AA3t10jllzlFHk0jpxgzZUhj/dokkLd52yRmbWxEtsS7A/R1?=
 =?us-ascii?Q?7heufg6uCJ+AeXLLutylJO+XyZ0KjZhJhmvA9XKn4Z1+2O9tM/m97CPmV2EA?=
 =?us-ascii?Q?0EsyZG9ltT0lGrIO1p6zZ6qDEEAL5kmAyM0mlJ5v98jqBpc3EK2y3ELFhsOk?=
 =?us-ascii?Q?bO3l7c6j1kUEKrkdDSKdKOrJreOymsxUxY6v3SFw1TZ4+Hoo7vUZt8Tdu/bQ?=
 =?us-ascii?Q?gW7Zt37SaxTi9EaX1UWtsw6AbP5giwhqRQixdWl/h7kzURqhA+wQbYW43WQ/?=
 =?us-ascii?Q?lLtSgr18W8WvNi8BnbIuYRGdGleaBG8unlkRHQFanh24mFBnf0cJAt9kY632?=
 =?us-ascii?Q?8RSoOPqr6huvimzEq5kk+UBCA7L64ssmmBPFgdlZttdjCVZFbP7Bi950iETy?=
 =?us-ascii?Q?99lmdyUyT7WIMr1uHUKF8/OiWTr2dRTgkX58xnuow9E6LKPj2xx1mZBwxSV/?=
 =?us-ascii?Q?e2fXMJI7Y4vk+zFagp2vutwVvG0UY1pne38QooWt5HrY7XDMbFLC1lX2Y5GA?=
 =?us-ascii?Q?imQ4xrr9VQkEWDdXqqEOGxNQdvlNPK4D2zMg4/3H0S+/1k6aHhkH4rfSeVvR?=
 =?us-ascii?Q?iYOkw9XFRBDhjBGaZPzGHF+EvLAGWhWTNioI1yO7mIqiP0C6czXtExKp0nGf?=
 =?us-ascii?Q?oltyEuZ0mjkw21QLxOSjR05VagE3zM0lhJfab4FRJVCfiQUb3jqCSOYHG8oa?=
 =?us-ascii?Q?5/D4srTJXln7GhInirVmPCatgc3KBBsm6XNHxAr/2edCz0f4SNF9c6o3qtLO?=
 =?us-ascii?Q?5j7qB+3zBqelT2HBT7+518XFUVXgqYiEYz7a9nNopVgv7HDpiKfT2g1nfuR/?=
 =?us-ascii?Q?5sCDsrfaffNTd+5CDrDHOa5+akdy4UYn1u3PIL4LVxT5DGVEOpAgrH3FtMYv?=
 =?us-ascii?Q?pw9JcLYfCp631oVuHyjDLHgCP9UXmdHwPIK+6p+j9gsQpVixATwMPZLyK2QH?=
 =?us-ascii?Q?EogR3S84eVYjVyqNLriuTE/McUTOu0FnfrQAQdAxDItDn+zUtK1FfKIcQTVN?=
 =?us-ascii?Q?4nEOPtv/wvPN3A1hHMXMt3XoTh4KbHrmrOENsXIGFAeLNizAF9g6Al6/qNb0?=
 =?us-ascii?Q?NhTa2lg59GhZlQQ=3D?=
X-Forefront-Antispam-Report-Untrusted:
 CIP:172.205.89.229;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:nebula.arm.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5747
X-MS-Exchange-SkipListedInternetSender:
 ip=[2603:10a6:208:3e::30];domain=AM0PR02CA0017.eurprd02.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DU2PEPF0001E9C0.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	1abb9612-d9b1-402b-fe90-08dd201ff164
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|1800799024|35042699022|376014|14060799003;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?oCNKzW6u7dmMQsKZ5CQm4Sfet/yuym9q3Ij8DtpTURWpRckCq/FsvKksVJzd?=
 =?us-ascii?Q?aO3Gs2nJo3kBIl8R6odWlSUT4inhOTj34F/Xg9Sdzn6XsKxB/VbeIbQM4mNy?=
 =?us-ascii?Q?OOTNBUgJQOGDdJwPvLqBliL98MEDMq9YdIqBZId6/MU8uzNtz8Bw9shnQssJ?=
 =?us-ascii?Q?m0uL+VrBZIuFuMdJwDr4JBQbb7B7BM1vNTOI4LqNQZy99i2jWERgD30zRQH/?=
 =?us-ascii?Q?bqkk05EmzGabvnklJKu+/nnHifSFzcJa3091DrfqD2O19SjJ+caQM7ujhXFm?=
 =?us-ascii?Q?0Idw64gnfmqoBZe9t1qh2xLg7FgQB9saZg+lzMYxhS2JXyWmIm/MKQ7HZQKW?=
 =?us-ascii?Q?aT+2YFiZzcljl481hkv0mdBKnaNXeuoWueUvMNqY7oLv0mBZ3DbubiFVdz5o?=
 =?us-ascii?Q?gkGCuHwAVRzh9bk9aSyf1bSiPCHAnmT38RVlwDZmjw3noYmW+VnrsmJSJUVm?=
 =?us-ascii?Q?SD7tp7tF7M50mhE3G6/RVxsZSl19dlpDgzkorTG7x0n88BpfDHbXCeUMROiV?=
 =?us-ascii?Q?IM/NcsdgDmCiHSnpLoi5A37b3N62cAsy+IQ7qMLMPQOllJ/aVKU6BKDr2lDC?=
 =?us-ascii?Q?noBGbdsnur1BrQO07kTcex+gNCh7kwGfcZhNGml4UQp/jTfWSydmueoDanBu?=
 =?us-ascii?Q?zGe9x9jkKJyAh0PpV32i38NBHGZDM6VpwoDmVd/OHYG5h+TucO28CKQRkFnp?=
 =?us-ascii?Q?mFv8HnqS4db3Wjh0Q0p2/FayPGNybZYypYAoDU61VC/yNkZWgRLqUAq5BGhX?=
 =?us-ascii?Q?sSI4zQyRDEO/YdFMj6MSXfIYZxqmnbIY0NVYN6Bm6ku3Z8AUjXezY1sdUJuD?=
 =?us-ascii?Q?VAAHI18CK1f5EZBRoTvXzUmMnD2jCS3stYmdassbHb8r0O3Pxx0twVljxF7P?=
 =?us-ascii?Q?/NCWDNSNRLWw0oVJmQ2WBIioOMxUaKDmbKqzUf1nXwxg2Cufc1FDRaVs9std?=
 =?us-ascii?Q?UOomoa8pExLMmpRFAtcT1gX0Oe8nL9ymI16FEdDDCuYAvruMoqMTKW9lrJ2j?=
 =?us-ascii?Q?T2TP1QpPw8n0se0MaNxF2ZswCJy/kC0CJOkFcykckwqn6X6dR0ICGS5G5laB?=
 =?us-ascii?Q?8NYyMrUgCAGkpy4XwpjRSAFkQgXJI5w9kSyAjnzMBawZvAQI6C6V3is8yTEl?=
 =?us-ascii?Q?pMVlGGT/QrqUlaEmmTm5JwE+qon/rr5eZLVdwGPZBlqNLpUHyuU+GeHk+x5h?=
 =?us-ascii?Q?FVYD3uVF/2iZpmfuR+2Pkt4zPFNZ8J9xFS8Vn9AA4rwOeFJb+uF4dt6jAem0?=
 =?us-ascii?Q?7GaycTNpKVpC0SQDHAYRVFILd7IcwiBMGUBOYdQxy3CkFPHJbsdssYB/X/Qr?=
 =?us-ascii?Q?nOK1Y3K3LqRweqvgsXcx3uFOt2If50NUmlBZqzdx7KI/4exxSkL0sN1ur9SA?=
 =?us-ascii?Q?ZdTP7+kQDKzrV5pO/+2GwHItNBj2D5P3bMMY5ey6AmWPe7YxQ3umLuRP52+C?=
 =?us-ascii?Q?0QnffR3l5kQjeNbqu1RSwtIarLwpuUE3ZZpQncnQlitdmyirRx3Jh8n8VbNP?=
 =?us-ascii?Q?SAfK86TOp0tp1Ic=3D?=
X-Forefront-Antispam-Report:
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(1800799024)(35042699022)(376014)(14060799003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2024 11:26:21.0942
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c23e221e-73bf-49f1-ced0-08dd201ff6aa
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DU2PEPF0001E9C0.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6052

From: Anton Kirilov <anton.kirilov@arm.com>

Enable the USB 3.0 port on FriendlyElec NanoPi R6C/R6S boards.

Signed-off-by: Anton Kirilov <anton.kirilov@arm.com>
---
 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 76a6e8e517e9..cbf09d0b4add 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -774,6 +774,15 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	phy-supply = <&vcc5v0_usb_otg0>;
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -796,6 +805,15 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbdp_phy0 {
+	status = "okay";
+};
+
 &vop {
 	status = "okay";
 };
-- 
2.43.0


