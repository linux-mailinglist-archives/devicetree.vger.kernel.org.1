Return-Path: <devicetree+bounces-99190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF95969348
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 07:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8622284D06
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 05:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DF01CEAB0;
	Tue,  3 Sep 2024 05:45:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEVP216CU002.outbound.protection.outlook.com (mail-koreacentralazon11022113.outbound.protection.outlook.com [40.107.43.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD601CEAA4;
	Tue,  3 Sep 2024 05:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.43.113
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725342300; cv=fail; b=Byv2sCy/Hxb9UiFC6jr/PaXUUdUXbWk62yb5nEaQjYNN1ova/a5EBF1pnB4UU2sEPRH14B3aVBbjGTyWEmAUaGZvlHFcDTdP0m5w4B/+o2SgrYsf5homqZ6xe7+A7i+26TWextaY/CuaQop9xchGIOkqxteuPkcRbI/wlzKXB8s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725342300; c=relaxed/simple;
	bh=qLDiSgvoSI4teVeBrXThBgRBn958L2I0D7r8XjfvzCc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lEK4hHIDX8xN7FDszVbpncYKpWr6eRiFh//YTordYP5BWqAlpRqykqgbDgC57Eh0u+KkkAFQxmwhtyPDcsQ48NaIs3sHqQmGDLozzeGrtme3lSzCZgdAPowyM6LOVtmkYWj7t6UjykBd0gOgkEq8Y6GU9gpZ5h8mY5QSrgiqnro=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=40.107.43.113
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cdiZBmwk7AYpWT7c12ytjJGDJ2BUSRWZPmgnQPGkxJytSKQ19B9YcApdPABrLEk/iELi1allDcGciFRu4I9gCtdtYjkMBQe6dK4bqGvhEKmjTXWnrv2pTo7ZvQqFIgK2lW6xBFK+EQhSBPESimK8yw6LJMMmJJIRNx5PM6jT4pKq/gCEc0Cz+R44Ow7yanP3o/7YZ/654gQ7M/lfUkVsrawzldHvDyO7ZjAlmI9DA029PdQenpF9gJ3JMeGDoEk5S5tAPlTVwUWq6MJuVf34hWWOnWJ3bUKEqB+vJsufsjcGO1SPl/nLxd3c0K2O6W0VQJ3Gyywr83H67DE9fuvduw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gjzjubUPDlKBcK5PuNlY2GVPUkRu7WCZ8UtR2jp78eY=;
 b=n8h1y9Ipa7ojjXPP+KuvIOrAsUD9ELp51yJXD1WWcQz0N+vHK0NMQDvs1+xV5HYnuDkRhcODUChlWwnnoyRzqz3YNpAymq+RMcKK6A0JY3GHv4otBMXL0VmIo5qd+Dgcurcyztbq85oYhqhoGoYRWZsgECtFSzPdASgVaJGbK7qukH8p9wd6AY1mvH9FxYSP3u/wvWFSrt+Fv7B/13it8LC1vEyRuhXd/4jsrR1BifejPHiDANg7/Wrs75OAuhi5nWPO7h1bNu46pAQPjmpIrexnYcgi27pjKS4ngGiib6yNOl0/je1QT2yiTliSx9mHLbXrZyXOp8mdHaJa6yiVxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by SE1P216MB1543.KORP216.PROD.OUTLOOK.COM (2603:1096:101:29::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 05:44:57 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%3]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 05:44:57 +0000
From: Kiseok Jo <kiseok.jo@irondevice.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	application@irondevice.com,
	Kiseok Jo <kiseok.jo@irondevice.com>
Subject: [PATCH v2 3/3] doc: ABI: testing: sma1307: Add support for SMA1307
Date: Tue,  3 Sep 2024 14:44:35 +0900
Message-Id: <20240903054435.2659-4-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903054435.2659-1-kiseok.jo@irondevice.com>
References: <20240903054435.2659-1-kiseok.jo@irondevice.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SE2P216CA0056.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:115::7) To SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:14c::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SL2P216MB2337:EE_|SE1P216MB1543:EE_
X-MS-Office365-Filtering-Correlation-Id: b6bfa86c-b495-4ae2-64c3-08dccbdb8b2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?HvNbNWnUrZYfmTH79jnSdScACsFmnyQb3bMXlzt81a024h9QnExXVUYabJQG?=
 =?us-ascii?Q?gKNlAQJMPTAARltqu3Z1lOs2niOWTJ/c0sGydNd2K6W/bgmR988TB7XKuitm?=
 =?us-ascii?Q?NQXKIAM6sLT44UhzBRvQEm0mHs5QHSlGoAroyhWi3l/ZeJrG7ACbq/0juW4E?=
 =?us-ascii?Q?HPEaXxtsif8aQe+WfsbTG2xCXF8g1GVH6RG9sg57RjpRw0iBgiBU9VXnaOo0?=
 =?us-ascii?Q?26r8gTrmSbLHK/7Wo5gjpph8SR3BzPcz6X9lOS5shqDY0et6BfjnpI5e/gOK?=
 =?us-ascii?Q?bsYFKSCEid5tTuyBg0W/IE5/vsunIvXAE80jfPFHI/eoxkeRgj1WqBIBZv/D?=
 =?us-ascii?Q?f5O2c6LiNqePk5uYUuNnRYBJLuoU+ZQKUt80iOCu72Xns7ytUPzEL+tgp3CD?=
 =?us-ascii?Q?XssP08sVQxsGt0VX2TCeDdviCdvj4iNNllQIISES6qyL6ooplOnG1CrKBn+1?=
 =?us-ascii?Q?inDn97Ucdol8P5PmdLaOszjCD0nv3eCn6FZOXWB37JrmdqNyaMXbUT8E9mxf?=
 =?us-ascii?Q?A/fbkikD7Ms++NbHL1dn3wlH+BHIkfvd19O0CGQVBLVceAt+NDpstzf3yJLX?=
 =?us-ascii?Q?tAPb43e7F6PzxK6aJuZkGG1p5OVD3YgoocDUNs6MZIdUFptGhncfo+FfSGx4?=
 =?us-ascii?Q?5X7PXmD9l3OrAhJK9h69ApYUwIuTBvhU5gJv6/5JmCAmw95CUIUr6B8sYnC/?=
 =?us-ascii?Q?v7sp3rEBpJwUpE7EN7pjYV/jiGh1bmXUCfLZXWUs+yhKM3FtWLGZ5IepAuds?=
 =?us-ascii?Q?IneLWIjVgMszD1NstZRWxadvTjp6NKUupJaDPrPwloZK0GhV2Ad7ZM73XV1l?=
 =?us-ascii?Q?4xn+FpK6AbjaeWREobxY1EAdn+20HRtNTjvJuEgHEkjcunMdyPWaWsDwNXPo?=
 =?us-ascii?Q?PM1SEomZAy+SmYnC3LiySBZFaUANsJJZ7O609MJYD2Kn9wS+jKbYWRRuBR2K?=
 =?us-ascii?Q?b+sDynpTDr+jN3xTTQ8IRN2iUwX3BAWlKkwdFECn5UoXbnkPB+jkpPpYL1B8?=
 =?us-ascii?Q?DXe/49MYKu3weFZYBSMvOcF0/pl3s1Q9gEnilsCCe70BMl2/xUTCqqwn6ymr?=
 =?us-ascii?Q?WTG7dQx7I/mcG/iC80v2Ry/VvRgX+R6bmS8jwNeKMqw6HlOQt3DNZXgFiuzR?=
 =?us-ascii?Q?1WitPGUqqhgqkoxiHXqdyBt/xkRLGkB49SCKudpyrGBl50HFkHBKajo/iroI?=
 =?us-ascii?Q?Unv5M3F68Btfg25/7bDoq1Y3M06NWbhWwhu2bwhsVnqBz+k38iwQJwB5lrWT?=
 =?us-ascii?Q?mAFCr7QRk2Blxh8tUb4dN2/paHmcYlJ8MSPF/b+fMYH30+IR2dncSEsJt0cj?=
 =?us-ascii?Q?hFiSVQLU4ZRk0mMlsVN+Dm+wHb7ah2IupofLF3i0EqqUmrNMtssjB8+fxS1f?=
 =?us-ascii?Q?CeyTQ/TlREu/+m7QCTDBzidxfYUDH7vjW0dE5G8387U7AgOMhw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?ZcBcOWcQRIDOZWibUjvU1zqBAufaBjyez1CO2iO+iO8aaLNyYOLVdacqKDhi?=
 =?us-ascii?Q?dAqr/504v1gHgQ9D8iuhdwu2IQH0hxbGRQqRTByLrS+hfCbh09E3WvtQ84FG?=
 =?us-ascii?Q?IxHIyaQInau9srLWquxtxb2X2qCh/70T3IDdWpBzRkp7Ssyc6cysdsYr6Eg9?=
 =?us-ascii?Q?nUTSREmF5dGHGddhWu/Awiwiuu4Nkn6sY+u17SVKZd1XFsm275A1RXHI8ODY?=
 =?us-ascii?Q?cJ7SRuKA/lUOGzKFj7HeTA9/fOp8pF2reWE3IGUXh+otEDUof36o3HdN5aPO?=
 =?us-ascii?Q?+nPFfH3qk32/SB5U2CSbhpzagIQcUTfaqhzgQrnLYqYG5zJ6xmUDboCukEB3?=
 =?us-ascii?Q?K4/pzndu3/zAE6tsOTwY7lK9kQzlWQh3nU8hl0bveH8hC5XrVJY+MqYhzROU?=
 =?us-ascii?Q?QfXB89+jSJeWnKDS/eTPiEyohKXPuWa980ehdsWgG6BpI3QcLUipG0CcUpGG?=
 =?us-ascii?Q?chKxGmY45tJZdtJXdtWNVU2ErMivxTsZMYPNVMr6s4F8TDzMgZHjeP523ZlC?=
 =?us-ascii?Q?gazmRrafIb5WcKx0agR9eum8sp3QzFF837uzRDcVhlSl+mxHYQ3KdQJuCHC6?=
 =?us-ascii?Q?ul9IeTbXU8Ibpj+rmkqNJoKjXKPGTWWYuPI5sB8PHyaQ9tEonvlQxR7x893Y?=
 =?us-ascii?Q?9OLs7fPM8yDxAsI6c532FVJT68BuY5AZ2+44qIX3Z3GqhDUUZLX1qtf49drV?=
 =?us-ascii?Q?ryTS5gpsa0hp9S0q0riW3QTyv3CdPsg9rTg7qkWs+ChAEZxCtFEAUzoc+P2b?=
 =?us-ascii?Q?5SbwU9/7w+5ZgJzTxPAmGnVoboS7BjNmkmvnIGJtbORWyfbi+eB2y8IWkiab?=
 =?us-ascii?Q?451vAyBMrgI2JRZKgoJgPDUdoMpV1R2ucJOcs4y/helkrgFR5/SQBQw9cg2b?=
 =?us-ascii?Q?xhUmjUyAqGf1KHPPWvlGeK9S48lZFVKzgDgVFiWge/ZD6nSvBF/PDPnEbc/Q?=
 =?us-ascii?Q?/hskX4V4Lu01QabPmE8CMcF1a7UX8vpZs1lhSKMPQh54MKUhFQWmAx+xEKPC?=
 =?us-ascii?Q?e+QlL6KcEUbU2loY8SuJtmZkj3w3IW+Vf6abBtRVuChYC0NB657UaDJHIG/Y?=
 =?us-ascii?Q?8Ps/GOO7//QxOugrHHRlBYN03yaeJLwpBKDFlr0MElmyNW6SHegJj194Q/di?=
 =?us-ascii?Q?EurOynHIfI0BkIZmglVdE4o/f53HFWExBmS1JvCaRaxSMhKbitlGYvnwdycQ?=
 =?us-ascii?Q?pa3FCijDrfHrDIKooHJ4ktgzj5odEudP9dDkYmelR1C33xU/gr0XrHWEUXCr?=
 =?us-ascii?Q?WdqNyZfmI3us8NmrJJzZIh/dCp3bclVjBQ/I6SsEx0vdxDPAO5dX7ecbOjZP?=
 =?us-ascii?Q?PbBKT3WDZvv57ObacvHMjdDKRwm4cRR6m75dLwoM8mwaoDJVXDGbraKRL+fb?=
 =?us-ascii?Q?zRCOIQbe1dw9woUYTzu5WJx1bhGLUFK8MDiETp3swAPKSJQ15SvSmnQpk2Hn?=
 =?us-ascii?Q?xEmM0PJivnAzL2IfSmDwZP9vm1ySjGMgRGYei6ArSigp8VKp3Dx9I3gqqK3+?=
 =?us-ascii?Q?5/H7vkASZYYcUKtzgZOWKi+fKFzEfYS8OhnECuuPcfQqsp2JPuLRHPn5WD/3?=
 =?us-ascii?Q?E7iw4DXDgDrPvwEJDKOZUTfSMOeoIqSXYolvITID?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6bfa86c-b495-4ae2-64c3-08dccbdb8b2e
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 05:44:57.4746
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i4rB+XBkUhovSg1V0nLwak5OhklDRwxSCO0ZjqFj2g4KlAUjXSdMT7VTu3T2sTJLzz/7GFhNiGK3fwnV5s5cqYRt0i0b7KFrTHAEX4l4D4k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE1P216MB1543

Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
---
 .../ABI/testing/sysfs-bus-i2c-devices-sma1307   | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-i2c-devices-sma1307

diff --git a/Documentation/ABI/testing/sysfs-bus-i2c-devices-sma1307 b/Documentation/ABI/testing/sysfs-bus-i2c-devices-sma1307
new file mode 100644
index 000000000..8046d8bfc
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-bus-i2c-devices-sma1307
@@ -0,0 +1,17 @@
+What:		/sys/bus/i2c/.../check_fault_period
+Date:		August, 2024
+KernelVersion:	6.12
+Contact:	Kiseok Jo <kiseok.jo@irondevice.com>
+Description:
+		Value for the polling interval to check the device status.
+		The unit is seconds, and the default value is set to 1 second.
+
+What:		/sys/bus/i2c/.../check_fault_status
+Date:		August, 2024
+KernelVersion:	6.12
+Contact:	Kiseok Jo <kiseok.jo@irondevice.com>
+Description:
+		To check the device status, the device's status value is read
+		perodically. This value determines whether the operation is
+		enabled or disabled. The default value is 1(true), and to
+		disable it, set the value to 0(false).
-- 
2.39.2


