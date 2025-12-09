Return-Path: <devicetree+bounces-245367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDFCCAFB1B
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:55:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2CCF430A9136
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF302E091B;
	Tue,  9 Dec 2025 10:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="kcxS4mwR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay93-hz2.antispameurope.com (mx-relay93-hz2.antispameurope.com [94.100.136.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0EE1E6DC5
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.193
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277644; cv=pass; b=a36z60v4tDXXh0SAJso+8jQkOdD+Yll66S4ndKXW3Db0Yoe5Y5dAb9/IJSOrMNwKOSSUg/8hApjUse6YUR23mqigsagIV28bKi8Hure1T/XMKhqgVlkUL1FW1HTB4l7F6AZY+z4K/YtDlt6ckGolF/YUK4pWTpN2GF7oALKkgCw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277644; c=relaxed/simple;
	bh=gLOKZ+MkdH4N2hLjk7nJT+UlcMAPrO4IXvoE7pnJDDo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E0/CGvXVzuakCrhOUciTa+/xLeXEV/uRjjsgVweEHdCp7Z3vN2ZHBxA2iAy4XaArGx07DPwlNM11LDhl8Xcr4LfIXqbntILywqMb1beizQVY8qeUSL01xsQR7Rn6qaia59VfGzkrajZtN9LoFOquY1LTspTrThjJ3ALzsJqgQWg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=kcxS4mwR; arc=pass smtp.client-ip=94.100.136.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate93-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=6EdOKfzZ01O67SP5Ml+fXS/xdGTFEoMvJNRoq1JoWc4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277617;
 b=PUXf3FZs/LWRwKIN+uku206J6bYv2gtnkpTKqe7Cfd3Ov+nZebp9dKAAcmKo246FsJIDNFfl
 NjkM4LJhh78bbG8uOuCdOWBZTqCicGl+zya0Nkk+b/WJgC4nubvTcky+Fn3vQJ2IBlJ6IoYJ6Wn
 /3+ELi/S8MmxkEJ/ToOyqhpUrh60gQ4BgoW7L82R0DeMRUMCWOdRTx558r79CbI1T7qH5hI2Nnw
 t8bSo7ZnjjAmxXxfzQ0GLDNjqZNEQwlOvfIvkDwk9Zb+Ius3AYAU8OWWpGUq+T5B9Piq5y8iU/S
 7EZDQOXCFvfvFpQOHVCGSVQoDiMRfpPzCcA0DAeeJTdYQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277617;
 b=LVsu0aGLX+e83zRG2oQZGxXaNLJcx6che9BSHj6mXWDqndflqbrWh7YZ/S8Ljh2qo+/ZOAyw
 OSPG5GTzrShY4eAl+XG/BIGG4NNLysp535H9kegbZDUadmnK8IH03Dlpb9td9qm7mggMbjqsbMB
 SngtjIQbaUeK4Q/9eNL5N2cs1JJh8WoKuYF9GUMY+ufXSN7YIgeXATkgqlnZs9bvZX2XAuyy+BM
 128b9LGVuDJwVGKoCwqEMl9aXdzu+G0YG7KmXttarFy7iH6JU2nSOALI4d7eQdLsWZVUXPCcKwk
 9zV9EvpiXfRhKigm6kK2S3a30P83FUhz35lObdy17ZPzg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay93-hz2.antispameurope.com;
 Tue, 09 Dec 2025 11:53:36 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D3D6DCC0E95;
	Tue,  9 Dec 2025 11:53:28 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/8] arm64: dts: tqma8mpql-mba8mp-ras314: Fix HDMI CEC pad control settings
Date: Tue,  9 Dec 2025 11:53:13 +0100
Message-ID: <20251209105318.977102-8-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
References: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-body-digest:e54c6801c37c73ffbc98dcd4d28a370f
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay93-hz2.antispameurope.com with 4dQbLK45Kmz4QZMg
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:357d07ff5100462428c8535adff74f8f
X-cloud-security:scantime:1.955
DKIM-Signature: a=rsa-sha256;
 bh=6EdOKfzZ01O67SP5Ml+fXS/xdGTFEoMvJNRoq1JoWc4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277616; v=1;
 b=kcxS4mwRiszMhf2pdksA5yr+1wxJqCcah/8lPisbD1Xbtgm9qjv5fR9SVqlj7jrj/PIemhv9
 aiV4Qls49bX1URvBROqfpuWUc1kbCTTvk9gJznSGsvwxvhJBSPexUbpSHxbuxJv3Dxuk9MhG7U5
 p/TlHSW1Qve4SZCvtRNdBDlAQ3suAma2Lh1SKzoFr/P9LGGXfSnJMzAK7yQfnQYJUjyNo85ijKm
 26WKDcIcDERhkFbsTgIbfozu5UoDhX6MnQGgCsQgAUUxh7K9MDIGZXRPeiosjbo+GL+6cYnL0wl
 wOV1vwsDeoHjTEUkVCzz9/QYNlZ5xNzqXO/N4kVBLUlag==

As per datasheet of the HDMI protection IC the CEC_IC pin has been
configured as open-drain.

Fixes: ddabb3ce3f90 ("arm64: dts: freescale: add TQMa8MPQL on MBa8MP-RAS314")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index 67fe1f63fd93c..30f0e81c4be00 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -704,7 +704,7 @@ pinctrl_hdmi: hdmigrp {
 		fsl,pins = <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c2>,
 			   <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c2>,
 			   <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD	0x40000010>,
-			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000154>;
+			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000030>;
 	};
 
 	pinctrl_gpt1: gpt1grp {
-- 
2.43.0


