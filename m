Return-Path: <devicetree+bounces-24181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A316580E529
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C3312822C1
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9521772F;
	Tue, 12 Dec 2023 07:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NH+bbvMH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2512D0;
	Mon, 11 Dec 2023 23:54:10 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-5c66bbb3d77so2978486a12.0;
        Mon, 11 Dec 2023 23:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702367650; x=1702972450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Shdip5yjqGroTxQL7MptUpcQ2qzzAlYoyVTOz3Rc4nM=;
        b=NH+bbvMHLYxTnSahVCREvE2DTNvqg7JhcXv37IU6kqZUwgnlabbw8gXjJLj8b/cMzP
         0gUvs4cM/mjGogSZkJLttdKNaOn6I33FJAPwDkqu5k1SW6pdouP0i/Q5wPCjZE3bZv9S
         MTwqChG5MfYoMLHxI9udChQyV1a3El4SMWH6/odxfTspxX0tDC8G9Y6+dNHb/sxm+vNP
         BLagsjYgeHEvniPMfwFph+0fZj4WqV5BbsgzAj+fOhkaDwu/3mVBWD0qfflExuvBicAq
         caoBQPLomwIOeJfcxCFOPSl8XDAkGtqVmSrZjg8Wwj2p1DdCeTGm6nU+OxWMBvnrFSYC
         +emQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702367650; x=1702972450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Shdip5yjqGroTxQL7MptUpcQ2qzzAlYoyVTOz3Rc4nM=;
        b=InXhJ2lgQx//CHjQOBOnO95bF7iqWG7eH2qxcvpfNceQHgdFSIVpZpAmZWW2nWQeUt
         DbGJgeS/AcVOg1oUTMvXh1Hm2IGbBaQEpWhV7ukG57+LHZ1Ay2fQ6YwyUwyUQDxPgK6o
         DhuJw5ZAPXII9bo1mA7i0g8Ce4XYvaSeKmMDbpNskp4Cl2sSfKjy+ug/cmjgiN6C9JBo
         MWgz7UzKLFESmDHDl/xXuroqONIjV5Pdkyu8u6rD4u0HNL/RRxe5/cgCItEkvwiVBX/Z
         rJhA9mui1nv7PKtDShG5ogTTP6G6ujpTvKKyv0s1Js+Hok2pSfgJtqDRc+5y+vEBxQ8v
         dMiA==
X-Gm-Message-State: AOJu0Yx9s7mB3cic4QqtBjK3jpXeEwwdrXbgo0fSjKTox8uioTRj9YHB
	yo/fhyR5xZowuAZGPXzcaTo=
X-Google-Smtp-Source: AGHT+IEmhZs4mI8QYXlU+ypM3O08Mx6ko1LYMi5VkKIviUfPwcBJLVuPc2M6YBUukdoUvVEUh8jg0w==
X-Received: by 2002:a17:90a:65c5:b0:286:76e6:7b26 with SMTP id i5-20020a17090a65c500b0028676e67b26mr2956223pjs.36.1702367650226;
        Mon, 11 Dec 2023 23:54:10 -0800 (PST)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id qi9-20020a17090b274900b0028a28ad810csm8144319pjb.56.2023.12.11.23.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 23:54:09 -0800 (PST)
From: Yang Chen <yangchen.openbmc@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	patrick@stwcx.xyz,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Jerry.Lin@quantatw.com,
	EasonChen1@quantatw.com,
	Leslie.Tong@quantatw.com,
	yangchen.openbmc@gmail.com
Subject: [PATCH 02/11] ARM: dts: aspeed: minerva: Modify mac3 setting
Date: Tue, 12 Dec 2023 15:51:51 +0800
Message-Id: <20231212075200.983536-3-yangchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
References: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the unuse setting and fix the link to 100 M

Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
index c755fb3258a4..9979dba1ef0e 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
@@ -48,10 +48,13 @@ &wdt1 {
 
 &mac3 {
 	status = "okay";
+	phy-mode = "rmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii4_default>;
-	use-ncsi;
-	mlx,multi-host;
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
 };
 
 &fmc {
-- 
2.34.1


