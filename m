Return-Path: <devicetree+bounces-76864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4514590C64D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F19A2808BC
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BE32481D7;
	Tue, 18 Jun 2024 07:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t0M9UwCh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C418718B1A
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 07:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718696797; cv=none; b=KwTtlaFBp9meXHfJ+lIY8PP5WUV+ZW0Uzcq46C+UsOpvZRBcEFA6OP7vg+0MBx91DkvsVFomxIUCeLH6Rc6QOl6zJYYvDWE2QnVCpBe1jTPwxGjXZHwuPbjYGU9pM0hUno9NHd/dvQ7lsKJW/K1ZrvNUEAJAdxCA2EnU4+ffbP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718696797; c=relaxed/simple;
	bh=SjX7tGAt2r69KacjGu7Cdy+MwyGdyPNLC+cO5ZdamiY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vwp5RgVQTyZqJ+rTUN4JezJMP6KfrmiyxsIb+1PKzsXbP9xMW0aEWcGRnDkiwnOenME9gwL2jQe46TLkdryn/pyvPXhH/EhNiFrS4wPByZcOSgOAMGz8i8taI1W6cDplorwRGTI2QKley3RP83txXHbExnBgOk8p9p+EJsQnhlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t0M9UwCh; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a6f0dc80ab9so774205166b.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718696794; x=1719301594; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9aVMdTb87lrR/VLsNQXlBgHmfecik/J3DN66wzigyl0=;
        b=t0M9UwChtl4skbbw8H8WF8/KNIri/5RteOKDLgHxD6EWbYaYENy+EjSnZwcHdITYLV
         pYuV76uhOcp0ugRAy3/kEIdOrfkp5FMTx62kyyFM/MJD6GQhS0MN7zv8oyZJwOt3YkwW
         TSIz9Xx10xiXvFDSWT3sY8JNErCOp9qUxsDPXEGeABWl7Wn6xu8lq3vIco2OaleFuB7k
         i1tP+PFphIWW8oVHsP7MtERGrDgnagDYYkd9ROehy1ECN2lqPPoz6YLmFL2hlnuJo/bS
         BVcQHWVve4wb0LfFCqIxvl6Q1WX7zn0GokZ5rMMcg+XYMgQCah1dg/OqbjhD1UjpQHXR
         ntow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718696794; x=1719301594;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9aVMdTb87lrR/VLsNQXlBgHmfecik/J3DN66wzigyl0=;
        b=vN9XTRen+npm3+/Snszg/cQYHKnf42vaeqsdr1il18iNvYW+q+JHKbckDTmCMFsuWc
         40Mrmn/XAaAYMmCZ5ERDSCElbcOlhnfgzQkur3k3kaL1a2RDcbBkvDsuPse+4Si3XfNk
         BXStiW4qnLKKt3OpjTDUMYuuf8k/1cYYKks9Az31/pBeX88OKbYuiw7bBjxu/HUaEq8R
         WXDx6Lqzcor5zxwXg7GIsaWF7EvE9W4+A+N4LfUOcfNUKiXQROJ+WmWAeUCBnSrs8FTd
         75FB7CcN7fiisOwZOdefwHh3wZ931o8nujvtOIgX2C52LU3/ngATBeRrmW5vJ5YJd4jh
         wyBw==
X-Forwarded-Encrypted: i=1; AJvYcCWBPu+zGD2f/ArILPHFMPnZmZ5njcZEbmt+AndpAoB6irycEtcNB2U6vaCYjQOkViC1j7jLay9iA8lwUeTp1ifMar7mf9+NEgTZ+Q==
X-Gm-Message-State: AOJu0Yw3RYFRDQ+6VgGYsYMCifjfuAz9/gt3k+LWYS9KBzYWrl5XZBo0
	jczp/xmaqh0ZFKiFlJEzhmmhoHNoCnAlYxFc+snGrQ2yiOrN8XhCDHoipERKLKU=
X-Google-Smtp-Source: AGHT+IGd5ZQI/SEl+F7lT3PRu3W0bP+ApvLbLovFpqRBEm5Lf8y5EzwOw0Ld4EFHlB3okMW1EbMV2g==
X-Received: by 2002:a17:906:99cf:b0:a6f:61c7:dea5 with SMTP id a640c23a62f3a-a6f61c7df80mr874510466b.20.1718696794020;
        Tue, 18 Jun 2024 00:46:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56db6738sm592329966b.53.2024.06.18.00.46.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 00:46:33 -0700 (PDT)
Message-ID: <f5a90649-c633-4999-9bcd-8488833b8466@linaro.org>
Date: Tue, 18 Jun 2024 09:46:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] ASoC: dt-bindings: rename ak5386.txt to
 asahi-kasei,ak5386.txt
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org
References: <87sexb3yfo.wl-kuninori.morimoto.gx@renesas.com>
 <87plsf3yf1.wl-kuninori.morimoto.gx@renesas.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <87plsf3yf1.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/06/2024 02:08, Kuninori Morimoto wrote:
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/{ak5386.txt => asahi-kasei,ak5386.txt}         | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename Documentation/devicetree/bindings/sound/{ak5386.txt => asahi-kasei,ak5386.txt} (100%)

No, that's TXT file. Convert it to DT schema instead.

Best regards,
Krzysztof


