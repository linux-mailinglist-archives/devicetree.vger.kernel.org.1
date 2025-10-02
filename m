Return-Path: <devicetree+bounces-223412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E03BB4768
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 18:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FB2F3A6CEA
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 16:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE1124A063;
	Thu,  2 Oct 2025 16:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bM+LeLbC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED982459D4
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 16:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759421712; cv=none; b=LbmcGq+oHAL2JN2psgFd5FR2rE6xJNxOOCnyDGYxRRlCIBzSl5JcT7NmGnBr0P1qVqP5zFUX1ds1K0qaY35utXWeeDlt1SFIhUv0kcSyPjh6F6zG7hxR/5OalbpBr0L9P7pPza0YHnJQAASpI6c/ilDrs1NpuU/Edu0cLN/58Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759421712; c=relaxed/simple;
	bh=l5OAi7HzDsDRfIL/UoL9RRK/6kinPrW4yzeqvaZDp5g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RmKZrctEkMCgyZ+Ujue2t9964tO00tHKvvESMBu2njf3rt5vaiB7HinwsJMg9d/gZaebif14Q/kHwUIPqLqi0zsshK15v2xprhZD7POj7loFfgcqVnq00+/33mMNFSkvfA42VlJzEnlsltY4b/UPJ6U/rh3vqOSZIE8uTNrr/4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bM+LeLbC; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-32ec291a325so917653a91.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759421710; x=1760026510; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbCJESHJ8jqO/tcwMWV6sW/NG3xdKaEr0isON+x8Jhs=;
        b=bM+LeLbCFBvZJuWdwS82NQ85eyhROqbgwavD/nx2IQ/E6ZP/s9zhKcfKFotyvSQVR8
         Y+IvgkQVodYtLJ2g+uJHNokxI4eKZOCp73m/7dqvb5Nr7ksOZuUix4D7CmtTZfoOaucj
         dYJ3+i85k3sTcxkrTT+BjWi+qCDrEQmCYRCdlvoH1mO3m0hEhsZcD8oW7nbbLnw8ZP4w
         DI3qcue8a80vSlhDMiudweRt0ftUHWWXBqYrIUvuujY0Swhv5XtQ/swW3KeEA/VZ4MVe
         E5MtPGewTghQIqZoJv/ex47GZtKc+mg6k7pOxBni5CnEiiZHg0YyFuq5Dgx9jzKwPQr2
         S6Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759421710; x=1760026510;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qbCJESHJ8jqO/tcwMWV6sW/NG3xdKaEr0isON+x8Jhs=;
        b=Zn/oOcgNydU4TWFzkYffid3xosSnzfcgFcInyFWjcDclAJoaXThp2o75Tlv1+ESMPv
         Qleh2oyxvFEQoeRZ6X2sXePfyUUHlV2f21wKu0IfxU8f/WE5HfFxyuK5kG8wv04GVcSF
         GY4PUBMIxAh8rLNGvv25Kr7b+EPXM2xD3Xu+CvHYTjY4A9NVPme0CxQCRwL++qvwCcvE
         5OOfvwhZZ/KpFyiGsCUiMx05F0LI2YHnqYlkI+vXrNSHp8oHk+mKJznxvCZhT/cK8tz1
         /FSyTvYKB6lgVkhUYEqCGtOc/NzHPSzhuKi9BcKldvPNOgPsxFlpCq0sWF3BF6UX6vxj
         zMkg==
X-Forwarded-Encrypted: i=1; AJvYcCXD0q10T+fGzzFQC/AuKtGJNQpS0ulNjtxP9xRc/Jx05nqz4IwnTIzHwXDb/BbHlXL5iuL+ZV+yvNWr@vger.kernel.org
X-Gm-Message-State: AOJu0YzzScXkIOh3bFchdFbvtIrLY8ghrsDUW7QTZ1OwA/W5Z7fKt+yF
	fv+BqpNSWWJupMI1JbZB3E9l/Ji53qUoi2lw5cvmSC5IIGnmgrm+mLt+u4mjp3vMQee0kcbS3cF
	I+EmX9/YQxGS9r18N6UinhuMILKnVazw=
X-Gm-Gg: ASbGncsdkwWF/Juqz+J8aMiMSymlRiSRt0/361mIFFlimiUygUwcIEBwGJvX6qvPS7Y
	+nNuBZ1XOl9hRQ+d2lWQLkpIHfHxxYEkx015UIwvK784ppt68nWA+mMPnicdptIYF7tfqIO+N8F
	dU1tyYm2lrOFeH/Iq3R+ksQ/cZKWnbyYckraMzDSl614/hxNDj5gjD0T68VkGdnD5xUf0m5SrfH
	FeyGCDSbG07yZrgehSghKtPb36V244=
X-Google-Smtp-Source: AGHT+IEf/mVaOwfwTajphWCRjS6OZaY41dyU0wDwW//TvmvlN1jWg/44MGVLKIueiWV72E2HWtd5YlRbRRes8q78y1U=
X-Received: by 2002:a17:90b:3ec3:b0:327:f216:4360 with SMTP id
 98e67ed59e1d1-339a6e749ebmr9175147a91.8.1759421710377; Thu, 02 Oct 2025
 09:15:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821083150.46554-2-krzysztof.kozlowski@linaro.org>
 <175589097127.178922.52729764188594464.robh@kernel.org> <20250825115939.4c1ed3b7@jic23-huawei>
In-Reply-To: <20250825115939.4c1ed3b7@jic23-huawei>
From: ChaosEsque Team <chaosesqueteam@gmail.com>
Date: Thu, 2 Oct 2025 12:20:07 -0400
X-Gm-Features: AS18NWBZEPufzTSyN91BU_EyEGNa6W6EgE6V8aWkwSThLDVcbiogsfNGWk9PRA4
Message-ID: <CALC8CXfG1XrK4-HMP=8pRYhEHNY=A+J-s5rKr29cDXNNAUMkJQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: iio: adi,ltc2664: Minor whitespace cleanup
 in example
To: Jonathan Cameron <jic23@kernel.org>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Kim Seer Paller <kimseer.paller@analog.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, linux-kernel@vger.kernel.org, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	David Lechner <dlechner@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Russkie, you are a raycist

On Mon, Aug 25, 2025 at 7:01=E2=80=AFAM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Fri, 22 Aug 2025 14:29:31 -0500
> "Rob Herring (Arm)" <robh@kernel.org> wrote:
>
> > On Thu, 21 Aug 2025 10:31:51 +0200, Krzysztof Kozlowski wrote:
> > > The DTS code coding style expects exactly one space around '=3D'
> > > character.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > ---
> > >  Documentation/devicetree/bindings/iio/dac/adi,ltc2664.yaml | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> >
> > Acked-by: Rob Herring (Arm) <robh@kernel.org>
> >
> >
>
> Applied. thanks
>

