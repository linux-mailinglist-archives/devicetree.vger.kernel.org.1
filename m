Return-Path: <devicetree+bounces-233227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6386EC20158
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:51:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFD9B406E34
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629D034028F;
	Thu, 30 Oct 2025 12:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="eYdxyqes"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4716C340DB8
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828620; cv=pass; b=iheOMGIxbTqWe/jcFkC85k+i6SIi7P3yAKwMgYO68e1+lCEhSBR84M3vcb4DKNkLd74QwO9nbSAJqOANV4QDjP+nAdaDp6HnOQdUGVVQlhg7T/tRi+cA+jESBUXhBbkkERwhuT3SLPqZtJb7EknNeYZ5qnYApnnCILtHw65dfKM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828620; c=relaxed/simple;
	bh=gsntOPMD2rPmRjXq5D6VPWvyhyUwrWd5WBIPPuLLrjc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pW7kfDbXr9Xzmx9sKsGXg4FPWsaZ/lqIfXMkJpz9f8Q/N6A0/Gu2GFVjUIMqV+fFHtyxBYzBsdgHT4WlHFM5nKqMm2FWfarKbtfZDg8dLVUZ7B58ZqcKXAwIyVPU8jrew533UQyv3gLIsN2bCVRkgC2kkIMzkAorxh7qxZBfKBE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=eYdxyqes; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=k7CHMivira0x/FyH+Ow1E9d8fqnubbrxUxidvJeHW7o=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828599;
 b=YoGbUQWpBTnfuQAw62//aBeqfopp8vPegrLyFFQxqQGUzoF/dMJhywPDy7YufSAfKKW/ItOu
 Sa0yMOfiz5XeqE/pYUEUbrJ/JfL7hei79Dw6i0O+8WFhghdP2ZzlAA8r7+5dJeQZ2tMUYy/qF70
 wP7OwboMWevip+bGIez8Eqmaj9LKexmBraEltiy0pniIZDYJ5KA8iKmdeM+RtcyZHJAUaSsMR9l
 4bZP5OESpwO1rn9r0A8o+H1Y1+b661Dc5CiFf1VdcvlZTAMYFDH7j03m1Xd/3WBXGF5QvecyVyU
 DpqPGZladEWcTKVvysqOpywdYtv70wUo6BCCdHKSZQuCw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828599;
 b=cl0ZwDU1pecb6/+kD+cEwMkmnWWqeTtE/vI3Y59p8K6Ut69+Eup03MsvDKh27JoIfkhK0A30
 64j1eh/5fZvNp3P6ey6VqZd6+sBvmIsq0AfDt0rMQQpArOtmjfvv5YgGMFVFtip9OHovITQNzGo
 Rl93FOzo4tkrYwq5ZtwvRn2klJdTGkoYq86llWYFhxVKUGYDRNNtfW62KQ6hHimfFg2HL6AEmvs
 4rm49P2L/s7Akox2ZqH/w4RRbw6w9Tf17sQF6FIMYZnW5mF9scZinW4kuxoaLV72K7gq7OqUVIL
 eg6PlNb+dmB/dZKSd8XOl5FNHLzmSWi3i0ci9H6C9Pu5A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Thu, 30 Oct 2025 13:49:59 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 6035B220CC1;
	Thu, 30 Oct 2025 13:49:51 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 01/19] arm64: dts: imx95-tqma9596sa: fix TPM5 pinctrl node name
Date: Thu, 30 Oct 2025 13:49:08 +0100
Message-ID: <20251030124936.1408152-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4cy3q40Wp6z2nHFG
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:c734b9e42def97ec10e90bed4c62542d
X-cloud-security:scantime:1.998
DKIM-Signature: a=rsa-sha256;
 bh=k7CHMivira0x/FyH+Ow1E9d8fqnubbrxUxidvJeHW7o=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828598; v=1;
 b=eYdxyqesUdUGYKivXLVlW3dEWMOf36LqlWGTxO+4AyZxVNnXVDTmW3mjI2xUdUuL4xgmc1tR
 xIKDV0UGHMJB+3S/3sFF7uxCab5N1b2sJ71ZkjvA7TTHlFHKx+EhIX6CU9tZ+Rl5ludEKFl4e72
 qmmTrnD6hymY9wtwOYKopSQPNnAmnQeMhokEPlK91ziTaYGuCre6uSaOl/SLKogTPgqwCnJTJ/k
 vrBOs2ZdgEYx6uSpTQSS7x3AO4zbILcyDugPQ+1y2egEFKroTRz5u7foIU3Py4fpw6Yk9wVcHV8
 IZY1YSRIdYCOBDWpPc7psDxl7vaZt19pSVCQrbxf3WXGA==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

tpm4grp will be overwritten. Fix node name

Fixes: d2c4d71b6cde ("arm64: dt: imx95: Add TQMa95xxSA")
Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 180124cc5bce1..c3bb61ea67961 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -617,7 +617,7 @@ pinctrl_tpm4: tpm4grp {
 		fsl,pins = <IMX95_PAD_GPIO_IO05__TPM4_CH0			0x51e>;
 	};
 
-	pinctrl_tpm5: tpm4grp {
+	pinctrl_tpm5: tpm5grp {
 		fsl,pins = <IMX95_PAD_GPIO_IO06__TPM5_CH0			0x51e>;
 	};
 
-- 
2.43.0


