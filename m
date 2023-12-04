Return-Path: <devicetree+bounces-21412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE378038E8
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 16:36:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5FECFB20B44
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6026A2C859;
	Mon,  4 Dec 2023 15:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GcTRv6Oo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 749D4C3;
	Mon,  4 Dec 2023 07:35:56 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50bc8a9503fso6124235e87.3;
        Mon, 04 Dec 2023 07:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701704155; x=1702308955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xqmn56t4S0FY+90Mo/LoUaieX3Kd58AJtohExc/I0y0=;
        b=GcTRv6OopZ9McParB6ovzu0W7XpYoTQwfOk47AgTWTfr/zmdsQGyTlw7NlhW3bCFeL
         B5KVKoEJ/Is/uxZCvMkWT+DqD7KZJRL3vi8rJXDmkfsHxwIW0JZaS1U1+Fm20LyIIE/k
         NrCuhK9NgOBGQqYGeOMAWafFqCQxPV9cO+cfhM4OZfBVteVT6vc8i3U7aMXAmbedYTmX
         Gi0mGvyG6QRdzsGqDP3JyaYKdds0/qcHcj+yY42v6QVyEE9krqv2bNcxmvNxy3mX+Zsa
         58LnPAZYdlnQ9UOvrGf5s/XTfH7V6MU/xEfoQsmWRDP11ctvRUMaILCGxr9gmnMGd5r6
         Rphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701704155; x=1702308955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xqmn56t4S0FY+90Mo/LoUaieX3Kd58AJtohExc/I0y0=;
        b=gjnYzfktVF5BxbpdcqE9ITkiUWYrmFVl49IkYrKk/pDuODf/ni5w9xFDeW/K8s4Boa
         ysmQ8lUtvaKJ5ktUszajoiqgbw6qesmWLBgjLFdw6QH7g6DvjdivK2czO4YAzVfarHMU
         VBHFphiQ0Z6PNpRD7mxTV5dMCaW06BW9q6u7Q/5/onfGocD/40xrQw6IZzshNLWw5WI6
         TQ3ErZc6VaTznr67Wuq3wGJuNrn2dLwgtJNLBDgpkAzzlYWqMN4fjiC3N96DbHzBALtc
         ivYVLq7ngo4tK4XqBp4QxOZju2mdbXaRnfqJsDlxQky5mtlrPLPmeGMbe6zfjh3ZYqRH
         tlpQ==
X-Gm-Message-State: AOJu0Yxnvh+WfsiWGsDqnywmUPl0nGAt2MdeScCY2fS8EQxbU5nc+w3/
	Qe9BqEYSHgrNH/MPQM/nyw==
X-Google-Smtp-Source: AGHT+IGBhLtxslcjLGRyx0hVDNS9dk7oEruIspupZ8AqpVd6HTktgYB9nKcGugo2+u7VfHcL6JP/qg==
X-Received: by 2002:a05:6512:2fc:b0:50b:e3ee:5433 with SMTP id m28-20020a05651202fc00b0050be3ee5433mr1534642lfq.24.1701704154631;
        Mon, 04 Dec 2023 07:35:54 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id h20-20020a05640250d400b0054c77ac01f4sm693194edb.51.2023.12.04.07.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 07:35:54 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 0/3] Add power-controller and gpu for RK3128
Date: Mon,  4 Dec 2023 16:35:44 +0100
Message-ID: <20231204153547.97877-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds the power-controller and the gpu to RK3128's SoC
devicetree - both are already supported by the respective drivers.
Patch 3 enables the gpu for XPI-3128 board.

changes in v3:
 - dropped patches for not-yet needed power domains
 - dropped dt-bindings patches which was already merged

Alex Bee (3):
  ARM: dts: rockchip: Add power-controller for RK3128
  ARM: dts: rockchip: Add GPU node for RK3128
  ARM: dts: rockchip: Enable GPU for XPI-3128

 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts |   5 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 132 ++++++++++++++++++
 2 files changed, 137 insertions(+)

-- 
2.43.0


