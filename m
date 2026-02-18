Return-Path: <devicetree+bounces-266428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJoSCCa+lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:27:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDE4156A00
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:27:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3AB3B303E48C
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 698992D837E;
	Wed, 18 Feb 2026 13:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="ZYWAFwm8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay39-hz1.antispameurope.com (mx-relay39-hz1.antispameurope.com [94.100.133.215])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2BC2D0C9D
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.215
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421105; cv=pass; b=fRLuXOmhRzb6vBQEC/sIm2MS8/7LyI4QlK9YiqTPkMzA4uBMheWNwwu/4vS8EiBLBKBv75c/C3CXgdWFT7trbl7UnLHL+M+D7ap/rDPKIBKBkEF1bk3aExmGUrIhJqfIYgLyJXoArxbRUq9GCNnTJaaDVY91JlT6BUhyS8Xa6C4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421105; c=relaxed/simple;
	bh=cTvhEtbKkV1//CEOQ3tCbx9vhfr+kG+WmHl2qSYKC6c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s26uj8wialxcUTyIgp/h5v+rBZ9NbDzNayAIjbualo64BJpUXgzM1QOOsmHGtpwUUteCnyuFI3wfBFTmXm6sTk2N2AUDul3rTZ+O5OPqqoQ2qOYrpTFKp8Hy1Hs+Sv3eozMMXTrFFfLarMfqCwvMVncI0AVqMNvAw3OyRoMwusA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=ZYWAFwm8; arc=pass smtp.client-ip=94.100.133.215
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate39-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=mhpAHeK5WnP5K7fPONIfRy2XkHtMpwUTgs7kyE7vMb0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771421030;
 b=FsYGqFVjoOgggvY/aPSCbfwi7fssN9FGuNLMeq3BXzBX9Psf/BOdiC/5d5t6zpAP4KkTWxzw
 l9aEKqXNKUkPbelgoKE9K0ZfinB/8BrHlozy62JOuCxJ5e5japrfbgIyCCgo7YwnrP7bMfbh3yB
 bko4NcCVPNrl50NjlcMRNBSN2NY7U9pdlipvqa6PawIw26lFwOVz5OqysuX77XSlMvFn7nrb21c
 h6I8mgd3mJmTcleaf7j7xiKgLdIi5F0IkWAmOzRJ2rrTTPu1r/UY94vMeUDubtLbPk5b1zMI7iq
 zuuiablh26EGeGwHp+7z8tG07uGIDG4Sa3x3b1TS5/FWQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771421030;
 b=gS/1zfVpG8KQQne21/wSWCKXRlJFoKgIjSuQGD2Dfc33UHeE1ZKgMYxFsFNu+Fl/Yds0+VAx
 SRmclzDCF2HdU74U0MfC4G/v04eTWVM5XeNFO8gzyJqu4isHjQoQgKQFhUI7Kcnttcr5u/Cmkku
 Dl6SeRZilAY+crLvyAzGd3Md1hqvgV/PV4ouV/jsUyBLCkoUe2jHQCm6G0B6KVFteZ0HuUVVfh/
 HiUuQgCffd54drV9JGWRDQHW+SKfNndc7boSoUz764sIolhmfxcmMl9lyv9vq1zlMUS9MK1sbBv
 2XvPn+6AdXo5rh5/OfmhGxMH2nVnodMJzp8l1Xvdw4PcQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay39-hz1.antispameurope.com;
 Wed, 18 Feb 2026 14:23:50 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 846442205C2;
	Wed, 18 Feb 2026 14:23:43 +0100 (CET)
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
Subject: [PATCH 1/4] ARM: dts: imx6ul/imx6ull: add boot phase properties
Date: Wed, 18 Feb 2026 14:23:34 +0100
Message-ID: <20260218132339.32157-2-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
References: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay39-hz1.antispameurope.com with 4fGHJw1fnTz18J6L
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:965d9ae517c88a7aee3ccb289887b696
X-cloud-security:scantime:2.251
DKIM-Signature: a=rsa-sha256;
 bh=mhpAHeK5WnP5K7fPONIfRy2XkHtMpwUTgs7kyE7vMb0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771421029; v=1;
 b=ZYWAFwm8qCDxiFNrczH/bznl49+6DMSvZxJRZjeczSnx20iD0NU3YlKjmuQkDH15TnHY2nxV
 PUhD9StMtK7eSBF255MvGf3Ly8V/pD+Q13bMKDoQ2QXn9DrPqtpR4I6wf6uUAx/oRBXyng0PT9b
 lgLU2fpmRXK5nqair84Bf+fePs0cl3+Ql5jmMOC439FjDh0SKplPWNCMN04RzJKbEYWNZB5+QQI
 7modZ6PVDoOh9H9umdL63RjAIsTE3+reE3fdMuTq4p61fSJc/vLh+3giSq1t35YUA2I9oJFgOFL
 FZzT4vhqSkzNRhg795TtXIROeool5Mdj3ijmdpc94PYOA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266428-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6FDE4156A00
X-Rspamd-Action: no action

Add boot phase properties from U-Boot device tree.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6ul.dtsi  | 6 ++++++
 arch/arm/boot/dts/nxp/imx/imx6ull.dtsi | 1 +
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
index 6eb80f867f50..c745f30a9b25 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
@@ -115,6 +115,7 @@ osc: clock-osc {
 		#clock-cells = <0>;
 		clock-frequency = <24000000>;
 		clock-output-names = "osc";
+		bootph-pre-ram;
 	};
 
 	ipp_di0: clock-di0 {
@@ -143,6 +144,7 @@ soc: soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&gpc>;
 		ranges;
+		bootph-pre-ram;
 
 		ocram: sram@900000 {
 			compatible = "mmio-sram";
@@ -202,6 +204,7 @@ aips1: bus@2000000 {
 			#size-cells = <1>;
 			reg = <0x02000000 0x100000>;
 			ranges;
+			bootph-pre-ram;
 
 			spba-bus@2000000 {
 				compatible = "fsl,spba-bus", "simple-bus";
@@ -580,6 +583,7 @@ clks: clock-controller@20c4000 {
 				#clock-cells = <1>;
 				clocks = <&ckil>, <&osc>, <&ipp_di0>, <&ipp_di1>;
 				clock-names = "ckil", "osc", "ipp_di0", "ipp_di1";
+				bootph-pre-ram;
 			};
 
 			anatop: anatop@20c8000 {
@@ -745,6 +749,7 @@ power-domain@0 {
 			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6ul-iomuxc";
 				reg = <0x020e0000 0x4000>;
+				bootph-pre-ram;
 			};
 
 			gpr: iomuxc-gpr@20e4000 {
@@ -826,6 +831,7 @@ aips2: bus@2100000 {
 			#size-cells = <1>;
 			reg = <0x02100000 0x100000>;
 			ranges;
+			bootph-pre-ram;
 
 			crypto: crypto@2140000 {
 				compatible = "fsl,imx6ul-caam", "fsl,sec-v4.0";
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull.dtsi
index db0c339022ac..ba0ea10c7b74 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull.dtsi
@@ -57,6 +57,7 @@ aips3: bus@2200000 {
 			#size-cells = <1>;
 			reg = <0x02200000 0x100000>;
 			ranges;
+			bootph-pre-ram;
 
 			dcp: crypto@2280000 {
 				compatible = "fsl,imx6ull-dcp", "fsl,imx28-dcp";
-- 
2.43.0


