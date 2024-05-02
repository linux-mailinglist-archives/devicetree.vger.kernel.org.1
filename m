Return-Path: <devicetree+bounces-64424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DC58B94E3
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 08:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF522B20FA3
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 06:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B53E24205;
	Thu,  2 May 2024 06:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tjHdj1sw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A671CAAD
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 06:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714632648; cv=none; b=InOyZXfoZtSS9GDROEzM5yQ4/oGrNDsJs14tz/uK9RORW21WOEN+oxSAwBvIWb98TxtOW/M2PLS99hND6p/quiORz+9Bavva9ljsHMfQyOwK9ztv3J8u/Zx4b2GbnR5qys0mLkjRXGQIqHKI3xzWo3oksRYRQwW6kX9ufIxXkag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714632648; c=relaxed/simple;
	bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sBEsl/zg7ED0pVd6E9ii1/D4539aF0AOYzhcel4Ut7O+Fv9771WPtBqdYKHTLAPYVhmr/HayC6U1JGiPM93S4SRDY/Qq4+jnV2zvY64IgbKKiQUF3wq4fNFXAMQ9KJQ3b1kxUIOvEONSnLDoJucDRG4hiU+1Joh0XIF7b6VALMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tjHdj1sw; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a595199cb9bso146748766b.3
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 23:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714632645; x=1715237445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
        b=tjHdj1sw4LmVaCMs0X8OaPrJwin9CaDOJYFyQVAgG+gu2hHuv33O3MklYUx7JV/Fp+
         GnvQVZPijjfRU+7ym1NRUWVmREVpSjyk1CLebYNQxkHmaXQwETj1+dtqb9wQaGReudTr
         sNr7k+tKIDMUQkVdteSt3VRxhOdGgHNzy5e9kA5bOCLqQcraCkakgNPYE1Qjgx1jfHqa
         EqF03Xvv0zJIC93xcKuawdemULKUt8e2zK3IjYuI0heJFKwUWaS1JSkwYIPt5/V52Alw
         ugRNaJl5YOO56myAgnqtE5NfCcloR/OhJVtEI9CwOoMPKohsnj3iVsFe3Rx3kejLLr+r
         Cxvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714632645; x=1715237445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
        b=DvK7JFAGNTm/Vj8LCJJKToHGL4wcW+9Q+Lm1DlxCaIxGGK0KZYo7K8pV/l3xGyOyRb
         dnQFAQnvV7NgaeuCjlKSyUuVD539HKW8XV7+vmrKzAkvIseQ44jBQgjyLpWIVN9ap5cW
         GItpmUDhlZEnFJ+cdNuqz9eoG7V82yDpyChcGhLGew/jpXc5wVvaxg/Kw7Q12MuWX9DL
         ckby/y3Xwt4gXFIYBIpbRdzCIY7K3HK2Ye7m73sHu+4BKkhRunU/EMhVidsQi8vUCOTg
         nNHg0gtpFBH/epVIE0DWL5OSVL/86vNe0VwR8qwEb5MK2XMy5smG+tw40uyFsEeHZ2fD
         n0Xg==
X-Forwarded-Encrypted: i=1; AJvYcCX5lCFEyhSfzNh2uZtyAtlOYX6bdJqZgBhHxy/BGG3EkKrG1GbiacNjvsGy+T06MzTWcUhPm6kk2p7xQ4kjdNoaACa689qL+lp1NA==
X-Gm-Message-State: AOJu0YxLFBNZiqAGEQEOzssvIBtLSmPsUZ2xsL5SCY7OGU8oehVTnQRC
	nxomm8c/RleM7cqcVTz5KIG4Qq8w9JdK03ubcnRkNTWIwmWCiUVbKs6+bt0ja7ZfLY2ouGtjrex
	l
X-Google-Smtp-Source: AGHT+IEm4hxtYeUITzy9KskvdEwvovQTQ7goiMjdbtjJXbgiREClpPvtcTNcEi0/QqCMuqRmWxzfgg==
X-Received: by 2002:a17:906:3510:b0:a58:eb98:6806 with SMTP id r16-20020a170906351000b00a58eb986806mr2983352eja.32.1714632644997;
        Wed, 01 May 2024 23:50:44 -0700 (PDT)
Received: from [172.20.10.10] ([213.233.85.172])
        by smtp.gmail.com with ESMTPSA id f8-20020a17090624c800b00a526fe5ac61sm179547ejb.209.2024.05.01.23.50.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 23:50:44 -0700 (PDT)
Message-ID: <29eebff9-04ad-4c4d-a3be-2f2da7a9a280@linaro.org>
Date: Thu, 2 May 2024 07:50:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: exynos: gs101: specify bus clock for
 pinctrl_hsi2
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>,
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
 <20240430-samsung-pinctrl-busclock-dts-v2-3-14fc988139dd@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240430-samsung-pinctrl-busclock-dts-v2-3-14fc988139dd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

