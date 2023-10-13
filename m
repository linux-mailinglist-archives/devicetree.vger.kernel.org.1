Return-Path: <devicetree+bounces-8576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2DC7C8D24
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 20:39:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 34C42B20A66
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA31A134CD;
	Fri, 13 Oct 2023 18:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k+macZy7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415C51C287
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 18:39:27 +0000 (UTC)
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D46983
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:25 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3b2b1a7874dso522450b6e.2
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222365; x=1697827165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B+4iJr3L/oL+sIJn3dRrv8W005oNdqoHpRNAcI3ngyc=;
        b=k+macZy7WMPhtfqi8TfC8+FKPd9MLZJzr+akZr+V55IZ2vSM4ooR6P58HbTdpRZGAs
         20pLwdaMX7deyKuGaWLDVC24lmUcAQBoKCucNaVNxG7BDKl44FBH5B6VahMazCzlmGzE
         o+NX6CVdyAvom/emniFbOHGpsy4Qt0h+DLtJYiemqqDvUOc7XpEUI7Cf40aWHhavTefB
         cI4cW+6IJAU3s4pKsdAW9q4nawcU/vrQNpqRAgTazCp5S3dyfxbaspORx+4F8Ah1ZUMa
         3Ga1yTyOSpsOPZfT5VrVypKeS+K2VKxeJKR1Uw1kemCO4alfictPpqTTKU/Kacwb7sJw
         Qdvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222365; x=1697827165;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B+4iJr3L/oL+sIJn3dRrv8W005oNdqoHpRNAcI3ngyc=;
        b=SHDFDdzG8BX7AJAzgTwNSBZKMlhetwHJILgz2m2lnmjGwHju164Tg40HK7kgDst0QS
         gmg5n+NFpTAZUXc+XxcbcdvLaHQqpXOs7Moq/UmZ5q0L05rDBDSxdhwSm6ptmFdo3UNo
         0C7tEr9ErqiJiOQogAs425du2pABNQwTFDtJm+3lKNmKTvYWUpCrX5UpcVB63/gRHWW/
         1u3Zw6Sr3pbHzLLo3F3lr+XlvGmSNg75y9+sbjVeDWVegFHrrCqcc99ehMtvTUcfIEHL
         2rOKy1E5eSvbdqukIGESrZeQRtNbATioMRQZ15bFvml0Apc47aHouaEPLViU6uxD2NW2
         4fDA==
X-Gm-Message-State: AOJu0YzPpv6JZOtEeNaBYx1RcKOovtrgWCTPfZQZQDVzBO39axUk07tt
	RURYLyWX8vSQ4JzvcmG9hwo=
X-Google-Smtp-Source: AGHT+IHJC9V7h7MhayXpUhwpuDTdyl0xVlDREHaqLEmdq1p11Ep4ugULWD3Vjs8KZWefYghyrkmQyQ==
X-Received: by 2002:aca:1b13:0:b0:3ae:2b43:dd4a with SMTP id b19-20020aca1b13000000b003ae2b43dd4amr28374791oib.45.1697222364849;
        Fri, 13 Oct 2023 11:39:24 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:24 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] Add Support for RK3566 Powkiddy RGB30
Date: Fri, 13 Oct 2023 13:39:13 -0500
Message-Id: <20231013183918.225666-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RGB30 handheld gaming console.

Chris Morgan (5):
  dt-bindings: vendor-prefixes: document Powkiddy
  dt-bindings: panel: Add Powkiddy RGB30 panel compatible
  drm/panel: st7703: Add Powkiddy RGB30 Panel Support
  dt-bindings: arm64: rockchip: add Powkiddy RGB30
  arm64: dts: rockchip: add support for Powkiddy RGB30

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../display/panel/rocktech,jh057n00900.yaml   |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 152 ++++++++++++++++++
 drivers/gpu/drm/panel/panel-sitronix-st7703.c |  89 ++++++++++
 6 files changed, 251 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts

-- 
2.34.1


