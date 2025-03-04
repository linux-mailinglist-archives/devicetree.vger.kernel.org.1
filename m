Return-Path: <devicetree+bounces-153816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA600A4DECA
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBB571896ACF
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 13:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0B07205E09;
	Tue,  4 Mar 2025 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tZTujuxP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5881204C16
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 13:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741093643; cv=none; b=CFMzcBk2qwP2719I4GRbA7LlJUkYQ1+04Z0c2EQBudt+xGrbZJa3J5lsWI1G4JJ4asBT9bFW95gccyPnIGWaS1HMAjiD90MBhXxWOhQQtfaEKNJ5lXKVJO5hRX3B2JuY46jD+SkhyV0Ot/Si20v+WOI6tBCZqRtAlqNmwfRRzIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741093643; c=relaxed/simple;
	bh=hbTVezICqr8e2a2ELXb8vmVSM+zmKLpGBJ8kAi4wDWg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cyxvKBfejC5zzFG2KwvPTc0gK6aKgmMV9ZLBTYfT7hsr/++SqE0EZ5CB7DBrFA3F89rVqtSDMTOqvDaSUlK6VChTUDnnSurP5v0sZopZD7AhWbOuvnQrUXNlPMmHKZb0chdGJ1f4HUeUokdp4gKJAdgLOkpfjuGG7VjdduPsdj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tZTujuxP; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43bcbdf79cdso4689285e9.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 05:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741093640; x=1741698440; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0sMLvCT1fnTWe+fQQZYyr06r8CMaLxKRmrVcKoI1NIQ=;
        b=tZTujuxPDg2GNgl1jcs1IhE7wLC4TNKfyI0C5rE9aBY7nF7r23ql5s22CPO2b1GTIY
         1SpJ3jEtI7kG842OfqgYsFZoX6+4hErHw28dw75EtCTH7FfrjPsmqhoU6MsixhW9gcX9
         zhA3bcUHoV1p3EAEaLMMD+V77FHr4k/nTHd4f7CYyLNPoYDWajUQ0JAbjsggkExNVIIF
         tCnO+x+wRgrZOt3QptBx2igALb3RY7wk7LYCTeP9kQle831yO18y7P75VJwP7trH6vZR
         14mqh8e6Jl+b/mH6SItHvuPLT/d9H0Gok+Q7/lozlQGno8IupClXclvlvbRSoNj5k7Q0
         wobw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741093640; x=1741698440;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0sMLvCT1fnTWe+fQQZYyr06r8CMaLxKRmrVcKoI1NIQ=;
        b=IS9/yrE+H6/aMLpUzhjOb/a2rv//gba2PBWGOFuSuL4jVq5fx71/eMqe+GppP+z4yE
         7xXbWSdIoWTGQl0WggDL/Ny6Ap/P5IzY2BG1ZdWI7Fra6yhPb8of/L2wWZg8nnOL5Zwb
         z/nGubCWnOGuaRTgEwv7uYdGmka85jQQk1FoX6+GIBw/sFhUUURgNpbt6ERkczWFLcis
         J82Tf9Z30sonwtdu04vPwy8Th1bBYGIasbmOXjfcq+nigPBIk7ZUvVSUXGcOrew1MKX6
         EqckKIH167mrH6hdHnO4J0fYKUCJuuDt8vuFGkrPDOhplTiAO6aIs29JkTCccXgeONXL
         Uo4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVQmE/bzQZc9t/SVBQyxiuFiUeG85MSYcVoCGJ25RvSp3mO4B7RAS4y/XSUxiqUqTW6WDNJEVAiQQ1W@vger.kernel.org
X-Gm-Message-State: AOJu0YyIr3t+DIvvBv88I7ERsdvzgOimpSlql20SdnyvIx5G6WkNZonG
	MHUyg7KGNkgJTPWqDxH0GDXp8r+nEsJAVQQgnxuu7q2DBJacEJTUTANuAzkjImk=
X-Gm-Gg: ASbGncvLbmQkwWTXDFji/sYcZj3c1haiT+3O5njYs11kMcdumbmLJmLaoe5UJx8SAGV
	dMhzy4Kvyf3CwtAo/8pmuSDDzx+4iyzJk7/fG2oQxAadrfhGNtWGzUxL7qJNje0YE5csu9JA2jJ
	px4iErS1VdHxGfQUyh0b4xOZXflmzv7O77MeBwjXrYKuVVFp2NyiFcTFtTt9UUccmCEehyOds7T
	tiwTAKqzGUVnDFhB/AKc3+J3rbEyXXHnUDMUE36cPeTry5zGfLFNB0APIR3ItP2pSp9uq6A4q5V
	kEmt9p7FTt6YPskAbuKAI7NfzxaNFogJ+H7A1A5E9v4kTTJ4mR3B1metwvDnXKQOYlTu3eCDSgO
	dQvvEgw==
X-Google-Smtp-Source: AGHT+IG7Hqk+59fncwqRhoiQZI0qgVNSHDtmwiVCCcb9ZVYfhmFpPhJTWaXXdGtM/0s4DaDuW44HFQ==
X-Received: by 2002:a05:6000:1789:b0:391:ab2:9e80 with SMTP id ffacd0b85a97d-3910ab2a206mr6605504f8f.24.1741093639862;
        Tue, 04 Mar 2025 05:07:19 -0800 (PST)
Received: from [127.0.1.1] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b6cd8sm17401715f8f.44.2025.03.04.05.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 05:07:19 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 04 Mar 2025 13:07:14 +0000
Subject: [PATCH 8/8] arm64: dts: qcom: sc8280xp-x13s: Enable Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-8-279c7ea55493@linaro.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
In-Reply-To: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.15-dev-33ea6

From: Konrad Dybcio <konradybcio@kernel.org>

Enable Venus and point the driver to the correct firmware file.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index f3190f408f4b2..d4c53845eebb7 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -1477,6 +1477,11 @@ &vamacro {
 	status = "okay";
 };
 
+&venus {
+	firmware-name = "qcom/sc8280xp/LENOVO/21BX/qcvss8280.mbn";
+	status = "okay";
+};
+
 &wsamacro {
 	status = "okay";
 };

-- 
2.47.2


