Return-Path: <devicetree+bounces-88576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF64E93E439
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2024 11:09:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E7921C20B39
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2024 09:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D2C182C5;
	Sun, 28 Jul 2024 09:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RquRUTN+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CE52A1CF
	for <devicetree@vger.kernel.org>; Sun, 28 Jul 2024 09:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722157739; cv=none; b=phQcoLKoz7RbTZKckhJ8Y4ysSBch/Alff/C/9XkLtqrOJoC33VUMVH879l2Tcj5q+m0sy2m+iaHjdCbgYnSEL+8RsOc9cByW8hi5jjIWS1zTmu5iyH7gy7NOIwHgOOJmPJ186vT2EdHlELn09xJgyImuggCFiHEGOALnZ5DUveY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722157739; c=relaxed/simple;
	bh=MeUSNKuySNsYd/E47sODThiRgbvjfZMHCpIwozKMZVw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=svFXA8Kf3x41tjh/aCa7TyOa22D2K98dKnr1Yfx36XaDj/RJUfoWl3rC5WrZVbeYCl8KC8foBRdBqk75d88GYxgXSMNZLPFbFEjzC68OqYL0iOrqr91Ra9K4iOlWRT94JHdiRAXYzxv/UtVHmySs4bGo+IBY/3HUdN+PZPtbIbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RquRUTN+; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4266f3e0df8so7785965e9.2
        for <devicetree@vger.kernel.org>; Sun, 28 Jul 2024 02:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722157736; x=1722762536; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PpDyFmA0zdJQYzcRcY20UOiDQI5mUrkxPFODs9AZW0o=;
        b=RquRUTN+OTtPRIAPD6oQieOnQDgxxDzmA9AIoxOxxwHCpmv0R9IDrOqXIDeo1k+4lC
         kOP5ZNs4v2sdWc6mwT98xzgHbCqQxB/Lcd2u6tfW9kR1LvYD1/XPD6rBrkKVQfH3hxat
         TdcZ9c5rO16DLi/jpWWvayVWtX8ymxDZvIE1vZJH860Yj/WA3OD1iLCUn1rFbKuWjWNK
         0ZFV79PG3ppcE+6VfcQ1nck3ofYgwYLjUk7L3zKU5ERPeTrMYOMypxWxQTy1d/q5izqk
         jmhmJqsiq01EWzDgmWyuJmLIKjWb9QYkreeMVLe28VzZB4cjcyLoEzi5a6iOejEDiTce
         PE7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722157736; x=1722762536;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PpDyFmA0zdJQYzcRcY20UOiDQI5mUrkxPFODs9AZW0o=;
        b=v/fblSd8yd8LY5Yyh0wyfm8tmTnY58vOsSe2DLUfU8JIA6skHvMY1YznaHi68kDZD6
         8wGRfL7b78n8G12OTw94di3ZBsuoU6Z15a1Tf0Ft3hOh31bViLNy8PPehaFjGjUA9m1t
         8dfWdteaPfvi5uZXMIQ3ftjx3S7MfMRxzJOMqUDpaLSXWIqLs5P2IODFpoQUrgHFCgmM
         tC0pWw9pcQ5hQWbPlV1EzbhAziTVIPsutwo/yemLiPCKEY9PlmLGN6FFtv4xh/bkgAS2
         CcWC6FZ7mUTPe9M1PoUNLd7G1XiP3X0WclXf7gsxI40sZJQM/aWZS2lOnSPrA41JQMqd
         H7LA==
X-Forwarded-Encrypted: i=1; AJvYcCW1XcFwb5iYhpnPCGrW7Cx/W2UZJD2gb5a1jAyK6cusn3YBkqDyyG48YqC3zA7H0ihcICGloECASWX3RLNJorrnDtEBB/1GhYTCWw==
X-Gm-Message-State: AOJu0YyU5+J+0GkE46UfqVLl61X8I1sZBi8AuBakIPMiATnDznHyKH6K
	yCb7jLdliAuwT8Vkzin3VTb1lb9J21yOxsV+H557dFZ/55OPd1t1/4fuyjeUrCA=
X-Google-Smtp-Source: AGHT+IEhJzJpgZwPfuVZYyUwH9IHBgggf/a78AG5JT2z9cT9WPyBu6r2PuYUvcUsD5+37z1z6VN1fA==
X-Received: by 2002:a05:600c:45cb:b0:426:647b:1bf7 with SMTP id 5b1f17b1804b1-42811e1066cmr40400625e9.32.1722157736331;
        Sun, 28 Jul 2024 02:08:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b367fc445sm9322910f8f.48.2024.07.28.02.08.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jul 2024 02:08:55 -0700 (PDT)
Message-ID: <a5d1eab2-b4f4-47eb-a870-8b2ce1d27bb5@linaro.org>
Date: Sun, 28 Jul 2024 11:08:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: imx93-11x11-evk: Add several sound cards
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: robh+dt@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 shawnguo@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 shengjiu.wang@gmail.com, linux-kernel@vger.kernel.org, festevam@gmail.com,
 linux-imx@nxp.com, krzysztof.kozlowski+dt@linaro.org
References: <1721897948-6306-1-git-send-email-shengjiu.wang@nxp.com>
 <172194566256.4000899.15176243632706048606.robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <172194566256.4000899.15176243632706048606.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/07/2024 00:20, Rob Herring (Arm) wrote:
> 
> On Thu, 25 Jul 2024 16:59:05 +0800, Shengjiu Wang wrote:
>> Add bt-sco, PDM microphone, XCVR sound card support.
>>
>> Shengjiu Wang (3):
>>   arm64: dts: imx93-11x11-evk: add bt-sco sound card support
>>   arm64: dts: imx93-11x11-evk: Add PDM microphone sound card support
>>   arm64: dts: imx93-11x11-evk: Add audio XCVR sound card
>>
>>  .../boot/dts/freescale/imx93-11x11-evk.dts    | 135 ++++++++++++++++++
>>  1 file changed, 135 insertions(+)
>>
>> --
>> 2.34.1
>>
>>
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y freescale/imx93-11x11-evk.dtb' for 1721897948-6306-1-git-send-email-shengjiu.wang@nxp.com:
> 
> arch/arm64/boot/dts/freescale/imx93-11x11-evk.dtb: pinctrl@443c0000: 'pdmgrpsleep', 'sai1grpsleep', 'spdifgrpsleep' do not match any of the regexes: 'grp$', 'pinctrl-[0-9]+'

And that's a proof that you did not test it.

Is anyone in NXP testing patches before sending?

Best regards,
Krzysztof


