Return-Path: <devicetree+bounces-118651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A4F9BB160
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:41:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 596361F2318F
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F93A1B2EEB;
	Mon,  4 Nov 2024 10:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rz9PfVL9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCAE1B21B7
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 10:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730716822; cv=none; b=m817U/v3UXXsRPjWRxn0wVXtFU5zbms5d2PFEwBIntInDsNmEEhyPqmOuKqBkP7O6xHkTIRm4ptla0MTgGRfMjqIuMubD69F7JbL4x0Ry0Xab1GkfqQzxBzFWWVeqWbr3vyIWehcneRU8fY456QoVJ6XpcTaDAtUEnAUDmux7Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730716822; c=relaxed/simple;
	bh=7MlS5116xCxsKJICMbPq34AdWK+qVOAQxwXcDpM0OtQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KNjpq8LPiCPUGXU3oP44/OP0V6Imutunmg1y8MgM7941Lcfk6RQODRMIC+fTzuCEHZI1bOv2iB/XPXjxTMtTGv1jlgTAOohGxzF5fp0ikx/8JD4tCEdKQAe8zk66YywnwiWhonuoSpk8zj/WEZrQ3Ero1DpJv27ml1cG3g448pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rz9PfVL9; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d4ba20075so2762253f8f.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 02:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730716817; x=1731321617; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZdBPEXuQ6TCrGtpV7ru2rkrfN+SS+hsGU1lxxgLvvcU=;
        b=Rz9PfVL9mW2t0JCGDdfATeFBefgBGDDgb4wHffUWo3nQQ7UyKOOAP9PGlQakgf83Xy
         N1mDqaIewJF6jg3kACQmSZgK/TqFJgPfYA4qn5fZfvuLXXJVltxKWOVgES4sXcLYiE2g
         KLk2cPUPS5cNQBK8o+IQTAXvvqIqFn/sWpwd5fv11hVxJSmtbDI2qC9y/zZhooPR1oVV
         KGjcKRv923zg5D5RTXry3kogBNgW4IUVvt7N8G86x6gcU7UmCZgHwWzbsXiQyKeeaPeV
         DtiX0wmES9YzYnPyn9RNtbvMenBHOpMrkij1tapKERpiqP7qoLKUuE7nnw5XkctD9lKz
         Fm1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730716817; x=1731321617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZdBPEXuQ6TCrGtpV7ru2rkrfN+SS+hsGU1lxxgLvvcU=;
        b=Y/CqEaVzGf6mvezNCrMhG2kztmAht4u4UCjc0YT5xKsCwZ22X0+MbGAylR1Dle5VVW
         kI/Q8Siyjgf2JC3+nbj1UBOi5OXxmM3IxwCwjSxxPUMyVfJk8rc/4GT15M7d7LuXLiT1
         9XF16lKPvF1QjzwO7Eeaqixm+6OJtVuyMDADV0quBgU+6+2xIlXmQeMlJChTYPt4jEkz
         QZnKn0yGPB+bRjgA8Lr0ve2n/YpNH5gssKKBiI79YDxAzGnZ3eJf60T3AfDeu33RTQKm
         TGE0/AlOYa5hHNBNFXfcQ63dKDj0dqVqS/3NQSHXbmLUh7Oc9+LmtojkZ7PaObMh7WX/
         uXMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHim8rPlzmglXf1+WgwWcrvqAwyzjxfEdQOyH7jSqzdasG+vCuZffE66HjOpMV+f0kW9xlbqWYwGE4@vger.kernel.org
X-Gm-Message-State: AOJu0YwbprRyN9/3IN3GVv5p+zwwsgL7qEAHomRUe7CPx08/dE8QDeHS
	mKQ/nev7aOSlTP/esIlvEO+Sf5c44Yt2Kj2IcksU8bES8GZOZJQckQUYIn2ra9g=
