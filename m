Return-Path: <devicetree+bounces-241451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D23AC7E4FF
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 18:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 382514E0F96
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 17:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930C82D73B2;
	Sun, 23 Nov 2025 17:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aLl8pTrD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B45B2066F7
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 17:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763918056; cv=none; b=ExLsMYeqmQwMRg96WY4zk561+PfjJDv3LteUVoYaGFnh1jKmoO+dEjBpzLvMwN9lRkwqcARwRegaXIy/BeB4wehd5okUZWgQC/iVrRChG9cqy7XoTdVUDqFmgaAfD1E4hI0PcwbyzMXwiJ0CsE4wAio3BBGAix5lScggFo1xrdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763918056; c=relaxed/simple;
	bh=dW22Pw5NW1rJfe3tSolsK9GVkMyozWiwC4Tx55OxeuA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=QIisbR5ZNlrSJae4nQH7vtHL3IhO0gADA2YYvYh0GiPGIVR0Vc6Bb3KSpDNmg68AzGkM3n8wfU4wfbz891VwnqSWMYAvKy2LZtv/IrxRDLOHknOv2XV2i31OO19u2Mj0UZbnrHGHJkiomKvuOrL4nmeAvPDQH6PpWByRexWiICA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aLl8pTrD; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so34546125e9.3
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 09:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763918052; x=1764522852; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2SBUjU42Sbm495ZmFakW4ID8bbWQ9JN9OmAvmJYfmus=;
        b=aLl8pTrD1c2Opx+6SLvt0VCg+Cfz/Uzf9xKsQezsFv8neZAEJB11V30YqPLRWgVPPU
         lkdTZUKhbCM6Iz4Gt42j0NpRfypbhVQAdEL1AvPBVSvgQ341tKZ9+ReMJ2aeubrXztsH
         10K21R8rVzBHDRUqZqyZvXtqXIitNutT4lwfXDDQQK0TQ8iVIjiPbilfYv/qg3/vTUN2
         ojqdHRDy13sDGrhWiQF5jqnK1R2WlHNZXsuk9HBPAQL3d0KPM13g0UCM6mLCGhRA/gdJ
         tI6b8GIYm9uICxMt6HbBn6VNUuviJJ3ozvLUrT6DkLb1Ikb7GB+cRJ3RrW1mt51ofSE9
         +PgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763918052; x=1764522852;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2SBUjU42Sbm495ZmFakW4ID8bbWQ9JN9OmAvmJYfmus=;
        b=Is60dobgVPahcybh4OjR+fYrSOleWkcnps4Xml/I3Tau9Gg2KmHwut1PYNDyqcG9kw
         2LdzRZAsxTCaqW42B0NjD+tTGOic9RofU3eAODXWUrvEAmvqWcsUxFV1F+fNUVF/tHkY
         HBqY2agb3Zejm90iNCoCPALSVqbpIZTxi0R+H5+8GnFf6Zgn87RUcKm6uuPoqEjx+1JX
         rTsc/EthnURAYaHO17P62Y4HopbARcxr/jffOUiIJQllJ1+Onk5NMA2qCBNZbE4jMLmJ
         QKnGf+k/L3gN600ZwZCsBKJFMXxQ/HCDZHRn9txfnqnMBeJpV1eSwt5Ddd5pVAtvZYRm
         +C9w==
X-Gm-Message-State: AOJu0YxnkO7zLN+7AMxrNFhLIs2HOqDnFhRKD3ZHtsnWdlXEKwdeuK5S
	9N+JI3Bpon6UwAuF+QXjSm5U57Pp7c5fHVOPxNSbNgws2z+0+M/HJuRGPGKCEeSCmnuYX+SxCUH
	pph8P
X-Gm-Gg: ASbGncv06CtbqZ4Xfv9dkOrPSG1TERGQirvCUs9II0oUadk/S1+LnhWb3A/xSD2pqgE
	AhQettGxuBqZqxMrEBAhCsyS2n63BISwS6kQF5wBY0cYDnkDmMKacR3PlQmGLPfAie0tcOrYXV5
	F4lpRpY+i8R2S0YNIE2e/+W2poji18Sx4XkKcX7SknJMsIQQvCdD/MgQp7LhbA+ysh2cHZZ9ea4
	j1uuoglhEfFLZaMWM65HUyZo2ew0ULGvE4sLDHOmuaySQ0w9memvj0CQxbp9TX3q/re+WpqyM7E
	ulHFxVcIJOtFZIX/O1XYP5jH4q5TQjJ+Uo3jJpcLwsKw3wuopLnukp/iMVw/c98lK4bafiCFsbf
	Iu4Ya9+lpCudVo+BERFt3vwspgkZFuPzUu8NQqapVmTT+32cbXAaJ86FvquYQDqCG6VF4VH207T
	ftf/1NjcSx1NGTSg==
X-Google-Smtp-Source: AGHT+IEMVHajdQc6mO75+50UqpdHBDZGtu0DQkU6l/qte3nrP9B8VROGytjnVhIoLoLV5NlrKgQsTA==
X-Received: by 2002:a05:600c:3b01:b0:477:54cd:200a with SMTP id 5b1f17b1804b1-477c110325dmr74538475e9.6.1763918051866;
        Sun, 23 Nov 2025 09:14:11 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:e50:3860:51a7:9db7:1d49:a8ae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3af0ecsm151637785e9.9.2025.11.23.09.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Nov 2025 09:14:11 -0800 (PST)
From: Guillaume La Roque <glaroque@baylibre.com>
Date: Sun, 23 Nov 2025 18:14:10 +0100
Subject: [PATCH] arm64: dts: amlogic: meson-g12b: Fix L2 cache reference
 for S922X CPUs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251123-fixkhadas-v1-1-045348f0a4c2@baylibre.com>
X-B4-Tracking: v=1; b=H4sIAOFAI2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyNj3bTMiuyMxJTEYt1kC5OURPMU82QT82QloPqColSgJNis6NjaWgB
 xAQqgWwAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Anand Moon <linux.amoon@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guillaume La Roque <glaroque@baylibre.com>
X-Mailer: b4 0.14.1

The original addition of cache information for the Amlogic S922X SoC
used the wrong next-level cache node for CPU cores 100 and 101,
incorrectly referencing `l2_cache_l`. These cores actually belong to
the big cluster and should reference `l2_cache_b`. Update the device
tree accordingly.

Fixes: e7f85e6c155a ("arm64: dts: amlogic: Add cache information to the Amlogic S922X SoC")
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index f04efa828256..23358d94844c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -87,7 +87,7 @@ cpu100: cpu@100 {
 			i-cache-line-size = <32>;
 			i-cache-size = <0x8000>;
 			i-cache-sets = <32>;
-			next-level-cache = <&l2_cache_l>;
+			next-level-cache = <&l2_cache_b>;
 			#cooling-cells = <2>;
 		};
 
@@ -103,7 +103,7 @@ cpu101: cpu@101 {
 			i-cache-line-size = <32>;
 			i-cache-size = <0x8000>;
 			i-cache-sets = <32>;
-			next-level-cache = <&l2_cache_l>;
+			next-level-cache = <&l2_cache_b>;
 			#cooling-cells = <2>;
 		};
 

---
base-commit: 6a23ae0a96a600d1d12557add110e0bb6e32730c
change-id: 20251123-fixkhadas-c84da7d7c47c

Best regards,
-- 
Guillaume La Roque <glaroque@baylibre.com>


