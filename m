Return-Path: <devicetree+bounces-171343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 01594A9E653
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 04:46:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6ADCD1898A3B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 02:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EA62157A72;
	Mon, 28 Apr 2025 02:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lessconfused.com header.i=@lessconfused.com header.b="BdF9VBkW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70537DA6C
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 02:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745808382; cv=none; b=nHW9sQD/luZP4/vU1POrPYPUNVOKuS37veDReBry3ETPhjujmP8ZkXxcgucF6PFOGq6DEdutlsweowc4L6Wf1hrxbOmZcVppzV86vegbR90ipI/UpNd7wF7yhh8vHN78pHPLev+6ADZKqmnWKK5Ao/Okc8AOcm1k9OF0uFInTy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745808382; c=relaxed/simple;
	bh=IfKzZySM9EUQJqp8130gsM0h0TRncUUI3ZQ+y8xX3+w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U/RUIt+YkHditgvY4FBsTv0DiM24kvCfawsSAvSNA2Bz2p5kuI06sEnDCNOt+Z2v/DLzVWQOnejP7V3UAhkjCHzsKkgoKjXfKB5jE232mdMQufci1vfTsiq0ehYk6gzUBKSujpTspcc7P8KK3Cyb4F8vGpqAFgc1UYRXh4U7OcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lessconfused.com; spf=pass smtp.mailfrom=lessconfused.com; dkim=pass (1024-bit key) header.d=lessconfused.com header.i=@lessconfused.com header.b=BdF9VBkW; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lessconfused.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lessconfused.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-301a4d5156aso5923345a91.1
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 19:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused; t=1745808379; x=1746413179; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IfKzZySM9EUQJqp8130gsM0h0TRncUUI3ZQ+y8xX3+w=;
        b=BdF9VBkWdKw+1BagUbbp5tNHDs26sfsUdiU8uiiRiR5qIGuvAc3uNoz5HiFkT2PTXa
         zY06/bRY7Tv60JzLbXDCQbXlOBeUz6dvqzk1ZP6FS0b4eALUiF3VW2VukbP147J9vEls
         +Dpk6KKwaQdPf/+9kkvqS/kU0d923tl29zsnE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745808379; x=1746413179;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IfKzZySM9EUQJqp8130gsM0h0TRncUUI3ZQ+y8xX3+w=;
        b=ZHZGhBvQ/VJH7LTeM8kTkan2AJGxL1ihYR+C7YnC2Jmc5zzdwAWcv78aGtYyHiEY4V
         0SPiZMHg44F9CdCKR1YIN3MLpVYAEaVPnpJ1/VqQdCD7h+L4v26aMj1iC33DMoCj0fJ7
         hF0MgczqL30+KNuF+ftS5rOUQ/b721nUJJyqW6oK/7ChbrZUjQO6s1s/7OpUFQhm6N4n
         OuOlju9JUbLEES6ZeP+RZmq65+YtjIO/YatPJPJwyqz+2xObC7ZSZAneNJlrq+5vkGmz
         3uunqkg/1fW0Xr9JiaV7HTbJv/dgIi4ghb7ev8gxeIQMnxrfouEC4UTZBsfWcTad0hDQ
         nixw==
X-Forwarded-Encrypted: i=1; AJvYcCWRV0zRuAjcY7DrADY3/6c3G0CYmWR6yWdVCbDGH+ipbtjLHqxxMUOLg+zHDhBsiyhpxRLfZxV5U8yb@vger.kernel.org
X-Gm-Message-State: AOJu0YyJl5SdKJWk8ez6M8FP3NcV606o0XxrZGJNyM8hYTHtrUA/Jisa
	mD/eMqgkeRdBIpbdBSYbs6nRB4RbqP6umoqklSL1nX69qLSkToind9E+BadXDqaoEptG79vo0Da
	kwqq5z+iR6j6moAiLoXPX6N5sskNo7GbzQn19Sw==
X-Gm-Gg: ASbGncv3BUNEaL+OqFRGnR5ADOc2REulzmnv77VH4Hqnho3+7Nz9FrA0OS6j8UpkC1b
	Nc05m7nPPxkbgZTJ8cAbdYerXOs1HLtc1NygwNYhx3I7OyiJWRQfZEy8qSWSi/Q+xy1NU/LJvMO
	SlOAMA6N0X7jK66XzUIAqKx104JTNFYiIKYuv+URGMFRJHWXIcy9TFsgA=
X-Google-Smtp-Source: AGHT+IFnzBUOX899hEhTQB+VFNRLl+PxXCq+IL10Ns4KASmw7qSvMl53RlFdnCNy3FuGcz9Ynut9j1cIj9JyY2lnZPI=
X-Received: by 2002:a17:90b:3944:b0:301:98fc:9b5a with SMTP id
 98e67ed59e1d1-309f7da6d2fmr14756992a91.6.1745808378981; Sun, 27 Apr 2025
 19:46:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250425203118.1444481-1-da@libre.computer> <CAFBinCCUQizs=XWq7knm-4=3=hzPDNee9RZj9LDD2Mi6DHYBrQ@mail.gmail.com>
In-Reply-To: <CAFBinCCUQizs=XWq7knm-4=3=hzPDNee9RZj9LDD2Mi6DHYBrQ@mail.gmail.com>
From: Da Xue <da@lessconfused.com>
Date: Sun, 27 Apr 2025 22:46:07 -0400
X-Gm-Features: ATxdqUGWEOGuPy-ymNWEfY9-YxSHKLuGJnDXSl4c3NrXQIsa-1uCWVa4Pkv940Q
Message-ID: <CACdvmAhn_25GWtOwGsChU-U3PV481_h6-pC3o3G4p7T0Z5dHog@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: gxl: set i2c bias to pull-up
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Da Xue <da@libre.computer>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Xianwei Zhao <xianwei.zhao@amlogic.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 27, 2025 at 5:11=E2=80=AFPM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> On Fri, Apr 25, 2025 at 10:31=E2=80=AFPM Da Xue <da@libre.computer> wrote=
:
> >
> > GXL I2C pins need internal pull-up enabled to operate if there
> > is no external resistor. The pull-up is 60kohms per the datasheet.
> >
> > We should set the bias when i2c pinmux is enabled.
> >
> > Signed-off-by: Da Xue <da@libre.computer>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>
> +Xianwei Zhao (who has recently upstreamed Amlogic A4 pinctrl support).
> I suspect we need a similar change for all other (Meson8, Meson8b,
> GXBB, G12A, ...) SoCs as well.
> Can you confirm this? And if not, why does only GXL need this special tre=
atment?

We've only tested this extensively on GXL (S805X, S905D, S905X). I
think we should enable it for all SoCs if this patch doesn't cause any
issues. I don't see most Amlogic boards implement pull-ups but I
haven't tested that as extensively as I've done for these.

>
>
> Best regards,
> Martin
>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic

