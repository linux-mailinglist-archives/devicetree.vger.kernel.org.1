Return-Path: <devicetree+bounces-118640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4623E9BB0C9
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E49711F21705
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFD551B0F21;
	Mon,  4 Nov 2024 10:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kEc+KOto"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF09317C7C6
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 10:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730715404; cv=none; b=CC9bAq9RtDb/Jzijt1xcIu6Uazfd6dw+MB7eMDDyAF7izDevlJO3+qokHIJ6nO2ClJjVV8aH3F0Hb0rN/jCpk8MZlXM0E8yNy52Nq7Diu4pNDH22kkbIXhNhfWkpBPVoqvzC6Njm9jeOkWFMBywn83JbGkAHrWAuiGvE2j6HxFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730715404; c=relaxed/simple;
	bh=MFYm2GRmaUQp2/58mK5nGraJsS/gP/S9kgUwW7wae7o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y9HnagjBUCW9USh+zLT2Umfu0IrM3ppJ9wOxTuVMfsjD+BrDeg3fhkUlNnyCBVMR+GuQPsb8GB6V9gYiK7Nh9oAJgC399ChV/8R+jw50K2Ooyc8q2hwZ4TxMWRFCZIRfCn66dzh1WrfL6gJCvQ9RiLY3EBIEjVufmbzXa7+zI0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kEc+KOto; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43152b79d25so34069385e9.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 02:16:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730715400; x=1731320200; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qWd3s2txJjKIcGqSsEzcZhgewqAr7nI1yjXYF52OaVo=;
        b=kEc+KOtofhsAInMhOEU+F/FD2EwL+vAyt/fZQCSdfZpBQ1RmDTuBDDuiTopS1eLP0n
         2qLgKF5AclTtYzqOc/CiTUz2Yx/Yo8m+KM6ZhWevCBuF7Yc0HDn1u8KaGMMAKWNsP3n0
         qWV+hT+vW5h3m7wouAyUTTeKgP8XOMhb0qkieTqNU1BgDvvkwHg5+RNmYz6iNGKVuXZ5
         6vFGHLhp5N/58bBjphvLXqkpe2ecWXDakyxK8+Og0+2cE9XftPUOZhEy0gJ2Zd35DdD/
         SXElWXeIrkds9eOG6+fnpgNgvC+opf8DXvb4eROVVxxZmY0iO1sXR+10vK4NCMEBqm3v
         t3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730715400; x=1731320200;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qWd3s2txJjKIcGqSsEzcZhgewqAr7nI1yjXYF52OaVo=;
        b=A+IZW9exAz9ruotQQ8Y5ZgEpBfryfDMTbk/wRN7W/EdBX89GEq0YkCqTigU+QA4Rrq
         Bfq0jB1cqj65i2Xyy9S3+DJY9glTh7QSTAUK8hbTOAwsAzI4/JgHfCgP/VKi3dPMpf2v
         AESYTd1dH5ZG6pqJ26hOk+tGKCw6dO5fjo/64vT1pUMamWumzYD46dcuNLmr+DBjbMTY
         e8yZhj9PQm2KJ4oJMhex5l3ItBq9v2q97tyDBlynk4YlmSkU2I7gFo2CWCzDtCPWQTYT
         VQb0PRVnDRb1CrDCjQuecD/oJDLPGHhOIiQdp47lVbwB2Jh0HPLqWh8xzw4FPwgpI6tr
         L3aw==
X-Forwarded-Encrypted: i=1; AJvYcCVRY5pUOzKfMDqV/wDgNCwUvtAldZ66rG6mhPkjOHCWMNTcYFMsvwmBYmZ77qkUEwrHO9nPTC3xcckK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+BW+ZqGrVKr5ow8eMiBVF2lY+kRTKheoTxkCP8JB7H7vWaDin
	wjo8571SzdEYDddrBgKtMuqWs0roH+QOb22NmzHf4i2d12MLHSiWSlWTcdSrJoI=
X-Google-Smtp-Source: AGHT+IFDt2BrLBERph12kJZnQ8qLb/mhirfwAnqIBiRvvP7cAKfzV040B2ULebp4Q7UF7nG800Bryw==
X-Received: by 2002:a05:600c:4688:b0:431:5957:27e8 with SMTP id 5b1f17b1804b1-4327b7ea52dmr117711305e9.28.1730715399974;
        Mon, 04 Nov 2024 02:16:39 -0800 (PST)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d6983f6sm152688085e9.45.2024.11.04.02.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 02:16:39 -0800 (PST)
Date: Mon, 4 Nov 2024 12:16:37 +0200
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
Message-ID: <ZyifBejZtb7x0Vyc@linaro.org>
References: <20241101-x1e80100-ps8830-v4-0-f0f7518b263e@linaro.org>
 <20241101-x1e80100-ps8830-v4-2-f0f7518b263e@linaro.org>
 <ed0c77bd-770c-406d-851f-8589e53cde8b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ed0c77bd-770c-406d-851f-8589e53cde8b@oss.qualcomm.com>

On 24-11-02 10:17:56, Konrad Dybcio wrote:
> On 1.11.2024 5:29 PM, Abel Vesa wrote:
> > The Parade PS8830 is a USB4, DisplayPort and Thunderbolt 4 retimer,
> > controlled over I2C. It usually sits between a USB/DisplayPort PHY
> > and the Type-C connector, and provides orientation and altmode handling.
> > 
> > The boards that use this retimer are the ones featuring the Qualcomm
> > Snapdragon X Elite SoCs.
> > 
> > Add a driver with support for the following modes:
> >  - DisplayPort 4-lanes
> >  - DisplayPort 2-lanes + USB3
> >  - USB3
> > 
> > There is another variant of this retimer which is called PS8833. It seems
> > to be really similar to the PS8830, so future-proof this driver by
> > naming it ps883x.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> 
> [...]
> 
> > +static void ps883x_configure(struct ps883x_retimer *retimer, int cfg0, int cfg1, int cfg2)
> > +{
> > +	regmap_write(retimer->regmap, 0x0, cfg0);
> > +	regmap_write(retimer->regmap, 0x1, cfg1);
> > +	regmap_write(retimer->regmap, 0x2, cfg2);
> > +}
> 
> Somewhere between introducing regcache and dropping it, you removed
> muxing to a safe mode during _configure()

Oh, yeah, I forgot to mention that in the change log, it seems.

Configuring to safe mode is not needed since we always do that on 
unplug anyway.

> 
> [...]
> 
> > +	/* skip resetting if already configured */
> > +	if (regmap_test_bits(retimer->regmap, 0x00, BIT(0)))
> > +		return 0;
> 
> What is that register and what does BIT(0) mean?

Looking at the documentation, the first register is
REG_USB_PORT_CONN_STATUS and spans over the first 4 bytes.

But it doesn't really help here.

BIT(0) doesn't really have a name, it just says "Connection present".

> 
> Konrad

