Return-Path: <devicetree+bounces-265229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +/TkBFyWjmnHDAEAu9opvQ
	(envelope-from <devicetree+bounces-265229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 04:11:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5C5132943
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 04:11:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9753B3013C74
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 03:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5008223815D;
	Fri, 13 Feb 2026 03:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="ijxpvO8+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m2467.xmail.ntesmail.com (mail-m2467.xmail.ntesmail.com [45.195.24.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09156156661
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 03:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.195.24.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770952271; cv=none; b=JTfkcMkdfJpU7FwonzfSF33wmRQE3Jj67inGb+PPm+aS6NlWe4RaqFvxs4ZL3LL25a8xnBPebRdAwP+yHxY6w7suU0Yztx1Iy2ic6sX+ILt0/Ma3D8E5c/JXQWxHoj3zNohxbF5MnVvnk/XCWQbybdCVf5g4deNZ6LiCUlK9+Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770952271; c=relaxed/simple;
	bh=xrLcKMSlcPRMD+Qp/hpY4ntVZK2Y2XC/Jp3g5Y5wqlw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=nOB1LiyvwqH0/MA7UPNOpi2V1rfSKErvYHX63Y29mz4dmgsGtKzu9HVI4zgYfKdzIGUmXpDBMTh7QYbB63QbrvpaKoxEqWRyQxDdkaH9JQv4XEsMAObehpZq6UYl/vdTCnjcA7dtFCf+PmAWNcQGD3ZKCEz1sfql1zqcJTT6s8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ijxpvO8+; arc=none smtp.client-ip=45.195.24.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3409df705;
	Fri, 13 Feb 2026 10:35:33 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add domain-supply for pd_rkvdec0/1 and pd_venc0/1
Date: Fri, 13 Feb 2026 10:35:13 +0800
Message-Id: <1770950113-19802-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9c54da869209cckunm7ce1e19a254a04
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5MQlZDTU8dSRpDSkkZQklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ijxpvO8+87+eAZ7JpjpXkBnSccKqfa7dpLXdA1Kvkbh5kLUAE7N0la1cMcj1QT0q+b+yprGkb5SkUqFIs03w/w0NJqlNRd8/0YqsmUtivGt2uGrjt6fQd+bFlhwz5M9k+8+X1BXj+Tx+hkVVw9Uuips1b5Fa+DtoA99iXd2OHqk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=DHYlgiH8FK2sQyxWKQp/tla3kzwN+Y1FZr+Gzky8x+Y=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265229-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1C5C5132943
X-Rspamd-Action: no action

The power domains pd_rkvdec0/1 and pd_venc0/1 depend on two voltage supplies,
vdd_vdenc_s0 and vdd_vdenc_mem_s0. These supplies might be missing or cause probe
deferral. Since the Rockchip power domain management code currently supports managing
only one power supply, and both supplies belong to the same PMIC (making it highly
unlikely for one to be available while the other is not), a practical solution is
implemented.

Both supplies are configured with the boot-on and always-on properties. Only one
of them is assigned as the domain-supply for pd_rkvdec0/1 and pd_venc0/1. This allows
the power domain code to perform a nominal enable operation on this single supply,
thereby successfully acquiring a reference to both supplies (as they are from the same
PMIC). The system then relies on their boot-on and always-on flags to maintain the
correct state.

Crucially, this approach handles cases like probe deferral correctly:
if the PMIC is not yet ready, enabling the power domain will be deferred until the
necessary supplies become available.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts  | 16 ++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts | 17 +++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index c9d284c..09bc7b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -568,6 +568,22 @@
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_rkvdec0 {
+	domain-supply = <&vdd_vdenc_s0>;
+};
+
+&pd_rkvdec1 {
+	domain-supply = <&vdd_vdenc_s0>;
+};
+
+&pd_venc0 {
+	domain-supply = <&vdd_vdenc_s0>;
+};
+
+&pd_venc1 {
+	domain-supply = <&vdd_vdenc_s0>;
+};
+
 &pinctrl {
 	audio {
 		hp_detect: headphone-detect {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
index f820505..25d80b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
@@ -381,6 +381,22 @@
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_rkvdec0 {
+	domain-supply = <&vdd_vdenc_s0>;
+};
+
+&pd_rkvdec1 {
+	domain-supply = <&vdd_vdenc_s0>;
+};
+
+&pd_venc0 {
+	domain-supply = <&vdd_vdenc_s0>;
+};
+
+&pd_venc1 {
+	domain-supply = <&vdd_vdenc_s0>;
+};
+
 &pinctrl {
 	audio {
 		hp_detect: headphone-detect {
@@ -580,6 +596,7 @@
 			vdd_gpu_mem_s0: dcdc-reg5 {
 				regulator-name = "vdd_gpu_mem_s0";
 				regulator-boot-on;
+				regulator-always-on;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
-- 
2.7.4


