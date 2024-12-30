Return-Path: <devicetree+bounces-134764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 124ED9FE759
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:58:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD9C2161F7C
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D88F1A8414;
	Mon, 30 Dec 2024 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VKlvqfpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B561A7044;
	Mon, 30 Dec 2024 14:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735570714; cv=none; b=swqPGHl8/GVWrqqMyaJhEOMR+RPrcLJb7ALbKPuGmemazLqagMYbti1E0f2gR9vn4UYArq9CxNZ+fXEGgqUm1JV0aUO5MHNbf8KIboBz6fgRwIOL+8qxlzJkiKCUHwbEqtmjOBNZiQwUPoJZYaiygVunASSSP2NSsed+9f4jbJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735570714; c=relaxed/simple;
	bh=Py96Wx48lY3hRsIyqeH2EhpYqRG2BTz9NWChJmCaiTw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FAWDe4GAkcFoo0BHximLpA3YV8PTzPAnkFTJRst3VIQVnXmRS5USo7TwZAKPrnN4PJ2ka6g8XV5hUza/GU3+MCdAp8Dmdx6MQF5uOSUI/ROD3appEirQdMmLCMNVrR028ajeEUTEilU3jI7XgHh26+T2xzGvViJMP4auBCn1318=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VKlvqfpC; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30033e07ef3so61354041fa.0;
        Mon, 30 Dec 2024 06:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735570710; x=1736175510; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GoaoLq361UaAebRj2ohl7Uye7+ll8RqNIDvB3jVhJOU=;
        b=VKlvqfpCcaMp3094yytHf1/WxDF0MIR2ng9EGkCN0V2qCO3aPGJ8EKME92XgWWzr5u
         7eO/lBZEutGXk7AyQJdqcwZT2ZmX2CrVcLdVpK3MNNntYuQwtupuGM5HD1rRRopMYtAH
         s8i/GdY+IH2ncZ19x3AshIyzWSuRg1B1HFD7qmguGQNEHyFDU1zNcBViy7A6XKAuL919
         x6qtbvF0RN9JOtVIk7wU4/ycP8SvfW6nLuDmcKvW2ka3qxWKGK2GIkU8sSNnC7JFDyXV
         9xmR35KerZxkMK2MW8WjIcX1TELGUI1SKF9HJiJkvhQkehVtEAVdBegf4f66tq8jsxhr
         ST7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735570710; x=1736175510;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GoaoLq361UaAebRj2ohl7Uye7+ll8RqNIDvB3jVhJOU=;
        b=JAdHXenoSpr+sdadybsvKzl2h45pC6eoOoEluDak6RGAmMK0ZM4d4NFFXtvhbAm/4k
         Pq8mpRNjr35Q184HybQh8ZCMLKwqKIqdB5LyhXiKvQTn/IZWRbfIp88DHMbz7XND33wa
         u+USPCTIMVqDNdFlCdjRuk5tEIKiO8qNeLK79JXEbK6TaEkhqcNvcY64PE+cneqw7MyQ
         MwKqBDrkiD2uSVuXFH035LvbaCz1kx4I308HMuuwAXGuBLYoPddTnj/L8+tzn85YBBSf
         TKlYQmhmMtB9dmbgT9FvJHnd0lIUZHwu/ks4x0PjBIw1Tnf61AoeXJMEs97bUCr73QmD
         4YhA==
X-Forwarded-Encrypted: i=1; AJvYcCXmuA3WfSqIDKXpzsivGwLulWAAVVog5A/D+GabQsM3IUWpk7wax403QsUVsDkykocr3ACGwthUueLIAw0=@vger.kernel.org
X-Gm-Message-State: AOJu0YyJD/4fCNBj3i61E3V7FjOuBYuuQKXIdUcaD93klcfBtpQlmclE
	xKx/+ASlEBfiNS2vejHoypDyRirF3JzhAb9/pL8RyGAJeXuH4l0=
