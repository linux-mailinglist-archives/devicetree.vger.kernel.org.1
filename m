Return-Path: <devicetree+bounces-255176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D266BD20745
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:12:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5F70307F603
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF18F3043CE;
	Wed, 14 Jan 2026 17:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="p3g7IHwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307E830275E
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410572; cv=none; b=aDhg20njcNc6MMu6gRipOJf7kAMuej0dNa377SXId/AZ0EU53L3dcI50nYjicQcF8akl7X1Og+VXkg5j/Iymemqn7t+ecktLku3JCFgb0pG1h8jltDSKvqAigkXfhOJECOX+uB07g4HQ8yX705eihMXGNbni1Kp46PJbJzmCIoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410572; c=relaxed/simple;
	bh=/PhsslUI7oDbVoSzVh6hBjUgLUvCgo1Un4J0+MmBYI0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Suvge17YIkE719Z1Do6sso2WiHxxSJIFhQ22qZCUeENDZWzsY5hlaJVCpVxhdtMJ6iNaXBR+0UF/C7KZSJVk2WzEhIckRbhNtbyiuNXjYqZaUPLlmxqTnlby/UGEqIKSqvUGg/MEn3ZmtIHmvOdcyK5aCM7fZDIrw7wpYPyZbQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=p3g7IHwb; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-432d2670932so54304f8f.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768410570; x=1769015370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1kTWfAnL5z5OhS7oeDB0hU1ojFDJcKULyH2iq6TuTBE=;
        b=p3g7IHwbzOoC+g2mewys95jicvKRKLGjb+ucsMJLTrRlKCM5Dpw2VZgzYYIXZCLFlu
         0PZqIo680cCbudt4MDkxqUxmFK2qoZuv7C78m/Xv4PFOzCkAbp6vGNgvW0WYtY80mnP6
         /hHnsLCxpes0s6sm2V3D3n9obCH4Ad05RbAiJ6bJANXLL0+9VWy0Fclgs7Y8+mgvIRl3
         xE5MyPla2rva+wSvHoTiNq7BWUIsqPL+ocVZ2VggseOVLQXBQ8iFfjZ/RGAqDVDODV2x
         BCB7/YwgZTHtr4muKiNCTVmDvLRiUzH1AaaQzIQkH0Al5xlCfsyHgPhItbwfrpb+bMYO
         MR7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768410570; x=1769015370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1kTWfAnL5z5OhS7oeDB0hU1ojFDJcKULyH2iq6TuTBE=;
        b=JhaoRg7gGKRAxyIHFhqBb2hobZp/0p/W6f2D9kL8AD0PdHisZDehsPdwahtuzSG4re
         WgZzg70ZXxCElWEdpv9KFvQcT3B1SV6HAfYgslnYpZbjgyKVj02+K1IUcJNJQyyCBGa1
         N5M+epgGH0tHaMulKCmtUQWCGzis1GI76tlHEKt0iC6KYYRKbvrYvea/NCP0AmpO6c6P
         ucaXD+dLrwNwKP4ut1eBF8EF05rkShP/tDPuW0ylkQxiw8rrMeJd004DbX0KxLqoeIDa
         fUNLjvZRIIv5Je652C7dQ95ay1wVdMDRMVJMveUTl5Gg8xZz+0c6R9TjFlNCZwAPDCaS
         68dA==
X-Forwarded-Encrypted: i=1; AJvYcCVNnJ9oglWe1n95nhlNhPHrvDEbW5xDg2ujjMZK9nRfTXccyzm2tn7JPqMO2VxnTAGbwKWEZbkRq1kx@vger.kernel.org
X-Gm-Message-State: AOJu0YyN22+d0gqPgAYz+XCmj5GZ6477rIxt+rK0218ruI0pPsRZGHs+
	l8gAcGlM9OjcgstjFnFrjtEZWGjMnPC5bZbxu/1O5dzCoOdgxvV1E6Lt7uuRZehLFnU=
