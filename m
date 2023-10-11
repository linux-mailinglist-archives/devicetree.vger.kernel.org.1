Return-Path: <devicetree+bounces-7525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F587C49A7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:11:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B98C1C20C2D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 06:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A70FC1C;
	Wed, 11 Oct 2023 06:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IFS/XObE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2069A354F0
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:10:56 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F6A898
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 23:10:53 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5044dd5b561so7829749e87.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 23:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697004652; x=1697609452; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rs18PpUTYGWS2Th+7r2apLAIVKCdnE29uQIUA8oLSLc=;
        b=IFS/XObEQu8N2atOHdejXRWDS0/5390hx78wtOwEkAf0xWTiX7pMl2cA/B+WrLGgH+
         /5O7Dd5XkTkNl5vqD7NZ2mMr+1N6Y5KchOcOuQSpIxCwe9Fxw3lDkIHft5yEwiX0XLbk
         efEUqB74Owv+jZlPljD4Z9WjfrrV8ZRqmIqMDjtKU8vjTN99Bek2ipbp72wto86743m6
         VghDbl6TDBDAiy5V6VsfOGfQW6+oFHM7YVMU4/lfFbzg5tex22tyIDpDqnCahHN6+GNf
         9JGAWlQdQB/W0DctVllr9VLMYXjF82E7ATj7C+xZ11NVMZRWZ+yJVyNKVWQEROefJAZE
         AFnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697004652; x=1697609452;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rs18PpUTYGWS2Th+7r2apLAIVKCdnE29uQIUA8oLSLc=;
        b=NsPJoxkOpbR635Ha6sT3WPD4rZ8fYrwF03mo+xevvOMfNT11T/DYFWsO12NckjupM2
         YM84VZkKAtHI7+T+ZauArpZICTPDiCabyDpt4ifwmfBNLxtf4BZmsxmuhPwcVZDHOkaW
         AdFLLUoYeB45JlFckvltWcFNptGytLMB6I2G6VV8WW7Ja9Tq0z8UvmO9wxZtkVUE6D60
         frMTFitcMYm2+RF9kaTWhv86SMc7+l+s59LxnW+1tNjaJ/KUJur5piNVr3PqBelRlJLY
         TkimYYhNi05w1Q7Ke67l17rSCZKyUWXr+z7QkssAnk/fWYr9MbqsXhVL08h6nlMCO3Lh
         DrbQ==
X-Gm-Message-State: AOJu0YyY8sGtQgRRF0Dk0UwyE325vDAYepQTeIaAyJXX9xH3rBE5vN+s
	PWPigtY4Up9RMlEhhMoqnv02yw==
X-Google-Smtp-Source: AGHT+IE89HVDFcFfC44P/nItl+VCGsnDCkj5yP8HJ1NhznNZ/lQEYkHEO99NParLo+oTfKlWtRa/Pg==
X-Received: by 2002:a19:7b03:0:b0:500:aed0:cb1b with SMTP id w3-20020a197b03000000b00500aed0cb1bmr16439849lfc.24.1697004651641;
        Tue, 10 Oct 2023 23:10:51 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.123])
        by smtp.gmail.com with ESMTPSA id q14-20020ac24a6e000000b00504211d2a73sm2102818lfp.230.2023.10.10.23.10.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 23:10:50 -0700 (PDT)
Message-ID: <92de302a-f6b5-465c-a5da-2a711861089e@linaro.org>
Date: Wed, 11 Oct 2023 07:10:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/20] Add minimal Tensor/GS101 SoC support and
 Oriole/Pixel6 board
Content-Language: en-US
To: Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com,
 s.nawrocki@samsung.com, linus.walleij@linaro.org, wim@linux-watchdog.org,
 linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de,
 olof@lixom.net, cw00.choi@samsung.com
Cc: andre.draszik@linaro.org, semen.protsenko@linaro.org,
 saravanak@google.com, willmcvicker@google.com, soc@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
 kernel-team@android.com, linux-serial@vger.kernel.org
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20231010224928.2296997-1-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Peter,

On 10/10/23 23:49, Peter Griffin wrote:
> Note 3: In `dt-bindings: pinctrl: samsung: add google,gs101-pinctrl
> compatible` I tried to narrow the interrupts check to
> google,gs101-pinctrl but I still see a warning: gs101-oriole.dtb:
> pinctrl@174d0000: interrupts: [[0, 0, 4],[..] is too long If anyone can
> educate me on what I've done wrong here it would be most appreciated!

I guess the initial definition of the number of interrupts should
include the largest min/maxItems. I no longer see the warning with this
change:

diff --git
a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index 2464bc43aacb..6dc648490668 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -59,7 +59,8 @@ properties:
   interrupts:
     description:
       Required for GPIO banks supporting external GPIO interrupts.
-    maxItems: 1
+    minItems: 1
+    maxItems: 50

   power-domains:
     maxItems: 1

