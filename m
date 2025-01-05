Return-Path: <devicetree+bounces-135617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D63EA018F1
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 11:01:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E53A17A19FE
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0689146D57;
	Sun,  5 Jan 2025 10:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rp08BMih"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25681465B3;
	Sun,  5 Jan 2025 10:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736071297; cv=none; b=u66aGXvU7aDNYXXhU9CGZdMAez5SYyhwZqAw1qgRxx9Nce5Bu/kCao3WJtpcJIgvJRRjevKpjupGAYxqkkCVddxU6HVhdpQdquRc+ccp5hmsGA58djeSWdNW5tI4osS7ZoCLKPyl4usQ0fh2DcjdwGlKPGSDq/Pe+1WtYJwbuu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736071297; c=relaxed/simple;
	bh=Ve6DAyAdX75MBAsvdAMcYRB0imSwGJB9zDUZrNYiJ9Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ZFcxHZtXn9IlOe05zQObejgA78L5ZxEjtYMeBqJat7SPIPibu8lW0IMobqUxyl4vvjMZnukT7iOLaB3SEkA1k4hbejPncXIfu49dDkK2c+vhXOPbYF0hqSqDVVJiR5furSZyGc5gvi1BCjPwbebwosEEyc3fJJZ63l9+D2hKGsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rp08BMih; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3022484d4e4so165906641fa.1;
        Sun, 05 Jan 2025 02:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736071294; x=1736676094; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ioXaEb8AhEb9ppd2CiarkcVgpik13EQZ3YX/6ej2zCA=;
        b=Rp08BMihkVF9uQBVocXFC7LLf+3ZZyxNphk0tAqs/jLRD22EKRH5LSOFjeuNyWnfx7
         pLRYVQSgthPt/2HlQnaK7ExuChnMrM/kAAcGzJ2Mu8lErP5e7EINodMpst8t5FXuE0Qs
         2v2rcNprqe7AexdiZgjkWJe0F6qghuUAE0hcegBbDAdrFgKwBGax6uTzyPiMtAoCGG8w
         apWqYDdy/swv4zXccRfRUUQAnOuu7VMhk7+JOoOF4s/USyd8nYKYURMkXnvlft/05dmE
         dAAkfYo9TF5nJk3fZ10ZsO1poAikhwZIJSpACC8qBzW0aJIavze2MnZYo0N8hykeKVRz
         NxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736071294; x=1736676094;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ioXaEb8AhEb9ppd2CiarkcVgpik13EQZ3YX/6ej2zCA=;
        b=CmlRMFO/QiZTMIjyV0+GAyCjU6jTMbOyqs7qaayzFPAWXOtbukuDD57X2phBTb645P
         +qw6hnV0kUA9jDV9bPmhpYsaaIDAtfsOg+52DGxGbtuAANsXwXKZD5Iu18sQDSMFRmRH
         uL8Zxz5yJnTH6LXSI32SgvM7ZcsrGmxuyWmH/PKICzaUSQMZ5QfFGBmqp+ogZOIsGGaZ
         bfDz+1/khvdYCZmDrhnxQ7rNynpjP4EBeCm755kd1eFqcbHGVl4ezCG8JYy/haakPeq5
         Qdlvvh2ULIs1eOWVVpqV0gIgy/0K9sJhovK22PzF51yWR3ChslPQof/3C4yVaaDaW+6s
         D7HQ==
X-Forwarded-Encrypted: i=1; AJvYcCVR7uFG2LKtAyZ1jxtw0U5/5GETbdRirPcy/PnYZME34rXNU5ndnm45dvuq0gg/8vSkNnB9SGHuqt32+6E=@vger.kernel.org
X-Gm-Message-State: AOJu0YxvLCMyf/pHGezagmcQINpJj6A6uffwtRU8ABGb+1CAd9ElguZp
	E55jxOExZUugEbK+tPcHYf6fJKyO1Cx6nAaMyljbyscrWVk3sMk=
