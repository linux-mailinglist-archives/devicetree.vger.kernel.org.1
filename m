Return-Path: <devicetree+bounces-266422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BiKNoq9lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC3115696B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5F5813034303
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F5332D3A6A;
	Wed, 18 Feb 2026 13:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="d/pkFvuL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay13-hz2.antispameurope.com (mx-relay13-hz2.antispameurope.com [83.246.65.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738E82C3268
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.99
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421045; cv=pass; b=cw4awkOj4Tah26BG6BBdlU1jZnpInCXu4lAOQb9lwa2BmR7qR9aSRKOWwaek2d7egQ/GQj0At/pM9p3YlpEwcqbW7fSnErb2KzarBChv4s11w3foekC5bjYY2nF7RcFXEyketdy/hgiGL4dOTKm6+U+Qz2nXnu6ZrWc/Tjinnqc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421045; c=relaxed/simple;
	bh=Lqa+W/InJiMsJcFaCqPhqA0VqCeAVMN/8wOxNHkZJ0I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NDGpYshAcUUy7UBWQLNRDrysyKjOHW7+2TM5P/Hvvfd7F3AtZXZci6hTUBZBPLQEeun4b7SYfkM4EkB4TgoccMOZFjis5WQ1D0yhDLX9YfWPshxNGAOpGdMFOhS5SHWhRwYOUu5m7Lux7RUddZhEqMkI92CcQPrVVT9OrKn39rs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=d/pkFvuL; arc=pass smtp.client-ip=83.246.65.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate13-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=3X41+/DDb79VlrAXhpveO5mOonDaOzhaJoIuv+461r4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771420999;
 b=Qjoi9DrYBPRxT1KbR24xgVSfi47ekazKw0dho84Fq5CYYcYMXgCTJR84hz+Fh2ZRb/+zCiaB
 cnixyglOQnZKhcO5Zw7Lul8LxKkpoKecqJpkvokn1xleJl9HcEOxemw67AzgeqkIWHJueP3YEs4
 zpMxRx1kGcah+B86mmlk6pXuyAkoBy7jo+JOdswLfdqhUoC9Oy0LV/Lib1GKP2UK5GHmMyQ0IIg
 ftXiu5n+gTNdvRPlG+VUJuS5vKbh6CpsP1PXmqKBRyyshjaxtstpxol6UiyX+Y+2+kZSHyn/nD2
 dusrM+XcgcQuposPq8Y06XY4BCIRURSWg7gSJ/auZo7IA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771420999;
 b=kDLsHlNHm7Cb3QKjl23nGNKuvjLpR8a6R+lwU/iyMshB0ieT+E6YV1BCdLRtro460PK1hOjF
 BPD4OYh0Mqj9LreMyJElB3pEZEQAGzvoQv7jFdGsjdbBw+HwNZS7tUuBjbK04/vlfIPXoA0UM25
 0kNbx27LmCb+DesrABnKBhBFzt6WOag+tkQF3Ou/j7jxIgoZnV2mkpKHzcH9JfslCEpALCTfJ7k
 uYEZ+VVZrEuO2UvEwOqtaZYmk9srUXQ759Jm5RbSHLuik5duQ5QP0j+Cfrfc5jpFzPHBgVSnHgT
 f2P8GjJx5OnKS81dE6Ap1MREcQ6LILp6VhP6lKPWuAMfA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay13-hz2.antispameurope.com;
 Wed, 18 Feb 2026 14:23:18 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 89519CC0CC2;
	Wed, 18 Feb 2026 14:23:12 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] ARM: dts: imx6qdl: add boot phase properties
Date: Wed, 18 Feb 2026 14:22:23 +0100
Message-ID: <20260218132228.32056-3-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218132228.32056-1-Max.Merchel@ew.tq-group.com>
References: <20260218132228.32056-1-Max.Merchel@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay13-hz2.antispameurope.com with 4fGHJK21JZz3skYp
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:6bfe6034a05854dbc69e031af52159fd
X-cloud-security:scantime:1.909
DKIM-Signature: a=rsa-sha256;
 bh=3X41+/DDb79VlrAXhpveO5mOonDaOzhaJoIuv+461r4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771420998; v=1;
 b=d/pkFvuLlTJ/ZQw5mkOg69v5V7Vq1vHKFVYenIR/nELxAkR5g4swXhr4hv1QsCrr9YFaM5ZX
 8iTWzMcmWKCfzFnmsJq3qZQZN23RErggngA41ixSZke11byhUzOD74QfPSA2JTKa2gW0otItGZM
 kyAcc+9XttsQ8T1UHRdD3AiSW99UC/F/T+9mlhM5QX/IWjsPToYuAxApFsM7cZv+Uv6w+G4uvT1
 I9wuT2hhZ2qVOjMh1foSWGA9yv5IsIzNdoJCy+p3GxeDq5uQUSFs4ATjW/v12I0KtBVxbkd2ju5
 DD4zSNxf3z3DHVh1htetrqWqL2toRpo1JbTtGBA8r/kWA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266422-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5CC3115696B
X-Rspamd-Action: no action

Add boot phase properties from U-Boot device tree.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
index 76e6043e1f91..1fcfe0751327 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
@@ -149,6 +149,7 @@ soc: soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&gpc>;
 		ranges;
+		bootph-all;
 
 		dma_apbh: dma-controller@110000 {
 			compatible = "fsl,imx6q-dma-apbh", "fsl,imx28-dma-apbh";
@@ -297,6 +298,7 @@ aips1: bus@2000000 { /* AIPS1 */
 			#size-cells = <1>;
 			reg = <0x02000000 0x100000>;
 			ranges;
+			bootph-pre-ram;
 
 			spba-bus@2000000 {
 				compatible = "fsl,spba-bus", "simple-bus";
@@ -304,6 +306,7 @@ spba-bus@2000000 {
 				#size-cells = <1>;
 				reg = <0x02000000 0x40000>;
 				ranges;
+				bootph-pre-ram;
 
 				spdif: spdif@2004000 {
 					compatible = "fsl,imx35-spdif";
@@ -920,6 +923,7 @@ mux: mux-controller {
 			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6dl-iomuxc", "fsl,imx6q-iomuxc";
 				reg = <0x20e0000 0x4000>;
+				bootph-pre-ram;
 			};
 
 			dcic1: dcic@20e4000 {
@@ -950,6 +954,7 @@ aips2: bus@2100000 { /* AIPS2 */
 			#size-cells = <1>;
 			reg = <0x02100000 0x100000>;
 			ranges;
+			bootph-pre-ram;
 
 			crypto: crypto@2100000 {
 				compatible = "fsl,sec-v4.0";
@@ -1320,6 +1325,7 @@ ipu1: ipu@2400000 {
 				 <&clks IMX6QDL_CLK_IPU1_DI1>;
 			clock-names = "bus", "di0", "di1";
 			resets = <&src 2>;
+			bootph-all;
 
 			ipu1_csi0: port@0 {
 				reg = <0>;
-- 
2.43.0


