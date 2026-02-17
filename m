Return-Path: <devicetree+bounces-266126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIq7AnFmlGkpDgIAu9opvQ
	(envelope-from <devicetree+bounces-266126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:00:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7B214C3EA
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CBC693028363
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2706356A03;
	Tue, 17 Feb 2026 13:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="DYdD37Gj"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012038.outbound.protection.outlook.com [52.101.48.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB1426F2B0;
	Tue, 17 Feb 2026 13:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.38
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333201; cv=fail; b=DxBGP4TQCPhjrbSXmZld718Yl8ZoC+BWGjylBLkJvJNiAr6yGNeGj4GH1K7Rs8neMtJptptrbnk93gg3e+66rNVqLKtoApnAtjpZJEAeyhf30jEoCB2kB8SM9/FSeIUI8171NbngINNx1NTa1XZfMalu0vgEDIxQhTT5ft6mLnw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333201; c=relaxed/simple;
	bh=TYxgVWzQ+g8z3rypB2ZVaRH0iB4w3QLBdH0DxDOqoj0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eZXhgdAia9qvRUlHO7hg97YtCUcZJRJZ/gt0/fsDEW4SgCOBwYyn3jHdYv9tiSf7ANF3T2G79G2BDxbZr6S148tU8YhU3c2zoWhd7/wC98b/d1uxd7VB2AM+G2BPnMdV7SaZK7LvUj+wrEaMJ7p/TaPds91Bp7+b4LTdGTj7r48=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=DYdD37Gj; arc=fail smtp.client-ip=52.101.48.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oY5goOD5igBzIxSiHJXSs7uep2Icg7y/rAcboW4eTCOgHQUACh0y26KvH0qk/VgwgX7S44VVImhAemwPVcHVV9QhVSQ6wscYIiUpTiI+zdE1zy4ktLji2pjDehw68KQxrBlRW1mt2ze4Z5ca992BmCX0SCjwxXOP3Yav6FfBHaZDq+Xu1I5RiOfI/jDNmAMve3kD+VBHNgsoIZTeOmHF3a4ArWdyXBIdfDwYY9e2udKca8TAO+M3pvACGCrb97uYOwFkBvIat1FIWBoO1uKH5qMK99LbL+73AqV5lIcUiaOvicRe25IoVxoIaJrSnU+T3jIC1XcCcNgpd+0ORzWYSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ZfTg+u0jIsnu+nrWJsyKGu7RanIgdyXfQ4lA/pnEw0=;
 b=oJyw8qsEFO0yMrZOqA3Xjb6dVo6Ahn/Pa97dy7SyaHZEzAGnZyliQLENZ348gBlVyPauYQ4rh+qlAjN9kPlKuB13c8hJRZXf/DPMWnlfGmpt1DFqhuJrwMoXiEgKTqy3iZp+PClc5XVow3WJxvU6PFDOI/4JlFETfNg1AAvMGX69md7dBntlrs6uDFBa8cwr9aWLCZuWG4kHewgNLMDDJlQ5/MHS0nJY2FeAuOqwQccccZxfvfKuppID8AdwU6GvLfM3+xFyfDlwW2Q6CvnlF8AwaUcWhwjSCi797Z6RlM1mk98bh7URKPWlh7Lg/XhijXAP+fyS7oE8M+JO6lNuyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ZfTg+u0jIsnu+nrWJsyKGu7RanIgdyXfQ4lA/pnEw0=;
 b=DYdD37Gjly2dXkMZ2AkAJsNO4grUUTKd5GTZR/Q7EALUBccM2j88waer33SM6DkY19SBvLxIA8x9ZOzg3W2lPmiSz7F/bVr6E8n6n3GYG+RMdlA80uzhClmrm+Yxw26KTGyIWsogpf3MT0Scl6S2zdf5JFBjYSrVP9mrAIJ5Kmy5s1ZDk8G49VJLqRpEB/9TelTw4+HwmXrx+D1+DsleHHUIQEcdUpO5AZl++CqdpajbCmi+ENY/2iUeirZUGtir7Q9/jRpHH+KmgHZXzGHPE7F1DvEkbrnhKgwWYLl1uZEwIhfICFm9eC7nlKoFixvdGaBPjsFPbE3F3bBb/9NVcA==
Received: from DS7PR03CA0052.namprd03.prod.outlook.com (2603:10b6:5:3b5::27)
 by CH8PR22MB6083.namprd22.prod.outlook.com (2603:10b6:610:2c2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 12:59:58 +0000
Received: from DS2PEPF0000343A.namprd02.prod.outlook.com
 (2603:10b6:5:3b5:cafe::4a) by DS7PR03CA0052.outlook.office365.com
 (2603:10b6:5:3b5::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.16 via Frontend Transport; Tue,
 17 Feb 2026 12:59:58 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay2.compute.ge-healthcare.net;
Received: from mkerelay2.compute.ge-healthcare.net (165.85.157.49) by
 DS2PEPF0000343A.mail.protection.outlook.com (10.167.18.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 12:59:58 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 35285FD318;
	Tue, 17 Feb 2026 14:59:55 +0200 (EET)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Ian Ray <ian.ray@gehealthcare.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] ARM: dts: imx: b850v3: Define GPIO line names
Date: Tue, 17 Feb 2026 14:59:50 +0200
Message-ID: <20260217125952.53997-4-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260217125952.53997-1-ian.ray@gehealthcare.com>
References: <20260217125952.53997-1-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF0000343A:EE_|CH8PR22MB6083:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c9a35d93-6879-4754-9eb1-08de6e247462
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?/j7OMlv0sJqY8T+9gI7Y8qtNIgRwHxyvKm2RdSREWA0A8W8AFLNr7PB/UV3/?=
 =?us-ascii?Q?x1udsWmSL1KThC0dR73e31inSLT9SOm7SYHx1bekbFLGjt8WKOlbHqFtE0V9?=
 =?us-ascii?Q?r99Dkzx7T+DNxkGH2M7XFBAvUZFiN5hnGGkRE+IhtUap+1n1z2/xUYWM/iA7?=
 =?us-ascii?Q?nIlncjoOffWKmwZdLwGsJkMnzJ/asQBhgs2YLxBmpSG7xNncCYm2WjcWJj3k?=
 =?us-ascii?Q?wQtreM/RLy4LGcoZahdXpdqCd9lfNlEhooDzCzCPP6ta50rq+MlpZ9REA4v1?=
 =?us-ascii?Q?+NzMxbx4plbdSm/+PbbIxQ09a1tc/mhDG9qanPEcETujjw8tkXpMK4ErT0yx?=
 =?us-ascii?Q?IxeDg6//Wk9ls+SY+rNHIgF84DBbgKILT5r/7CaT+Kn/32cNC7XqVqG3Uwrs?=
 =?us-ascii?Q?dCUKOqt6RXTHCCq6bcx4VIRoKhFPE2BxskyTdivVIgLnZYbXBxuO/RaUdRNo?=
 =?us-ascii?Q?0mazUUCQkfztZS0JWq0kxdO0qd9UPvL02jRuCx6yCC4aRKfgqFJxI0u3MbXa?=
 =?us-ascii?Q?bHqxyM0/ELw13UGe8LLs9+C1LiivF/6hYV7kfjPKUEs3cQUKvCzJezlsL2vZ?=
 =?us-ascii?Q?uWkzt3XkNStrPn+j6miXEuomrYpC+h/+PJaAtREXzfUsHjWaRVGvpTeA9ozp?=
 =?us-ascii?Q?vlcSVrYzp7yAtUovDsjBfU98O7preBbQJST4dl/mMXCxHMXLmdbvR8+FCn9e?=
 =?us-ascii?Q?J6uYT86DdftFTcnmm+TvZahgg/ysqhPGfVs5j98FlkBfKIL4BSyiurnsdxAM?=
 =?us-ascii?Q?pAxxJDre8ts9BNz/Pqw/Rt9rEbLrfECaJeeaALwXa0gVg83JsiDzJxXhScIy?=
 =?us-ascii?Q?9zLlk98PvCx6W8YniuX9BF8vC4gyL0WrF+e5FLgJqaOhh2fI8uksvs4i3lgZ?=
 =?us-ascii?Q?FGr98l9MC8vvjOi7kpavQLmALxa8Xwi2pUyCD9NzbRnfS+4tz5tM3WxBzgpz?=
 =?us-ascii?Q?um0Zci64t9fP/GiamZVv00SKAJ2PdcsojxH5fgu+6DiLPmfvQWFzz3rS2Po6?=
 =?us-ascii?Q?xQUNwl0CY0cEZCn0u78W+lV4/Gp3PCCx5sYDAbFwGQctp4cWMbVpltwqWObW?=
 =?us-ascii?Q?s9RvEi0V+RmbkXOcWStEp8jFM8GfgiE52dlZHx6SmWqARdE9fl4lhWJgAnDI?=
 =?us-ascii?Q?GATewFCDCdcMmGypC40YonqjVU2/zLpGaPfrlCFcV4YU3MV+34YVl5pXg5HO?=
 =?us-ascii?Q?L2veWRzvmFktFeNE80WKZe5PpCJitK4h/v2Q8sHI1pi/StKBPzkl6gbutjIg?=
 =?us-ascii?Q?5aZPHupboA5+Nanzqny5O+qkQAAyAWLy1lp/dVh1zP9dZe7zCSxvmYFnARAQ?=
 =?us-ascii?Q?7Zw9/rVVX7D69n0lPtURUHeJBIdZXNLV8R8NgbxUwX3ShSbs5PCU+gHrbW7J?=
 =?us-ascii?Q?FlUG0yv6n92evuc0HUgx4oOYrJJQUyJh+eSrs6IvVQemFw8XUtRseSS+VEb9?=
 =?us-ascii?Q?/UDWN4kjTq2Zi8TR9orbx450yYTUog2uRHQE8taCItfwG+ZtkwXflF4BSxOP?=
 =?us-ascii?Q?hD69Pfo4bqc1Z2t4mBBsbDEhayD1WaRMEL3qyjzAQluF90zIG9vPuCoxM4hO?=
 =?us-ascii?Q?gCUC0Zx+mb2eitS5pj/xQkRjHQWoJL2k15eOdQsFrF/B1o1E5+3xcvCuFyXE?=
 =?us-ascii?Q?eoNirrcJmH6V6kVHMdgc7fnIxMPpu7JroHRjG7MVtAvwnUylGN++0TvSq9dT?=
 =?us-ascii?Q?AQcp8Q=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mkerelay2.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	lVOM3L6GGDbkGBZrl6b1MgLZNDaMmkyVDxg12dkZ6vVAKunN0DpiR8La00pB8MPzS5HMXmzUzQZLQuFGcZ0Wp7YUtylQHGPWIF1OQtVqK0j3JOtqzZQV3/8F+Nt4KnSGduKxd0W46xK2uZmZwWfafTL+/EqDf0IILucx1cG+fqbvNYwMZC5Mv/YryK4LMqMTwGpdTuhVW+PTd0Z+vpEo6ys/CGq9rBeJhrZBsSJwNxaBNoMovIdg4+gnkSXSSAUZXutzL0gxheXb55pricJZt2aYpr3DbZlYzxbGA0pPaG7h52WB1hnxYfNgSNnGcuQQTeIoz0/pslh6nCzCwVFtavuDMDH2grdC8CDU/jfNSn8CDA8/BzAe47D9RlD6d+0kKVp6UmxGYc8aOzR2Iy+ouaICj5LfHG2W4HpJv5xCFBw/obTQRD9B1ALfhpUBm1Ay
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 12:59:58.1663
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c9a35d93-6879-4754-9eb1-08de6e247462
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[mkerelay2.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-DS2PEPF0000343A.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR22MB6083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-266126-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.70:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1C7B214C3EA
X-Rspamd-Action: no action

Define GPIO line names for gpio4.

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
index e7ccdcba2d5c..30181b5132a9 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
@@ -72,6 +72,18 @@ lvds0_out: endpoint {
 	};
 };
 
+&gpio4 {
+	gpio-line-names =
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "PWGIN", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "";
+};
+
 &i2c2 {
 	pca9547_ddc: mux@70 {
 		compatible = "nxp,pca9547";
-- 
2.49.0


