Return-Path: <devicetree+bounces-76865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FCC90C657
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:19:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD7201C21E58
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA6A177986;
	Tue, 18 Jun 2024 07:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r2JjtD48"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43F8176FAC
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 07:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718696841; cv=none; b=aNG5HnIotugpyjnCGytF066QddSCHkXMP43eHFylAIR6xKusZGpPSvBNfwIgpxGYA5jRIw6yETFQcKNDP9e8BiVhDBIKBW1nJ24brOnKxwH9Ic3UUxtQxcKNw0fgNnWXDT5lHRWMcA2CHxTwAu/f3I+Gw70rNtuL0djHV6io8qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718696841; c=relaxed/simple;
	bh=8zVZ1QZzcKJDu/t/Xy6y+Q42Mb4hgC7Bc2ytdvmKrIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aaIvib8vxcqNhxskxJznOteRGl/1d2YiuiEhRnOuGrWIdyZek/lqo05YrktsUpPjuJxuGcfSvi/zMvcEcU4O+Hw2jM7KJ/ubq4sxRwhTdDt9Xr4U4DfdR3ZuG24Tlav6dKj34ooJhX67nGDiBhRQvnm4z51T2Vj2l88M9uXwmwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r2JjtD48; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57a4d7ba501so6368792a12.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718696838; x=1719301638; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NjiZ2sjUkcvDeXpIcdQuz4Wg+HTzZbzXQEAsw90ig4E=;
        b=r2JjtD48y9gxuos1QA2kOjqIGwsfPpduNn5ENvhuazdjJ9t0Rvac+rq1EI4mvIQHvM
         Xxhx7GhPdUgvsxyj5yE8vumTFvQa7hA09ketWXjPu9Y5+C/dxYdoflRFQ1FzcXRAduAX
         W+ySxzdwjpxP9fBOYql8vPsbyRUvGcnKSxYqgSQLDF6tWe/gtDE6+vyjToOV6rwzgUIn
         saJzy6V1ntH8knxXbJDkItNE4vpFxLN3JqwBKttvckEfE9Ta+pO0OCtUaacAQcML5r8r
         47Mj+sLLyBq7CTLkPOfWZf2pehQpPI9+eddZ2xWEZTjk+YqQhCtF/ottxmOVxvKb86Vq
         ZKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718696838; x=1719301638;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NjiZ2sjUkcvDeXpIcdQuz4Wg+HTzZbzXQEAsw90ig4E=;
        b=mLrLbIQ/gtuHiRd0YYAT8a9EJ4rwQNMjxDL5JJyeCrXxjah7Vi3G4mWlQqr8xFpPuB
         BFX3qLy6J8EAsyLBTUYWMjq4n0xDALdwpGN+pz9zdv4JjDpniGtUerENYARzLIB0M2sk
         xSq5AGyV/Zf0eZHkRvH1Mt77pU4LxLGgD5TTkFrNRXRqYfx9AXXhIiWUTaUsW3+STGMt
         vogK3w95Z1cR87REaHIWRwDQDtMY//oQfybZLhYX923vtkLSXzZFOBhOP1QHGbQZowW/
         u39NbDQGG35Bq6zsSc57FZnMJHn0F3BoPM6Ao4t7gZQ/3To6vO0Y0xvQLSFnSHD/sSTy
         vqIg==
X-Forwarded-Encrypted: i=1; AJvYcCXtD47J2E5wuOx86PFkJIYVbr48AYj4f8PtAEG9fIJlpekv5E6XwHphbmJ1r1KNAoO5Gtt/QPLClAyTNIDtoQUDJIcgFHWFbTwCFg==
X-Gm-Message-State: AOJu0YwBnpGUUqa2N+ix+ufcbENILdp6ZrNIato4mDfwYd+0ptDKS3E5
	5dBIX7q0EPXw7uf1Pb5TCgoCJuRSgnTBPsajHGgAiclMQq6w/ptkLTWKhoRPrFc=
X-Google-Smtp-Source: AGHT+IG/qU9mPI294FpBYQRofozB7O115d2vD4Qj7p46wydaRcDYP6jx+aNWdRt0PFwJURKg8MApGg==
X-Received: by 2002:a17:906:aed6:b0:a6f:1036:98cf with SMTP id a640c23a62f3a-a6f60dc7fb6mr789750066b.54.1718696837944;
        Tue, 18 Jun 2024 00:47:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f6a1f2cb9sm463759466b.17.2024.06.18.00.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 00:47:17 -0700 (PDT)
Message-ID: <e46d3674-1b1a-4bd8-9f32-0fab6182e70a@linaro.org>
Date: Tue, 18 Jun 2024 09:47:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] ASoC: dt-bindings: rename ak4375.yaml to
 asahi-kasei,ak4375.yaml
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org
References: <87sexb3yfo.wl-kuninori.morimoto.gx@renesas.com>
 <87o77z3yeu.wl-kuninori.morimoto.gx@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <87o77z3yeu.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/06/2024 02:08, Kuninori Morimoto wrote:
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/{ak4375.yaml => asahi-kasei,ak4375.yaml}     | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  rename Documentation/devicetree/bindings/sound/{ak4375.yaml => asahi-kasei,ak4375.yaml} (94%)

I don't think this is necessary, but just churn. Why only AsahiKasei,
not entire DT bindings?

Best regards,
Krzysztof


