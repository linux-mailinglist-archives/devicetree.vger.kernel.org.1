Return-Path: <devicetree+bounces-226239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D6BBD6499
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:54:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6FA204F36F0
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C41E2F1FDB;
	Mon, 13 Oct 2025 20:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V2FZp66b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B272F49FE
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760388748; cv=none; b=b71G892zBr/Z0ILMywbEhBW12It0MsrQJxjhkTBaynD1Z6aWjnJUopoJukK3hpniKu8t9N18L2DFau/LnipKcyMfOWpEzD6Gwbum2bONGpEngfI3Ql3egls4CC62stDP5YiNem1EWedwAES1e/tvSM9vHEo0X8VcxAJGhQzmmso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760388748; c=relaxed/simple;
	bh=xDInXmxrDtG5u5Nw6FmUJ4lbWM39+ecdSdVKA/N4PpU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j6/cOBQinotVeeVDaMySAFE09Jmm7bsg+HWqaK7poCKaI11ATcl3z41593+XUmSf0ALAxqIsVMiO29FU09iiPKbai8l8BkG2zrCZOpdHknGTuobqxppVEE3KLfHJ6zTuv1+b0g+E5suLZBKT94bgSoHovpJWY45fnKNlGiVhO30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V2FZp66b; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-32ed19ce5a3so4079286a91.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760388745; x=1760993545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PRJbkM4wepO56t2Jx9Mj/0XBiWzZWPdz2VVmdtIvIJA=;
        b=V2FZp66baMYtLRgfIOXXqjnCkI5qij/qrRZZClM3Af0B71haC4M0CUZ8cW3NVu9lzB
         vGBghcSABPB5qtn+z59qtqjuDYWnZsQqFlxcVIXBJLAe9ISZxZoXvh2wMtmT0fd5+wQh
         q1aJxAN6BrJAaIYBidmIP5NzqySJMouItz6RfwdfHWbONGkEiQiFVn/cEz8EPu2je+x6
         NAljcbMJoYYkak9QKYfbAGv0/9ZAV38mBNtyzs1/xsd8tL1uSqBlMONtBF60s28Y9KyP
         oPt+pSEV18PlwDNlEbX99guf0NCxfOJDboPMfFB9aKMs17XEJsEe6yhe2IwWP0AjCR1l
         I/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760388745; x=1760993545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PRJbkM4wepO56t2Jx9Mj/0XBiWzZWPdz2VVmdtIvIJA=;
        b=iTtGkUpcZWMoYjedFrZKHfaMcq2zARrij+V1hE2u+HoFmyN//NEpviyvC/WOxaO0ZQ
         O6e6m9rjryFvq1OH68SF7FpO9mqGQXy14PirGpxPQnf3oiE5Q66JxeKsqf2Ff64Di7+K
         zK6IsOkBuiAxemD64ac2Ld8hX3QrwnVI8QDf2YwIaMmgl2TEinSkAQVhrsnOe+6/FUk/
         iynY8oH/Y+vNIAOux1+/lhjb/PSrUJUH/TM7yo37fw1+oTytSGB8CkPeEqc+2JvFM+wT
         mwH0R1kOPEDIxsLhh2yj2FBe4PGi3hGWWsnjy5ygZ0P0B5khvcWoA3oL2d2NN3kMTjZH
         o2qw==
X-Forwarded-Encrypted: i=1; AJvYcCWNQXS5jO8zsHuU+ykAnLD1/q+gTWwdRoSnVx1L78biDsL9hZj1S8hdgOGr0wtAsqtpbiXaeYziJsAY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6fqU4Q7QhDQtsaYpJkuJ5/FLJjWamEhtqh5bdeRsfLeteHzxj
	H4y4S/nt0jit6DQsn0M2+edOmfVAjN70XlSm9C5IfbX7DhOLWEVeCYfFqc3iUA==
X-Gm-Gg: ASbGncsrnMmQy6/JMQ3EQFHoWeVN05eYTmPmhTICFkr8oaHU70DR2RLLQNhgn22CBaW
	prRE121jEmwjQrJvDjjC40+ePqb5kr2SzueSIe5XZIhh0PNWWtgLA5ZXJ0F79K3R85jXwHe1EH/
	2zPbH/JU3UWLHZIsRGa1RwN/5ykW/wZqpNeMY7hGzknnuTk/VOtmdpO8t7e4bfOtB6bPS1rdGCH
	A4kiXGa3xRctkFPnHV7djrIpO/v0c1Kczjd3sm3zAUZ+17NYSzgqBgHcgYCyBYcU7qMd5r3AfKY
	3ew/amVzhKRfjYAPyfc11zBIytIUAlRVNuDXlT1xHuAwWFtM2hXS7sgXjk5BERBP4FnLbVSJehT
	GgyGv2gAKxLyaKDUFggu+m1o4VEzpk1ylLoz/ncm6gX+Jea3FbdVxfAw=
X-Google-Smtp-Source: AGHT+IEbc0HqY8CLIHs2k8aq/yJ+qGsFrnOrDj32getTUXol/oijADm5b/7xs/AL3ljfJbDbndG3kw==
X-Received: by 2002:a17:90b:4b04:b0:32e:8c14:5d09 with SMTP id 98e67ed59e1d1-33b51105bbfmr33280515a91.7.1760388745433;
        Mon, 13 Oct 2025 13:52:25 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:cc82:37a1:ecfc:e51c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61acc413sm13445147a91.20.2025.10.13.13.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 13:52:25 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: victor.liu@nxp.com
Cc: marex@denx.de,
	stefan@agner.ch,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	shawnguo@kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RESEND v4 3/3] ARM: dts: imx6sl: Provide a more specific lcdif compatible
Date: Mon, 13 Oct 2025 17:51:55 -0300
Message-Id: <20251013205155.1187947-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251013205155.1187947-1-festevam@gmail.com>
References: <20251013205155.1187947-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LCDIF IP on i.MX6SL and i.MX6SLL is compatible with i.MX6SX.

Provide a more specific "fsl,imx6sx-lcdif" compatible and still keep
"fsl,imx28-lcdif" for DT compatibility.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Frank Li <Frank.Li@nxp.com
---
 arch/arm/boot/dts/nxp/imx/imx6sl.dtsi  | 3 ++-
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
index 7381fb7f8912..074c48b04519 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
@@ -776,7 +776,8 @@ epdc: epdc@20f4000 {
 			};
 
 			lcdif: lcdif@20f8000 {
-				compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif",
+					     "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 8c5ca4f9b87f..745f3640e114 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -657,7 +657,8 @@ pxp: pxp@20f0000 {
 			};
 
 			lcdif: lcd-controller@20f8000 {
-				compatible = "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sll-lcdif", "fsl,imx6sx-lcdif",
+					     "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_LCDIF_PIX>,
-- 
2.34.1