X-Gm-Gg: ASbGncsTxfBQt4BK50FLqzCsRek1ioYanG7f30KY+gAzLWzZ831iDJfSlCoroRKO7ZK
	nJ1blwN8DaX5YqfFdGj1845IgU2Wsux2fwf/YCSbtiCPg8phhsXqreODH0JBAoVtZKiyeAhpYWm
	gqbi3RgxUBHnm72wz8tK6jo7MmLPvJEBa/m1QYzwUJ3i888iAQN7Jhz9yHWTedbUwA7khgv/PYS
	tm9/vqW3VrXCbwLlkn3lUc5rrzWOrgWHHXcctNlM0vHOghq9UZaieF5r5A=
X-Google-Smtp-Source: AGHT+IGYOoAYruqEmrXXpBPQrWSQF4Z4pQ+Zw4ZngvJDeKbJyND9eGnpgNG9zhGuRrVEioq1mNzSPg==
X-Received: by 2002:a05:6512:33cd:b0:540:358d:d9b7 with SMTP id 2adb3069b0e04-5422957ac6cmr15595789e87.52.1736071293641;
        Sun, 05 Jan 2025 02:01:33 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813806sm4580828e87.114.2025.01.05.02.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 02:01:33 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Subject: [PATCH v5 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Date: Sun, 05 Jan 2025 13:01:27 +0300
Message-Id: <20250105-bigtreetech-cb2-v5-0-923f911b10c0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHdYemcC/2WNywqDMBBFf0WybkpeatNV/6N0oZNRB+qDREKL+
 O+NQqHF5blwzl1YQE8Y2DVbmMdIgcYhQX7KGHTV0CInl5gpoYxUyvCa2tkjzggdh1pxebHG1Np
 YKwuWrMljQ6+9eH8k7ijMo3/vB1Fv67dVHlpRc8GthDwvKgdNg7e2r+h5hrFnWyuaH1+Lo2+Sr
 wqnnBYoSvjz13X9AFnh0MTuAAAA
X-Change-ID: 20241224-bigtreetech-cb2-18944b349916
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2326;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=Ve6DAyAdX75MBAsvdAMcYRB0imSwGJB9zDUZrNYiJ9Y=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnelh8s8U3cjvCpHPRrs2T/+ajFNPVuuPWhJFqo
 l6XqLavdomJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3pYfAAKCRC8310ZUDOW
 /QRbEADX9HM1YyxNIQB/J0YA+nNDhvdWyPZOY6j/rx4I0XtLRB6SoHVugL1pxAzauWVYNJjZb/T
 gB4lu0d/7Ze44LTzww4hPFuF1Fl/wKdLXdVkJqooNzZvdbF3neGaLzK7neXSDozZiQV3nF1a0HQ
 FQBvNp+Wrbelt+vJS3veBiJjJsw+QRrcitDwrUJY5UET82gZ14+Skbe3e/L/sCFKBIT7EgHnkjf
 JUSq/Znv9+s/rp7rQTG0Yn3+MXd5BNfpGSg5+lFdfgU0GLRVfuv6kfBLrARmtzYjLWeBWpwzFF5
 pupDOWhWrh6bYFKMGRoYHldXayd9mhtqQI2vHReKwrp5zb/bGmgGS4uHGmEhEjmTqb6at6IpitC
 QM1fc3Hjjg22Q1cXmy+z67licL5d7CaVXB/iNqybMbqT8Umqt09Px1de45vYDJ5otNtKpwzHskL
 463PwUJV2V+8rKAs4LGtAbWL3bmkvbucHw9IuvmbQOP2htgNc6wkYSkqyq9mcL53Nls8iZuNNHM
 lRN9tEYVoILP/SljACWRlRHdQnlh0qqOYL/WfE3OGBE/ZTNfLw9+bMzu2ozPNkB4/ym01M3WDV0
 7Sm9/c/xUGIldrKU/3NVUr4eb78wNKmfpvPiRDWqQhkFY/h2L4uQOslH6Cc+RULRzfxEmj4aBcA
 DE+JDMkFDcpF/RQ==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
BigTreeTech for the intent of using as a 3d printer control board.
It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
the device trees for CB2 and Pi2 are also done in the same manner: the
common nodes and properties are put into a dtsi file that the
board-specific device trees include.

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


