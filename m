Return-Path: <devicetree+bounces-43965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D81B85C036
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B22F81F2516D
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 15:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A80762CC;
	Tue, 20 Feb 2024 15:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u8AruOfv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36AF67C4E
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 15:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708443712; cv=none; b=kHsn35K6bjZ5MenlUusXDHOw80WNc7Nw2hkZyJl/YI0G5onEAP35QYmSKS+x01fSCommKvuANTkJbB2zSDA4UFIm1jy14OwD1hmV9bFDk2jXxMaz9LMqQbSK+RTi+q4GiuoQapq+owiSQNsC+TJQWyJXngImIxFLt/RySulvR9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708443712; c=relaxed/simple;
	bh=T78uSbL/6vBHmFMUx533JSz7i0LSC2jc2pTuwaqbKDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cxgmBQLDjO0jrSbHL/jCqdqObE06lWM5Qy1W8+6zjzUSrOnXxxGenxEICv4yPBxS2XA4nFjqFFoZh4x9yt4mGihlQ90K7KBpYI1hArm0QtPfJ+8MV1mmdegvARnU7miG+1866ZwGtw5Vl1pNsVKg3KPGVmJ8ZyanoL5ECxIq4UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u8AruOfv; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4126f4863f9so5712135e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 07:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708443708; x=1709048508; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+cFEpv5w2TPD8QTkYd4ABg1XTB4+ZdG1BlQCAicZJSg=;
        b=u8AruOfvTwBPWA7XghfXJbpi2X46ibm7crtvQrHa4h8DFP4DXhsFAxfWzjxEdukdhd
         56u8LAD24ALHAIdlo0lDhxLnLc2P6dF8uZbs5ZJfC6uoVBeTmjf226sAjJsCwrv2A+14
         5w8DG0SUA455m6WWlTElUuJMVprKkb5CbuV5Fo4byZZSorI/De+kNWXvuNSjKxhmjgeB
         7Sjr5HB1rVlavn/GxgFklk4qSnns8NJ0w2irmN4W6IqShxtAmgAnPDMaKkTHfYIAwCu/
         vGa70WLJFVo9beWRtBXvmdJ0knZlOtH84JB9LnnmhOxMgZexT+UhLI6VHFvcva0F/YC/
         rlzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708443708; x=1709048508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cFEpv5w2TPD8QTkYd4ABg1XTB4+ZdG1BlQCAicZJSg=;
        b=ZJLJdQDYdErE8bsGh5E/mAxsYKBA0MlnW/rae28OPfVODO7OGJqqVuZk00b6h8VUA+
         DEq9VzLRQYZ+05qDG7GG6MCQCSegnafUo/E0i1N19FhkoWAsy8LnwJdekTWDxIoz2C0c
         JF7TMVQXnI3jqKT8ESVuqKvv8rBP3VVCJjUWcH1tqN6x+5JxIy9IF6oGTnN1VYKQfY35
         MEI540iNpFWA/dkjU2LwHqLBzLxEUKU04UeQj4eM4ZP65yCF/BZKCEpKuUQFV0EZtNDr
         J2IjkENud8WLkn3Ymmryb1W/mP41xvck50FCpj8T+mPENh8kTBfdXalN5MpnYK6lR+MO
         KNBg==
X-Forwarded-Encrypted: i=1; AJvYcCUoDf4sROI53CaloABeQANi/w8Tt0Hbqy4Y0/WP61hsMmUg3UpMay1dayanLOsfIAgxRG35ncW6IMDvEmmqxi/eLBHa/80GjY386Q==
X-Gm-Message-State: AOJu0YxGhNC6+RZxvpxxd4Q5VQzMQoq1Ag9qT1R9feYJt0wtkdiZLqI6
	COUjE0m82Bnzuk9ghHJLDiBcrlqKw9aR+8AUuddf8cQB3LbQVFu/tXhCUOd7YC0=
X-Google-Smtp-Source: AGHT+IFI6EilanMRwVS5/UaPI4MAn95lhdZbLUWfuY0Pbto/1QNDPs2PRzsV8tlz9b+wn0au2Xix+A==
X-Received: by 2002:adf:f2c3:0:b0:33c:deed:6745 with SMTP id d3-20020adff2c3000000b0033cdeed6745mr11302397wrp.13.1708443708405;
        Tue, 20 Feb 2024 07:41:48 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id jl22-20020a05600c6a9600b0041069adbd87sm14775650wmb.21.2024.02.20.07.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 07:41:48 -0800 (PST)
Date: Tue, 20 Feb 2024 15:41:46 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Lee Jones <lee@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	"G.Shark Jeong" <gshark.jeong@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] backlight: lm3630a: Initialize backlight_properties
 on init
Message-ID: <20240220154146.GH6716@aspen.lan>
References: <20240220-lm3630a-fixups-v1-0-9ca62f7e4a33@z3ntu.xyz>
 <20240220-lm3630a-fixups-v1-1-9ca62f7e4a33@z3ntu.xyz>
 <738dcf0e-57fe-4123-af83-be91d8166420@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <738dcf0e-57fe-4123-af83-be91d8166420@linaro.org>

On Tue, Feb 20, 2024 at 03:07:54PM +0100, Konrad Dybcio wrote:
> On 20.02.2024 00:11, Luca Weiss wrote:
> > The backlight_properties struct should be initialized to zero before
> > using, otherwise there will be some random values in the struct.
> >
> > Fixes: 0c2a665a648e ("backlight: add Backlight driver for lm3630 chip")
> > Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> > ---
> >  drivers/video/backlight/lm3630a_bl.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/video/backlight/lm3630a_bl.c b/drivers/video/backlight/lm3630a_bl.c
> > index a3412c936ca2..8e275275b808 100644
> > --- a/drivers/video/backlight/lm3630a_bl.c
> > +++ b/drivers/video/backlight/lm3630a_bl.c
> > @@ -343,6 +343,7 @@ static int lm3630a_backlight_register(struct lm3630a_chip *pchip)
> >  	struct backlight_properties props;
> >  	const char *label;
> >
> > +	memset(&props, 0, sizeof(struct backlight_properties));
>
> You can zero-initialize it instead

I don't object to either approach but memset() dominates backlight
implementations currently.


Daniel.

