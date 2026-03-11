Return-Path: <devicetree+bounces-274364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPqCJnr/sWkvHwAAu9opvQ
	(envelope-from <devicetree+bounces-274364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:49:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C6D26B6F8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:49:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A28F230490C1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2741A36EA91;
	Wed, 11 Mar 2026 23:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="WcvZKKs2"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11023121.outbound.protection.outlook.com [40.107.162.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B542F3C19;
	Wed, 11 Mar 2026 23:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.121
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773272951; cv=fail; b=JxdimlL5DB5He6PIDc+JVy89dU/gGOk2wkm5afDHc+G36ttm5hz289+DD50S5cIAKgu4ujIbbx0Q8ziuGO2K9E3TVKrtx5vDvAdVbyr065FZ1mYJHZrKmktqARmaRgiJAr1SELTMhpvnJLl7n3jVjfGw0PFR/WjsUM2kNVyJvSc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773272951; c=relaxed/simple;
	bh=o/jn9U49Uu8RFTW0aO4imezvKl0hWp/5TpgJy/rdz0E=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Q253Jvf/0hfj8/ZZi2KOCro/YPxtbAqD+YLHrCJ6N2ww1SalsOQKGQruIs0TuUkUfDDupuArvSRbDoZkJHKRu/jRvjJaXcBrSJdMP89kczOula5z4U+OtkTws1nndXH2vcQ6fL9un4GEp3SUY6my4Q/KT/55ohDqDBTp8+Gsg2U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=WcvZKKs2; arc=fail smtp.client-ip=40.107.162.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a1igzv0bvr1MVovDYvHlac8HHK1uctmGoR0PVsqm4L53nr2Kwsi6drEP2u0BZXgPVFbHh6bjhyC2+BKaKhJ8RaPuAJ82ZW+NCmhbobCx0fUnB6KO7SVXvcudp3PzoPvN1oQtnv6EnfKLQq0tGbb7PC8TwLppmS0BpChhr4KRfnGME7zM3a/r6E7RhPEDGUskbdsoZi1NC4kHbRn3NbjEK2CpT5Ynep2YDgPT3B1VWOfl+xljb4EtAWfLAdqUQ6ezSNaAc5opzAYFoRPWN+eJlw4N+S2hPCOujbKI2c1snqm92MPHYPqxD3apOZ5cIfwpUInHLTPof4iryTOsiI9oYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HInTO4t1ZJ6RBrtr8PJoqMd+l+D3EyDdSPZwBSIvWSY=;
 b=TdU4OBVbuH39zWjn0LHGYv8jzhW4btYF6GoDrIxndwsO/BrytU6VPGAjzKoOzwQB7+VMo4cCvfedvCQpE9IV/QcjeSl/gvYA+tu1PVVQGGsaD78g+Yfp24lI9itytgRWHSOyhXAVo08YmfTvZC8vc9PhPhRIDCfUsHBESTqVW9TIbglHssecIKkabOjXNEyBkaZKej0dwk2Hn/H/oIeKg3/9oDPtmCj0yo0DL5bhQk0RUXmFfduibAE464QZdlbTwYdRtNcnHgZxu+9QyoorRRdwk1NlLNyggvwp3QIcbSl5/+COR9kZEu9L6u3AgEOBmChbE/Ab/8g4ru+ZdA/IRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=phytec.de;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.de; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HInTO4t1ZJ6RBrtr8PJoqMd+l+D3EyDdSPZwBSIvWSY=;
 b=WcvZKKs23Mbv3yY9gaZK/ANRypIvsgxEaGw+NW4KorEtJnU1WKjoMkC2d/ssW48wPlgH75fzeqxLeqyR010a9zYG7Ejlnfjg3/63i3EeV1qAs1RzQZfOrj3DavNX38M2eBIry7ptKVmY0knY9h9PywtGd1OLTP7XBtN1iNpV56GaeBmO4CFhCWMl6U+xmX5FTw2B7/Zps+hoZP0KNmqWD/W1UH1Y9WfKIb1RJgs6z9d0CH/mQu6b/iGKkDRn/fCrl/jynFj1LFG+eggymxgVz/97GHY+fMRymUT2vjsxveBCuCA7YaOril85aGplA6Y46QhL+JXBYGoo5eu4MFsLVw==
Received: from PAZP264CA0119.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1ef::12)
 by PA1P195MB3070.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:4fe::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 23:49:03 +0000
Received: from AM4PEPF00025F98.EURPRD83.prod.outlook.com
 (2603:10a6:102:1ef:cafe::16) by PAZP264CA0119.outlook.office365.com
 (2603:10a6:102:1ef::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Wed,
 11 Mar 2026 23:49:04 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AM4PEPF00025F98.mail.protection.outlook.com (10.167.16.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.1 via Frontend Transport; Wed, 11 Mar 2026 23:49:03 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Thu, 12 Mar
 2026 00:49:01 +0100
From: Dominik Haller <d.haller@phytec.de>
To:
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v3 0/5] k3-am68-phyboard-izar dsi support
Date: Wed, 11 Mar 2026 16:48:36 -0700
Message-ID: <20260311234844.56443-1-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Postix.phytec.de (172.25.0.11) To Postix.phytec.de
 (172.25.0.11)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM4PEPF00025F98:EE_|PA1P195MB3070:EE_
X-MS-Office365-Filtering-Correlation-Id: 19c1ebe6-6abc-4534-bf36-08de7fc8c658
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700016|376014|1800799024|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	KlT8m29aj9AhP064hfQKnGPxXMIy54EVXRvV62ZtWITJmetu9ArT1iyU+RtTDjvDoc6HZt80/KBnz+a53h4cMM6tNTo6eN2B0jSB/Lx4c3DSNOARJYZ38DPlMnbBb8XJ3MhFujMQL4+Fg4B8XyAI+RLQBpOAyEiVlxhc/mF+PwSZikcSySddHZw1FaxnENT593N7kxkBVlHp2SHeA8TMBPgRcKBMYoU7FyilTUh/TrGrGe2UoUqBSwH/OqNWG6Cgs081k5+IXF8Jxcmu3J8BIQzDr4Zfd9HHsnOgJyRVKkVDrbtRuK3hBXzMR7eRCUmmLrVIbs5RJzQJP/z27mcr8rixkZtGc+xVxFJzLsbCeJP1fVc/VbNHyu/GqML7FgF7rPnqPnnpWwTINtJUlIp1dUf13MdnorxBwXI4/A2X9jEUJgyYRvZzs43m7FVDWMkU69zo8TdSWdvMmvMBa//MwL7lUpxeosJziz6VTGKuVtYbIsX4EOZmvRzvQ4HOunq0/+4bccmsJ3FqigCRwcVa/8Knb6Mw7AJO/5FSpBl5WijdRWP2bHdAlh/Ztx9M/Sh5MLSi7eqJ4UPO+fw3pQUA90j8bmAyENHQDuqgSRrjlZ2zWHCRInCC7BR1EdnTHaJEuVhjB5sc7ExE8PfLYg4ZyjouKLEI8HT30/XzUSImZMQmfA7zHyby4/AeMdj/8lJgVLcocc5mU8PPGx/fq/R+tPUEO4WFK6dNWujNNEhCDYs=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(376014)(1800799024)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	O7TFdhzpv9zOCFNnL2DruiJAdDHVH6sjuBOL537WbfqCfnL7ew2vO6IbOO1IgH592U5yzHu5GLUfdSK2+qKWSLCxOFdM4tZqrAY4twOvkElfqLNNbRmAK3x9F4FGskjRvFTR/pINLLYVBBehDunkLOw29jdeF+FLfgUCkslNTJq48TpqAOBJZxNWtHUdaXFe0BYskFjisJ1XwyYuRRUmP1seyGVhOivvKX3jnvAv0ytpgdxy3KZ701g1Q39l9QSArqY4MWpD5mTmtl6eyQu11BGuMm+X/0Tm1zRz2ey7S1jxsbqQIB+kQif4SGt4CYqsmhVdnB81qLyg8R4Bm5ie1ofhR7sIRickS4fFNL7mpQs+FBPzYdhbSjDmsLaA0U2CWNRwl0lsCy/pUPxmJz4/fi1Q5nEnh6IAlv5X3p2a3KSPBTyKpTsNQpmOKtWZfj50
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 23:49:03.0622
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 19c1ebe6-6abc-4534-bf36-08de7fc8c658
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AM4PEPF00025F98.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1P195MB3070
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274364-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d.haller@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,phytec.de:dkim,phytec.de:mid];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F0C6D26B6F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for the two dsi based display interfaces of the
phyboard-izar with the phycore-am68x/tda4x som.

dsi0 gets converted to lvds on the som using a SN65DSI83 bridge in the
default configuration. The phyboard-izar kit comes with a 10.1" lvds
display with usb touch as addon.

dsi1 is routed to the carrier board onto a connector. To use that Phytec
has developed a small extension board "PEB-AV-15" with a Lontium LT8912B
dsi->hdmi bridge.

Changes for v2:
- Drop the following patch as it got merged in the last window:
  dt-bindings: display: bridge: lt8912b: Drop reset gpio requirement

- In arm64: dts: ti: k3-am68-phyboard-izar: Add LVDS-Display
  Reduce pwm frequency to ~23kHz for the backlight. This is supported by
  the backlight and works better with most fans. Since the fan connector
  is using PWM0_A and the backlight PWM0_B they need to use the same
  frequency.

- In arm64: dts: ti: k3-am68-phyboard-izar: Add PEB-AV-15 overlay
  Fix license in boilerplate: s/GPL-2.0-or-only or MIT/GPL-2.0-only OR MIT

Link to v1:
https://lore.kernel.org/linux-devicetree/20260130205820.83189-1-d.haller@phytec.de/

Changes for v3:
- In arm64: dts: ti: k3-j721s2-main: Add DSI1
  Pick up Beleswar's Reviewed-by from v1

- In arm64: dts: ti: k3-am68-phyboard-izar: Add PEB-AV-15 overlay
  Fix the remaining style issues pointed out by Vignesh in v2

Link to v2:
https://lore.kernel.org/linux-devicetree/20260306033151.276202-1-d.haller@phytec.de/

Dominik Haller (5):
  arm64: dts: ti: k3-am68-phyboard-izar: Assign dss clocks
  arm64: dts: ti: k3-am68-phycore-som: Add DSI->LVDS bridge
  arm64: dts: ti: k3-am68-phyboard-izar: Add LVDS-Display
  arm64: dts: ti: k3-j721s2-main: Add DSI1
  arm64: dts: ti: k3-am68-phyboard-izar: Add PEB-AV-15 overlay

 arch/arm64/boot/dts/ti/Makefile               |   8 +
 ...-am68-phyboard-izar-lvds-ph128800t006.dtso | 125 ++++++++++++
 .../ti/k3-am68-phyboard-izar-peb-av-15.dtso   | 192 ++++++++++++++++++
 .../boot/dts/ti/k3-am68-phyboard-izar.dts     |  18 ++
 .../boot/dts/ti/k3-am68-phycore-som.dtsi      |  17 ++
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi    |  39 ++++
 6 files changed, 399 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-lvds-ph128800t006.dtso
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-phyboard-izar-peb-av-15.dtso

-- 
2.43.0


