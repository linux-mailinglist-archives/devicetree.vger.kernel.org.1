Return-Path: <devicetree+bounces-294315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cUrEG1Nx/WlzeQAAu9opvQ
	(envelope-from <devicetree+bounces-294315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 07:14:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 664DF4F1D4B
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 07:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 754AE300517E
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 05:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E408732692B;
	Fri,  8 May 2026 05:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="lHKekldA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00398286A7
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 05:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778216932; cv=none; b=B/HNS+B5hG78C1TBSxhXGZhMjppwxevrGnpxHlF83YANOUIX9tK2pr7JXhYqyWQyyaSbsgoa+LA6ep7+EOpiLgWfR/wSSMtEQilo5Lq3vhXXXyMAGje45A/GQ5WytwaK9uZbgotZQBHmmiRyXSHNIACNFSOwGbBeYcTIl55Iz8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778216932; c=relaxed/simple;
	bh=+8MR8QvjuLY+eYr1xl7q+5KnEmhU9NqLnLbYJ/bR/KI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HCayqnP/jJU4nbjQmF0DsSNb+07KbY4Yb1Y0CGkJ/rQg9IrxJXz4Jg3lNAh9fZ2Lq2qErINWs7b1bdQuFiSchkMo7dCwt6Yx3sOQHukJCPKIn2zhwSRee5G1sSUz63nHa6s+nQ/WMGkgm1uz02vx/TXqTizZsBKSzryxWxBE4kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=lHKekldA; arc=none smtp.client-ip=212.77.101.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 47759 invoked from network); 8 May 2026 07:08:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1778216921; bh=cywqaLjlmIjLoBq4AUdNSMkQgGbtYmPPwMSekZGY2NQ=;
          h=From:To:Cc:Subject;
          b=lHKekldAZxDs5hjMDm5nJmac6YOTFOGFesKsiYyaW/IMG1QWOPYRpbkzf0gu9IC42
           q2US6oZbfbPqLQUQyQuVVHLH5Ug9+OyDwpq5/BBnciKl+mJywtusxa0pWzxAMT2bGP
           XzyvGUdbEgDTerYbImIN6Crfer+2+6fx3tmbkK2ZXxml2pb1oKC9l4VTSvOv6nSipQ
           epyLbkBXMKyElYCOkmikduE4+z8xL8tdFdGHiGorOo3URSmjlXBU6+2mckNuT0INu9
           nm6op0vZyC2fa6JbAhDYBwONy2IUN3aBXu0Yh8sc4j7O6y+BblRdbvYWPoPAvsDdrP
           dWlOMgksP5f9w==
Received: from pub-142.188.multiplay.pl (HELO ad-Inspiron-14-5441) (adamszyma@wp.pl@[178.219.142.188])
          (envelope-sender <adamszyma@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with TLS_AES_256_GCM_SHA384 encrypted SMTP
          for <linux-arm-msm@vger.kernel.org>; 8 May 2026 07:08:41 +0200
From: Adam Szyma <adamszyma@wp.pl>
To: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	quic_bjorande@quicinc.com,
	val@packett.cool,
	Adam Szyma <adamszyma@wp.pl>
Subject: [PATCH v2] arm64: dts: qcom: Add Dell Inspiron 14 Plus 5441
Date: Fri,  8 May 2026 07:08:28 +0200
Message-ID: <20260508050828.7442-1-adamszyma@wp.pl>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <9666c1f5-722f-4c90-8412-19257a4afae5@packett.cool>
References: <9666c1f5-722f-4c90-8412-19257a4afae5@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-DKIM-Status: good (id: wp.pl)                                                      
X-WP-MailID: eeab978bcd2af9e5a8c586ae11baf5d3
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000001 [cTJj]                               
X-Rspamd-Queue-Id: 664DF4F1D4B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,quicinc.com,packett.cool,wp.pl];
	TAGGED_FROM(0.00)[bounces-294315-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,body];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[wp.pl:s=20241105];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[wp.pl:+];
	FREEMAIL_FROM(0.00)[wp.pl];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[adamszyma@wp.pl,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[wp.pl,none];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c15:e001:75::/64];
	NEURAL_SPAM(0.00)[0.909];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,wp.pl:email,wp.pl:mid,wp.pl:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: add header
X-Spam: Yes

Add device tree for the Dell Inspiron 14 Plus 5441 laptop which uses
the Qualcomm Snapdragon X Plus X1P64100 SoC. The device shares the
same platform (Thena) as the Dell Inspiron 14 Plus 7441 and Dell
Latitude 7455, and reuses the x1-dell-thena.dtsi include.

The 5441 has 2 speakers only (no front tweeters), so the tweeter
nodes from x1-dell-thena.dtsi are deleted. There is no touchscreen.

Signed-off-by: Adam Szyma <adamszyma@wp.pl>
---
 arch/arm64/boot/dts/qcom/Makefile             |  2 +
 .../x1p64100-dell-inspiron-14-plus-5441.dts   | 44 +++++++++++++++++++
 2 files changed, 46 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/x1p64100-dell-inspiron-14-plus-5441.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 4ba8e7306..81e058a22 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -449,3 +449,5 @@ x1p42100-lenovo-thinkbook-16-el2-dtbs	:= x1p42100-lenovo-thinkbook-16.dtb x1-el2
 dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-lenovo-thinkbook-16.dtb x1p42100-lenovo-thinkbook-16-el2.dtb
 x1p64100-microsoft-denali-el2-dtbs	:= x1p64100-microsoft-denali.dtb x1-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= x1p64100-microsoft-denali.dtb x1p64100-microsoft-denali-el2.dtb
+x1p64100-dell-inspiron-14-plus-5441-el2-dtbs	:= x1p64100-dell-inspiron-14-plus-5441.dtb x1-el2.dtbo
+dtb-$(CONFIG_ARCH_QCOM)	+= x1p64100-dell-inspiron-14-plus-5441.dtb x1p64100-dell-inspiron-14-plus-5441-el2.dtb
diff --git a/arch/arm64/boot/dts/qcom/x1p64100-dell-inspiron-14-plus-5441.dts b/arch/arm64/boot/dts/qcom/x1p64100-dell-inspiron-14-plus-5441.dts
new file mode 100644
index 000000000..b9e9ee417
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/x1p64100-dell-inspiron-14-plus-5441.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2026 Adam Szyma <adamszyma@wp.pl>
+ */
+
+/dts-v1/;
+#include "hamoa.dtsi"
+#include "x1-dell-thena.dtsi"
+
+/ {
+	model = "Dell Inspiron 14 Plus 5441";
+	compatible = "dell,inspiron-14-plus-5441",
+		     "qcom,x1p64100", "qcom,x1e80100";
+};
+
+&sound {
+	model = "X1E80100-Dell-Inspiron-14p-5441";
+	/delete-node/ speaker@0,1;
+};
+
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-5441/qcdxkmsuc8380.mbn";
+};
+
+&iris {
+	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-5441/qcvss8380.mbn";
+	status = "okay";
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-5441/qcadsp8380.mbn",
+			"qcom/x1e80100/dell/inspiron-14-plus-5441/adsp_dtbs.elf";
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-5441/qccdsp8380.mbn",
+			"qcom/x1e80100/dell/inspiron-14-plus-5441/cdsp_dtbs.elf";
+	status = "okay";
+};
-- 
2.53.0


