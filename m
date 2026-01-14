Return-Path: <devicetree+bounces-255173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2569D206D8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:10:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1EC2D3014EA7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55732F6565;
	Wed, 14 Jan 2026 17:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CHr7pkDx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E7A2F39DE
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410566; cv=none; b=q1jJuZZ6Vs3ZMM7Uh0wPnyv5fBDL2HvAJAdZfUW4iYMBDzTHsWSHW6eDrZ7wGN5tiOdjHaIwVi6N+xy2NGMlYNUTVZuHHRoAvGvq+tIRplWSsUZtlClrNe+3JKyRnxEbkosjdEx+xctufWb18s7wQwwXyDX3KqgqJ1VP05lIa74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410566; c=relaxed/simple;
	bh=YGYnp6gzI4AxtwJzZWhrklYj/srysFtYicdu+gMMI1U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pKN4CuT71TGzatyIuBnwNCUq9TFjb2Wz6P2Udozj1PpO9U1nJ06K3K9IENUWsntyPmiY7QLOi9/q4zKYVungs5kpj7f14bOc1UBXcIhTIqhXRXjOP/3jMrnO3Rp92s0sq0KV1VRv0FIQm3RYCOPSSb3Gyg6Ld7G1P45f3WlGOeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CHr7pkDx; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-47ee0291921so452285e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768410564; x=1769015364; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLfTQh/qlV++IGofMzGCRcDA4hRAyZAGlY1gT7J+2+A=;
        b=CHr7pkDxNsK4ZpylLylqjZzRlaugvoRW56tKppJoeWkLe0JADw3dZVm8N6BTLcmVqg
         TPdN1axy/pjr4aDB2y6lBuObyYWyKd8deyb3c0QU0Nx3uj7S26oDWVWovS42Ty2WvVb6
         V2XJ5bwX30HGbG2YBIb99HOFYTDmJ90MaliQFjfU/QxlLacW5omdOn9BBbbF/DGft7NN
         MKoPxZRSlawKfS9EZI4vMcJQFG5N/cQsuusIc2bBrs6oEIK9T6FdVd0Oi6PWXAVhCcvw
         DIsT2sAXgwt+vt0cTDfUWYnNDUIMfY2H+lhNT84LTAsZpcD/HUEALl0PtJN1HYM/74QD
         qwAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768410564; x=1769015364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cLfTQh/qlV++IGofMzGCRcDA4hRAyZAGlY1gT7J+2+A=;
        b=kZcERpo/q9vIeCEw1xD48oXqzkVQ0zUqHLYNeeKYZ4WSMvOYPHXNcjsLX6O6XrRKxh
         wuTVoQN5Az3eTdG9OwHzYFEQNmogkFJNuXwHlF95d09TPtAfELbc77rvcVj4tyPMofRn
         A+LECcLLErwicfw3axtWdSxE3uDphajVteUrK78iKf1JE1U892gczjEOGr26yBix4VCf
         /y+YfRyBDRGP8ze2s3g5s/wYXlAHG0Y3d33GqhVOi2Vz3gLKQ/BnSJggF2rWDOVagSaG
         Ez12A3QLo9R1MH/LXK1ut/M0B/nraxgGTNUAbKzqQciXNn4H4YR/NasL5LQ6CWYcdPfC
         iNmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMlu9mVGKLfHiK/KuEVEbTXb5Sl63KKjTqsFvw3JtJeGRit/t6e94NuVgzDqt8oz9/dMSTW/ep/lW2@vger.kernel.org
X-Gm-Message-State: AOJu0YyBkdMoo/izYzPThMZqpTueF99mZcp3X/96U4Lx+QOas0b9nAF0
	wTiT5WEG6maVmSnbYyr8Sre6gw8j+Y3v3kmkrY59xg9M1o6I2kD9IhSJXXfqwbqXOOQ=
