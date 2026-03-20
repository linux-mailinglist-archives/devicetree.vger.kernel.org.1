Return-Path: <devicetree+bounces-278100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KZ/JpX4vGlW5AIAu9opvQ
	(envelope-from <devicetree+bounces-278100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:34:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4595E2D6A9B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE50030A1870
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7BA83451A9;
	Fri, 20 Mar 2026 07:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="alGwDJFG"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013029.outbound.protection.outlook.com [40.107.162.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B66C307AF4;
	Fri, 20 Mar 2026 07:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.29
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773992032; cv=fail; b=rLbNiCkYH96ZEyd7JmgggCcfAjNSCeq1oQr5Z0JLszZvInMztbk+itSf3mpeXBvs/+xPuSVKg835PjCIyKtN0kUBgtzIDBRnu03czZMpkBBLkhLdITpwhjSGDwkgbXvIhdgWgpOxXduov3F0GWzMFHTUqs3YkqXpBUxsO2a5mWA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773992032; c=relaxed/simple;
	bh=VBjKq9aihQLsdBoTYPeLIJcGXY+MPB0AQHxHHFQOuRQ=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=FGJ12CB4Yj24LFfEfwkbDn1lwnUfRHz8Zz09xd/ett4IX1oVODLw0XTljIlJ39yLrUspuKsXbke0dYM+kj6PKLSaYiT2p8gos7YRUOQ9yrHGnc21eq1DEgRSE+CBYURPFK9ZXEbJQl6QurjLVku1AXrLfZ1BvCKcnARfTz24qh8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=alGwDJFG; arc=fail smtp.client-ip=40.107.162.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wAhAANJIDFSR2b6FjY+0yjDf5V8RZTSbY6kmf9F+osUVB6/YNf/nZKkvT+SwMe4rzuX/D/RANnePwQA0/poONt0U7FOCQoSpFiLND1Xq8FxTekBCfTsWZxs+NrvGxQU+445qbL4jIW1TGelpc3y5fUepYjTaIKjeGkyBaQYx3m7uunB4agpEIdu09M8oFwDtXTzailsF9ZkiasbCQgs5/c2r8OdhIUoR/nxY9toY1kthAj4QK88QuYmtSihZG91j8VQibt5X0i7mSxKNOHaq5BpMhojOKOw3RTZgxTM7BWbeoGlH7g8BRdLeHxLPjIbTX9Q74hWJ35wA2SP91q7Ptg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R5BW41JdMI6LLyYKFLTNXDWNRLuNELrE+z+l9GgSZBY=;
 b=mpISxmJv85Cb2Cu6fQXiA/1hEwEh9qW3naFFavbickLUT2nrSHYGdCrBCancO1qkDFD7ktKYF0axYKw835lYHpMbPeXvtVOSNk2RW0sqpj7vIp8FWTUsAoWBnWO61JU1HUJV4pEU39J+UJD2diSFSWLu/GnLL1iKszKvTAjXiKNrbYd8SjD3TkcxfO/eghHpLaFHUBazseofgjPBfhXcO6NtAEbnUnNuPZeF8HfN5VGZzqh+3FRWpAwopUrYVHupkvVJzEVRMb5CWgpFKZ0mAUXFG/0M1paJhNNAdgQAHK/dT9Rd+ZtLqca9q7ZG2NDLVQD98zD3A3m+Oaggy7iWXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=diasemi.com smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R5BW41JdMI6LLyYKFLTNXDWNRLuNELrE+z+l9GgSZBY=;
 b=alGwDJFGZAahwdNSVai59oq2JoGtcvmnMRTKdR5s19m7rxaIaTrZSNA4ot/NZVFQgBoLkXql9nn9PSZfpY66MvQGoqtjQyuhtq0QFLTX8MxVIJoq5khRw1R2x921+wOm9eLflyJR4xH/wKV9Iqbpt3JvXBiHnL1YNdUeDdc4b3U=
Received: from DU6P191CA0005.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:540::18)
 by VI2PR02MB11071.eurprd02.prod.outlook.com (2603:10a6:800:27d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Fri, 20 Mar
 2026 07:33:46 +0000
Received: from DB3PEPF0000885B.eurprd02.prod.outlook.com
 (2603:10a6:10:540:cafe::5e) by DU6P191CA0005.outlook.office365.com
 (2603:10a6:10:540::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9723.23 via Frontend Transport; Fri,
 20 Mar 2026 07:33:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 DB3PEPF0000885B.mail.protection.outlook.com (10.167.242.6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.19 via Frontend Transport; Fri, 20 Mar 2026 07:33:46 +0000
Received: from se-mail11w.axis.com (10.20.40.11) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.39; Fri, 20 Mar
 2026 08:33:44 +0100
Received: from se-intmail02x.se.axis.com (10.4.0.28) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server id 15.2.1748.39 via Frontend
 Transport; Fri, 20 Mar 2026 08:33:44 +0100
Received: from pc63539-2527.se.axis.com (pc63539-2527.se.axis.com [10.85.100.100])
	by se-intmail02x.se.axis.com (Postfix) with ESMTP id 9E9641738;
	Fri, 20 Mar 2026 08:33:44 +0100 (CET)
Received: by pc63539-2527.se.axis.com (Postfix, from userid 17419)
	id 9ADC860AF54E; Fri, 20 Mar 2026 08:33:44 +0100 (CET)
From: =?utf-8?q?Andr=C3=A9_Svensson?= <andre.svensson@axis.com>
Subject: [PATCH v2 0/2] Allow caching of buck registers when no GPIO input
 control is configured
Date: Fri, 20 Mar 2026 08:33:23 +0100
Message-ID: <20260320-no-gpio-control-v2-0-dbc938e462cb@axis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAEP4vGkC/3WNQQ6CMBBFr0Jm7Zi2aLWsvIdhgWWESbRDWkIwp
 He3snf5XvLf3yBRZErQVBtEWjixhALmUIEfuzAQcl8YjDJW1cphEBwmFvQS5igvdN4r89B0de4
 EZTVFevK6F+9t4ZHTLPGzHyz6Z/+3Fo0Kle1Nbc9OX7y9dSuno5c3tDnnL13y8bCtAAAA
X-Change-ID: 20260309-no-gpio-control-9cc02b1e8994
To: Support Opensource <support.opensource@diasemi.com>, Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Adam Ward <Adam.Ward.opensource@diasemi.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<kernel@axis.com>, Waqar Hameed <waqar.hameed@axis.com>,
	=?utf-8?q?Andr=C3=A9_Svensson?= <andre.svensson@axis.com>
X-Mailer: b4 0.14.3
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB3PEPF0000885B:EE_|VI2PR02MB11071:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ef25326-7dbf-4e8d-af24-08de86530586
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700016|1800799024|376014|13003099007|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	XK5aEW2MGTozdMmYE9Hj3z2Knq3H4ibTImZfrWqoQ7qyQGsCDRh/PToYhD1uHYeC8Sgh4coIDd2POzvv2479NxYRyXDVX6kD+j0ise5Ri8LZqfVQD258B3l+0rnTwoXmJokpEvrGLpHh07VsujycPqQEzFYJ4uIUjRbqao8tFLGD/vRoWpWkD/p8ARVQY3QMakQ3ty5NbvUO4s365AmyR3pWAxnCeKMQe4x5WBbK4T94Y2pSMp3Icfs8+SHRNdqcP17Ax0+3C7GvtTjhUpUSDS7YvBZ7qQq5YPg91jorvH1CPbsOGMEIYhjAu+mU7JE4w4nxxyOwKVLUul4fLUKD6YAaQnMJSkU1fSCxOiT3g7FlGxzLoMpD2Bjt0NDFQxeHbOa2IFuTrHfiAujjk3IkjvfZciWNDgxEkXF8VyiY1yr19XcnTwDijlKMKx8zHDKlqYtNoo4Dzu7DgjuACD4b1vP1u8OHmCAOFeq3IuvqvSWCRBm9B/SF1Z30tTqMmGhfP9CuY1c3E7e+kgihEftVbudZ6KPMrRZ/vl0O5RC3/nM+X+9tlbvFLgrFcJ/BDpLEjynqtJCtZrpBZ6MAMoSxY+kaGsN9AC56lJ0+6S59wTnURRX8Ix7LyCIL1mwrSGlZqhCLCF4mGT/719uZK1tFs6sYtRfpSu0Gv+KT9i+MTXPjA+Xw05sp4sl4k978IdQujqb0QGxgEFV1KIp4VBaWqE+6AD4F+TgadtvrnfMqednchYMgisa9UEyV0DriOvzxcwQz95jnStAFf7yGjvPxZA==
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(1800799024)(376014)(13003099007)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	THmH3sTZhH6UTfe6UlAbxcfEabIKYZx/3kY2ZU4pVawGX3QMsFR9kGoRCOWtWk24uHCifU9RytnNjBp6vsFP1s13g2wG1Xi9tEYnJUL5+me4L162Y3yFd0sBcKJkxIJ4ifLwk1PAWeBUD5I3Lca0r4PqZd6n8LdI8uOENZ6/FWKsPqO6rpKi3XaHwXbf7jThIuZOnj1bS2NHJjPornxV98LRO3EVL3ThGbr2NIWlOGuFP1ZAoynZ23v0cSvZiAfOZU+l1UWNUogsuKgva8mwsjkuJ80XIgYWlNaN7LjI0mQmrwkK7VgOuBgxQ3vWNXeYsGq2/V5aEJuWvaJjdPLnaA6kO6611BGdCdKm6Cz6FGv6DfhWrd/pBbZs5wupUQwlS+oX1azHRHrfD+7V0Cz7sqtG4wptdcaikRab18wH72bMSjvqEPVLU9ImOkiMtKvZ
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 07:33:46.5807
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ef25326-7dbf-4e8d-af24-08de86530586
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB3PEPF0000885B.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR02MB11071
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[axis.com,none];
	R_DKIM_ALLOW(-0.20)[axis.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-278100-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[diasemi.com,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,axis.com:dkim,axis.com:email,axis.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.svensson@axis.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axis.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 4595E2D6A9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series introduces a boolean DT property, dlg,no-gpio-control, for
the DA91xx regulators. Use this property to indicate that GPIO control
is not configured with the functions DVC/RELOAD/EN, allowing buck
registers to be cached.

The DA9121 driver checks dlg,no-gpio-control and updates regmap_config's
volatile_table if the property is present. Buck registers are removed
from the volatile_table if the property is present, enabling caching of
the registers, which removes I2C reads when performing an I2C write to
the buck registers.

---
Changes in v2:
- Update commit messages to clarify why dlg,no-gpio-control is needed.
- Add error check for mutually exclusive properties.
- Link to v1: https://lore.kernel.org/r/20260309-no-gpio-control-v1-0-06d2365917c6@axis.com

---
André Svensson (2):
      regulator: dt-bindings: dlg,da9121: Add dlg,no-gpio-control
      regulator: da9121: Allow caching BUCK registers

 .../devicetree/bindings/regulator/dlg,da9121.yaml  | 49 ++++++++++++++++++++++
 drivers/regulator/da9121-regulator.c               | 43 +++++++++++++++----
 2 files changed, 85 insertions(+), 7 deletions(-)
---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260309-no-gpio-control-9cc02b1e8994

Best regards,
-- 
André Svensson <andre.svensson@axis.com>


