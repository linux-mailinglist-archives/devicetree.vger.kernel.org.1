Return-Path: <devicetree+bounces-112440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8749A221A
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 14:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14859280BD9
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 12:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11C31DD0DB;
	Thu, 17 Oct 2024 12:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="dNWL1j/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E83A13CA8D
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 12:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729167683; cv=none; b=OEaq5tQWm+UtenrlR8Oqt4wL9Tr3HQKlKqzmN9kg0gy5WqX9O0fe54N9cuE5tImL36KTqFBqerVdyX6ng16SbhCuZ+ZRsnEFklYtMEucsBjpWPfLmZeLfwCoGoq4rS0Az0uC/zKPX84O0e5YzK508jvyrMZj1QastPWK5xgA4lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729167683; c=relaxed/simple;
	bh=TLpRYug+jRkcc+6bUgddKf7OkvULgear2yUqG7Xkl4E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mphWSuW2f40OqPYtQ2jKFuFd391RSXRdgfceHMoNdmVMS9ZfaNvv9PcQwYR9yEUeiO6EZXn8aD2hXH5oR3oTJMcQus2nY8TzvsxBz2QGn5kgMgJgAOHDCfjyz1vi5VxbJJKOxLITRjr9No5yaF35rY2qg0fP5vanCLYqddI5avg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=dNWL1j/w; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb3debdc09so7843291fa.3
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 05:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1729167680; x=1729772480; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F3JftuYkmaOD+FTGiAk1je2e2cGUJTRB0pcGXg4/Rqc=;
        b=dNWL1j/wQwjiDOQ1QJt492EYY2jAWzieG9QX8uvaSRFshPgnJfXRJ34BzMX9v+t8cn
         br0OBMlBA4wGv/HQU6suXN31H4idv7Kf/BnGtOh/zPgIFOnDDQAknqbXvoeebuAMCd2R
         ykd1i3y8ylt+nQhlc895IcqJMmzDnacC27G8nLi0vGHc+AgPDoJRxc3ixg5BBHYoBz5V
         MY/uOx2q3npbVOyhInHKqChu+I7fxNEv8Ln0+FN+cuI96PjK5j0pm18uM0WJ2976mxVN
         hjXnBmQ+8ZnHutHGtwLAwZreua160hFF2TJQRP41l02hEV70Lu1Z4PptxTiBx6bvkJcH
         3m3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729167680; x=1729772480;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F3JftuYkmaOD+FTGiAk1je2e2cGUJTRB0pcGXg4/Rqc=;
        b=PZumlwb1ZcOOKZKuB0biGu9CSS/TBRs5+HKt/h4yuChqqYLMfRtdmrjE+VIeTqbI2y
         bsSiLOLbScZCi3xo5ybURSw76sEPsicrl+ube6wWMpNJKYXRQL1ovzKEkYwcSCVrQ2ai
         c+iy0zHKabjqtdXrEDwU9GDayexwDSuQbEwJeCHA9I38Y0LuDvPzMEAaGVvyMlsvFz3A
         3Znxh5QaTg776DVygj+CBrOWtQq1chdDk3Y0+xwuU+6hha6Nl0Jpuwwyk2lc0EF7/1Mk
         rIbmh52xd5HNfHs0KrmLZw8aMb5aBceuJ6SBCu06fIz/a1dJnQ2iEB8kcbMLhhpTX/4S
         wlvA==
X-Forwarded-Encrypted: i=1; AJvYcCVaPIbzaOilCfNDoiSzR96xJhZ1scACSHiPD/lTeJX+6vzO2GqwPZdWA9y9x47tsywMpth1/MWgqAdo@vger.kernel.org
X-Gm-Message-State: AOJu0YwpO8PES5AeIUEN+U7kJvDU3ZGCuNzbIGFqB4mFjBHE4EzjUgYn
	PLpJ0u+iSaMeuo16fjCZwF+x3ZzVMjhNvzw4dgOMZiW9gmk/Oo8+jxFTet7AXEJHZ0VjeoQ7yzT
	FJWOTzVzEhKWxbssOxtMiUl1VxrHVp5Tz0G53+Q==
X-Google-Smtp-Source: AGHT+IHLGi5nxbb1txYuw+MIyNFfnuRnXLKNo6JruGArclVxzTrWsQKk8UE5+NJPE7ge5jI3Pag/GlMt2/gHbT4TstI=
X-Received: by 2002:a2e:be21:0:b0:2fb:50e9:34b4 with SMTP id
 38308e7fff4ca-2fb50e93dfamr72979481fa.8.1729167680258; Thu, 17 Oct 2024
 05:21:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241007-x1e80100-pwrseq-qcp-v1-0-f7166510ab17@linaro.org>
 <20241007-x1e80100-pwrseq-qcp-v1-3-f7166510ab17@linaro.org>
 <ZweftESPrJNEsqGE@hovoldconsulting.com> <Zwj539cN2DJ7nd3A@linaro.org>
 <Zw5fzNZ_xCwPyw4G@hovoldconsulting.com> <Zw_dE1rQ-Ljsh-sY@linaro.org>
 <CAMRc=MfUEfKHkAVvtGODxvJ-BdL+kX7uDgW+1y4QW3Kc5mpX+w@mail.gmail.com>
 <cde15d83-6059-47bc-94d6-2a88ba95e5ae@sirena.org.uk> <CAMRc=MddPDFaw6vYo1FzXHbUsLyr2QKT6oy2i68ZCdJdFWCJww@mail.gmail.com>
 <a14e5488-d0e8-4f04-b419-0b4c566219bf@sirena.org.uk>
In-Reply-To: <a14e5488-d0e8-4f04-b419-0b4c566219bf@sirena.org.uk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 17 Oct 2024 14:21:08 +0200
Message-ID: <CAMRc=MeYDi0_+y7a-KQhh=ft4rstng5H24LJBgsJg1BdXfc-nQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
To: Mark Brown <broonie@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>, Johan Hovold <johan@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 17, 2024 at 2:01=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Thu, Oct 17, 2024 at 01:28:00PM +0200, Bartosz Golaszewski wrote:
> > On Thu, Oct 17, 2024 at 12:59=E2=80=AFPM Mark Brown <broonie@kernel.org=
> wrote:
>
> > > Fix your driver to request the supplies that actually exist on the
> > > device rather than just some random supplies you hope will work?
>
> > Let me rephrase: the device has this supply but on this particular
> > board nothing is connected to it. It does sound to me like an example
> > of an "optional" supply. Do you have anything against making it
> > possible to define optional supplies when using the bulk regulator
> > APIs?
>
> Oh, right - please if asking questions ask a complete question rather

Sure, sorry.

> than having a long email thread and adding an "any thoughts" at the end
> which makes it unclear what the actual question is.  In general the
> expectation for optional supplies is that you will need to do something
> different depending on if the supply is there, that will tend to mean
> that it's fairly natural to do a separate request for it as well.
> What's the concrete use case here?

A device is wired differently on different platforms. It requests a
bunch of supplies using devm_regulator_bulk_get(). One of them is
unconnected on one of the platforms resulting in the "using dummy
regulator" warning.

Concrete use-case is: make all but one regulator mandatory when
calling regulator_bulk_get(). My proposal is extending struct
regulator_bulk_data with a boolean flag called "optional" which would
result in the underlying _regulator_get() receiving the OPTIONAL_GET
flag only for the regulators that are marked as such.

Bartosz

