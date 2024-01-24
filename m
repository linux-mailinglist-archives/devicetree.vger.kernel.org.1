Return-Path: <devicetree+bounces-34612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B1783A50F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:18:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19235B26F16
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 364A417C7C;
	Wed, 24 Jan 2024 09:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="rKJibLBm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4E017C65
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706087889; cv=none; b=XiscxRn0ScMoisMpjSK52bcUY/hqv2niOzjNhteT6CkJNdX70QC/FnJzSjtug0UTHsXz5uo2LBYGB8KIqhI3Plsy71wswdlDp+aFe0+xNWHCbBWDmnRwroR3jaWLJVL/GngK4jPyIb7dzOTwzZWR64d84NHmmzoRsDxQykzy3Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706087889; c=relaxed/simple;
	bh=orTsqhBmcbn7tZ4fL70XT6Xh1HZOSt8se/WdKsrOa7I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c5x6mmNzzA7dlUmrWusY1b7nbcstUB+D7aRjQZ7NDpoxNDnWNHa+eCKy1/AebQLQTtVm2B648gnd2IeFGkofUsjcT1A48zLA1+1Ovvkqpz3geZ+9w5zbifWlh7EZeFw0sIp4c+dN0cdky2kVqivHEdNL/iUIkLekP8Gk0XgT/zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=rKJibLBm; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-7d2dfbe5363so2074113241.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 01:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706087886; x=1706692686; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=orTsqhBmcbn7tZ4fL70XT6Xh1HZOSt8se/WdKsrOa7I=;
        b=rKJibLBmoebxFdKJGa7ymiLjzPLkmTiwQhZyFuIr1UnGTVyq3yK+Tkw6Rj0cc3E4Nd
         7P6M5OoSj3EjKVGNwDaIb7RR1coaYuPOlcko3JwyftP6jyw9hkmyA6WFY9BbXLySYGth
         P1UCoSWfhbIA9Cu5H81VWqcY06rLM/ZJGgNWu2NUwBiYY6xDNlDEAVEdGZD6R77z2gQI
         8F6Zi/AXRMsOIeIfHrVqQ8dNkdzVPVvctGojtwPOjoi9Gr82Qi0629bRXI3IAkaBzKzL
         xYxVkBYjQYDk8iP5LXF/yPKfyfHiuFCBHmXaL0sq1Guygm9Gbg/Ul2fQW/xnNgMRPm3b
         3n0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706087886; x=1706692686;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=orTsqhBmcbn7tZ4fL70XT6Xh1HZOSt8se/WdKsrOa7I=;
        b=Sc8/Z+CLPFPXBxl53moyH+g8YovjGWQXkJoNvt75UZWk47wBrRQsXWT68kj3JhSvqU
         dKLcbxyXiR/YjUr51gH8MCLGdCPDZuGGoCd5ogK0ZQU0qq+YJdrQhYnQJXexcE+0fcPp
         rAiant88JNYxn5t1rZFQoLHauJg3qJn3nEVySngdufYh5dnCSX5VLrdBlxeZEKzDRtqP
         6VOumSPScUSS166dFwNhojZLx0rLLiIHikjwqxfR9ToEBYBhAmxZwqI2faGmTtmlyE7e
         NVpnbW/1Bq6dmBIjkIJC1SwHcWCI1AM1Upn7C1HHYENo9PCfcl9nEgGXcbjJEbubAVTw
         jE+w==
X-Gm-Message-State: AOJu0Yy1mdgJcTYtwWaaAZrcA3a30OBywAGaZDKXKEnBCiJEGRfInTYx
	NpWPYFj+EPB92yVd9Blk+uky/NBKdAKIE7j1TaRCT0gvsXPWkim2DKxgQlmdCaI0AbsBG8WK+/3
	QEjFhapX20uECXt7I5K4NlfhJ7986rI6RA6nyHw==
X-Google-Smtp-Source: AGHT+IHG877pBPzW7S0+BDJ7eaJIl3acuiydSUdBiq1MTPa5dUB/uz66EzX7+ygCjnIFntJm9W0aYf+boDvIi/bGWOE=
X-Received: by 2002:a05:6122:792:b0:4b6:ce08:cc76 with SMTP id
 k18-20020a056122079200b004b6ce08cc76mr3569517vkr.9.1706087886640; Wed, 24 Jan
 2024 01:18:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122182158.69183-1-brgl@bgdev.pl> <u5kvv3iip552yb5ykc4t2arfry2t7f34hwmemd7z6qfw677fs6@ldlwoycyacrm>
 <CAMRc=MeT08vUUqJmtVCP=kSUrbsoKFHP6gHgJPtqztC593oGpQ@mail.gmail.com> <2d36zymagbran5m7ggcmy2zmtpt7xpefgys7rebbwydz5bpux2@svlv75ctdow5>
In-Reply-To: <2d36zymagbran5m7ggcmy2zmtpt7xpefgys7rebbwydz5bpux2@svlv75ctdow5>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 24 Jan 2024 10:17:55 +0100
Message-ID: <CAMRc=McuutopBgxZysJTSoHTZ9y6zgQhkaOLNHxeh4Ri49hPvg@mail.gmail.com>
Subject: Re: Re: [RFC] arm64: dts: qcom: qrb5165-rb5: model the PMU of the QCA6391
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 4:34=E2=80=AFPM Bjorn Andersson <andersson@kernel.o=
rg> wrote:
>

[snip]

> >
> > Ok, so what does that matter? This is device-tree. What linux does
> > behind the scenes is irrelevant - what is important is that there is
> > an ATH11K module here as represented by this PCI vendor/model codes
> > and that it's supplied by these regulators.
> >
>
> I'm just making guesses about the design and how this fits into previous
> discussions on the subject of PCI power sequencing, because you didn't
> tell me what any of the things in this patch are.
>

I really wanted to limit the discussion to how the device-tree will
look like. I will provide a PoC of the full framework soon.

And the PCI power sequencing will keep on being its own thing - this
time using the global pwrseq as the lower-level abstraction.

Bart

