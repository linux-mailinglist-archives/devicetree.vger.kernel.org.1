Return-Path: <devicetree+bounces-236674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ADCC4662D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 75FAC3480AC
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D1030BB94;
	Mon, 10 Nov 2025 11:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Lf6wAzu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9354330AAC9
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762775467; cv=pass; b=Ub5IrUNhztimuUVFnrQxx877k7/TbaBDHKomekkjjmtTfp7LFRwU5yQ85ElELUOaRxjkugJaMpTmtIYNWt1pgRdFnQ6x7gv+iE8Un3AvrMG44dMPZAGP86ELSpcjB6ASLXtwdoMKwMaCbnP7xQob2kvL487V4AQnKCH5Iv6L/Ks=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762775467; c=relaxed/simple;
	bh=HXlBxqOb74Fg5Giay0IgvqZHwM52eaS13jG1nIa4SVk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZdSc5QSZyys4CvOgML23kmApFdxAhOAMDlYeABsECuIjgZDRzh54QCEEHEci5h14o5+U4N57Hw9sbmy1awUjf92kjBS59ZCdpXSG6CvqRLy9t/bvy+wmHlvF0CQa5kHtsffwg/0hAW0emUNUINR7+CdiV3SV4094YzNtaoeev+U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Lf6wAzu9; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=EI3VncdrDlFCBHgHP23iIzteEuQaU2FWB5CYdMi6Jhs=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1762775414;
 b=n3vS9j0d6qqW4ST1442ZlT/T3unrCLYWHlm36vverlcvxW5delBHcKAhaweK3vMnI29HwBIg
 Bnv2b5jVrjGNHS3gqouIw1ogfq79mOoGB/+wGSA9jli23+bE6sPHWXwFaZTGeRbnJPBDs3PRSIc
 yNwNmg2v7IdCa+5hZC6vgMiOF1mLev5HUTYERCcGtaJu/fPP9TtYR+mWM3VmwV4EcoSpU3w3swX
 qcxVeQ4CbX/8aFsfdb4uD06mvZq0m+7b7khITnu5uXbGpiKIq7dgMr/CGozWC8ofQuUV68Kw+Js
 4UScAYF71+DxcBF8E/W38ViNBMblufHSAPL0Bbe9dOW6A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1762775414;
 b=SPjm/9Gj6FdZjquwjh0h0DJFI9wZ/dfyNQ13hjpSLwd4s/Nn2qwczgd7AurCpxQEqekFxHgm
 XhFMrCngnyiCGzK5MOQ/sMzS4PpDMsBWO3QuC2wEE1CTZ0yzi/7xC2pGL6Fkzc7/uNeWhfLBLeB
 sxpcn5NrndGe3EOz3btnHHLXKR1sVSiohCRHebjbR4O97V2uq7GnRTsA3um8VipCV095NyhDmhv
 7ozyx4YIQrGkGfLnkrYBZY8sF4STvWKNtNyxfNUuPWxCM5m995Mn23HkdXiYdc0C8w8OhdsVN7r
 KyilBT6EpgoxxqqDLRtjpVqM2CMN7+Qf7kqULD8HhXpZg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Mon, 10 Nov 2025 12:50:13 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 57E2FA40F9D;
	Mon, 10 Nov 2025 12:50:06 +0100 (CET)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	Andrew Lunn <andrew@lunn.ch>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	linux@ew.tq-group.com,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM family and carrier board
Date: Mon, 10 Nov 2025 12:49:45 +0100
Message-ID: <18471e4c907e8681248776e3674e22075e25a50a.1762775119.git.matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <cover.1762775119.git.matthias.schiffer@ew.tq-group.com>
References: <cover.1762775119.git.matthias.schiffer@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4d4nz31Pkkz3yYR4
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4ec77760357b01082a9b811132bbae09
X-cloud-security:scantime:1.896
DKIM-Signature: a=rsa-sha256;
 bh=EI3VncdrDlFCBHgHP23iIzteEuQaU2FWB5CYdMi6Jhs=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1762775413; v=1;
 b=Lf6wAzu9zrY01a17c9FlsJDWrkICsE3zWXOyGb1gFDBCy3mVdYXNtcLHqeALC001Ri5k2qHo
 lKrleQzmtDU/5/CdExuzKSWRSZJfka7FR3L8CGvdO9GZ1p+my5KVREfoACLKHyIRCO7UfsRDZ5M
 zpxvnUmEL8dU6Jtm8kaPFnnp+o6torcQmv74N3R8kv7m2SvqWVt1JBvNFdIlruhSOpKR5uPX0UF
 E4DE2o+Oi6jNz9iS93ys1BodSiWPIlWKcWC7M0CKZDu8wWLnfCP+9TcI4t5pDL1gVe2wkDyGGMr
 /FyIBTelLInddoSqiE6r6JQqyFfoEZr8qsyClavfU/nuw==

The TQMa62xx is a SoM family with a pluggable connector. The MBa62xx is
the matching reference/starterkit carrier board.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 2e15029dbc677..cfa158dfdc9cb 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -89,6 +89,13 @@ properties:
           - const: toradex,verdin-am62          # Verdin AM62 Module
           - const: ti,am625
 
+      - description: K3 AM625 SoC on TQ-Systems TQMa62xx SoM
+        items:
+          - enum:
+              - tq,am625-tqma6254-mba62xx # MBa62xx base board
+          - const: tq,am625-tqma6254
+          - const: ti,am625
+
       - description: K3 AM62P5 SoC Toradex Verdin Modules and Carrier Boards
         items:
           - enum:
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


