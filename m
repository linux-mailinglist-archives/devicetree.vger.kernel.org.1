Return-Path: <devicetree+bounces-24975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C31811D54
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 865601F21941
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD9E5FEEB;
	Wed, 13 Dec 2023 18:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FeOREvMK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A958B0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:49:54 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50be3611794so8556092e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702493392; x=1703098192; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u9w0otzZlXHEhkhqLHq549bkqhOx0OoxS5csCVRIyxs=;
        b=FeOREvMK8XGoFNXj3oQnDGvz7XwLoSFk4rON8dZ8Pq0eCI2GJjo7cYibmKkFrI/GE8
         O2aOCmoDxsC1XotefeuLI8iMidfbqie62bv7Cp2Esj+8mJVLKXJPF283fQiKMhVKujDG
         vnN15soHjq5yDvthpDThthYjhH7ZtDsb7Z+SpQLaJCd/2gGnuS4r5v1dRkGQunMxl53u
         gj4S4Dr3ce569O5v3WGeY4GAR0KXbRX0fexaShyfJ3tp3S3Oj+or9eTKCfMUSpbBi9yX
         ys9QfS5WiriXhuABpc6BUN9JEeDSYaTzmYhDlOBltMVNisrtjJgZOhItPrRiMZR0Bj5a
         U+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702493392; x=1703098192;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u9w0otzZlXHEhkhqLHq549bkqhOx0OoxS5csCVRIyxs=;
        b=pzrAJIN2sQyBG/Ic+F+qdBT2WYRmN59uD8ieIPQjKqWNnx55HFkj+oSayFmasAoSEb
         G5TziyUeKBmhYu36AxRyxzDEZZbibHWns3TDMsA4Nn40670NYhmmEXBqV7D26G9EYZqO
         MIUll1L7ydLAcyQTTijF7M3smrRBw/vG7wffTFdGzcmL4h6i6kpv0IwkxT/GAuNi8yx2
         XmWVPQHhZGvL/e+zFHtO5lcFDw//GtBtZkoARbwHg60cPIxbIjkzWcDbTZXbYbw1SBln
         CFiRV4f7i3jzR7F+HRA+DaYCeqf0d7NXDivCkdvzaY3gk8LMcqt07ZhfkT+YA3Vtt7ok
         kXlw==
X-Gm-Message-State: AOJu0YwOme0/nh2RYBVhi3S8uZwJiqdDXAy62kpbDnTFuIaOubClkbIm
	4v9wISiJjT5uxC1S60W9uEvXLyXqkODGqWobw2ih70Z3
X-Google-Smtp-Source: AGHT+IGfyRARguxRt3x+/QtaZJ04/nr6oyHtrgXcf2XRCzJOlfzwtBnOVKk1qUykWozve/TPg2iBpA==
X-Received: by 2002:a05:6512:489a:b0:50b:ff2a:8848 with SMTP id eq26-20020a056512489a00b0050bff2a8848mr3798058lfb.120.1702493392343;
        Wed, 13 Dec 2023 10:49:52 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k31-20020a0565123d9f00b0050bfe8abf04sm1674563lfv.138.2023.12.13.10.49.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 10:49:52 -0800 (PST)
Message-ID: <e2ce47e8-fe27-4ca0-b295-cf7e12eae1ce@linaro.org>
Date: Wed, 13 Dec 2023 19:49:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] arm64: dts: qcom: fix USB wakeup interrupts again
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231213173403.29544-1-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231213173403.29544-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/13/23 18:33, Johan Hovold wrote:
> The USB DP/DM HS PHY interrupts need to be provided by the PDC interrupt
> controller in order to be able to wake the system up from low-power
> states and to be able to detect disconnect events, which requires
> triggering on falling edges.
> 
> A recent commit updated the trigger type but failed to change the
> interrupt provider as required. This leads to the current Linux driver
> failing to probe instead of printing an error during suspend and USB
> wakeup not working as intended.
> 
> While at it, fix also the SS PHY interrupt so that it too can be used to
> wakeup the system up.
> 
> Thanks to Konrad for reporting the probe failure on sc8180x and
> providing the corresponding PDC interrupts and to Krishna for providing
> the remaining PDC interrupts. The exception is for the second controller
> on sm8150 whose PDC vectors I inferred from sdm845.
> 
> Note sdm670 and sm6375 need similar fixes and I believe Bjorn is trying
> to dig out the corresponding vectors. The SS PHY interrupt on sc8180x
> should also be fixed.
sdm670:

pdc 9 DP
pdc 8 DM
pdc 6 usb3

Konrad

