Return-Path: <devicetree+bounces-16896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 234FC7F061C
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0FD51F21D93
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 12:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CA4410794;
	Sun, 19 Nov 2023 12:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eeBQagop"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9991A11D;
	Sun, 19 Nov 2023 04:13:44 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-53e08b60febso4962118a12.1;
        Sun, 19 Nov 2023 04:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396023; x=1701000823; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Ux1krw1PHmoCa/GU7rGP+Vf9Jy9ZS7rUudcxtdu5Y4=;
        b=eeBQagopUpzIF66V5M/MUQI1zr2biYID9C7h+tmxRUEWX1AdJt9GW7aZk0zqD8FXgN
         4t3Js4T5LMaGZ3T+reFzwu4BzmHG5BsW/b57PidWgjwfqrglSOEQ0SR1MpDKflLkzkCi
         IDZ7HaGjMBocgLkcwrEVZMLvcel4ZbrONqv6Qg87LU4EHxLraWI3+zvQ71rPVOgBVXHw
         jeW1GOX9H5ang7bzg6GV5dy+gD4WlXjC7HQnZ0YYzLQ9Y7RRgxBdWoLsEvy6+gd5lg4R
         8owe/DnEpVz2T9AIeZCye6gM4t49PhKU49wG/btP7TYu0829X5MssSS15OEAWhGBij6l
         DSHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396023; x=1701000823;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Ux1krw1PHmoCa/GU7rGP+Vf9Jy9ZS7rUudcxtdu5Y4=;
        b=RANBQeFjjN/mwZB1Ec9Eokt0G5Dr8rnky3yT8h6aDtOJs5RomTR3gQanpBDCuNJHCB
         N+H8+d42W3xKLcHl5jh0AnuYpMIrXsgNWOem8rIcpeqKeTZh8hqEQ6NIWudTDI0h20zH
         WroAn4BgLUp5g1kl3ROrzvTu7BKHMjwAVAhcXv6hGO16dCrKcgEmrQz8crQfPI7gj/S4
         SDdc91g2sOr+I8Blh4Zedi3znz3PpRlk5/iA5BIY/vnpeidllLvb3CpOS088cozAJoaj
         GG7JB+62GGikMYQ4ZGZwKBLF73JZt7NiTp037lyxmhNIe+8sx/6CTczjZ2mXjaf+q53c
         Jn1Q==
X-Gm-Message-State: AOJu0Yy5Ks7LyJ1r6/GmAQWXJhNvPCSNfKxmTCtjLtw6Y/+iX+d30agA
	Z6WVgOwY3xqgNnjbhDKCnBx9NsW19Q==
X-Google-Smtp-Source: AGHT+IGy1GlDafLSieBuQEQ1Zs4HIKkBJdxt+OUkIXi2Mn2KBJ3XFrfpgR0TU1P5A184X7sPiOKqpg==
X-Received: by 2002:aa7:c454:0:b0:543:f90:b956 with SMTP id n20-20020aa7c454000000b005430f90b956mr3469757edr.35.1700396022988;
        Sun, 19 Nov 2023 04:13:42 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:42 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 0/5] Add USB support for RK3128
Date: Sun, 19 Nov 2023 13:13:35 +0100
Message-ID: <20231119121340.109025-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

While interestingly the DT-binding for the Innosilicon usb phy found in
RK3128 SoC exists already and it is exposed in the SoC DT, it has never
been added to the driver.
This patch-set adds support for this early version of the phy and does
some DT-fixups in order to make the 2-port host/otg phy and the respective
controllers work.

Please see commit messages of the individual patches for details.

Changes in v3:
 - rebased on linux-next
 - added phy-tuning callback for RK3128
 - moved parent clock assignment of SCLK_USB480M to the phy node

Alex Bee (5):
  phy: rockchip-inno-usb2: Split ID interrupt phy registers
  phy: phy-rockchip-inno-usb2: Add RK3128 support
  ARM: dts: rockchip: Add USB host clocks for RK3128
  ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK3128
  ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK3128

 arch/arm/boot/dts/rockchip/rk3128.dtsi        |   7 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 156 ++++++++++++++----
 2 files changed, 134 insertions(+), 29 deletions(-)

-- 
2.42.0


