Return-Path: <devicetree+bounces-271262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OTTK76ZqGm8vwAAu9opvQ
	(envelope-from <devicetree+bounces-271262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:44:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F00207AFF
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9DAE3005AF6
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 20:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B856382F39;
	Wed,  4 Mar 2026 20:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pta2002.com header.i=@pta2002.com header.b="BEa/4Axp";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mrs1.rp.oracleemaildelivery.com header.i=@mrs1.rp.oracleemaildelivery.com header.b="0uIFlJ9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from abi149ajj127.mrs1.oracleemaildelivery.com (abi149ajj127.mrs1.oracleemaildelivery.com [129.149.100.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3219C382F29
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 20:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.149.100.127
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772657084; cv=none; b=Q84XiibKA+M1Nt1lFYTNrp3Jm5br2e84ddjAOQg29dqQtERb4etoWAkT7WTLU7MpVW5ie2qViA+QlW2BJgtk5uVqzZmR51VURPMojDSXCnvA6GEy/PRCaItBM50Lt43fBV8jselGFW8BfXzhCq2n3qGWogex599bHmj67vGQPs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772657084; c=relaxed/simple;
	bh=jtuJ3sDSTRydL4QDqtLQQf/RxGRON6GfNn+9/Wpf6pU=;
	h=From:Date:Subject:MIME-version:Content-type:Message-id:To:Cc; b=WA1F8SVUOqRmBU5bGibalsMn5kf0zrYANPbkfKboia4/BoHxJytzJ22zFuamzOZcP6S5GOb7DNg4fWtPoEtLzT9a+89sF7/UX2qNLCXAtEh4JaZaH7zEarhh+EKaOtnv4x0mdMzpIKTtczZ0JTgP1eZZuvvizW/yL0rERH2aiTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pta2002.com; spf=pass smtp.mailfrom=mrs1.rp.oracleemaildelivery.com; dkim=pass (2048-bit key) header.d=pta2002.com header.i=@pta2002.com header.b=BEa/4Axp; dkim=pass (2048-bit key) header.d=mrs1.rp.oracleemaildelivery.com header.i=@mrs1.rp.oracleemaildelivery.com header.b=0uIFlJ9Z; arc=none smtp.client-ip=129.149.100.127
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pta2002.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mrs1.rp.oracleemaildelivery.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=pta2002-202603;
 d=pta2002.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=QqcNY84HU56C92q/VUNsNqUbrdG+Xf4zqhVnZIVoFdA=;
 b=BEa/4AxpA1nQi3hrfpCPXoVWsAoqVcV3VTBXbq9/w29cR91Kp5CVDlWErcmtVh7pDm7+Mad0bL1S
   zsjRijur6M8rF2oI1wFh+VRZG7fz3T65jkEg5amj7AUqts8RupbaFczmZ5z3p5Ctp0qsXuubEYWJ
   hrYl7cofggPUX+YigDYtapa2BkZ3w6cZ0Dli1qaCCcLk7aT/hYxMcjayKBu1K5qXcjNZ1RS2lmfk
   eSX27M0k6IyTpCg6GUZjwWUg3RL67LsjlwqH/yaZ5RMf/5fmPN518NktaU+N8TfUptz9PKdvwT2i
   j2j/pf8JWVNHi7CCO+DMJJTxJwjp9gD0KmQ/qw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-mrs-20211019;
 d=mrs1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=QqcNY84HU56C92q/VUNsNqUbrdG+Xf4zqhVnZIVoFdA=;
 b=0uIFlJ9ZDCawFc/yBghXtDjZNwGz+zejpR2qH5zTlf+G5Ag13xvJzdmmmck9e8z+zWUnduK7q9dI
   cklI3p87zh1owwyO1+boMcBYU5NEBGrT6kcp1F9eBATWiaIDNiGERn1KCqACrjggsK7rDYsRFphu
   +UcAggEBoPKXavEhiPXrwe6+3moMBDSPBQYkBiS1iR2ivMD7vMRS8OEOiZ2cOF05qQfF/CbfVF/+
   P3BGFDcPosaDb7Ew7i3sNPxSgvFXJDBQueXWwT1PtUrZp5Xj4xaA2JjFtUg2A9rKkVGBkyX8NL90
   nRRsD3i5XGSUwCdP0BrWVaHDFAn8o9fGeXjPSA==
Received: by omta-ad1-fd1-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TBE002FJ6YG8730@omta-ad1-fd1-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com>
 for devicetree@vger.kernel.org; Wed, 04 Mar 2026 20:44:40 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: Pedro Alves <pta2002@pta2002.com>
Date: Wed, 04 Mar 2026 20:44:39 +0000
Subject: [PATCH v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-version: 1.0
Content-type: text/plain; charset="utf-8"
Content-transfer-encoding: 7bit
Message-id: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pedro Alves <pta2002@pta2002.com>
X-Mailer: b4 0.14.3
X-B4-Tracking: v=1; b=H4sIALaZqGkC/22Nyw6CMBBFf4XM2jF9AcaV/2FY1DKVWQBmSkgN4
 d+tJO5cnpPcczdIJEwJrtUGQisnnqcC5lRBGPz0JOS+MBhlGmWVRfF99ig18pJx6EeWjNE1rqb
 GxUuwUJYvocj5qN67wgOnZZb3cbLqr/313N/eqlFjbNtH1LENpOzttXijlDmHeYRu3/cPbRHbm
 bgAAAA=
X-Change-ID: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772657079; l=2272;
 i=pta2002@pta2002.com; s=20260304; h=from:subject:message-id;
 bh=jtuJ3sDSTRydL4QDqtLQQf/RxGRON6GfNn+9/Wpf6pU=;
 b=bWuzjkfSGwG38Yb0np1TmOduH+RX+yiRB5PsCDCZPQ7ZVeJZVfkgc9Pks/HDmhjHLh9cWSGD0
 FwK1SVJ5rDqCblHoWkVIPpIFTHLZz3et+1xZTUIOQe6nsriCIqE6xVL
X-Developer-Key: i=pta2002@pta2002.com; a=ed25519;
 pk=leagPTMCtYIB9nQJfoZ5+TYiuZUercAQHfGnFVTTaiQ=
Reporting-Meta:
 AAHDjmJjvCZUCcZYIX7JF0y6IfTTYzSwJJDp0tXSTosAK1Fg2saYxHqqtPk2U2cu
 1AADq0lNRLQvx62sAxrSipYGlv9v6DU8CbOc0pGUdCFgXbEkCvccz1SNdV8zhs31
 RqjFzkkPm6pTWNFK9vkAf7hrOAz4Wt6pGkUXyHdqV+7ear5AdHqdMve+mGNNVtqZ
 N9G1xtGI/9cZBKiIWhkMV80y6RiqfIyGrqHI43WOUTWKt+MHZHtYS7x32vBHArcF
 A+dr9NqjY+Go8QcD2vPhFCEtPIY7oTiGjgVyQPBme9ErDeqTlbP25WG05eE8uNbR
 4+iiETgImJAzRGtHVISLAIaNHm6BRY7CxyYQaH4MVLkTItcT86lU0AdKy93isGcb
 E+8EEHktzEvSBoNDVmGlTjoPzk9OQzTntuJNw+shL5mZuV9yil4/QRL5adP3CAvG
X-Rspamd-Queue-Id: 17F00207AFF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[pta2002.com:s=pta2002-202603,mrs1.rp.oracleemaildelivery.com:s=prod-mrs-20211019];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[pta2002.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271262-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pta2002.com:-,mrs1.rp.oracleemaildelivery.com:-];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pta2002@pta2002.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.569];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Radxa Rock 5 ITX board exposes an HDMI input exactly the same way as
the Rock 5B, but this was not reflected in its DTS.

Change the rk3588-rock-5-itx to configure and enable the hdmi_receiver
and hdmi_receiver_cma nodes.

The hot-plug detection (HPD) pin keeps the hdmirx_det name rather than
the hdmirx_hpd name used in other boards since that is what matches the
official schematics (HDMIIRX_DET_L).

The configurations were confirmed to be identical on the downstream
Radxa kernel, and this has been tested to work on a Rock 5 ITX board
running kernel 6.19.3.

Signed-off-by: Pedro Alves <pta2002@pta2002.com>
---
Tested with the following commands:

v4l2-ctl --verbose -d /dev/video4 \
  --set-fmt-video=width=3840,height=2160,pixelformat='BGR3' \
  --stream-mmap=4 --stream-skip=3 --stream-count=20 \
  --stream-to=hdmiin.raw --stream-poll

ffmpeg -f rawvideo -vcodec rawvideo -s 3840x2160 -r 30 -pix_fmt bgr24 \
  -i hdmiin.raw output.mp4
---
Changes in v2:
- Updated dts spacing to match coding style
- Reverted pin naming to hdmirx_det to match schematics
  - Didn't end up changing other boards to match. There are quite a few
    others, so I'll probably send a separate patch for that.

- Link to v1: https://lore.kernel.org/r/20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index 172aeabba72a..8e0eead7d223 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -349,6 +349,18 @@ &hdmi1_sound {
 	status = "okay";
 };
 
+&hdmi_receiver_cma {
+	status = "okay";
+};
+
+&hdmi_receiver {
+	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_det>;
+	pinctrl-names = "default";
+	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
 &hdptxphy1 {
 	status = "okay";
 };

---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3

Best regards,
-- 
Pedro Alves <pta2002@pta2002.com>


