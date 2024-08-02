Return-Path: <devicetree+bounces-90548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4239A945C21
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 12:28:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F070628986A
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 10:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0891DC47C;
	Fri,  2 Aug 2024 10:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dus9GJwl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4541DC473
	for <devicetree@vger.kernel.org>; Fri,  2 Aug 2024 10:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722594409; cv=none; b=HvoWMDm702D2F9akDIFN+Q5047sGyzHjmJzLLQWyvJBcTqyEnaXl5Qi893fT0HDmu8JUFYksD+rShpHYIwYx1UnWznJvNK8uLJw11QRMMBgVFVl+2YAYz73lR+odLg4FSo7SJywSrN8RbtcoVhhQE7UObhbOAoWHK+VQdIj+Y7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722594409; c=relaxed/simple;
	bh=88EsHwdU6Y+t2Ieew7M7TZT/MUEah4z8QXOdX5NNz4Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tedLibSjDsrp2fvLD2ZI/OTgTPeyNrba/afA1B68gzt0B1xwzQ/G6CJgTZKWHpM+Jk+XhPZDuXISgixNQesh7ONm9n/OmIAvs34iSr7sGaC3u1vz6eGedJDwTXNX8JFKqQC9toXMuPD6V8DUHJFsdY3hU67yshw/ygFxYk1T7HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dus9GJwl; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a7d26c2297eso993292166b.2
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2024 03:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722594406; x=1723199206; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MZClsDIezKC5v39tjWHXTTLMvzNHfVoW5l/xW5hpIwo=;
        b=Dus9GJwlp1+Ifbn9sgMQy96Xn8bIW6khRhjvZX/HO5Z6hImwMkah+DUPI3WDMsJAbS
         7wfUsrs7aEXMkaPx/UNoHRL8DJ5g3nLhOCtt+HtqJkgHWwUgaut7pcHdVzjeUYZRr8Le
         tskPPufz4ojx6eey900TCDqzuQGnrt41vuwtfQc6P56ldGAji1E8cp6wvmIkZMYIH+s/
         BlLbxVOPZl9YQeja6kZfxHCOcqrv36kpxTthIcFYhYTQPmzbqj3joy0P06irL5pqRASF
         5hp4eBa3SSL86gfkGKyQxQ3AfjNkpn3iYx/vAROWM7zpdYkrMTehcR1HhI50EZWRGsbq
         m/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722594406; x=1723199206;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MZClsDIezKC5v39tjWHXTTLMvzNHfVoW5l/xW5hpIwo=;
        b=uEBs5SX6br5isXsSNat8BU/O86pBZHjp3t/wqbirPPoladCYSFn0E2kbJgaCA2piR1
         TEn5NoYlIwKDR/36nOFAeJWghyqJGexh4udaCjfMfPtMSevtYP/irNKhgAf1QVBVXL7V
         pCxtWPoxk33a3GnBp3tyUrlAOFybX5zKYEhkdVsIz4Wg58PUne8FUbDL5ED4pNt0qVd/
         hb5oUGXgfgr8Z9Nv68aS/VJvsWlI6wUCP1HrC1pbuY+af6uKP+NK5kHVuGff4uVcgumO
         tOp05Ucf40xgkc4kcgbIiHaSuIumGRgWKKJwR5YXGHlgvfWtkID0I973cUrGyQzZ14jw
         XQ9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUn1/fgCPN9M+Ko/p/hdQX5craumbX1quxtyr9hcn0FFEyK3ixiCA1xjjValiHaiHKuozJlLkU0kspJ5WSOKs2UYtAInNRn4b2R6Q==
X-Gm-Message-State: AOJu0YyHC/WEXY+LA+qWibSDW/r8OqnX56GEWlWD6O6OpKYlUHpnfR79
	owcYdhK4AjkZw62OlhojPC7Aw6tEeeVmlgxzqEbVqOia3u80u4+A0cG3M2RpbVo=
X-Google-Smtp-Source: AGHT+IFUaE5rrsfA9b5/ZoGfuC8RNmYZJr/mp6vmwHEmr3g3yDGqsB5UvpfbLaTZwfHnbynPxGVM1A==
X-Received: by 2002:a17:906:730f:b0:a6f:501d:c224 with SMTP id a640c23a62f3a-a7dc5100bbcmr210051566b.57.1722594406014;
        Fri, 02 Aug 2024 03:26:46 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff1f:b280:780c:5cd0:3813:8ce9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9ec4a8dsm81645566b.190.2024.08.02.03.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Aug 2024 03:26:45 -0700 (PDT)
Date: Fri, 2 Aug 2024 12:26:40 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Clark <robdclark@chromium.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: x1e80100-yoga: Update panel
 bindings
Message-ID: <Zqy0YAj74iM_9zJI@linaro.org>
References: <20240729205726.7923-1-robdclark@gmail.com>
 <20240729205726.7923-2-robdclark@gmail.com>
 <Zqi5rUQqWa9wZCva@linaro.org>
 <CAF6AEGvDJO7T8DMZLy7764AxO1fqPmUWDm2eh1gqV5T-sTfKOQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAF6AEGvDJO7T8DMZLy7764AxO1fqPmUWDm2eh1gqV5T-sTfKOQ@mail.gmail.com>

On Tue, Jul 30, 2024 at 07:26:27AM -0700, Rob Clark wrote:
> On Tue, Jul 30, 2024 at 3:00 AM Stephan Gerhold
> <stephan.gerhold@linaro.org> wrote:
> >
> > On Mon, Jul 29, 2024 at 01:57:25PM -0700, Rob Clark wrote:
> > > From: Rob Clark <robdclark@chromium.org>
> > >
> > > Use the correct panel compatible, and wire up enable-gpio.  It is wired
> > > up in the same way as the x1e80100-crd.
> > >
> > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > > Note that the power-source differs from the CRD.  Figured that out by
> > > diffing $debugfs/gpio.
> > >
> > >  .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 17 +++++++++++++++--
> > >  1 file changed, 15 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > > index 70977e9fa266..6f8d52c368a4 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > > +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> > > [...]
> > > @@ -669,6 +672,16 @@ &pcie6a_phy {
> > >       status = "okay";
> > >  };
> > >
> > > +&pmc8380_3_gpios {
> > > +     edp_bl_en: edp-bl-en-state {
> > > +             pins = "gpio4";
> > > +             function = "normal";
> > > +             power-source = <0>; /* 1.8V */
> >
> > Hm, are you sure the firmware sets it like this?
> >
> > power-source = <0> is typically VPH, i.e. the main battery supply
> > voltage or similar. This will definitely be higher than 1.8V. It seems a
> > bit odd to use a variable voltage source for a GPIO...
> 
> :shrug:
> 
> Board level stuff is a bit outside my area of expertise, but it's what
> made /sys/kernel/debug/gpio match for gpiochip3 gpio4 and it's what
> made the panel work.  Using <1> resulted in a black screen.
> 
> AFAIU Srini has a yoga 7x as well, and perhaps knows how to read ACPI
> better than I do, so maybe he can double check.
> 

It looks like you're right, I think ACPI also configures power-source = <0>.
Can you just remove the 1.8V comment then? I'm pretty sure it's not 1.8V.

Thanks,
Stephan

