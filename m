Return-Path: <devicetree+bounces-245370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD3BCAFB21
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:55:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E8D230B6EB9
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC052E091B;
	Tue,  9 Dec 2025 10:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="DWhm+yqY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAECD2D0C89
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277647; cv=pass; b=IzJEL/8LQav2A3d2f2bWOT1V12p3K8VgXqqPfcYFMELrR5W981euxawKB/BLkClgihbmD2fKZ0o3g6i4NLrjrMSjXHPLdAahA6BBdgkerizzmpG9T7mAMsyfU8AmP/k2lbpECkGGrgEhLtZ1d5x0JrMmx8+pTa9oTMX1LiqXoN4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277647; c=relaxed/simple;
	bh=JWzY08zZr5ApuijCOvGFjIGDX/Q9Tlkz4x79kn8m+tM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=poHYFssL+P4f9laNkRIo4ZQBhEej5cKpKth4yA5A5vlROXFKaUKzJ1oV7U7jnvE/FU1w0VHB7ITejFYXegokuZHYZCTVxakx1Y4Ng4JZYgVmf2zG5YfOBodUbBo8AfV1QWQW8BCYHNpwovtH5iky4NC9+M4pZKIaRI8BaT4uAhk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=DWhm+yqY; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=wWWZNo1Ds8pYIpq291eVYKiaMyNft8NiKQtVzEpxS8g=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277611;
 b=ZPxQ6uyXKtP6oKEnP8QcABKG+bFUmY7hPbp5hrGGGFOmt4ucRkcI0Zayr/BQimVtoY19/8E9
 BrpFS1UUMXnsbFp4jn60ei3Jv4u6mkA9hshmLcgdt5dkmIfihtXUpHLAgt2wozigEDpzLZ4PydV
 FBnCfooMsIVAo7xdWAedsldscB403vOl5Rqy+YawDa7uvF6IUhJ7B6+xz9qGSumry+sz0MhrNVn
 1UN4B3EAn6UM5DEGR6IjVfnbAEPhFiiJaQ3yUd6AmuNXtJEbfVJQmrNjv6nCghpzNIc9RUxlrDz
 hYFOKNbndnbRM2UhsQQ9Gu7VQwnwijan98jHcTTj26VSA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277611;
 b=qonH3nxXTHrwQbvYHrYGqAfBw8QOzw+DKK6Y3F3FbFIrUY1QrhmAvt3ACvAVDI+YgvfwlCx/
 OiVfEevlcJOTtZRA5XuzO2wabVrEVckeWCWjkrBF9/bLRA+jb2Ds5Ix3gzEAbMIbWF9aq9Tt/zr
 S6s7bKu1ut7lYtAtMag7IiMIAsVZW4lTK3fqM9i/HYIp+UEKtuUCe/D1YeUm2mwoTDtAdrqH2HZ
 Yw8LurObYFf5eWfi8nwmbhSS8WCKcJRTlVHv28QDD+dqOiseyZ7EdYQJRT59joZrY6wsIIGHkSC
 GNeFtDnvv8AjZa/dw9G0nAdF0uqSzNyc1PuKMGJMDvQuA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Tue, 09 Dec 2025 11:53:31 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 3B805CC0CC3;
	Tue,  9 Dec 2025 11:53:24 +0100 (CET)
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
Subject: [PATCH v2 3/8] arm64: dts: tqma8mpql-mba8mpxl: Fix HDMI CEC pad control settings
Date: Tue,  9 Dec 2025 11:53:09 +0100
Message-ID: <20251209105318.977102-4-alexander.stein@ew.tq-group.com>
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
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4dQbLD6bjYz1kNh4y
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:2d9210e846ca8202dbc6018c182c7a2b
X-cloud-security:scantime:1.911
DKIM-Signature: a=rsa-sha256;
 bh=wWWZNo1Ds8pYIpq291eVYKiaMyNft8NiKQtVzEpxS8g=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277611; v=1;
 b=DWhm+yqY4S7jobFCtiJxiAcQVHMn1tnU7NCrPC83q5tuiHDyxP3/+FiS2zcHq90HiVzNSGn9
 RAlXv7XG1MmJf+LW0GXbYL2lof4r0tEb0l5K03UQo2p2jQZxKeBS6gp+6+okH7bcw5tG6xY4l32
 azXdg12qhmnc9/olO/iWpzsGU72HXAgObF/1LIzlb4duvgpp6E2wdI9NQ82UwIDHrt+1zo+aTlR
 5wFSvYYhJP+SYaJlbsa63Hnxy3gKF/oWTFLBgbMVv64W7NsbNKs83npgVKygYD7CEULpeNFVy4z
 JPIBAoJhAXbtFPSs6AWg+wJ+88nmAhUxWTYq73FVRiHPQ==

As per datasheet of the HDMI protection IC the CEC_IC pin has been
configured as open-drain.

Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index ff2bacf24bfd2..03b75d4cf699a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -868,7 +868,7 @@ pinctrl_hdmi: hdmigrp {
 		fsl,pins = <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c2>,
 			   <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c2>,
 			   <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD	0x40000010>,
-			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000010>;
+			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000030>;
 	};
 
 	pinctrl_hoggpio2: hoggpio2grp {
-- 
2.43.0