X-Gm-Gg: ASbGncu4YXCx9VhMe/OApo9P2QpG3bXvPC4m87xHetqzBkh8qxYRn+87nHkGd2zDOLY
	lQwXHvLxaloeICV21KzHuvzstRzhuxH1PxE24gld/nLabVgC9VEZgbrY/jEnOtkTL8CsWKHTBWY
	9Gs3UcRmB2gw0iwCXXJGqP2q81gayvxRuESA71XD0tSqs201gKUNSvwSo6zbWtqRZphTnEE5PGF
	+rhmXtEJG+N53G/UT3mh0vFAj7xS7qlTVJLEScmxuq7m3FdBIXcKz638WY=
X-Google-Smtp-Source: AGHT+IGisD41W8JWQL0CRagYb+y8h32KJubs/kv1Im6KAp/oPQgc5CVL6cwTewm1uromHqSrkCtayQ==
X-Received: by 2002:a2e:a9aa:0:b0:300:3307:389f with SMTP id 38308e7fff4ca-3046992f1admr99464301fa.0.1735570709482;
        Mon, 30 Dec 2024 06:58:29 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b096026sm34385111fa.118.2024.12.30.06.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 06:58:29 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Subject: [PATCH v4 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Date: Mon, 30 Dec 2024 17:58:17 +0300
Message-Id: <20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAm1cmcC/2WNywrCMBBFf6XM2kjzaDWu/A/pokkn6YB9kISgl
 P67seDK5Tlwz90gYiCMcKs2CJgp0jIXUKcK7NjPHhkNhUHUQnEhFDPkU0BMaEdmjWD8qpUyUmn
 NWyirNaCj11F8dIVHimkJ7+Mgy6/9tS5/rSxZzTS3TdP2g3UO737q6Xm2ywTdvu8fRpaJLK4AA
 AA=
X-Change-ID: 20241224-bigtreetech-cb2-18944b349916
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2054;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=Py96Wx48lY3hRsIyqeH2EhpYqRG2BTz9NWChJmCaiTw=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBncrUUjViQ8YeoRGDVrpipb2cirggY3zHBYXfq1
 F1YqXzgGB+JAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3K1FAAKCRC8310ZUDOW
 /Zh0EACqWeR9kBxbCloxRP0afh3Pza+g+dUcWrZ1L/EHmNo5XgPb1ZQT+04ziChglPu4vq4Jzuv
 BjxfxJVerl9KLj7oMSFj+MJJIWHe0a59tGZG8D+uiIPkFO+OmaYeGVrEROEl+miwAyh6ndIKLhi
 TMy/1f4cJEo3LnBcELpv/ixS3POM2rmEStqCruhTkmmTmpwjk/Ia5gvzGAQTHAJvH7FAAw3zm7H
 cprsp1gj+K8QSB+0UBr+eo+Ui3hMvlJdLTTe+ZetIIFXfjda/ubZkd5TCnRPBJO1wXlzbZ2k6JB
 5mLe9PhLk6MWgc+ateTySzGxEp2BBb8p4y/OJMvXdG9BDFRbMHE9bt3fpNof0RulkFHWZ5EWzDK
 3W72ki7ugASlsHDNvGkRaxLtnFzjh9DVzHyBcKN4GV/jtWrLbFanviLGw/QU/pDpMKZWQb+8m6v
 nQ8YozhPAsw0skXXUYkfvxtqCuf83aMGktYyDA4ieskviJ/8duJqklC/CllcGitUCRJ/el6d9ZS
 /hVRvIrUHBEcm4i2oNveCftLIPB5+dE17BZREKAypEOKjdhLG/DwrAb20jRBfqAsAhTULAcOHra
 7GfqJQAuBK/4t3xfWn4e0EIe87aAHNZXsY3TVTglovzhpGcEhoJ3RFKUsUCWY5GTL0n0MUpF4Y9
 2E9WHi8t+wwnCkQ==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
BigTreeTech for the intent of using as a 3d printer control board.
It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
the device trees for CB2 and Pi2 are also done in the same manner: the
common nodes and properties are put into a dtsi file that the
board-specific device trees include.

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
 .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 943 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
 5 files changed, 976 insertions(+)
---
base-commit: d6ef8b40d075c425f548002d2f35ae3f06e9cf96
change-id: 20241224-bigtreetech-cb2-18944b349916

Best regards,
-- 
Ivan Sergeev <ivan8215145640@gmail.com>


