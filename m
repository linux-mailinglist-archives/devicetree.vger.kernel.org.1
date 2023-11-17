Return-Path: <devicetree+bounces-16757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 783107EF8A1
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8F391C20A45
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5303B45C00;
	Fri, 17 Nov 2023 20:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PQvG1BOz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25DF5D6C
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:43 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6d261cb07dcso1424205a34.3
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252742; x=1700857542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cC5x0F16yoqZZUwJiOcaoVUGZ+6c1n2rTIUkTxQENLo=;
        b=PQvG1BOzSauicOfA+2Zpqex4jBnZo1vkOGRaVHEHx+qarWl+PdpVgP5Fyi35+N7uae
         gvElArsOa6kxN5Y7AuXBmtKH0aa7OtqoaWj4TlnzLTJHElgIa6ADPdf49Ewf6heJepv0
         k4rg2u6B5f5sQ4bBsCsvkvTP+tbMWxbK9bzZCsehXqAu++/KHC5Dw2EdqDfBhD99Y7Mr
         Ffonl+Crwn33VjVI3fhhjD5jHlSI1r4yuSuW9peeHzFUNaJgOGOqMcbk9qsrkgsaV9gZ
         V7ceXUlyGPJOniJf1gOoK+VxrvlOa3M20v6/7Py6HjnGn+jMoVErLEc2bKFFZrZSSYon
         vjBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252742; x=1700857542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cC5x0F16yoqZZUwJiOcaoVUGZ+6c1n2rTIUkTxQENLo=;
        b=R/2d/VL8BU10JCD4NuUhNe9xwX84EE9/Ir1KxOF8XKwZX/pRdNmMExzLUIXnT5ho8k
         fmf27yZOrdpBXXueJYQ3GDYhVEfTaDgWX0j+E7rzZ25taz6jARzQYiJF8jYoxOZOD7mf
         WgWPNJUFpGN++/UJmCUFaR/MBtCeI3/GCDhblF0g7GroTgm2Q2IBTKWJAVj1jaqpZJqg
         M0D8KQ4lyiP8VMxCpZ5jgPjuh+VR9adacdcL0KnhaJ+fukiaZiF4cd2sGd5FhU8qy8BO
         h3Prl0chHUooY10atfI4kLocnMfnOxfeJpa/yMincx7r0DMYQDyYbF8TEuytHQk9Luxj
         VDaA==
X-Gm-Message-State: AOJu0Yy3p1lhBL3Jt4rXo1+N0ItZat18eBKENJ28EbIKoCqnRwrcKhkx
	d3GcjU5PU5NCo8rLkgnXozM=
X-Google-Smtp-Source: AGHT+IFQOquKVOXG/4AQKC/d569hIg3KFrQ+5ydclll/CqbXqTN/HkPoQrM1TYkxfdA7MK0TmxIopg==
X-Received: by 2002:a05:6871:5221:b0:1f5:b586:6cd7 with SMTP id ht33-20020a056871522100b001f5b5866cd7mr410990oac.16.1700252741055;
        Fri, 17 Nov 2023 12:25:41 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:40 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/6] rockchip: Add Powkiddy RK2023
Date: Fri, 17 Nov 2023 14:25:30 -0600
Message-Id: <20231117202536.1387815-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RK2023, which is extremely similar to
existing Powkiddy RGB30 device.

Changes since V3:
 - Corrected commit subject lines.

Changes since V2:
 - Split "hold panel in reset" to a separate patch for the NV3051D.
 - Changed replaced common include to a new Powkiddy specific include
   to better reflect the similarity of these two devices (and so as
   to not have to delete so many nodes).

Changes since V1:
 - Necessary clock changes have been accepted to mainline, so removed
   from this series.
   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=f1db0865b4628d5e2e85347350c077a71f0629d2
 - Combined Powkiddy RK3566 devices in devicetree documentation.
   Dropped ack from binding as this change is vastly different than
   the previous update.
 - Updated panel driver to hold panel in reset status after unprepare.

Chris Morgan (6):
  dt-bindings: display: panel: Update NewVision NV3051D compatibles
  drm/panel: nv3051d: Hold panel in reset for unprepare
  nv3051d: Add Powkiddy RK2023 Panel Support
  dt-bindings: arm: rockchip: Add Powkiddy RK2023
  arm64: dts: rockchip: Update powkiddy,rgb30 include to rk2023 DTSI
  arm: dts: rockchip: Add Powkiddy RK2023

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 .../display/panel/newvision,nv3051d.yaml      |   2 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 154 +--
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  38 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  | 875 ++++++++++++++++++
 .../gpu/drm/panel/panel-newvision-nv3051d.c   |  57 +-
 7 files changed, 981 insertions(+), 152 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi

-- 
2.34.1


