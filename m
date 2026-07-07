Return-Path: <devicetree+bounces-321898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RhbvHxrNTGrOpwEAu9opvQ
	(envelope-from <devicetree+bounces-321898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:55:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E246E71A00B
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:55:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=Puk+aG87;
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321898-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321898-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CEA0C30A0D56
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 09:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB913D9DBF;
	Tue,  7 Jul 2026 09:51:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F5E3D647C;
	Tue,  7 Jul 2026 09:51:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783417864; cv=none; b=InFVeok2ZD1chApcNG9vnKuGjBhvQhn5iGWFT/OYtVmWOMyAY3/s6hWV5eXTNX4YvBHrXZWaLoCTfHrxdyaefzdysWT0J35TKAzjA/sHb91AF8dy7y0zcd6Zc8CV+F7Vszy5kUe8kh4VMSbCFNpu/ZmhIV6PNfKDMMmpOfuxIis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783417864; c=relaxed/simple;
	bh=kcg08aCneNDH66N5Jg0nfJAxJooGwMMtnBnrCixRthA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IL1SBlswLdRqJy6dTEM6ZotgxE5aJFSBOAMUxgYHgVtwPEJqq+1IWxW+ZUSkiHfK7vvkXmDKbFIh0hMLBOWKHflT8OL8rI4RG/iHUC7f01k9CEuikC3Cjl13ALZ8SrdY4tzlCu2AhRhovxkrWPo/Ik82OZbgpU7u1ifFTv+63I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Puk+aG87; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=X5vvIPN0i7igeYao9N4kvOMHqVQYE6ooVXn/DKXCct4=; b=Puk+aG877U1c+Gns/FVdFkWPKg
	eDJAtu6RaeHE+FbLhIEo5M07cEmcZPfWE4er4rvf8trBlQsi+TwhzMj6WbWPyRS6PqkftZDe3vU26
	LubWjlWuwMHVLoLYDsj9ITsMQ2ko/SZ5eCe/Ny+5EweFcsrUmQk5Vxlh+D+32H1MBRHMFARFEZB+I
	OQ6R+q+vWSMS77OnK1dsnKpetYffcX8faZUdcspsQwaB1OKqMSmxz++MkV5Q8REaXvjZtC26Qw81W
	cG4gx/GzLCC8xZg/oP1crZWZqB1gML+c7J8DN64VXjjNfTNjVzlKOB78oOdZEayS4Af3R0y4ugT75
	5MS+W0Qg==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wh2SD-000PVX-1m;
	Tue, 07 Jul 2026 11:51:01 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wh2SC-000Ck1-2u;
	Tue, 07 Jul 2026 11:51:01 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Nora Schiffer <nora.schiffer@ew.tq-group.com>,
	linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/8] arm64: dts: fsl-lx2160a-tqmlx2160a-mblx2160a: use DPMAC 17 and 18 for SGMII in SERDES2 configs 7 and 11
Date: Tue,  7 Jul 2026 11:50:49 +0200
Message-ID: <20260707095057.1745867-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707095057.1745867-1-alexander.stein@ew.tq-group.com>
References: <20260707095057.1745867-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28053/Tue Jul  7 08:24:37 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321898-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:alexander.stein@ew.tq-group.com,m:nora.schiffer@ew.tq-group.com,m:linux@ew.tq-group.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:from_mime,ew.tq-group.com:dkim,ew.tq-group.com:mid,tq-group.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E246E71A00B

From: Nora Schiffer <nora.schiffer@ew.tq-group.com>

We have been informed that using DPMAC 17 and 18 for RGMII when SERDES2
is configured to provide SGMII lanes for these MACs is unsupported and
will cause errors in certain DPAA2 configurations. Update these
configurations to use SGMII instead.

The total number of available Gbit Ethernet ports does not change, but
the PHYs and physical ports corresponding to DPMAC 17 and 18 do.

Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../fsl-lx2160a-tqmlx2160a-mblx2160a_x_11_x.dtso     | 12 ++++++++++++
 .../fsl-lx2160a-tqmlx2160a-mblx2160a_x_7_x.dtso      | 12 ++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a_x_11_x.dtso b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a_x_11_x.dtso
index 6d0c808cd840f..0847c786dc1ca 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a_x_11_x.dtso
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a_x_11_x.dtso
@@ -32,6 +32,18 @@ &dpmac16 {
 	managed = "in-band-status";
 };
 
+&dpmac17 {
+	phy-handle = <&dp83867_1_2>;
+	phy-connection-type = "sgmii";
+	managed = "in-band-status";
+};
+
+&dpmac18 {
+	phy-handle = <&dp83867_1_3>;
+	phy-connection-type = "sgmii";
+	managed = "in-band-status";
+};
+
 &pcs_mdio12 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a_x_7_x.dtso b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a_x_7_x.dtso
index db88a86ff69cd..7520f105d5d8c 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a_x_7_x.dtso
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a_x_7_x.dtso
@@ -30,6 +30,18 @@ &dpmac16 {
 	managed = "in-band-status";
 };
 
+&dpmac17 {
+	phy-handle = <&dp83867_1_2>;
+	phy-connection-type = "sgmii";
+	managed = "in-band-status";
+};
+
+&dpmac18 {
+	phy-handle = <&dp83867_1_3>;
+	phy-connection-type = "sgmii";
+	managed = "in-band-status";
+};
+
 &pcs_mdio12 {
 	status = "okay";
 };
-- 
2.54.0


