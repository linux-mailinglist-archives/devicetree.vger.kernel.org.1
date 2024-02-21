Return-Path: <devicetree+bounces-44303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4575D85D6AE
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 12:20:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E79C7283492
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 11:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F9743FE25;
	Wed, 21 Feb 2024 11:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h+AOcz7e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3564A3FB07
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 11:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708514413; cv=none; b=MvXCWiTodQaAN0m0k7VbpxVzmyUPcpxkTqo0uL5S8GYcTnjJId825UX6RZaRkqzdjnoSZhyQtkNG3jYwwfgmwicAzPubc4dzYNM8SfcDOFcIX/1yvKD2zdFeu5UQzQ1P33XnN211zGWdVUuqQN3C3Lmp3qAvuDvHv30I/5jVleM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708514413; c=relaxed/simple;
	bh=t6Jx31rq5xX7REiRG38utqdz4b1fpoQ9OdaCX+5oH6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ky/n2i98yWKVHbAv2T+o4l+8/kwTf3Eg8x3sjR8/zIGjFxoqBfsdUK6YmKr1K4X98IgIueKFq6v48/XKxL9o+OtSX4Om2BoTu9jLDkopcIcFpT7sB4utsIs0PSfT+NwS+Eld0MqXnZ6yKPIInVgyfQC1LyurrkC8r88r9+ihO0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h+AOcz7e; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41272d42207so7362425e9.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708514409; x=1709119209; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3IS7GmUQyf4Yyr+5gHh+d/StyGrTtVUVJakHsBQ6JDE=;
        b=h+AOcz7eu1boC0vHSNLbMnZgvn8VVxWe1wSbQEy1wox8oosxGCNa4raY1wzMV4IOSd
         aPKR75PgDzTv+Af91Lqz5Whe61mtVnI/zty+irFslmn+J5JiBxgGwWn+tNe4OZTJNWtC
         AI+LAYtSMxiatdMs0HD5WPIJowWp+3ghSHLAAMt+a+9F/9Meq1CERhOnCsblEtTxwh0w
         cHMiAC9sHw/Z2fb41YEJIusiDkRgvyCe/kc8SvpH24kkHfW3MFdhooB2Ro1QtuBgBf2o
         IY0VYneg5yn+cb5MgsY2UPiYO4j+4mDPa17UCa2EEVAICPYK/DXjqvCReV/J4f6zoUFW
         TyNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708514409; x=1709119209;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3IS7GmUQyf4Yyr+5gHh+d/StyGrTtVUVJakHsBQ6JDE=;
        b=WzFXuLoUp7FU/rFbnUfeH0Wp7br4A/F2bxDUPEEDHziY9/XL9Gn59BbSYQ0w7yFWEy
         1R22DfkV3psc4o+Ji1XaHAFSNhwTuNQTHSaTwXzQNtme9SkMywCtyw/2dCDsqjGRJl/1
         fBnYnEBJO3XA11Br73XwUJJFjfbUMjuUg5r7YQ5g2cjxX785yTz6e0sdTm3zx5UbacLz
         jX3+plRUhdYA1m6Nvslis967wEIHK69vfw6K+6sro2HXYj3ftE+XBBOONZs9x47zgGoU
         DEAzV44bGghe7b7/xrPNNZkquT0Rz5TbUgD53kjlufXJaxeWb7AF126UdY6BmAyDzk4H
         3JZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRNBRaprm8BXAWHixp3c9ccO7qK9vM2bfwZcF/Q7AOqE7ZwQE1QCT8dmfzZRC7IasL7CH155G2fZ71EXAS93NE7O1EoxTYMJukew==
X-Gm-Message-State: AOJu0YxE+uJg5VDzalZoX5ciUpO9mHtiXGeJw2Z+3v+Yu1GJQ69xkrcN
	hSLZ+I4ZmsfSIAPi9f4VEFHzEPNwUhBbk/59LJ70QeoK5J9uYTLoP/6BxMfuNOA=
X-Google-Smtp-Source: AGHT+IFiJJDtB9EWh/YWcgzszDlU4x8SjMxMWN9afl/QitAi2hghHKAv2cmSNEg07ItVMniNr+hMeA==
X-Received: by 2002:a05:6000:1841:b0:33d:839b:113b with SMTP id c1-20020a056000184100b0033d839b113bmr630280wri.15.1708514409453;
        Wed, 21 Feb 2024 03:20:09 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id bn7-20020a056000060700b0033d3ff1cb67sm11304851wrb.66.2024.02.21.03.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 03:20:09 -0800 (PST)
Date: Wed, 21 Feb 2024 11:20:07 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Helge Deller <deller@gmx.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	"G.Shark Jeong" <gshark.jeong@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] backlight: lm3630a: Use backlight_get_brightness
 helper in update_status
Message-ID: <20240221112007.GJ6716@aspen.lan>
References: <20240220-lm3630a-fixups-v1-0-9ca62f7e4a33@z3ntu.xyz>
 <20240220-lm3630a-fixups-v1-3-9ca62f7e4a33@z3ntu.xyz>
 <20240220141107.GF6716@aspen.lan>
 <5027630.31r3eYUQgx@g550jk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5027630.31r3eYUQgx@g550jk>

On Tue, Feb 20, 2024 at 05:43:32PM +0100, Luca Weiss wrote:
> On Dienstag, 20. Februar 2024 15:11:07 CET Daniel Thompson wrote:
> > On Tue, Feb 20, 2024 at 12:11:21AM +0100, Luca Weiss wrote:
> > > As per documentation "drivers are expected to use this function in their
> > > update_status() operation to get the brightness value.".
> > >
> > > With this we can also drop the manual backlight_is_blank() handling
> > > since backlight_get_brightness() is already handling this correctly.
> > >
> > > Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> >
> > Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
> >
> > However...
> >
> > > ---
> > >  	/* disable sleep */
> > > @@ -201,9 +202,9 @@ static int lm3630a_bank_a_update_status(struct backlight_device *bl)
> > >  		goto out_i2c_err;
> > >  	usleep_range(1000, 2000);
> > >  	/* minimum brightness is 0x04 */
> > > -	ret = lm3630a_write(pchip, REG_BRT_A, bl->props.brightness);
> > > +	ret = lm3630a_write(pchip, REG_BRT_A, brightness);
> >
> > ... then handling of the minimum brightness looks weird in this driver.
> >
> > The range of the backlight is 0..max_brightness. Sadly the drivers
> > are inconsistant regarding whether zero means off or just minimum,
> > however three certainly isn't supposed to mean off! In other words the
> > offsetting should be handled by driver rather than hoping userspace has
> > some magic LM3630A mode.
>
> I could also try and fix that..
>
> 1. Treat 1..4 as 4, so have backlight on at that minimum level? Probably
> wouldn't be noticable that brightness 1=2=3=4. And the backlight will be
> on compared to off as it is now.
>
> 2. Decrease max_brightness by 4 values, so probably 0..251 and shift the
> values up in the driver so we get 4..255?
>
> Or would you have some other idea here?

I think #2 is the right option but shouldn't it be decrease max_brightness
by 3, yielding 0..252 .

Only nitpicking on that because, given how old this driver is I'd like
to be conservative. I don't expect there to be userspaces with magic
LM3630A modes but there could be some that assume #0 is off! Hence I
wanted to make sure we are on the same page.


Daniel.