X-Gm-Gg: AY/fxX7vy+RS+PgiFquus2mb1zj9HzaPRmKNRPVLV3S1I5jUISwpyVESYkbAVr/MyIH
	DiWQ/Ym+ElD16TqbP2dT43chVuVG6xkaXSfgChHH5qDvlBTciwzcVtVMFWJ8Ix/UrUAGBqd53K6
	Dn6Iu89r8/pqf9BRQ/MqWSPul0RT357SBgxsEm1FvondGZOfIcqV+KVS2yP+IVAhjii1HUKc0c9
	7V4PkESeNujzsfS3CJx7auk+5Ae6UFWSt8ZIseZKNkKRpwWELSJLVLHZtb8k5Tl52P/TNj5Ye+d
	5oCSH7cj/MgRJhIiH7tht/1vbLN4rHgVpfC7PKa46XLMQ5sWP8NJN7pVK3teq9pG9QsNGNs055T
	0iH1c8thZhZXjH3Rp+yDLtbDODnqkCmzcsX2UIJgIXyIyyieYXgVPtdfnf55uWFUat0lIZGFZjI
	o2syhY2YwqOQ==
X-Received: by 2002:a05:600c:46c9:b0:47e:e949:37e8 with SMTP id 5b1f17b1804b1-47ee94939a1mr15738575e9.30.1768410563776;
        Wed, 14 Jan 2026 09:09:23 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d3d1:7ba4:2f56:d18a])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47f4289b7aasm1832825e9.2.2026.01.14.09.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 09:09:23 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 18:08:50 +0100
Subject: [PATCH 3/6] arm64: dts: amlogic: axg: assign the MMC signal clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-mmc-clocks-followup-v1-3-a999fafbe0aa@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1307; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=YGYnp6gzI4AxtwJzZWhrklYj/srysFtYicdu+gMMI1U=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ824JyrNtw2KARGstg1jZ0xJArTDmwFFfnr7t
 CVRKFh50+iJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWfNuAAKCRDm/A8cN/La
 hXXTEACb+KQNPCisYBpunAO5l/fotBt43vzRWz23gV7sxlWMa+DBJHIDjWZB6ih0K84HSdO883X
 LxsDYNKAX2AmAVWFYXwPOWyIX+mz7OOvPZV57g81hn+TaDlOP5qlU+zeJgQHJWqBnEYLdAI0W9M
 Rt1x3bpoWLvdVy5REb5ockyDlIpE0H4NMJIDVlgqBLkTjRjfEab483hgc6Zk9pQjnv1wIRKX1PH
 mGHwxGaqLqW+0zRXGH2KPGho7RTD/Ig3EF1dG6A/5leYDs7DieS5HJP45Po4nLqz5T29mYtTP9n
 oqjjcZt2e1V4F3V8bFJ3ls9XDp236X+mj4Q9Q/L5q6oZVVjoUSsBsSUqIobShK3D6juGfJRFRWp
 5hNOHVns40JmGdbHhoc9cSj7dc6vso7fgaELHTmRlCzg1SeBl8K85obRoO1rZLxPQsp6RGwfb4l
 2f081YUC/EaeSrDpi+p/Uehb4WRahpAJ+y987OPLEYntt1jWuM8yIhh+lzKrJO3oEeT7gQ8ZsxQ
 OwolYrioFxl3n5NNsjC6dahVWsh13Ooc87tfRBnqaWPh3hAoOXGMMUy1Z1TZkJUGggkCjMaTfY9
 lBX9/ieqeLKOkuNu8f1uS5mjMlQnDnBjeglBFeWuWXA/E1liOnIP99+pQteQVAt1tvTCAxQgJYE
 JsN/olrqrO+rPXw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

Assign the clocks to make sure they are properly configured

Fixes: 221cf34bac54 ("ARM64: dts: meson-axg: enable the eMMC controller")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index e95c91894968..cc72491eaf6f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1960,6 +1960,9 @@ sd_emmc_b: mmc@5000 {
 					<&clkc CLKID_FCLK_DIV2>;
 				clock-names = "core", "clkin0", "clkin1";
 				resets = <&reset RESET_SD_EMMC_B>;
+
+				assigned-clocks = <&clkc CLKID_SD_EMMC_B_CLK0>;
+				assigned-clock-rates = <24000000>;
 			};
 
 			sd_emmc_c: mmc@7000 {
@@ -1972,6 +1975,9 @@ sd_emmc_c: mmc@7000 {
 					<&clkc CLKID_FCLK_DIV2>;
 				clock-names = "core", "clkin0", "clkin1";
 				resets = <&reset RESET_SD_EMMC_C>;
+
+				assigned-clocks = <&clkc CLKID_SD_EMMC_C_CLK0>;
+				assigned-clock-rates = <24000000>;
 			};
 
 			nfc: nand-controller@7800 {

-- 
2.47.3


