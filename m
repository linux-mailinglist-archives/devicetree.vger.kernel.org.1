Return-Path: <devicetree+bounces-64518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 035E28B995D
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 12:46:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA3161F23B8B
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 10:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57B761691;
	Thu,  2 May 2024 10:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CH+SzfyG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B0757871
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 10:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714646683; cv=none; b=spBjJyZvsP3KOr9JAMQZsisNaPAt4JX28g2QcelPpcGC/+rCDRyRUVh9LCB6QjP/HGAcIGLE/IZzJ6hHa1Lq3O57b+AHaX5m2kbaFrzJPP8QTlWe20DOs/5sCiXQ1Fat4CBy+tTyzrwjqIJo9K6jQQ6p/o38QuT7bI3llWmiRb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714646683; c=relaxed/simple;
	bh=fi/OCMIqTDub5+jBDReVifYWRIdllR8+TeM638lvtn4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rr3xsbqilBuM3SXZCj4Fbto2u8cYzdCIjbJE8Rb1HAk2KhwaOdz3G8EjPXlr8hgh89zSZb+fwE6Z3Ckn5pAC2fMZnvvjCxpmR26mdKNA6BFPgI+hT/DZl2SojuP02e34b8NkuJEQxPvjzPrBuGIoe6WP9NSJmqexnj8jtxDNtkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CH+SzfyG; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-51f3a49ff7dso380833e87.2
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 03:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714646679; x=1715251479; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fi/OCMIqTDub5+jBDReVifYWRIdllR8+TeM638lvtn4=;
        b=CH+SzfyGkremMeQfFMfD7LfbYchfqOzp+TsXZyTuHw/fw+dGg0Xx1srmLojULAVS4H
         3+95urv/DeZp29qsKTzmsXanW9vjXvRS9Rmlm6y6rwYy0VgpsU1uHMqKoNnPlqKc/Ld5
         PTULzwmA9SFPdeF4DP3vy15/JDG9xg+4MzrNpKdmn5dXAaN+275Mb+zHExctCYCEEdjc
         1i5kJq1N1yHAjS8/+oVqVUF+krySiT+NbIe+VOBzxy30ABfqljsJAAE2KrEAdJUV09PE
         2sQ8VWdZakIer9kifYfHej/PS+uGgo1/vwj/2SH+K73dUhqjjNllqp3U9URzjxTnoYxO
         e9Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714646679; x=1715251479;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fi/OCMIqTDub5+jBDReVifYWRIdllR8+TeM638lvtn4=;
        b=YH0b/uDJHm++p8eLBpcbm4yGIJQPO91DVqi1ggNxx3gDYZ0/KQXIlKwzZT2SKh4/nh
         Yf1oO6D9obOhO/9gvtJ3TNMPJ26IkKJeZw9ZdNQsOw+kEWcXtQcNYtmlWsmywlf1f7uD
         GXRb0RXFvm0NvpKqmJXWJan0JJCzkgsPbfvaFaG8KH7XO/3MFlusyxhfDTWWmXgXRiao
         9TLPg4CZbFyiWQXdotSQV1Q9/KMsyCS3yyKPKyIInnwly6aPX4JJSsFBkwT9dFccymqY
         lBAjhFvypzJQ7kFAeFvUX+VRkDMkNAAqbmql0urJq4Urw9Hf1KvF4gcE4IynpC53RExD
         8vZA==
X-Forwarded-Encrypted: i=1; AJvYcCVSWl3af7YF5P4aROXdtK9d2+xMphD2SpLIq02HWVmv7r3Sg8dM4tKL9jgT/mxU8HIt3io8KsV2/hS+RM/9D14tPSWaCSMSfdxQPA==
X-Gm-Message-State: AOJu0Yz4X/4CUqZ8hD3lBG7AL0d3xGshEJgY/0NYRvaPGdxG7tJivu1s
	Ew89jSA4ywC8RYXBSEPky/yX8O54b5q+EM7MBZQ8D7BQSC7bT1BBgtmTUgG0KWM=
X-Google-Smtp-Source: AGHT+IGaXB09un/P/kSPdKIqcS1n+4fdQZY3B+cI52Hb2XCW+mIX0BHn7LMa6S2DRtHJ1pzX35lO2w==
X-Received: by 2002:ac2:495d:0:b0:51d:8d56:6b15 with SMTP id o29-20020ac2495d000000b0051d8d566b15mr2868399lfi.1.1714646679369;
        Thu, 02 May 2024 03:44:39 -0700 (PDT)
Received: from salami.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id r8-20020a5d4988000000b0034cceee9051sm949872wrq.105.2024.05.02.03.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 03:44:38 -0700 (PDT)
Message-ID: <2287494109b15960db7de6217ebcf4612a8daac2.camel@linaro.org>
Subject: Re: [PATCH v2 4/4] arm64: dts: exynos: gs101: specify empty clocks
 for remaining pinctrl
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Peter Griffin
 <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, Sam Protsenko
	 <semen.protsenko@linaro.org>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 02 May 2024 11:44:37 +0100
In-Reply-To: <498ff366-b247-4586-b02e-5cbfba5927ac@linaro.org>
References: 
	<20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
	 <20240430-samsung-pinctrl-busclock-dts-v2-4-14fc988139dd@linaro.org>
	 <498ff366-b247-4586-b02e-5cbfba5927ac@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2024-05-02 at 07:51 +0100, Tudor Ambarus wrote:
>=20
> All 4 patches could have been squashed in a single patch as they do the
> same thing, but I'm fine either way:
>=20
> Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

I guess the patches had accumulated gradually over a period of time while
more CMU support was being implemented.

I'm happy to squash them if that's the preference? Krzysztof?


Cheers,
Andre'


