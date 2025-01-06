Return-Path: <devicetree+bounces-135947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E44A03194
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 21:51:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05A28164EC9
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBBF213B592;
	Mon,  6 Jan 2025 20:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mvtq7wZ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AAB1372;
	Mon,  6 Jan 2025 20:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736196659; cv=none; b=CdN2EzKDGuHL2wUeZSytA1UqVcWj7WRM/CKyWClHnS66MMG27Ee2T7Yhx78KZoT4Abp/hyj1o0Ejo+ernQuz4gHVXYNgr35XKPlTd/JipOKxm0dntweYHufs8O85/iSxYa9O3zEzNtKm+EIJEDcCoBNcH2w9qHdD+y56oU/KDUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736196659; c=relaxed/simple;
	bh=afb5M/i+km2PAtJ2Nz3QnHBOB3NgG4YKUgCLhq8io0A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iPT0k3s9Q4YTmrp6RP6+3DPCLv8ccnOkg7D6AbfLN/GPK/31VTuOKaV2BDWXVHDw4V8MdWmkjcIVx9BBaT+9LGt7Uo3/0XrEegUbVukxjVAhmfaAB5CjdiIN2yc6OUj3IWtx/EkJtfS7d8ZTrDeyczOqfIrcrQThpdQ9QMfLeg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mvtq7wZ6; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30229d5b21cso80273431fa.1;
        Mon, 06 Jan 2025 12:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736196656; x=1736801456; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/Lv67Lu/LgB27+sxxmofmAYOKDa/1iR5nfgRtfrDxd8=;
        b=mvtq7wZ6PDOAABI7Ll6eBZ9po+0h21leqpHLsK3ehNEKEszxpDXNfXHwkaAAaWdS1k
         XGSAAVM33Ej0YLQRoE2KGDySm3k0RtY8gVcOP3czj0ZFNOMlKdaUUqReE7h4jwcDYqcB
         WUcCN9D+0gvj6/2l7khHyCK7Qef9WFCbnqgFxZ9PgiqU9N8PytXesBu/tWNedAUhANSL
         iuFwU8NqJ+3CUWrsYnLqqHg8VAL/EIg1lthtBe93Z4T3MlU3fbKPMzswRqddsFTkkSk0
         pBHUwRIGozCKdMfqvYjuZP3TCyErSGMWiIM3Qe41LS2DroKqcTxlE/gVYP5SGhRIIptH
         /NhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736196656; x=1736801456;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Lv67Lu/LgB27+sxxmofmAYOKDa/1iR5nfgRtfrDxd8=;
        b=FiMVhrOzoVDzErfBI7Kyt8iIWXbC/lk+t5m2/uwLLPS0iTvWzUIGMCqXoyv6g9RO/J
         r8dSt7SOez8fR9KoDegQEk7Qf4DuEJU1g3W0PMkEugPJst+NqTvUEekhLM5GAVgRL5Q7
         wyLtqKocpqkjoFj1KhmBFlHimc4iahskdasw5dO6Xy8hXUFDmi0s3Lnj1h1k1f7gOi/8
         NYUGHjxhUrKMycv0N5vb3wqJI8rxZjB5JuzNDlDjE+mtdbyMyhLtzla1i8HziUvDLasW
         Jo3LgJZPIe2ghwuJG4zNJulBc3rb42P4oH8M1itKF90Bgnnb472j9EIe/kXgsOe82JKE
         LvIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWt5KFdZOkroDlWC2S0ayYOul+oYlAoJ1sdpzBgqz9OVZWziB5k15LMfOnNHhQiyHRUSzNCdrVif5Z78i0=@vger.kernel.org
X-Gm-Message-State: AOJu0YweOrkMVL5SHsR2jqPUywiW7CvnDHB8E7GPauM0P8UgePXOj5vM
	bxH1g9hVwecE6XSg5paQAyCX9MF0oYLMmRQsKmwrMh+iudiqpSc=
X-Gm-Gg: ASbGncuDFTyhgnFPzRD23B0trN4WVWyXNaDLQbXDwiuKMg3/TJcYu8Mwr3VqWeCrefy
	eUguQvNxZnWTVP5uvtC+ZPcpQJn1UasTSZBfvHsKl5jRJ0lmBiTnKsPDfBbErm4TZbL7317zZ5C
	5l7mYshK1pkibIc3nPe+BCJwC7VV7ndEWRNMzC2jGRvQZaaMQ8CzTpFdiecspkezhQvl5IAGhoY
	bw6GhE2WYM+GjR03/EW2qFA2jf1C/XRrFYU3HQWmJMXMRAqHlPOP2qnA84=
