Return-Path: <devicetree+bounces-107008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA22698CB32
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 04:22:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73CBF2829F3
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 02:22:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A8E4EB51;
	Wed,  2 Oct 2024 02:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tMYFWKyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9493F43AD5
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835637; cv=none; b=S1ac7y83o0SMufYtgMb15F81k0viCjhjki8NK8kQPeDAAbA3Qc2IvxNB+UmCbLAy6RWeONUrgQ8HOoE8uTvisTmu8YsvGz0krR6wgDUN5rxuXPudGzzt8giPifHsg1NMV8ymk8NLzO6h3CQM+SAzlrcRNl9WlaU0YTqjzi16Dmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835637; c=relaxed/simple;
	bh=VK3mA+AhP1mrvIRSe3pu3j8qw4QKvKCuPM781iHQdpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=elcnZZVjraoGXrOvDKXaK+Io+BLJN1NmGAfmXrEj5knsh1JUfg+gL/TigcwKNkyhkKaIjrpTYji6uO77uRm29a5aQWJC6mYfVjVX7A+r7yCcmhcfmq3sVENUFXUs/+zKC9FHFTT8jDzk1h72ZSeGG80MPBmvJF8euPOujzvsfiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tMYFWKyw; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5c88c9e45c2so654583a12.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 19:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727835633; x=1728440433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MzwSX8KKGAPRaj5lljRiy6wNpS+zMVuqbW0wkWepzfk=;
        b=tMYFWKyw5wmya+LnJOsoHqAh/vcol7XpGytOcGhF/s1j4yUtRsjaCbGuRaPVEWCivD
         5BgHg17UfBpvyvm9bJ8Ca4EhYx4YyRSxztLl5EOMyDHWb9QXd4zjwvO2Crm5XLBj+JTZ
         FWCvD0m9g4Oa5RZ0tegH+xQXYJje2eLYNF8Hn9AjxTQntGIQ5ykNsVMkJN2I+2QbBQPy
         dY8pb20DEp6FxPLCKYJ+5hFHmoqKXtaskrFx15Tq39arzGAbD+zfm/tErz2OifCdOs+d
         olkQsQ89SYKOwLnpX/f9gns1XK4adRHQ4LmCdkorAfmyEpZlFTtwKBuEeD8qWkV8I2MK
         lGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727835633; x=1728440433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MzwSX8KKGAPRaj5lljRiy6wNpS+zMVuqbW0wkWepzfk=;
        b=Ek/t62rcNlpmAa38piYHU0bs48UPLtCETjnOPmxBIhOZXTyHH0vX5jaPJVObWJV9DX
         JOh6wBlnoZiNLXNK8azEYB0Xx5RUV9QEk5OZaObmQwx7/E50djH8xPPtjljM4/NCUwu3
         j59PI9gTc/voJ8ou0iGhlbC0+540SH2QeB7g7ywfwh7xbyDD/Qpi34ARKF8DwkDT8pVE
         HKmBdpMfzXnKH8qyAXChmxQcouAT39rU0A9DFgNHrBA0JDcfU3RXys83MOzl35+0oZAM
         BmI6BMI3n3Nzy5V6Wi2pRVOTaqSU5KjCGAmC2Samzf3vrS5U/mJCS9qrtFhSGHr+9LPX
         zJvA==
X-Forwarded-Encrypted: i=1; AJvYcCVFRiC9SxOWHBVBjZS8WgvRWLhwYIEQAreEvNpTqX/S5cxCY4SSKs2biKPTycyfr7XGajnegAwmZ0EG@vger.kernel.org
X-Gm-Message-State: AOJu0YxM9Su8vFqmT312O0ZeCsBawxggyBX+2AvFZ+BCOt7x9XI7Lw+W
	tEYpNBNmejPmzLWHFln5i5ztGwHqfZg+ivayVeOad8KCXmUniA2oxdAS2/1LTaU=
X-Google-Smtp-Source: AGHT+IGZ5ivi7b3Y/1bXAvJ8gbbuRZ08q/qwpCO5zK4rpaNumj2OK1NNdOIgEbMH7T44U5eW8iMtBQ==
X-Received: by 2002:a17:907:3ea8:b0:a8d:2bc7:6331 with SMTP id a640c23a62f3a-a967c0b46bemr535600666b.27.1727835632904;
        Tue, 01 Oct 2024 19:20:32 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2945f2esm787518866b.117.2024.10.01.19.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 19:20:31 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com,
	alexey.klimov@linaro.org
Subject: [PATCH v2 6/7] arm64: dts: qcom: qrb4210-rb2: add description of lpi_i2s2 pins
Date: Wed,  2 Oct 2024 03:20:14 +0100
Message-ID: <20241002022015.867031-7-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241002022015.867031-1-alexey.klimov@linaro.org>
References: <20241002022015.867031-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is required to enable to HDMI audio playback on
QRB4210 RB2 board.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 36 ++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 1888d99d398b..7731681688d5 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -634,6 +634,42 @@ sdc2_card_det_n: sd-card-det-n-state {
 	};
 };
 
+&lpass_tlmm {
+	lpi_i2s2_active: lpi-i2s2-active-state {
+		sck-pin {
+			pins = "gpio10";
+			function = "i2s2_clk";
+			bias-disable;
+			drive-strength = <8>;
+			output-high;
+		};
+
+		ws-pins {
+			pins = "gpio11";
+			function = "i2s2_ws";
+			bias-disable;
+			drive-strength = <8>;
+			output-high;
+		};
+
+		data-pins {
+			pins = "gpio12";
+			function = "i2s2_data";
+			bias-disable;
+			drive-strength = <8>;
+			output-high;
+		};
+
+		ext-mclk1 {
+			pins = "gpio18";
+			function = "ext_mclk1_a";
+			bias-disable;
+			drive-strength = <16>;
+			output-high;
+		};
+	};
+};
+
 &uart3 {
 	interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
 			      <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.45.2


