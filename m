Return-Path: <devicetree+bounces-40918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E12F851B4D
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59F1C281DB6
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 17:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC8003FB1C;
	Mon, 12 Feb 2024 17:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kac9hDJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0653F8D1
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 17:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707758625; cv=none; b=maHQco3PHm4UxFQ0eYnXKl1KGodZnL36V6EZdePW5UPP8IyKT6b6GPpjHV7H4Dfil6RgHzykaU83OochPeK8cex2qwtLI2pKsGDJk8edPH5FuZmCxycvpKS+mnFx2XUtMj9UAr9M/+aM4CsUgsFMWYEErJXz6IILXn5g08U/GLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707758625; c=relaxed/simple;
	bh=5XVzlYC+qpm9vGdb8/TYWQyQTGjbhbrC0Amkh6z50VU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JFRggVlR1DXKT8Dxya21gGkSmzVAY002WBKzHaLt9KuW8ya/LOPF6gWKQGu6/CEnOu1Yycs+Cr7vcPpBu9LpgMG1cgvFygigst7XKbs3xUu8Tmp9et6g96giefTslL43pIeW+XMkiK7eq5f+UR9eP5kViUmWT3kG6hzihfxXt+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kac9hDJ/; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5116b017503so4725893e87.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 09:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707758622; x=1708363422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0fSHFdK/uGFKm3kPfOsQzHS9AyIstJMyMVPPpye8zlY=;
        b=kac9hDJ/Et0NDaLcfxg7Uum/BQU/N7RwHpsfE+/VOXZRDsu/IcGj7Svh+CL/gNYRaT
         iTOswebjCmpxOl2g2D31jqmqp0lazCB8gTOX3zsgoxA+J7EtZEIkZQGCNPHOCRaKNx2H
         S96V0Fvz5D0RGP9GWT48HDrJ143aBAKivUWJAmEkx0T/wi/0JMr+GhMR/eVayFCdnH0G
         XjFegKEkw2N5Aye/2rBTtvkExrOV/oYVl3tjP+X4CEl3W+NOJSktWUdXBWwuZpkB48qP
         g2UCEb8FO+Y+PY1wBsUZq18S52S0hws+eS/wZ6lQ8KxoiaYCJ+OnPj/w6QNxhokZFMzF
         ycGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707758622; x=1708363422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0fSHFdK/uGFKm3kPfOsQzHS9AyIstJMyMVPPpye8zlY=;
        b=hl0cMQsUttg+HA5UpdMB2IMj4RAFRDvd42HSs/6RzK+Kd8+Fmaf4uUh2rUSCiOgAVs
         N4VdnO/JSWKEID5eUe9x7npGXTsWX6UjLg86jLJ/vmrm22jOKUeVzdDnKsSY1uElyKnU
         +SaFhLjgIsJd3XuNNpYK2dIZkafx36CzxTX07Yf6U3P3yQIoLegeDTMdbefa52EfFBhy
         RU8mIGGyLI6v+sVB8z0IDpu0RpDTwMZ3VxGUkXioldknqvfK4AUeSJ954XQeRr+9RDbi
         1J0McMa0ef84TosEQ+u7gEs3sVDWzZRlDmD3/WUYNbsDxinAk3V8y/FNLKP6jiahXQRq
         Y1OA==
X-Forwarded-Encrypted: i=1; AJvYcCW42GkX0EZmnZAtTvxz2QW2hGkJ0Ro8qJLtq1edqlsJMUVNKQJjD3Sst2Ro9URSsbe0hwHrByY8lp3/tFu3f00ttW4c5mcwDad43A==
X-Gm-Message-State: AOJu0Ywoi4uNJ9LVQReq7JXYUFze/4TiX81jbuKcDi8oW83ySIoWniWJ
	+7C3OVoZ9tEqaGhA6PDWHEBrhNlZZ0WptbU0kBGNcGPFGdk/vam/5Kb96xXIHYu9aRZ+OT4Lw/t
	F
X-Google-Smtp-Source: AGHT+IE0sUmHQyQQkK1/rQlRNzHbB3VBeB867B7Ks71f9eyXB54QFH9TTVqRoOE2KMZ+8lFmxdKxhQ==
X-Received: by 2002:a05:6512:3d11:b0:511:5237:a357 with SMTP id d17-20020a0565123d1100b005115237a357mr5822624lfv.48.1707758622125;
        Mon, 12 Feb 2024 09:23:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWRszEkpoIzxDfw7vX3ftS/LysnMc+CzI1HkJ4tszLdWxQJU8/TWTuAmNwlB3xDfl+pdHzH2ljFAzRazfPqs1Rwl/onxhVKnOYTiHX8eDjLAtpCf13wDYZxpih+EVmngGphl5/Jf6oaQY+EUM7VwIDJlUQgOXHQUZPSyjri+u1qi7PRWGteeP59je7TKUuwcvStc9xEQD8SSS8eYmZBsfbbD4S2BSfgB4TMUBRDetiiCqaXQ1pEpsrEXKbgBmeDK2xNiDNI3jF2s2Fx
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id p31-20020a05600c1d9f00b00411a595d56bsm954051wms.14.2024.02.12.09.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 09:23:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] arm64: dts: sm8650: correct DMIC2 and DMIC3 pin config node names
Date: Mon, 12 Feb 2024 18:23:34 +0100
Message-Id: <20240212172335.124845-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212172335.124845-1-krzysztof.kozlowski@linaro.org>
References: <20240212172335.124845-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct the TLMM pin configuration and muxing node names used for DMIC2
and DMIC3 (dmic01 -> dmic23).  This has no functional impact, but
improves code readability and avoids any confusion when reading the DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 2df77123a8c7..27b3917c1327 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2919,7 +2919,7 @@ data-pins {
 				};
 			};
 
-			dmic02_default: dmic02-default-state {
+			dmic23_default: dmic23-default-state {
 				clk-pins {
 					pins = "gpio8";
 					function = "dmic2_clk";
-- 
2.34.1


