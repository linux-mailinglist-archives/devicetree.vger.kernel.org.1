Return-Path: <devicetree+bounces-138479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3F3A108F1
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:17:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3793118847F7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44898528E;
	Tue, 14 Jan 2025 14:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jYTwnVyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8D317993
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736864269; cv=none; b=abQkq68rMLnylFxNSxeWFcb1OX6aD4qI5/6PrId/h/w8Ekm3n2yKPBtj2pWEDgPx7DJh7AqBasq9yf4T93dPj99PrIyj3l471QRoKr5pvONOyyAdcC8ajOd+g0Akw/5XesxF6Gf1PCTITzRhrvD5mchB+a/VIOwoWZMBSHzycU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736864269; c=relaxed/simple;
	bh=O/WRM1ywqimJ2aPAr2Tip0blUkgzcD//gX/qp+tJeTM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j1yldbgOlTA/2x+bjoVu7xGsTbbKoIkWovQuTjHvzQuuzwGnpa/3Owyk8dOiOpIBxsKlWIe9UdOmQNLLyICHwrajTMULlcuogHOsWkzAqzfjQ0u6Xb9qgdLPWNrLpTsZUNMfw8D7I1kFsMarevDCzAygDc7Hxtwb44wgDbH1yME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jYTwnVyx; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30036310158so43787441fa.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 06:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736864266; x=1737469066; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O/WRM1ywqimJ2aPAr2Tip0blUkgzcD//gX/qp+tJeTM=;
        b=jYTwnVyxr54/9zvIEYInoB/PszQ9wT9atZLhsMWKS3w+qWIppwB5nwN6v95Y4cYlcI
         CPkoOnDs8q7ZZI9FmBpn/hCb39hknH9oSP6w4+qiMaZmI9Iv9hf+lWAaUEvX9FeJt6im
         BhyOZ6TiVZSO4HUUFSyZY415Bfn/pRHz9RKfVXhqZCu5N0rqYLMVlOyIxdUXGEU40jni
         wrj0ozRiWKMUiQ9VdR1skkrDWbDfu2vZFXYJDmwOuvcCs3nm8qVJXXhkAzkTb6FF5H5V
         FQn6IG98aurAponCo44wldB2K7y70ImdNFIYYrtx1s6im/FLgm5TgnTu/mEZJL3uynF4
         fu5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736864266; x=1737469066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O/WRM1ywqimJ2aPAr2Tip0blUkgzcD//gX/qp+tJeTM=;
        b=s+k0/TuzIG7ZWtYKzWaXthl8fhYoPaTEivKc+0IfMQKzfGPrUpSH8nr+DCcGnDYCxr
         VrswiYmtFGk0deS/vdPlfZDaPVNBDe5gim58SE1n1P4kq1ciFHJRFSdBdOscUe5Yk3wF
         aNNLWxNFTs4hhHCee7IBIIjC/H2h9x5ndmJfnAPU3VeowixClqmuG2ZVr5bbRbeDFjcp
         mXcjH2yiT5FbX0wFg8YZlS4U78aFKPbsWiCHZHJWWyoIr8XWJoWb70z+dvGHyRKGVpLe
         kI2y3ysdsOgccYxv2FGABDC9+/ULbHW/uhNxVqSERrDck5zS8Bx0mQ6BOd9VxFNFc00S
         26NA==
X-Forwarded-Encrypted: i=1; AJvYcCWwe14SwLaEwk7geS/3MWFyoQkk6T7lG5/8Tq7wWLRoe1KgK1JW4vExXXHtFV3fLK9ddc+xY3wjSnJi@vger.kernel.org
X-Gm-Message-State: AOJu0YwgzuThyfvMhL4RK3YMzoiFx+4NCp0fzilgWbGpu8I/8N1rvi0E
	8jMvK7aLkCL+IiustGt7yqRSdaFNjrUmuW4YZlyLevvVM+fXuYVebBlArE8hKoF8oSVaV5oAoUp
	5YbZnKqSlm23n3uYmMoTvI44qo4aFoWxcf1iUyQ==
X-Gm-Gg: ASbGncvFq3+h1XLj8tlu/g8BaDd0VJ09fGdqT1VDuIKSOkdRL5k9b4B/QjEytmfz2Qf
	jFX7rrvbzh4EDgJ+aCdObXFAYcP6LZ1mzKxvA
X-Google-Smtp-Source: AGHT+IFPFJTmNosakpUt5JU8cN5nBrvR7+LTD4fCMkRrHXEcHL6oNl6Fgp0ggW/W8QtR1cS9S/mGb7h5l9NZcPFPlko=
X-Received: by 2002:a2e:bc1c:0:b0:300:33b1:f0e7 with SMTP id
 38308e7fff4ca-305f45478f1mr79313431fa.10.1736864266081; Tue, 14 Jan 2025
 06:17:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250107125836.225447-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250107125836.225447-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Jan 2025 15:17:35 +0100
X-Gm-Features: AbW1kvbukVMqrBajLgYQt1hKpFELkNSEFH3GzkQaHu95dam2b6lvaqOS79Rlmww
Message-ID: <CACRpkdbJziJ0kKqZLrBuZ4G5HmnJbL5+j8zJLQ1H+q8NE9P3oA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Correct indentation and style in
 DTS example
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Michal Simek <michal.simek@amd.com>, Manikandan Muralidharan <manikandan.m@microchip.com>, 
	TY Chang <tychang@realtek.com>, Krishna Potthuri <sai.krishna.potthuri@amd.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 7, 2025 at 1:58=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.
>
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks Krzysztof, patch applied!

Yours,
Linus Walleij

