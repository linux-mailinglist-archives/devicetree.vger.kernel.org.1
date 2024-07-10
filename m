Return-Path: <devicetree+bounces-84765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FB392D714
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 145A12816F7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBEB197A6E;
	Wed, 10 Jul 2024 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ghpt6v2u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8931957F2
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 17:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720631122; cv=none; b=EQdR2fEJXDt/8EppHVnev476HipelKP5Gi+4YkFyAGbAHinXm9nJHYg1OzQYprSlhXIQAtxaRn2iefkWZ1szN0bbkVvQkdI1mU8QidG/KUqRfDbIMBFUvP3J0EW19x55ueiwB2KzhQyv5RrPrwDTblOdKEuLzbA0lcjiS5hMxos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720631122; c=relaxed/simple;
	bh=qR1uns0P44537MoqBjAHf1EyiKDwg3hxEEorjfsnBX8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bwWx4L6PhBj/gUJdagIENprbBFpYdnpD9nz0fR/3vqWfUfCtCvmF0DlZHHYN7HoFZfXKGMZGeawUBeKJGHNaFQS0vwoXdimpl7g8wTvKrgGNKlacKGaCI4QqLgh44AtDR1rueJuOetpWXn+JgnZN4b5jHTNP8sjWsDZVYbVemT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ghpt6v2u; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-36794da7c96so4040553f8f.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720631119; x=1721235919; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qJL9ctqEQ6EbrQ1caBlXUSKz2PPn/p138eO0sdvXuFQ=;
        b=ghpt6v2uCKCccrj5MSnJMi4VyrCY7dmJIm3O2xQP3o0wf9kvp+O9Pr4+B66Ko6bwNq
         wnlSSWc5wxDVmRYk6qQF8BAirQrreim5cjj6Eaq8Vjn/YH9hjjfw/N9DWtto2268qLYs
         TXaVUa8Pwl8wqS6iUuCFDzX7NYcRfp29mKbQFQM2vRT1cOXZprIAsyOnLlkf6jXJqO9E
         8JZqdEznAgQr2XZEX6KzAoy8XrPSDCbNZC3pP/jIDU3ZumzD16t4y5oPtqkbqgdxpUrD
         Xfr9+Bc1x6wvZBdwMdz2Wfs1MyfALsyjLaAoAwiiQ1gOADaFrBC9IYOmijTZyAmiyvO7
         ZfYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720631119; x=1721235919;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qJL9ctqEQ6EbrQ1caBlXUSKz2PPn/p138eO0sdvXuFQ=;
        b=UoTwOMh+pq7l+TRuW2Beh5ku13Kjf2IeIJSUKLo3pwpYst5/Rbm1C1JXpaJKsArMnv
         jsrqm/WmuSMjTy/kQ8S5p1RglQwJBH/bktdP6iambKMKTt2T2wD49/FEu1SeVktlZNJ5
         R1z44TowKMLLRUY3qq/8fNmbIoUeWb9KZ/qqSnA1gpvlvURQqFjb03jf8pFoHhf/Ygvp
         avDdnrneA1O7u81q++py8KR1sjkah/JyrI5fotGyjS4KI6e82zzmo/DFV++4rxMFsk+d
         S8QUuIYtHTZbyDnyjYSBN8HGyurolrepSsscU/QGX4R7ehJKTQMnWcV81TsHKD/fx/84
         k1KA==
X-Forwarded-Encrypted: i=1; AJvYcCVla2dvSriw9vAPBvfgkVYwcq3yAnsY6cgsDu63WJty6PZSaw0Vn/c+OYNk0BOwRwVmrExEBVBTH6Oh8qi/d3o0TObgEMo0XkOe0Q==
X-Gm-Message-State: AOJu0YyOWGIigvjEWAJ72WDayoE/duDqtjStJ6q1st1ujC+1tE/L3pQp
	YCStXU9wVGBsl1gZlw2gA8Q345Js/l4IuywUNkWs5wIU2g6IlT2kJpRaQgwjCwM=
X-Google-Smtp-Source: AGHT+IH53Sy5DifFmLWeIWcstw3PzJyB9vgs2HFmeKb0z3bxjT4/dpNjOk8wqX3EUyluYvb65bRiiw==
X-Received: by 2002:a5d:4811:0:b0:367:8a3e:c127 with SMTP id ffacd0b85a97d-367cead9253mr4193011f8f.63.1720631119088;
        Wed, 10 Jul 2024 10:05:19 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff1f:b240:65e6:93ca:5f80:ea9b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde7dedfsm5838446f8f.24.2024.07.10.10.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 10:05:18 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 10 Jul 2024 19:05:01 +0200
Subject: [PATCH 5/5] arm64: defconfig: Add
 CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240710-x1e80100-crd-backlight-v1-5-eb242311a23e@linaro.org>
References: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org>
In-Reply-To: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.13.0

This is needed for the display panel to work on the Qualcomm
sc7180-trogdor-homestar and x1e80100-crd.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5c9fcf9ad395..9572c337ec29 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -889,6 +889,7 @@ CONFIG_DRM_PANEL_KHADAS_TS050=m
 CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
 CONFIG_DRM_PANEL_NOVATEK_NT36672E=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
+CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20=m
 CONFIG_DRM_PANEL_SITRONIX_ST7703=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m

-- 
2.44.1


