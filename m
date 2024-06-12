Return-Path: <devicetree+bounces-74901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E926A904F2B
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:24:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED3A21C20EF3
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 09:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3262016DEAD;
	Wed, 12 Jun 2024 09:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DArmuAIo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897F1A34
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184271; cv=none; b=ABhdwFJnoFyFcnQeRZ+G7yrTqS63ESat0zMIN+t5o7tnWEMbuSfumadru7c2FRQIcGAEvGNv+3uCo/uLrKnwVlhDlhus+sQMWczREkhZdmn8VQEXVVAIqThPSpfgtDJgWAYaksg7b6Om0dgLNtA9LoM16XYf7AL7rnCROJVuWkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184271; c=relaxed/simple;
	bh=8Ud6fGyLiqk5aftCZdB6sBI3JnC6FlrDjb+mJrMNjPE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Tjk/nXbLUUoYD2B8ELI+o+2GQZlPmfdpLDzsXOSzYPRJTQ5uv/6pLzd6fg9UKVe8zp84Lnm5g2Al0ZTe2zzLACWENaWV/2rYgDvnTTQz7XeCyLvRRMy9YWeFbd8Nov/Q8Ppdzr7Onp32GUo1CItEIw8zzfpKdVxwTRx1JTWJe/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DArmuAIo; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52bc3130ae6so5081849e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718184268; x=1718789068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NVq/XPrdWmMMBpDrtjBL0lbuC27j39fwjqCGgq7/OIc=;
        b=DArmuAIoKhkuBQRHVEmHdcrux1nbFk+ZjRh9qbRlxhM5GVNnmRK6mkThF3AYf0KGNO
         gVv5u5+s0JYi9NbJoTJG3yEXzEqNEqVGPQEXFxVU4r7tCbLnudNifehuoN1JmCgIQAWd
         o/pq88dzYIaQr6hh1vNJiYW50hsqJzH94AN6kjLMpNuyJwkWTXAWnDSoXff7Dk20KN+D
         66IISPQUrgl+sVPSpjMKAX6OPkLZ+3fEMC0WEe63R62KFL7mN/Ke3ptIn+CwnY0Pymla
         19gBGDYU6+A9rOgX6faj6ooNMGNwmL0rYw8cB86rGM1sSkvilTZ87qaXwqOFszU2WWFQ
         amdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718184268; x=1718789068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVq/XPrdWmMMBpDrtjBL0lbuC27j39fwjqCGgq7/OIc=;
        b=Wurr3rGu0Ao9mW5/kZkY4iwCAjyXYrKI8ZMT2A/RcQhjI81gyF0ts6v9LPBWaPHrd9
         /OsVp4w12QpvarXJUvuAC1xkbQayF2hMCgzbPOz5Zdg6vzuT4hTfPaMS2F23envwk3tT
         84CURT0oU2Sv/RVfYJcdCPT7ox7m6uex4knNKQOHT5Fpmxl15y8kL5CSvo0LFLhiKkP3
         6DQvSyyuVLFDHLF25QLHGMYGk7kOXQPjX3EL5e17/6xt3cwPHDsGD8E41hvggQAGF5J9
         vfQNMRqTHwmfmuWlIppRdGXLecruw612GBn+UeNGhLfTrh/P8Jmn+R0zkkmZrbAgM3ah
         njPg==
X-Forwarded-Encrypted: i=1; AJvYcCUh8JNT2LfYTHlUUxJEQnAtTYI+E2AuGdsoLxtvqryrKgWsE394F2ZfO/5nMhGUlqbaZXHHeWF0dwgleMbt8AAgpVUI6mgfGGbuzg==
X-Gm-Message-State: AOJu0Yy8EbIQud5u7ed09zr1jUcT2JlFcbrW3yyrTRR+mDJi7zr+FD8N
	Fz1e1HO2CVg+wJYq+7SpQGDA6/NKkCMrjyhYvaR8oPk1sg3hoBdfUcfzIgTNlQI=
X-Google-Smtp-Source: AGHT+IEfFP6e6pTW+1khTsjjkkVQ9dhYQOSP5hhhyY4gGwO6/jsKLIdG1CzNbeFE/N/FoWTmcrjwPw==
X-Received: by 2002:a05:6512:401c:b0:52c:910b:9c87 with SMTP id 2adb3069b0e04-52c9a3df0f2mr896236e87.36.1718184267973;
        Wed, 12 Jun 2024 02:24:27 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c82faf1b7sm1623806e87.130.2024.06.12.02.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 02:24:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alexandre Mergnat <amergnat@baylibre.com>
Subject: [PATCH v2 2/3] arm64: dts: mediatek: mt8365: use a specific SCPSYS compatible
Date: Wed, 12 Jun 2024 11:24:20 +0200
Message-ID: <20240612092421.52917-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612092421.52917-1-krzysztof.kozlowski@linaro.org>
References: <20240612092421.52917-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SoCs should use dedicated compatibles for each of their syscon nodes to
precisely describe the block.  Using an incorrect compatible does not
allow to properly match/validate children of the syscon device.  Replace
SYSCFG compatible, which does not have children, with a new dedicated
one for SCPSYS block.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Tags
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 455c2ae3b30a..eb449bfa8803 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -300,7 +300,7 @@ syscfg_pctl: syscfg-pctl@10005000 {
 		};
 
 		scpsys: syscon@10006000 {
-			compatible = "mediatek,mt8365-syscfg", "syscon", "simple-mfd";
+			compatible = "mediatek,mt8365-scpsys", "syscon", "simple-mfd";
 			reg = <0 0x10006000 0 0x1000>;
 
 			/* System Power Manager */
-- 
2.43.0