X-Google-Smtp-Source: AGHT+IGmc1GLzlJn+hMB5AriQbAJh1senQStXYDqcVMWNlEIhtVTPBP5qUirqeNjjY5n6q8lYhd52w==
X-Received: by 2002:a05:651c:1542:b0:302:3355:eb5e with SMTP id 38308e7fff4ca-304685efb4amr197768601fa.39.1736196656012;
        Mon, 06 Jan 2025 12:50:56 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adad2a0sm57898481fa.62.2025.01.06.12.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 12:50:55 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Subject: [PATCH v7 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Date: Mon, 06 Jan 2025 23:50:53 +0300
Message-Id: <20250106-bigtreetech-cb2-v7-0-565567e2c0a4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC1CfGcC/4XNQWrDMBCF4asEraswkkZy1VXvUbqwRiNbkMRFN
 ibB+O6VA4EQL7J8A98/ixi5ZB7F12ERhec85uFSR/NxENS3l45ljnULDRqV1ihD7qbCPDH1koK
 W6tMjBoPeKyeq+iuc8vVe/Pmtu8/jNJTb/cFstuuj1exas5EgvSJrXRspJf7uzm0+HWk4i6014
 5M3sPdYvXZRRwMMDe28fXgLCuze2+2/NskrFRQQvHr3xrvqmZtAnjAmdM9+Xdd/UpIRMm4BAAA
 =
X-Change-ID: 20241224-bigtreetech-cb2-18944b349916
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2648;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=afb5M/i+km2PAtJ2Nz3QnHBOB3NgG4YKUgCLhq8io0A=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnfEIvN5+BzLEUjoE5fdN8yCy5PrjL79uxtinUq
 pIRc0jibFuJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3xCLwAKCRC8310ZUDOW
 /XI0D/44EudxialxkgVzmRNmWbmgmIDyH42iJXj0MWNDPTNEoeGQWUeG0CEiBIkdAuzdnyTKkze
 EGK4jjGdjcvP7eGcVy3Rwr3zL7Hp3Orjmwmr9R6bmfMMfxsNnaXl6Wl4Vq0tIF8G7etBrw3fNGv
 zL+otklwzlNgR9z5yaILZlo7vuvQeaaEi2yW1wVHg2lIxrABKTfvGd+NRz52YzCg6UnThOWBQkQ
 9FdKIt9P0QzX2HHSUVFCKwv725eleZcwiCSG8hOkdG6JzkNzjOtv3tY4U7CEkO2VdBVxAadnGfX
 wW5QevK9D8iALhy6k2DBzJz6JVQhq++Rc6SF/hcde7qlkl6kLtaAyyCN8XCSVYV24f52to3SBAq
 YntGTPLNncWb8m8fck5i4uh3Mj6/JumSWK4/jZN+AGGM5okBn6WeJ3MMdWSTT9/kvZkBUcWvXf0
 Fmaica+/QISZUsWBIftTf59vNR3u39mKLdfjG0x/ju18qs6yJ09+ri+LFLcaQyFcQ3gztgLTp4H
 W3o3i4GgzozvkxU4/0DtgngJokHP53FCHV0vPwfeJnz2gAd1SwIiji94bTdXFHTY/2pACTA56Vk
 QjWccxKGkIkZ1V0xG8LedjLgEcEIpaYdQBF9gFAUoskE2dxfukWbClL3AMOM4nV//R6AHvw6tzN
 r5x18t+6khBZQKw==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
BigTreeTech for the intent of using as a 3d printer control board.
It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
the device trees for CB2 and Pi2 are also done in the same manner: the
common nodes and properties are put into a dtsi file that the
board-specific device trees include.

Changes in v7:
- Removed all of the additional pinctrl nodes that were unused.
- Link to v6: https://lore.kernel.org/r/20250105-bigtreetech-cb2-v6-0-ee7bc9c4df46@gmail.com

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
 .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 885 +++++++++++++++++++++
 .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
 5 files changed, 918 insertions(+)
---
base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
change-id: 20241224-bigtreetech-cb2-18944b349916

Best regards,
-- 
Ivan Sergeev <ivan8215145640@gmail.com>


