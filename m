Return-Path: <devicetree+bounces-34422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2F6839AFC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 22:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2E341C26D16
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 21:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE2412C682;
	Tue, 23 Jan 2024 21:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DfhsABWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE542C1AE
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 21:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706044939; cv=none; b=a0I72aE3rirSGMkM9LODwUkra047UkLz9wA8jqqYjGbJWFXZ9MJIg2AZzZ4Q2TeDeDI0zUkJRQLRoaY/CvXaarhi5AUgq8lLLNR5CsViXJvXp0p9c4kC4WaTaemG5PqRIL9mOxpVbXeQMIBjeEl86dt2+rYnuGd0ngNht+twEu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706044939; c=relaxed/simple;
	bh=zKXA0i+BR4vj3KF4Pls3XYybk0N45ElRGs9rl3qs9Kk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LPk3xMsRRQZ3EtyRZ3dB9SM+hvlsCGtfKTD0x91cmsGBfZYnoFAM3e++ZnvOqFZDMvqVtbq3UWHLTOO6yvpFq5DngNJ+vF3kYaDTIjE7Ne5nrktqQtt5Xp++RYOaY3J8tpnb58Ahf3JF0RoSwAHiZIUzSkcFEtDpjaqdoSza+kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DfhsABWO; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40e72a567eeso57403855e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706044936; x=1706649736; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=MVkSnSNUQeeAHYsU254zE18o+FMcPkL4ezhsYGVFvcI=;
        b=DfhsABWOxmu31tXiEii2nEUAh6w7PvX3NIC76aMBp+GfDyXTNtLOHEruaLFR3hLQDA
         uudeySLYsQ96nepQJPHRSFyTf4jTRAbgfJocK81rkuH4AXkTM3iipYThLp0pVLRYjcws
         okRxTeL4FGjKX6+FYaCPb75xR2c3aqvdqQr277dWzYVjwY0nChDO5cqL6t/BaUYnIZyO
         PD1ZhLYpA/RXuCWg/SwD6okiV5E2fGZwClipIAbPigtvDVWPhsYRoe1AGwCb8ADSL8uB
         IwXcIl91IDcXI+yGfftnBwLu55RqbeK0ZbCHEfkOMZtzpNANLqiUsmEKSBcpNVsdNRZ8
         qJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044936; x=1706649736;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MVkSnSNUQeeAHYsU254zE18o+FMcPkL4ezhsYGVFvcI=;
        b=YOS/f4kAczr6SUA+rfROFGcc0mLycDsgeGV09JA9b5jOuJV9rTAAcQPa8dO4wcI1XA
         PbHhZpLgzjX9nRpaJ/C//Xy63cSg+M1wxU85NSHhL8HYdkgxOA8N4m/J3cAz2P8ppIc7
         GDnxRluzulbMctQN3/7IQTav5xd+c1z89lhFhgfXlVfne7+4VZ/MH+CrIgyYhua2xEVX
         kW9hgEy1TQvQxucwD8eMqr095XOoLhy4UohiKnb8HqhOtowEZH74jGu0YxiPa+O/Zgpm
         cXp81AET9bRHfkfn3qmy6HsRO784JavAQiPy492CeFEk5WsUfhhANGp6fDxtSs+fSB++
         Inag==
X-Gm-Message-State: AOJu0YxGonL4kfgYnaAllFtxhSj0Q/JXv+JluNfG8p45gdzb8rpMklaY
	cKSIV1oHjBZk0jmO6ESPXtrIsDYNhwX67lIqekVqNVzsUD0KwCWbTdqmkK5OpoY=
X-Google-Smtp-Source: AGHT+IH0MsW/qzedeu7Tk+/eV8gciARpar0GOPa6l9y7F4iCoxpmQR0p7F1X1zT8C1qaGvN9+roa8g==
X-Received: by 2002:a05:600c:3d8f:b0:40e:760e:d854 with SMTP id bi15-20020a05600c3d8f00b0040e760ed854mr506388wmb.123.1706044936236;
        Tue, 23 Jan 2024 13:22:16 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id ay2-20020a05600c1e0200b0040ead97f70dsm8053119wmb.24.2024.01.23.13.22.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 13:22:15 -0800 (PST)
Message-ID: <6d8d5c33-f814-4c06-ae97-7579aec3bb15@linaro.org>
Date: Tue, 23 Jan 2024 22:22:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: memory: remove generic compatible
 string brcm,dpfe-cpu
To: Markus Mayer <mmayer@broadcom.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20240119215231.758844-1-mmayer@broadcom.com>
 <20240119215231.758844-2-mmayer@broadcom.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240119215231.758844-2-mmayer@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/01/2024 22:52, Markus Mayer wrote:
> The generic compatible string "brcm,dpfe-cpu" is removed from the
> binding as it does not provide any actual benefit.
> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> ---
>  .../devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml  | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> index 08cbdcddfead..e2b990e4a792 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> @@ -16,7 +16,6 @@ properties:
>        - enum:
>            - brcm,bcm7271-dpfe-cpu
>            - brcm,bcm7268-dpfe-cpu
> -      - const: brcm,dpfe-cpu

We cannot have undocumented compatibles, so I think you wanted to
deprecate it instead. Also, please extend the reasoning from "any actual
benefit". Were there any users? Don't they need it?

Best regards,
Krzysztof


