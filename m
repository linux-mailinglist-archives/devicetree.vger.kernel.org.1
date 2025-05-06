Return-Path: <devicetree+bounces-174010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46093AABDB7
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 10:49:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 634C01C23603
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 08:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6FE92609E1;
	Tue,  6 May 2025 08:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UWg5RX3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC610216399
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 08:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746521379; cv=none; b=rvftuEdn9ZOt0H7buQyiUxXMKnqZ9cLcF5FSCfg8MZyY6j5gMs00PjF4Pf0hHMslwTO2v0KxmDkVvOFJUt6zqlQCTq4sIzeagQvaTNf4QyBpvYAO1vj/yD79EQik4HAurCf/XBE5OIVVa6gujJvbmrJDDpNSAbTQx+vcMIfQgTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746521379; c=relaxed/simple;
	bh=lapmL4XXkzLQwfKJEVQM/oIUTraZNom4wMSXP3hH9uc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y8mczPPP0JRTQz5Os4ot/tnce58FvTCEbtJFbZ5MQ+cRMEY1N/Z597H6dv+plGIhsgu+q4rW+8U0TG2l9HvRvVRuyGE20CPgFxTXrY7fMwacJXwM1cMdL92DMs4uOaRJgdtbRT/XD+n8qkX/cw31I2SMxxI0O+DD+r3P4Gm+Lak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UWg5RX3+; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39ac8e7688aso3815765f8f.2
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 01:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746521376; x=1747126176; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RzGxTtDXLvBAN5ePbGP8uftxdGujZZRHKT0sgRE5gW0=;
        b=UWg5RX3+/ofjzPe82pF+tInZ9rE7olINfnxUmIlR5V/6RsWFFy/xKYyscCBcrvIxY/
         vClYJhrQLXELlU9c5I4zgDT14zUQA/TO4ucA1UQfM/H27BRdf1dE3K1+DVc0EbDN6dHg
         whgDNRTufVGn2eAEwUkD5H6L+S95MdzJuNi4DYP+5Y9PHZJshdadoQSkkT8acc415KQh
         A4qdc6mXlj4zodltO8fDMRUb9aBS9NuYpiy/tqw+pFOjRgJtNIz9585jErPpOnp6ct/o
         +nSuaAIA3YHYjP4uyl5qG5V+0aHua40RuptfTgU++ju0DrhZ4r53Niloa+ZaU70dY1+l
         qGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746521376; x=1747126176;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RzGxTtDXLvBAN5ePbGP8uftxdGujZZRHKT0sgRE5gW0=;
        b=U8xZ2Dy9A7Hje/EUabngJXHLJVKFeW97PrZnXYoUGb55fhYBd0GcAhokhRoP+rb4Jh
         rQdCHk0Db4Fajkw8E01ERa+x7X5Za0gBpq1rNMC/vKDs7Yj5xx/YJ/TO30PghWGihs3P
         /jLI84yiy1M7WczSj1QA8oDvxew6XY9Kti8ZjUx8CEFBhv2ImjTjgnfeWVMW8Vaph8F1
         2ZoTWeWFfrpwPsOcq+3uYF9weBD2tomXxKNmZDxfRCENasRBBglWjRTtzCiz4fkL3Bn5
         2ZZSrs0GnAjOoXxfIFqkXsWyBcKrsa1Hh9CwEmbJIq53RozJuhN2DmfcHvSh1l4k9lVS
         tGCw==
X-Forwarded-Encrypted: i=1; AJvYcCV7Q/YJgUTVCWlAsFrS1PYEvlNzN4qZB4YyFXZvBJMNmeVjpPiTNDr8SmZ//uJgSMSWzx17ucHaGk+q@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9vlZhaGMF4d4Q2Raz4xxGwSlP5ZTuvmgMopDWUrIQsTq5f4OE
	hbmW653GX6uuaoqB/eSOJD2WbXbt3MD+x5bld0Coj8P8fIGUA+kxDtJVHkCTstY=
X-Gm-Gg: ASbGnctUh8wV/Ze2FcSXII5SBglysQqTNG65xJCVzPqgNuae1MH1EU3e9QYZMPMMu4t
	tT5/kgTdMuG4eawdtHWUTHSwPkXhM2Sk+/cwHo6z7wI05k2rYovthhFxalnL9oLLSKy6mVJPvd+
	gGbW/U8g94l1fFN5Qwp9qK2aIJOutxT5R0I7xRL8GNTetGxlnSscKPEJSzbCKwWGUM8d7xAOU54
	WNNdoqigHSvplNQMpZAhgvzcvqZSERAvpnvFxWhiK94SZE25M+v2qvOVN6OZqCKnd1Wtgu9ZGix
	1qMIqTlAF4Z6/tDxO9nlbRB3PygVEl8mJ47ihXluZjHziI5B2HOisq8/dsatWT/NVdOXJL50ceF
	4YKGp6w==
X-Google-Smtp-Source: AGHT+IHarR+7EjkTMAiam6eveCDdf5OEEIkCQCGW6Awa5AYCZ7FsFMiuBPIymOFLGLSvzGdXLPnzMQ==
X-Received: by 2002:a05:6000:40c9:b0:3a0:8ac0:bbbb with SMTP id ffacd0b85a97d-3a0ac1ff350mr1718113f8f.46.1746521376087;
        Tue, 06 May 2025 01:49:36 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae0d15sm13183115f8f.13.2025.05.06.01.49.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 01:49:35 -0700 (PDT)
Message-ID: <3bd7e192-a8cc-4f64-b11e-d07499ba4696@linaro.org>
Date: Tue, 6 May 2025 09:49:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dt-bindings: media: qcom,x1e80100-camss: Remove
 clock-lanes port property
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
 <20250502204142.2064496-4-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250502204142.2064496-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/05/2025 21:41, Vladimir Zapolskiy wrote:
> Since clock lanes under CSIPHY are hard-wired and non-selectable,
> it makes sense to remove this port property.
> 
> The change follows the same logic as found in commit 336136e197e2
> ("media: dt-bindings: media: camss: Remove clock-lane property").
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../devicetree/bindings/media/qcom,x1e80100-camss.yaml       | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 2e7455bd75ec..c101e42f22ac 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -146,9 +146,6 @@ properties:
>               unevaluatedProperties: false
>   
>               properties:
> -              clock-lanes:
> -                maxItems: 1
> -
>                 data-lanes:
>                   minItems: 1
>                   maxItems: 4
> @@ -159,7 +156,6 @@ properties:
>                     - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
>   
>               required:
> -              - clock-lanes
>                 - data-lanes
>   
>   required:
> @@ -362,7 +358,6 @@ examples:
>                   port@0 {
>                       reg = <0>;
>                       csiphy_ep0: endpoint {
> -                        clock-lanes = <7>;
>                           data-lanes = <0 1>;
>                           remote-endpoint = <&sensor_ep>;
>                       };
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

