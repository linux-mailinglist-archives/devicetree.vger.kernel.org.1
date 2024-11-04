Return-Path: <devicetree+bounces-118648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BCC9BB140
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAEFC282196
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F9D71B2190;
	Mon,  4 Nov 2024 10:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A0483Qik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D9E1B0F2C
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 10:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730716692; cv=none; b=eEH88jIjQ8/swWp4Plk8MLaCVKAk9q9qLjHzrGb1dyF//Cx4pCdNnxNZ91aTm/4xro0W1JlErVPG9PSFYypBwSWpXvww1gDtfINd2Hzl4X+/pRigPcM5LEOOIZLc3oiMj0lyFlrnv++Y8FYm4N6B4u/ceNLczIDEGnZMAJpVvek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730716692; c=relaxed/simple;
	bh=xwWZwwcn51jaXtwKmzPbEuoR6+YElHj+lA2wMMF6TWw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R/h0nQOBzUDAj0JRuytaT+VszIHy7516aekEeZpKcdyDlSSvs9A/FWW6fq+hQRzhIX2bcsdsZPjQhaksR414osK07M7xSijc9yuHWsHw6P+iXucF3EH8NTprupIVZEl59xoLey7MVM2xTQrUeK8EM4szW7SeRpGQnsxSd+qHLZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A0483Qik; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4314fa33a35so31373275e9.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 02:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730716689; x=1731321489; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+GagFwKjABVTIe4HYHRHjXXNLM2jLeWvrTaqq4VcplQ=;
        b=A0483QikxR+eaNoOwXEDgIopWHeHuLwnl6s4aO0rpz/0ja/KeFf8j+cTdPuRR9OFF9
         Cg9BsHK/YvX1vkPLqXhri5I2cgnXxxGfHkT43qtDP4CUxmEjOo2yIFlkS7R3R9lm2D9X
         3Vf+fACsYrO5aVzeuMpfaom61Es3YSj0UaVnCnRy60Mp1kximXgCP1uI0hu/gP9+fg28
         TxS/TYt4udukXQpxfeGWWQQSBZg/2SBCPNcaj0cQChFbRZ81toSYhp8m+IRALKcoRTkR
         PmeK9tPlEZ6RnrD6+5TPjtvF3eo5T1tYc47f/HawHYltnpUqsgXvZJitbdsuVHZZomO6
         IQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730716689; x=1731321489;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+GagFwKjABVTIe4HYHRHjXXNLM2jLeWvrTaqq4VcplQ=;
        b=JDXVwltmfqXZRw2Svw/Nn3lxffef2AQ3nb0EmJoC7zEfiJYDbxPwPkO7qxHXc/UBRH
         zrw8d9tXLGFjZ6PQcATWxi4SqoE9WNAHNJl7HLlcYt01JpbwBE8+HV2Fb6MJEadstIwD
         ZKyA3s9qZYPC9k8CFFotOWkqNf2CxaGq8TmxknIAQCfdsAhQT64183kgGMn43CuKX7uJ
         5bism+AbzZYvfUsCsDFKJsfGnsMQtyG1/fl8fg2KPWPqrs487ZdDV4F9NpDE86XTjFyv
         v7OjlGZViE7Pob3J4LkrSVK/L3fv2UI75rah2EDaWYghCncmYEjQWezM5xbGDOsKwslr
         tjPg==
X-Forwarded-Encrypted: i=1; AJvYcCWq8k4TCe/FdB2FufQFU11XNO2tVb8i1Agp/RpkcJID3XwIPYh5EbLl2THhV6m7qP0cMTQGj0kncYFg@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh+T+ZhzpGLEgfba1vidNOfr7XHozMUJOpgW7RzDw2xrJ/91Ws
	6gczmVqLcrnYHBBowQjD4iY1GtM9UnJ0LaDMRRXvzhyZ/GC5gOF7YUloCzVhP2E=
X-Google-Smtp-Source: AGHT+IGDv+BWsToa2qebbIIuESESX63daj1rU//RwGBiGESK5sCmhKnPNAI2XHtTuUedj85ZPP7IYA==
X-Received: by 2002:a05:600c:4215:b0:431:55af:a230 with SMTP id 5b1f17b1804b1-431bb9e6031mr165238775e9.33.1730716689615;
        Mon, 04 Nov 2024 02:38:09 -0800 (PST)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd9a9a53sm178662105e9.30.2024.11.04.02.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 02:38:09 -0800 (PST)
Date: Mon, 4 Nov 2024 12:38:07 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
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
Subject: Re: [PATCH v4 1/4] dt-bindings: usb: Add Parade PS8830 Type-C
 retimer bindings
Message-ID: <ZyikDytdk0mJSD8A@linaro.org>
References: <20241101-x1e80100-ps8830-v4-0-f0f7518b263e@linaro.org>
 <20241101-x1e80100-ps8830-v4-1-f0f7518b263e@linaro.org>
 <fzqkcpmww65ubqluyy42q2hl6nwhxabwchcaul3ocqjdwhuuo4@dcychynbcstc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fzqkcpmww65ubqluyy42q2hl6nwhxabwchcaul3ocqjdwhuuo4@dcychynbcstc>

On 24-11-02 09:58:12, Krzysztof Kozlowski wrote:
> On Fri, Nov 01, 2024 at 06:29:39PM +0200, Abel Vesa wrote:
> > +$id: http://devicetree.org/schemas/usb/parade,ps883x.yaml#
> 
> Filename based on compatible, so: parade,ps8830.yaml
> 
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Parade PS883x USB and DisplayPort Retimer
> > +
> > +maintainers:
> > +  - Abel Vesa <abel.vesa@linaro.org>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - parade,ps8830
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: XO Clock
> > +
> > +  ps8830,boot-on:
> 
> I don't see previous comments addressed/responded to.

Urgh, sorry, this should've been dropped.

Will drop it in the next version.

> 
> Best regards,
> Krzysztof
> 

Thanks for reviewing.

Abel

