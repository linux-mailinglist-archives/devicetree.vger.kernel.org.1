Return-Path: <devicetree+bounces-271818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ugQ1FddKqmmIOwEAu9opvQ
	(envelope-from <devicetree+bounces-271818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:32:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EDA21B1E2
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:32:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4D8D302A501
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4891C33B96F;
	Fri,  6 Mar 2026 03:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="mDEV+tHg"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11022092.outbound.protection.outlook.com [52.101.66.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7250A23FC5A;
	Fri,  6 Mar 2026 03:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.92
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767955; cv=fail; b=fmLEqvhSNkDQJtnj69PZ4gTCl5LWLB35CAE8GHm1Cn2lx+aSE+uknY/wtKcBnWYeexHo8T8v92RuwA/kVODJ2bi91nj6DLizM9dgkx85wCKO7BA17WecaY0IpAn8PBEPAWEWFSCIZq04udYMxPjcnM0r73Nrm6TO0btjC/znMSA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767955; c=relaxed/simple;
	bh=pIz7uYXYOeU9e8uJvc7Q3nNakZHDkHx6UH5MZJ4ucIs=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=rZKzYvYIsaTz7MEFDEnA9cbcJ7Z3GRlobDo+63FlT8F1siVoWsG5z9/05OX3yoCojkiNhtu4e4OyYTV3kDpYILpVh/41iMpoeZw5ssIfeBLYOsVvK+HcdgW5dPDoT+bimvWqbp6O8GXtKjCsfAa7rJPjBM2jmafmTHtTqs885fI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=mDEV+tHg; arc=fail smtp.client-ip=52.101.66.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AKlsbYeUvE9EqjQD0Jzu2JqjiGSczs59cWs4Fc9ZxVyYy/mfOKBM91VMrRMj1FTu+rBNY1OKuDq5EuiZMtf5iLwLj8rEy71aDlbhLmPiEWbL9+dGHA69APzDIDrEVIfUbPB1PLbVnufw9GmbAgR3RcFcoZc1JDTIqRp8F6piHtx2PyRLMi55zuLgoCKnNXxuma9Irm3WIINcoBDQUlC/q3OM9a0Kbgy1jbn2nxNkjD6cucDIY1xsi0Y5XHeqik8dYCI7akXhWfn67JvljLsNorSccG+LrPYn2QXa/AAwQEBnfGlD0xHBkvWVk7ZzQXQKb1/376NzrxQXnnciHSCkpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=16/oWo7hH/oplp2v2/0w63q4/Rkz3iaR3W/4C7EMTQI=;
 b=gDJ6TH3ibSn58AjetNgKLH4mkpiAkvoknu9vX67pCE7JijTQ159vs9TlgjNVRSw58EruENMEKthiGJQJDi/cQ1DoJuE+EDP44nYvXLkZcdI4x9xHDCf2NtwIwBTffTXHOuf847o/OfgQGHR/n/D9c+7vk8Z6mgQ66HvSXgD3N6T2FNFqU5Hsc347SyEFoiqT/DweAxaoSpjk0AgDG+K7jNPZhRmyzuCyI/9HRWGvGYxRDGY4gTKUvZk2GY4GgbCFSALlRVm/MJQsuYm0MKCs8TJT/5Xhkvo8LqNSyNWxRVv6/A/wRv89BV4/bRunN5+ccueUZ8cG+jRf3IvOgYeSOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=phytec.de;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.de; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=16/oWo7hH/oplp2v2/0w63q4/Rkz3iaR3W/4C7EMTQI=;
 b=mDEV+tHgYw5ckk+HOVJWpG3bzxPkn/od/0YlHzw6eALrPnttop3wJn3elraxT2ddslv6I4TnlDtzV2WNozVp9LE5woh7dmzieLL6P39hJ/dxnDuRzKK4uNbSZZwl8jpyais9TE5s+WzDznplVVkZARlSXC1cX/NOuhyBfrLmHUO+UWrcxb9sWw72hh/To+E+BHZ/Y41y7PqUwtb2htc/uHz4GTU4NegSSNGi/Z1hXxIoklpidVWsiuWvmEMiFC5bKiYzTX/emV9dCy9wdPzpMBwYJ39Vmi3tbVbbyCxZaCNbOXCmLwNL7SPQstjGQLuo3W9V8o/v2B0SExLjaYlCPQ==
Received: from AM0P190CA0002.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::12)
 by DU0P195MB1497.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:349::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Fri, 6 Mar
 2026 03:32:27 +0000
Received: from AMS1EPF0000004E.eurprd04.prod.outlook.com
 (2603:10a6:208:190:cafe::23) by AM0P190CA0002.outlook.office365.com
 (2603:10a6:208:190::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.18 via Frontend Transport; Fri,
 6 Mar 2026 03:32:27 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS1EPF0000004E.mail.protection.outlook.com (10.167.16.139) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 6 Mar 2026 03:32:27 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 6 Mar
 2026 04:32:25 +0100
From: Dominik Haller <d.haller@phytec.de>
To:
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v2 0/5] k3-am68-phyboard-izar dsi support
Date: Thu, 5 Mar 2026 19:31:43 -0800
Message-ID: <20260306033151.276202-1-d.haller@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AMS1EPF0000004E:EE_|DU0P195MB1497:EE_
X-MS-Office365-Filtering-Correlation-Id: 301583f6-d49c-4f34-9fe0-08de7b30fd8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|36860700016|82310400026;
X-Microsoft-Antispam-Message-Info:
	zvNP95CYUl4rluvM1WgyyuS8vt8+Zb7pJcnr99DuLUGT16X5wGB7rDH4Uw6R4YzijTCC4cx/3ZO9tb0NbLjmuA1wEPWbXuc7v+9qTf2B5nMjilU1mUfedX0I2YkKOaBC3W/i0t9rYnsDqRAUQEgNLcsacD/AsIsf2AA8duaGAuHxZXttKhBwCNGY2dhhhPAr/ozKVTBGjJVT9ZqbVkJb7k+W2vSd03Wdbh1Xwg+EsrWbAjAUWq3OuWjmJJW8cYWMdeaola73ZGgWe7XIHxYuRrZhXqp/ozX+L8LChX5NwmiKh0fA6gH9eoiUSiiAVCRxaHoMKZBrT1UqvCYPpMX5+hFxqk3LaR0R03GcovBGn6mwk6gEq72Qd2qH5IteUYWQTrlUfPiBLVCsXgKGgjIUU1WljcVwrrQEn6oK45Ldy3rWBC3DGCEQcqJS40OTUg2JN2BexAXsvWSC3FT1b7mo3+tjGlGY3JI4EuYWRL66hMWuOEoLADy0X8xXcwWZFMgHvWer8IoOPXXIei7z5gDIh7YDXVxMAlr69hdGhLdfPPAgf4pAnj1VF4tyHQKmxWqH6POpsda/pDNpHoeU0gFceintuxxx94Py20X0qes/FmkVxFjzj7+FbE3qErOLVRQmqBQOk9GtQ90DNDWx0a13qqw8lkUVA97RnVYwynit2X5UZUkX4exGWyKrxEoEUHtcakLRdLMgVoSpkMweoCQ6LVFiL0WH4+NWcwZJ9gt54wjnqqn2huJliGEBviwPjHFnfSm3MjZb26Orvbdx78Ulp8Vyw+5oLoOMUtpxAOv/0ww=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700016)(82310400026);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	a0urfCMAzNXKaHQYGBWkmE1MR6T9i1xDCqjS1mWg9fgUSK5ea4VmQlyStKAraDzZW1xP4kLZodrDZMn47rnlQnnIWDtCFwj+sfW4tfc8Bj2jFQ1wsDsJ2O8CPHrXOoF1wyuxAFOTXItDN3MMaMYc+bNfeyQjDgKR/bPYqbs/i05cHzELjOFnfnYMHJ/rcdMUBXkqDqg5MZy+BG7dvhK8+L9TL2OT7jZM0ftukV0VnrgWfpqp63lRmBqkTEU/iIV9Ybq9JjUdorOKILPvjxIiJPy22lxlThF2q5FMDsBwV5/EQbeffwbmd3jRZWVd5SnFNJPXR8Iy0lhwww8F0Xi/EJnKiARIdJ/zmYFBa+lZKpyXsLO5/cUqhaysQjx2br4P/yZMgEy5Eykoi4xoJ1yffgQ9B0PHraS0nm6q/atcUIJiziDWRB8qeg+ZG//rDSWp
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 03:32:27.5285
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 301583f6-d49c-4f34-9fe0-08de7b30fd8d
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF0000004E.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P195MB1497
X-Rspamd-Queue-Id: 99EDA21B1E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-271818-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[d.haller@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

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


