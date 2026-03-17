Return-Path: <devicetree+bounces-276625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHxDGFU4uWk8vgEAu9opvQ
	(envelope-from <devicetree+bounces-276625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:17:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AA42A8998
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 37CC3306E626
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A3593AA4FB;
	Tue, 17 Mar 2026 11:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="IqaLJIht"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE57E3A7F5D;
	Tue, 17 Mar 2026 11:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773746244; cv=none; b=deuhVCRtpd5LbhW2V+v2xJG7p6fxaBRaD6D3IgZRBlPIv5CYrddcK5j72+TvCBx3zmtBAUIIo4S4bvJv9clkqWwESq78dhFdeREeyZLVPaZJ2wru/oHcXhIMFFI40pvTlnhYh8jBig25rXuj0xxcPFCygtAgovURjuKled9fHoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773746244; c=relaxed/simple;
	bh=MR3Be3SKppxFLM3itSoWf4FWGBYc4QWOkvkcVhbuM/U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LrK5Ic5f9SzQrgV9qxYm23U721TFntybk3ilUJEflGCUMvh0+6IKisVBSTZvGB8ZQnEzBFqVQsE/EXd3M8aFUc2uTVWBfNgEs7nNSNKmtBRHuBicSy1nblxDnSf2kCiyQZPaBrLwilhHLzcSmDmLsM49DR4kIUM74Kn3tq/uCPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=IqaLJIht; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=QIcaDlgDtYpkew+vGB6X/JduwmTqv7gRZ0/o0A3l86c=; b=IqaLJIht0UCg7c4C2GVMY5qAZl
	BTCDxaKljzm9hz6w6ua2W1JA7DVNZI72R4phxAGanm0nMlcJyDcYdyBeiBBanWMyQ4tyegVlaY8Un
	x3cukG8cze+AWd1f+y+YOesTENefg5gOGvHJfMyIKP2UcXS6StaSs8KjnHrawEfrwBGkwGBX+nq7M
	ZsIeVypJGi2PxswNpiRvMVuCKJ9SmcINv5A1ulOMQzbHWsr+PL/42HaK6XY1948B7Vvk69NlJ2UTj
	N+ISUSWpPhqr7VLucl72EFzPOMhHrs6udKPTuqlpQHj87Zn/n8mFFyz/1gUIjiSmCnnUs5n9a5xSQ
	xXwu1WZw==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w2SQK-00092E-1S;
	Tue, 17 Mar 2026 12:17:20 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy04.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w2SQJ-000MCw-1u;
	Tue, 17 Mar 2026 12:17:19 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Martin Schmiedel <Martin.Schmiedel@tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 1/3] dt-bindings: arm: fsl: add MBa93xxLA-MINI
Date: Tue, 17 Mar 2026 12:17:00 +0100
Message-ID: <20260317111704.1075938-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317111704.1075938-1-alexander.stein@ew.tq-group.com>
References: <20260317111704.1075938-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27943/Tue Mar 17 07:24:09 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276625-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,tq-group.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Queue-Id: 18AA42A8998
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Martin Schmiedel <Martin.Schmiedel@tq-group.com>

Adds support for the MBa93xxLA-MINI SBC.
https://www.tq-group.com/en/products/tq-embedded/arm-architecture/mba93xxla-mini/

Signed-off-by: Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index da2be7114f641..2c86d2381d95a 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1558,11 +1558,14 @@ properties:
           soldered on an adapter board or for the connector variant
           MBa93xxLA mainboard is a single board computer using the solderable
           SOM variant
+          MBa93xxLA-MINI mainboard is a single board computer using the solderable
+          SOM variant
         items:
           - enum:
               - tq,imx93-tqma9352-mba91xxca # TQ-Systems GmbH i.MX93 TQMa93xxCA/LA SOM on MBa91xxCA
               - tq,imx93-tqma9352-mba93xxca # TQ-Systems GmbH i.MX93 TQMa93xxCA/LA SOM on MBa93xxCA
               - tq,imx93-tqma9352-mba93xxla # TQ-Systems GmbH i.MX93 TQMa93xxLA SOM on MBa93xxLA SBC
+              - tq,imx93-tqma9352-mba93xxla-mini # TQ-Systems GmbH i.MX93 TQMa93xxLA SOM on MBa93xxLA-MINI SBC
           - const: tq,imx93-tqma9352        # TQ-Systems GmbH i.MX93 TQMa93xxCA/LA SOM
           - const: fsl,imx93
 
-- 
2.43.0


