Return-Path: <devicetree+bounces-23060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6804880A1BA
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 12:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5477B20AF1
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 11:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5AC19BAE;
	Fri,  8 Dec 2023 11:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="doa+Coj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE01510CF
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 03:03:10 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a1db99cd1b2so256396066b.2
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 03:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702033389; x=1702638189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bEwLnBOC/qdcYM4M+jPElLEilL4x4aw3f3zZi3BYaWQ=;
        b=doa+Coj+S0iYPDMY+khMzcfynSwHMm2+DmVz/RZyvFyB/4jKJO8QmFVxU71/INY3Q8
         SffTS0LWw57mmOPtJ7O+ZmelHeN4FhFKITxqfL3tYZ2Sk3CqbZ2muWHmYj/ZQEeLQ3us
         yAd4s7wI2BL+MTtGH0jHlFtVHiIx7E3zoU9u6fDYHW/92MeFtssvMj+wgWThuKQZhdP/
         5mGKIAbioVlsiiN9u8Wb2p398qpVGWWTwVhZqD4ZFDkCzeMz+J7kKK8tP4X+LRpNkXdz
         dZIbi+KtYAICSu7JsyM32BqV5GAhEjzeQhxeNJ43vQKTfjCQRiyGS/iTJIfv45Pptqfe
         e07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702033389; x=1702638189;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bEwLnBOC/qdcYM4M+jPElLEilL4x4aw3f3zZi3BYaWQ=;
        b=QfRIsjFl8yzOOjG7EQgH2lid6gy9V+jfOM8fbG5P2U8xS8lVJJN0baE/LZC/ny9868
         o6MvUecIlcSgpw8Zie1FU2cZV9KBahIASoPzzWdABqLGr1OdNiUNztO7R7tbuSuLNV6j
         s6VXD6nbJwv9SUgavoLptTZvhFVck+Rbhxt6Ut3U0RRUxEZx2aLJBls1fKZ7ossX9uJU
         SyTF9YKM52m2TYtztdzoRQ8BePQ9pqEMIpyHZ/hV8NLRJMuT3m6sTvgomuKnat4lTw2o
         dwXcyiMOqszMezbtMjqwZ+sese+I0jyWBHqwDIOdLuyJ4pSYFjS8et3Ec2AAm+G3PL7o
         6KVQ==
X-Gm-Message-State: AOJu0YyepNbrz26CjA4OCZIoHM22lKoDlnLWiVSKjoc4oxdH5tr4I3xW
	DCuOAfGf+DGQAe+5I+NVWns4rA==
X-Google-Smtp-Source: AGHT+IEUCMIetzDx1rq/yfoOzbKLkqMRhi9m4z8qeP/XugdovkyE4akMeKajgqnm0Gd5Eej4Ijodhw==
X-Received: by 2002:a17:906:81c4:b0:a19:a19b:4254 with SMTP id e4-20020a17090681c400b00a19a19b4254mr1634063ejx.191.1702033389036;
        Fri, 08 Dec 2023 03:03:09 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id tm6-20020a170907c38600b00a1db955c809sm862184ejc.73.2023.12.08.03.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 03:03:08 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
 Patrick Delaunay <patrick.delaunay@foss.st.com>
Cc: Arnd Bergmann <arnd@arndb.de>, 
 Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>, 
 Peng Fan <peng.fan@nxp.com>, Udit Kumar <u-kumar1@ti.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
In-Reply-To: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
References: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
Subject: Re: (subset) [PATCH 0/4] stm32: add support for STM32MP25 BSEC to
 control OTP data
Message-Id: <170203338747.19730.10941929995611139048.b4-ty@linaro.org>
Date: Fri, 08 Dec 2023 11:03:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Fri, 17 Nov 2023 15:33:33 +0100, Patrick Delaunay wrote:
> Non volatile memory area is available on STM32MP25 with OTP in BSEC.
> 
> The 12 Kbits of OTP (effective) for STM32MP25x SoC Family
> are organized into the following regions:
> - lower OTP (OTP0 to OTP127) = 4096 lower OTP bits,
>   bitwise (1-bit) programmable
> - mid OTP (OTP128 to OTP255) = 4096 middle OTP bits,
>   bulk (32-bit) programmable
> - upper OTP (OTP256 to OTP383) = 4096 upper OTP bits,
>   bulk (32-bit) programmable,
>   only accessible when BSEC is in closed state.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: nvmem: add new stm32mp25 compatible for stm32-romem
      commit: d062d18d0e30e46e88a3b0f9fb2549393b7d7adf
[2/4] nvmem: stm32: add support for STM32MP25 BSEC to control OTP data
      commit: 2015e5f4d01fb76fca69047f870035e214d6d2d0

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