X-Gm-Gg: AY/fxX7Iq2nJqeOxx1b0K2lJuI7Vts7rsbcm9YdOBKPlL822fbtYDpD9YSf2/AUni14
	OisQfynETEerASg8iF/KQR/43laEFsJxigapyJQ1iVp05CCvRhF7qmMVLbSLbAIvjSWEfcy+9IM
	7C15GEOrnmETj7/xtEjkEdb0ib6bHFG1C7C6lLPtpbxDEO7x6B8I/BZBbu/lEg+HDwJnGci8Uvl
	B//Eh1kKGEfiLPbk43sbray+5Yk8Wz1+X5UyVcIX9GznaF5Vx7tZywaaV40U6RuWqg8I4hC2/2D
	6kPheu2n4H1Duv7REkc++qaUcvtCtyM2mePPFB8lJGCZD32CzKbyKLFNTndwXYOFGwuKAN8q1ra
	Q5dBAsZhZ/oGR7EoepnF106dv4vVGVN+hS9Ev9dJ92acKTS3wpEulj6DZPN0XZdo41IyQCgCoIG
	6oa8v5yKgIhxShhV/Ged/9
X-Received: by 2002:a05:6000:2004:b0:432:5bac:3915 with SMTP id ffacd0b85a97d-4342d5c39e8mr3948863f8f.39.1768410569619;
        Wed, 14 Jan 2026 09:09:29 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d3d1:7ba4:2f56:d18a])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-434af653787sm392682f8f.18.2026.01.14.09.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 09:09:29 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 18:08:53 +0100
Subject: [PATCH 6/6] arm64: dts: amlogic: g12: assign the MMC A signal
 clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-mmc-clocks-followup-v1-6-a999fafbe0aa@baylibre.com>
References: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
In-Reply-To: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Yixun Lan <yixun.lan@amlogic.com>, Nan Li <nan.li@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1024; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=/PhsslUI7oDbVoSzVh6hBjUgLUvCgo1Un4J0+MmBYI0=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ827+hqCodT7BhBobrsVc6GPpXPR/mUIltr/w
 NN3POGH7ZaJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWfNuwAKCRDm/A8cN/La
 hUrJD/9Bux8MYYOOciJCbRbpEyXFtkOTIkP9eOvzltnWiMuDOzmypyQb2uSeeRu4fp3hDClDAEC
 pkkAvkKuQa3RO3tXR79OgfOquhS0n/eU36O9kEFv/n88itYp4AbolA6087pzCHIvpglgUSQrvhU
 n66bZQuoGeCzS7Je9nHsYxS/HmlQmOFeSwOBGSjnySXlSDY+qzKWAgU9s41Wp6q6s3g0qU8NjG2
 3fITWHfwU6y4TBdaR8l+HwGuy8OGzyJh8AuvWlitQgmVDzFZ++QSMF/9+BvGHBmfPTUlhwX/QYg
 38doGi7Kp3IcnFk6GLxA55YxzWx/VAYxeEQ7neZiA7OCLnxshUe1iacqobSY8CtlMnOR1Nao+4l
 AN1s8G8nue/0KwBb/uT3RiWmt1+4x7nVgTdx/n/ShozmBfIQ8s5lFc/7x26llkdAaa41R3NHJol
 +H4fW8Cqx2rI+fSYH/PxMWd80LP2dJxWSLpQPYbQqJHCilm72rLwU29+6O97C7xFrRia2kpO0RX
 eetrGkaYojiH8o4AVxkhkPQShe+fsDtCJADp3kkcoyQY5ZQCKb/1zcfGP3si3NAGgEdHD16SRjt
 twB3A2ntaaC6Cjivt4LHjRpxO6xnTbfISqXGe2FolhnBMYZHEb5cJXD5vB//Uv0XV0MPueHNv3+
 TtizwRaL48HGHdg==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

Assign the clock to make sure it is properly configured

Fixes: 8a6b3ca2d361 ("arm64: dts: meson: g12a: add SDIO controller")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0085612cf735..00609d2da674 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2431,6 +2431,9 @@ sd_emmc_a: mmc@ffe03000 {
 				 <&clkc CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_A>;
+
+			assigned-clocks = <&clkc CLKID_SD_EMMC_A_CLK0>;
+			assigned-clock-rates = <24000000>;
 		};
 
 		sd_emmc_b: mmc@ffe05000 {

-- 
2.47.3


