Return-Path: <devicetree+bounces-63908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 986DE8B6ECF
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:51:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55762283E7F
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 09:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E6C4194C92;
	Tue, 30 Apr 2024 09:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aptQc0kg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1C313B2A4
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 09:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714470596; cv=none; b=RKd31ajmENIwoShOZTFjPk/gQw2KAIlDsuw09PlK5/ZLe0ncteTp0Olc+M9GOxvMLjWDNAGKCHN2tr+3WcFAOyCERbA0NO0B3GM7q1LAYDYkKuPu7KVKXyfmwjk0/iky8zb5NKvCKPOJYP8Mr/XpKP+1Knd820Chr/Xi2eEmSrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714470596; c=relaxed/simple;
	bh=qQyNd2h599qj7egaidio8x869sx/hrwA+mPO7tRkKQ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WlKR5tFqOd9NQf2EPidV8S2idtUY9drQ8AP623070k7qAhYU48ABF/nYdoPdXHjAhQ1e4TJKcDg0H62TKr/pytde+ygReIEiBDSWpw6RNJeh/ZI9fz6JHaD42iH1XfdBvodLzeWyt0SP9HqtJh08Eu0d+r+SnAFdtlqGapnDeiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aptQc0kg; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a5878caeb9eso675337666b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 02:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714470591; x=1715075391; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FhJZGevRo1C++Okgeic6/uROn8S2Hxmi7kQowqw5A8g=;
        b=aptQc0kgbEyGGIUBaMnq5g7rpl1VsGEDY9f5KGZA21DNfOAde04myyc1C2sL3ln3YP
         R+E8SDvpHwAY9zNjTmXDxegMqpgbJVueDRxE6515TpSbuoUo4MMHs2ONsfOFDFVZTdUf
         lTC+HYhP68Xpha7jqfO6Q86HsiVC6Q0H1hj/YhdDTQAFneAFdL7fOBY6KDEzMUqZFQoW
         +wcKyTN6muQLBE1FcTm1ZeKmR6Is/l3Vc7QqP26UqqHvcAD3caEuY+BehyA0aXqq2UN7
         ilYf/X95j0OAAE1HD4QqfTPYUzttTXvplri/S0ojifZzi5hO7lJj3K4jiXSEBo9/4f1D
         CcKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714470591; x=1715075391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FhJZGevRo1C++Okgeic6/uROn8S2Hxmi7kQowqw5A8g=;
        b=LwYrWkma6wtrT7X852rWkMGpxqPH222m0XQ1mhH88xqI5yyD8KDS43IlDAMNQwbKRW
         DlyOClhdrrnknECydyY6ZkFPoESEP6BLqYqpKT5+ondNI3SyYApc79blNDTQbuxIZ0Z+
         mvxMwMQrwKKxOzFPHizyY8UEnFlPh2+1DEnhhn8Mq7nrI94Vd4nkFvx5aHACziTBcyF3
         vHROnGeiwaG4TYC1zgCqtw4btVomXS3fXv/0obVCybnHB521lEdu8QYY3yswglZ2zSfZ
         mpv1lVg1IgFEqfYizYdbxE0obeKTcxbLDsjk3P32ST0JuewGnAg82jLh6QHlSvHx/xrq
         1Y9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXc3dWhXKlIyvLfU9H00wlwDaCsLNbfYPBbjnfSzr/d4i++YFNvwZShzKIdsLS+L3TaeJcMbkskgiVnQpDUgGxQ/O+whOMUSSK8fw==
X-Gm-Message-State: AOJu0Yy5glzx1ahF4bJ9ZbBOghEOyZIHrmuM0yeUe7RF9rld85WlgLOc
	gnw5yvpvvg8rBvx2ClTIGRLpFyHJuU1fJLjHIQCHk3Workz68SLNS7y5kS8cqQQ=
X-Google-Smtp-Source: AGHT+IHjR4VqbKBno6oOcsP9I88ns4NXyyx0hAoOpEbN6efsrEc8kzTNCaPoS2beYddSSlbI/rWFBA==
X-Received: by 2002:a17:906:c352:b0:a55:8820:e8b3 with SMTP id ci18-20020a170906c35200b00a558820e8b3mr1488739ejb.19.1714470591199;
        Tue, 30 Apr 2024 02:49:51 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id dk21-20020a170907941500b00a55aee4bf74sm10981024ejc.79.2024.04.30.02.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 02:49:50 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 30 Apr 2024 10:49:49 +0100
Subject: [PATCH v2 4/4] arm64: dts: exynos: gs101: specify empty clocks for
 remaining pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240430-samsung-pinctrl-busclock-dts-v2-4-14fc988139dd@linaro.org>
References: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
In-Reply-To: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

The pinctrl instances hsi1, gsactrl, and gsacore need a clock for
register access to work.

Since we haven't implemented the relevant CMUs for the clocks required
by these instances just add empty clocks for now so as to make the DT
pass the validation checks.
Once the clocks are implmented in the gs101 clock driver, these should
be updated then.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2: use empty clock instead of placeholder
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index f8fcbbb06e7b..c8a5eb8c7d45 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1309,6 +1309,9 @@ usbdrd31_dwc3: usb@0 {
 		pinctrl_hsi1: pinctrl@11840000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x11840000 0x00001000>;
+			/* TODO: update once support for this CMU exists */
+			clocks = <0>;
+			clock-names = "pclk";
 			interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
@@ -1380,11 +1383,17 @@ wakeup-interrupt-controller {
 		pinctrl_gsactrl: pinctrl@17940000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x17940000 0x00001000>;
+			/* TODO: update once support for this CMU exists */
+			clocks = <0>;
+			clock-names = "pclk";
 		};
 
 		pinctrl_gsacore: pinctrl@17a80000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x17a80000 0x00001000>;
+			/* TODO: update once support for this CMU exists */
+			clocks = <0>;
+			clock-names = "pclk";
 		};
 
 		cmu_top: clock-controller@1e080000 {

-- 
2.44.0.769.g3c40516874-goog


