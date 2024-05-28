Return-Path: <devicetree+bounces-69796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F958D18E9
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:52:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C67EC1F25087
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 10:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C39016B74B;
	Tue, 28 May 2024 10:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kp+nwqTp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D5816415
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 10:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716893524; cv=none; b=JBFiOWD2gDTK2x9Q2KmVbZ9UFVmdqEYHXdtcp1U8x5hpOaw5JDRn2KkiKVtFeoynvDJjRMP+sWrO/WMPak/u5Ou83IOKwGdnmsh4WYcc2X5cR0nh0TuPWKcfhb04LtgQLRqOq0rTMNuzqqydBWHoaLbo6ZstcFmfAlX0VyJGfpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716893524; c=relaxed/simple;
	bh=TmVoJ8k8+1NvLcyEGmN7TBX/Tn9cChjQwnla6WWr3HA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N2R2WivIdvl0k95PYgLNCHNk3AAJI412kB/nSLsKRNqELfsXFb2B72FLWiX4ZBJx2OuWvUK48sBsDJ3DpK9dwZD8zeEaW7LHKLOi8Nu7YktVdev0YNGSlLSle0xEry5Uv7GGChFqG3GNTt8HAvAngQQr+ULqFGqOmX8No2EC1n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kp+nwqTp; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52388d9ca98so1101412e87.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 03:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716893521; x=1717498321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8x1NlguGcuKzotHRknd3C5aGKKIyU7+P8r/J0xN4tR8=;
        b=kp+nwqTpFgQER7RW8OuvW8JdGHotjFJNupf0Mpx6dqct2WqSUixGlqpc2FTpQtXfgA
         /C1gPj05ShAij4czFQGKI9vhix+elncfB+j+yPQLzGWDoLohfWR8nItIP0XWhNm3yrmC
         QZc/B/7YvmjTOHZznz2BH5FCCVDXcg1I4J+iBgmkMzPzdkgeYah/wIUNtaPe+dppBAhC
         Yh7iBwUMPkNnp5eV9N6fbODT+y+KwkBbBVppFS690uUAITvbTRMj7N+26Z5uzdcg1MRT
         +oFdtlogxddMrVhyJMifRmLWWb83/jtiILr0gVby+xdwuA3VTP7vE+vTjdHndV06UNDb
         V7Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716893521; x=1717498321;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8x1NlguGcuKzotHRknd3C5aGKKIyU7+P8r/J0xN4tR8=;
        b=YlxqinvTWsKT3FFlQhuQJ9/kTdQ4vjS26Adb8Nmcbpw+x6NlUb1nOpvoHrVLlRG5yg
         9znXe1kO8RxWcdr8JfVHpsFAqglfWs6iHGrLUb9A47qzMSn5gwNcqlhOvM4Zuo+Zar0c
         VxgnCGg6FlfR2xye1joARwlllRmXT+C3Zl3kCFo9Ws+3xbICmYAqwZXUfStZK6i1s8Kq
         zDcJBcg5oiRKeUMDPZVsm3qTXkrXhD4IZyevj4smudSR4P6R3tG7U3q8GuAbTyly5UjR
         Gq3w1RFkAp2vGryLWbz4Kb5yfzSUoCMmJsrZHamvmmCrCMPORLH4Zk8g7TDNkzQMoT3V
         xeAg==
X-Forwarded-Encrypted: i=1; AJvYcCUAK4l6Ggf8rhwY2blp/dnDkQ8wmjgnS8zmDgS3S05pcpY2H/4aYRuMD11dJOs7Tc32hdqGrxTUs7S4r297Ks2jt6LZobC1gdbrhQ==
X-Gm-Message-State: AOJu0Yw42D3bhpITPMSHVIl18noeHSftLJTLNyKYqAs7nxQH3AmjzzO6
	MYcq9E6Jz0kc/3KUEQ5clLm2Ag7eVcKIBlWY/T7DOBZcMJitXLXAEyffcGMhi7g=
X-Google-Smtp-Source: AGHT+IHzuzSXp9V8RD5v0u/RhB0Sptdv9vPyfjDGrEHkGNl1acEZ3+yOY9ZkK3EWudn20cI33WsNhw==
X-Received: by 2002:a05:6512:3e19:b0:529:b718:8d00 with SMTP id 2adb3069b0e04-529b7188dc4mr2905634e87.8.1716893521023;
        Tue, 28 May 2024 03:52:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c817afcsm600268466b.22.2024.05.28.03.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 03:52:00 -0700 (PDT)
Message-ID: <15eac4b8-4652-4b58-96d8-b68a5fc2a13b@linaro.org>
Date: Tue, 28 May 2024 12:51:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] dt-bindings: gpio: lsi,zevio-gpio: convert to dtschema
To: Pratik Farkase <pratik.farkase@wsisweden.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Pratik Farkase <pratikfarkase94@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240522151616.27397-1-pratik.farkase@wsisweden.com>
 <171682157627.156531.2134241472358951863.b4-ty@linaro.org>
 <GVZP280MB0821C4746C5D27F84A8B9F8684F12@GVZP280MB0821.SWEP280.PROD.OUTLOOK.COM>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <GVZP280MB0821C4746C5D27F84A8B9F8684F12@GVZP280MB0821.SWEP280.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/05/2024 11:57, Pratik Farkase wrote:
> Hi Bartosz,
> 
> May i know, which kernel tree have you applied the patch to? I am aware of Greg's tree hosted here: kernel/git/gregkh/tty.git<https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git/>

See MAINTAINERS file in kernel repo.

Best regards,
Krzysztof


