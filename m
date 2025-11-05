Return-Path: <devicetree+bounces-235398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A289C37FCD
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 22:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A4284237E8
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 21:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B80534DCC0;
	Wed,  5 Nov 2025 21:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XAJuJWkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82185334C0C
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 21:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376906; cv=none; b=Oqy3EIYS9NpIANlS9yi/aGjM/xfVnd4nRZpmlEl6HW1OuiJIerKTMARydD/rM+Ab7KdRD2B5FCNzz7DiMTAKfDMG9ppKaP0cRqgfBs07s1O1cLiX/vsCS8h2vVsKjafapk+DBdBHBNY7pDIeTDTx3/aRBn5mB7Y8zLiEo2UWqiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376906; c=relaxed/simple;
	bh=o/RZEnpXdcF408S2TqM/xZXCKDcyIyuFC63UXSw1n2Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=H3rOl+9qGcuO3Fshj57K2DMDRAdeEKZ6ZYOpptx+TIEAyOl87/BpkuMRDrOgy1szUyiGhasOXQuLnaSCzv7d+cWUeLJjWFNe+tbxzKRnibrMbxcd/UBoxsVqKWBLhPzwisvgKHcuUk5USD2+Ag1rNAEGyVGddj/O4UUyghR3Xmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XAJuJWkg; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so46811366b.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 13:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376902; x=1762981702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4/N5rROtcnxc6d5f0IUPrUWxw9x/K7/M9hcGw0GwgYE=;
        b=XAJuJWkgUrJwcnWeMDuDTvpQmQScdINsOCDxLTVO8hGAUyDvHSajWbchsHCs0yTHzz
         D17W/yAg3vBpnI3MktwVR6dD02Q1dwe6EC1NF1W74hEBRL7Dp46gqD1KxT8CoKYOvJdb
         fd2udH9MdwyIgcoQJrL92upIppadbANc8ZOwRbyj7+4tI8gCtrP36PQfcoSbrZ29sr2U
         cIHHgd5ULuodLk+GaiH5DU/kzkR92TSpYkvTpJdKCwc0zU3CsyqygKYufXW+y7PjHQ6k
         CMm7GCqu52WEF13cYduKlutJ/6QM6LGqAMooq3IL4rAd+CMiZNK0mpzMnZ2KnTdrQR7M
         AB/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376902; x=1762981702;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4/N5rROtcnxc6d5f0IUPrUWxw9x/K7/M9hcGw0GwgYE=;
        b=rgFUBqf3qC/NwPZwDaCPwOHFOU52v9amzYiYL5yV58EOQnc0zrGyEONncb9Xnpo8pS
         Nx+j0uQ2JvoiGkn+TadUfBd+H7q48xB6HQ0gC5Fx/EHTwWoNcGZL4lHTOMU2Xng8LQVR
         BxvmCaWvwSjF5JgH45PYvtokF07bKo6MfNrPIx0xBkUTiS2bDPmRrM+qjvcwOtAzseO0
         EM8kB4j7PecjmwuaTpqPhOFXXb9I0tweaEMqcJ4shxSeO82QJImzqTT823e57HobtbzM
         lxr+zc5dhsdudly4XY5fwSY1sog+XB0FO+hLYlDHJHKTPtS1hmnd3vX3mboznC80rTf0
         Jy9A==
X-Gm-Message-State: AOJu0Yyh15vJ1H52ECW/rEd5YGoC9pCuaX98IJ4rypN9T52M2l1zyd2l
	22CyiNCJ8Mq8zoJmAcDv+LaAoXc5pCJlVWEbF5VwR4LtgakyyWjSdpjccnhEauvce+c=
X-Gm-Gg: ASbGnctI+xYXTlE8iFZMLSBPzmvumQyquiDDOFYGZ0HEGRXGBS3PZ88WKhMdEJL4dPi
	DMzRm9VU+fu1DKFWnCvdwwmLs1Xy712h0UOwVWklr4sfwtwiAmMyyc6VhhbhL5OWEyFLmfL/m69
	9NR8aK+n1EeDcOLpkhidGV8OWT+Y42BuuPy9Kxffzx0uk+cxvF0IqMtp1RPdzpZ7kEpids1xg3R
	Gn9SBekb3fk+jj+O+VkDLWHA7hUCRwxIDD4/x1+evajdGL/oVctLc+SeHhuh1hOJRSeHAHPcHls
	kzU0a+nJgqLBjQ9aoQWxYNyKJohFeCQWF5L2mCAekI0kjNmRljIQNqwaKdy+ZtPp9yp/vsGmguQ
	NIBPGAKbIivT1rPgs4cGZ8atQpLcqAmqNesM0sX4m5NSLuknhIlAF2f+D7f+Dk31wKvX375mUGu
	qmafKLibCibXH6mb+gTYnvIQpwWEYF7vlqghkoxSnXHur3sA==
X-Google-Smtp-Source: AGHT+IEQN8LEBzg2FibdPs1zW7myIBbg1Dg3RX0BLIHipmkT0F6MtRX6Fdv53CQhOLloh0SQE8k81g==
X-Received: by 2002:a17:907:968c:b0:b72:5983:db0a with SMTP id a640c23a62f3a-b7265297e0amr437027566b.15.1762376902297;
        Wed, 05 Nov 2025 13:08:22 -0800 (PST)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b728937cc8dsm54005766b.17.2025.11.05.13.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 13:08:21 -0800 (PST)
From: Andrey Leonchikov <andreil499@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Fix USB power enable pin for BTT CB2 and Pi2
Date: Wed,  5 Nov 2025 22:07:33 +0100
Message-ID: <20251105210741.850031-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


 Fix typo into regulator GPIO definition. With current
 definition - USB powered off. Valid definition can be found on "pinctrl"
 section:
 		vcc5v0_usb2t_en: vcc5v0-usb2t-en {
 				rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 				 		};

 		vcc5v0_usb2b_en: vcc5v0-usb2b-en {
 			rockchip,pins = <4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};

Fixes: bfbc663d2733a ("arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2")
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index f74590af7e33..b6cf03a7ba66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -187,7 +187,7 @@ vcc5v0_usb: regulator-vcc5v0-usb {
 	vcc5v0_usb2b: regulator-vcc5v0-usb2b {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_usb2b_en>;
 		regulator-name = "vcc5v0_usb2b";
@@ -199,7 +199,7 @@ vcc5v0_usb2b: regulator-vcc5v0-usb2b {
 	vcc5v0_usb2t: regulator-vcc5v0-usb2t {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_usb2t_en>;
 		regulator-name = "vcc5v0_usb2t";
-- 
2.51.0