X-Google-Smtp-Source: AGHT+IF6f58QDKmNHh8qcxMENOuyJWP1mj5LuqkhKnoeY9PcS/XSfj7RV53QKlBdcaunX4OKrszEiQ==
X-Received: by 2002:a05:6000:1863:b0:37d:9476:45f6 with SMTP id ffacd0b85a97d-381be76502fmr11633186f8f.7.1730716817306;
        Mon, 04 Nov 2024 02:40:17 -0800 (PST)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c116b11esm12805013f8f.104.2024.11.04.02.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 02:40:16 -0800 (PST)
Date: Mon, 4 Nov 2024 12:40:15 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/4] usb: typec: Add support for Parade PS8830 Type-C
 Retimer
Message-ID: <Zyikj47bYufXir1G@linaro.org>
References: <20241101-x1e80100-ps8830-v4-0-f0f7518b263e@linaro.org>
 <20241101-x1e80100-ps8830-v4-2-f0f7518b263e@linaro.org>
 <ed0c77bd-770c-406d-851f-8589e53cde8b@oss.qualcomm.com>
 <ZyifBejZtb7x0Vyc@linaro.org>
 <ef1d1796-b45a-4b1b-bb61-4a3c63d3c718@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef1d1796-b45a-4b1b-bb61-4a3c63d3c718@oss.qualcomm.com>

On 24-11-04 11:25:40, Konrad Dybcio wrote:
> On 4.11.2024 11:16 AM, Abel Vesa wrote:
> > On 24-11-02 10:17:56, Konrad Dybcio wrote:
> >> On 1.11.2024 5:29 PM, Abel Vesa wrote:
> >>> The Parade PS8830 is a USB4, DisplayPort and Thunderbolt 4 retimer,
> >>> controlled over I2C. It usually sits between a USB/DisplayPort PHY
> >>> and the Type-C connector, and provides orientation and altmode handling.
> >>>
> >>> The boards that use this retimer are the ones featuring the Qualcomm
> >>> Snapdragon X Elite SoCs.
> >>>
> >>> Add a driver with support for the following modes:
> >>>  - DisplayPort 4-lanes
> >>>  - DisplayPort 2-lanes + USB3
> >>>  - USB3
> >>>
> >>> There is another variant of this retimer which is called PS8833. It seems
> >>> to be really similar to the PS8830, so future-proof this driver by
> >>> naming it ps883x.
> >>>
> >>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >>> ---
> >>
> >> [...]
> >>
> >>> +static void ps883x_configure(struct ps883x_retimer *retimer, int cfg0, int cfg1, int cfg2)
> >>> +{
> >>> +	regmap_write(retimer->regmap, 0x0, cfg0);
> >>> +	regmap_write(retimer->regmap, 0x1, cfg1);
> >>> +	regmap_write(retimer->regmap, 0x2, cfg2);
> >>> +}
> >>
> >> Somewhere between introducing regcache and dropping it, you removed
> >> muxing to a safe mode during _configure()
> > 
> > Oh, yeah, I forgot to mention that in the change log, it seems.
> > 
> > Configuring to safe mode is not needed since we always do that on 
> > unplug anyway.
> > 
> >>
> >> [...]
> >>
> >>> +	/* skip resetting if already configured */
> >>> +	if (regmap_test_bits(retimer->regmap, 0x00, BIT(0)))
> >>> +		return 0;
> >>
> >> What is that register and what does BIT(0) mean?
> > 
> > Looking at the documentation, the first register is
> > REG_USB_PORT_CONN_STATUS and spans over the first 4 bytes.
> > 
> > But it doesn't really help here.
> > 
> > BIT(0) doesn't really have a name, it just says "Connection present".
> 
> Please define both then. STATUS_CONNECTION_PRESENT sounds good for the bit.

Sure, will do.

For the register name I'll just define as:

REG_USB_PORT_CONN_STATUS_1
REG_USB_PORT_CONN_STATUS_2
REG_USB_PORT_CONN_STATUS_3

And that's it.

> 
> Konrad

