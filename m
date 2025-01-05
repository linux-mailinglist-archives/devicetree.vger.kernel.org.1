Return-Path: <devicetree+bounces-135623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1F3A01907
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 11:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E9B6188314A
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:40:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17FA1465BA;
	Sun,  5 Jan 2025 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T5gEE1K2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F28C1D6AA;
	Sun,  5 Jan 2025 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736073635; cv=none; b=NLN6E16ewnFGEf1I/BgDIBagr5ou8OV6kVhT7kOP1NmVsN6La/+Xau35WUzsVJP2RkNRW75wMbHhXDwSjeuxX3W+1nZdm4I26akzf/Wh4LYSC1VoRsbxoORtGEOvZpHrWooWTCVrPeNeIf/4/5aI/9sG9zzbkcdo6xRyPgvo72g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736073635; c=relaxed/simple;
	bh=uXgW7Mn1cwXHnXy7IQyPfZ4a16mCUartPFZEUilmAC0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MDRrtaITL03Yy3yY0/ZgW3tUTHjLMfy7wO49Fpw5IBLfehQDa+G13Y0amW6nuHKeqQSnYlIIyTHdQGSz16nEmr2IQig/jer993FG1w6qrSzxqokjkCdCgWGJXYqJXAIkb89e7ifvPscbUaGP926p82u70oZAELC/K6ecRZAJQrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T5gEE1K2; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-304d760f0dfso23833641fa.2;
        Sun, 05 Jan 2025 02:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736073631; x=1736678431; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YQnL1CsDryGpEfNY2xjHTFY3M6MWphFdJZgrXkZ2tRE=;
        b=T5gEE1K2xBPde4Pw2dVLjfaKDpv+omOOHSbQpP/FDC8P6N7HmH+c0Jya+IB9o/lgQv
         YmfRR0X+hpTshvIiyTeQtjuYhQuQkDBhSJjN9rm6AE3Cy//mxPA+Wd0H4m/7CtsqH8vW
         YPlQx0Mo9Mv2hubgsrFuGF8A4pl02LRB2JoGeyHNJn1CjZ96VixFdks/XSB597tghxw9
         KsHRMuI6Cl5Q4KMoTG7DUlCX1h7crLs/SV0/I4mMHtkuVpOpSOdxMoQObZmWhmCos9fj
         zwcjazE+HlTqYJnrpJbNd4WoC/P2Tw5yj0eXBmh2BAoJycD0XFCyYlGW2x8iXVlLXjAI
         2dbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736073631; x=1736678431;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YQnL1CsDryGpEfNY2xjHTFY3M6MWphFdJZgrXkZ2tRE=;
        b=d4tVOfkkRdCFhK19mm7GPfzcsuFyXY6JoJccMt4aUytcyVemkosbj1xQGthiFWiKlr
         FvZX3FjzZ4MeOmSF6NJksB4dq5kH3diWFQHCDQoST598pFaPRo9wiWgmvCWE9PUtCR4c
         ga3F94hcHhgVMOi2DmCq+kM14jSLt7ROd77+94bsScv+NPCGfM58/ZYd4epataHJuhU0
         S15nyqlsn3qB1FTD8NViVQXeQVYoAmibDmCcqbFbtqc0siPmIfWv7G9Cfeot6l3TtuMD
         0eoUAklnpuxzptWUN4wm2d+2egdtyIqqiM/ynfY7o5k4aNymvhgdPShQmuxA0hGbambM
         ghRw==
X-Forwarded-Encrypted: i=1; AJvYcCXx/J/rXx2Hg2DhihF3yXWcSSSvgvbeZzeVGXffC18bP94eOv77Y7rIoOWgs/aPeqmEdK0wAj5pemxbJFk=@vger.kernel.org
X-Gm-Message-State: AOJu0YzSZTwt+JPvM7XVXUdeGILoprEcq74KsPrOcCYDu5Ih2namL/kJ
	Fv+rn+JrGL3DEh7QC/gaAq3wNAbm3/w9xXL54/wKmZFZk+QC/EgiljSWdtpEGw==
X-Gm-Gg: ASbGncuMd4F/u97XeGVMI0MZhqa4D9ggI4TDUaDc+l3NWqOsXc28FnMtztXOzuDcN7e
	G3udcPM7A8zcZ6zY0pwv7vmkJ8Run7cnrORbw6BJhFu48FNALdlacafHznaMVuzmcpYaKMXT+Xv
	LydtA1mYvl+hSplY8ZhO5RfUNF0ZQwHsUD6Ev7PK25I4JePMT3w8Mw+YxDaRHTHhkljqx4wj8Ho
	z08PV8kaS9GOVa0PDV0ecaAz+zvYdG35Mh9af3PWg/BPcKU2UoA47LlJbg=
X-Google-Smtp-Source: AGHT+IERRIp3Y0UvWyRkwrMRr0BsZBIh8incTHBrB81DOY7dDuXDPWllfCz61KCJiCZEZ7Kv08qxVA==
X-Received: by 2002:a2e:a99b:0:b0:300:33b1:f0cb with SMTP id 38308e7fff4ca-30468552d25mr157497421fa.13.1736073631152;
        Sun, 05 Jan 2025 02:40:31 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b082e01sm52248861fa.98.2025.01.05.02.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 02:40:30 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Subject: [PATCH v6 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Date: Sun, 05 Jan 2025 13:40:29 +0300
Message-Id: <20250105-bigtreetech-cb2-v6-0-ee7bc9c4df46@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ1hemcC/2XNTQqDMBCG4atI1k2Z/GnTVe9RutBx1EDVkkhoE
 e/eKAiCy2/geWdmgbyjwO7ZzDxFF9w4pJFfMoZdObTEXZ02kyC1kFLzyrWTJ5oIO46V5OJmta6
 UtlbkLKmPp8Z9t+LzlXbnwjT63/YgqvW6t4pTKyoO3Ao0Ji9rbBp6tH3p3lcce7a2oj54BWevk
 5d5LWsFBAWevNm9AQHm7M36X6rGClEJQDj6ZVn+MUwRIC4BAAA=
X-Change-ID: 20241224-bigtreetech-cb2-18944b349916
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2471;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=uXgW7Mn1cwXHnXy7IQyPfZ4a16mCUartPFZEUilmAC0=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnemGe8uxT4HeY5mP53tFyzgFh5KJ1PPVbTs0yL
 iTaFrgJjvGJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3phngAKCRC8310ZUDOW
 /T4VD/9khYN+hbdrUMJLmbpnuZgHWmq9Tj+6qFfvNVhJiwTXjr5orGnMNqGkwPqH3/qH7y/u9eK
 Ns5/rC8/nEeJZVwjThM0X+9vmKjx/+JhILDAl3+MyWNB/KzclTu2unhm4EgBG6aV3+kfcrK1npL
 PPJTUsxmovNZ3QjFdujDhWmvGhpD/6e7LY3o7UT8Xt1cHEWlxPmvJwRbi3muBLZpvh3pCPWiQBS
 weY1i+kpJv5yrjkgDre1whdX86Phcn59ygk9DfrgbhzPZYqVXfKdbVTJL7EQDczvPvvbiINsOxF
 2d5JwhCJsydg6z7WAQLjqQNtg98X0wCSt98FTEAk7T3XkT9g49DvV4DgwWFdkwKC11ujDWQ0GP3
 Asdg7Sa/X5thDUbobYdSXVBHxXQJ0IyemJj3+HWKp8vkTvzp72W2FICmDIbAdttvxxCmUaRN9AQ
 oHMJ1NqILc/iciAc0rtzlP/35iARpoU5jBDa1VW6BMILIbs6xwbarel41CpblHPVesszMZ4dS4U
 UQRdeuDm89NSd6wCVIg7ulve6cvxBJBB0U7EBPzjLMY5fIhSykYY+2tn+1wEaCD3fsbYUobr4qm
 83m8TaaPX5BxE7TV3TLAwOBreXifusxbKEqP+t7Da6qtdlEY2WvwIu9kxfGTQW6m32ywRD3Khoc
 P/z2I8SLlTY1xMg==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
BigTreeTech for the intent of using as a 3d printer control board.
It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
the device trees for CB2 and Pi2 are also done in the same manner: the
common nodes and properties are put into a dtsi file that the
board-specific device trees include.

Changes in v6:
- Fixed node names missed in v5
- Link to v5: https://lore.kernel.org/r/20250105-bigtreetech-cb2-v5-0-923f911b10c0@gmail.com

Changes in v5:
- Applied requested changes
- Fixed usb `phy-supply` format
- Removed improperly named pinctrl nodes that were unused.
- Fixed names of other pinctrl nodes
- Link to v4: https://lore.kernel.org/r/20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com

Changes in v4:
- Removed invalid `i2c,ignore-nak` properties
- Set `#address-cells` and `size-cells` on `sdmmc1`
- Fixed `phy-supply` properties of usb host nodes
- Link to v3: https://lore.kernel.org/r/20241227-bigtreetech-cb2-v3-0-91c556adcffe@gmail.com

Changes in v3:
- Proper formatting and patch series sending (using b4)
- Converted spaces to tab indentation in the dtsi file
- Fixed empty line where the license identifier should be
- Link to v2 1/2: https://lore.kernel.org/linux-rockchip/20241224135751.350379-2-ivan8215145640@gmail.com/
- Link to v2 2/2: https://lore.kernel.org/linux-rockchip/20241224140057.350667-2-ivan8215145640@gmail.com/

Changes in v2:
- Added bigtreetech cb2 and pi2 boards to the list of platforms
- Split BigTreeTech CB2 and Pi2 into two device trees using common dtsi
- Link to v1: https://lore.kernel.org/linux-rockchip/20241222203952.84217-2-ivan8215145640@gmail.com/

Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
Ivan Sergeev (2):
      dt-bindings: arm: rockchip: Add BigTreeTech CB2 and Pi2
      arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2

 .../devicetree/bindings/arm/rockchip.yaml          |  11 +
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 .../dts/rockchip/rk3566-bigtreetech-cb2-manta.dts  |  10 +
 .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 919 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
 5 files changed, 952 insertions(+)
---
base-commit: 63676eefb7a026d04b51dcb7aaf54f358517a2ec
change-id: 20241224-bigtreetech-cb2-18944b349916

Best regards,
-- 
Ivan Sergeev <ivan8215145640@gmail.com>


