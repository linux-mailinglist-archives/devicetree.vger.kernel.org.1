Return-Path: <devicetree+bounces-240857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D23C768BD
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:49:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id E645729982
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 188C62E1C57;
	Thu, 20 Nov 2025 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g4PHn/b0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6613527FD71
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 22:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763678963; cv=none; b=s0k3Na5wyZU6EGG0bkeB0o6A60cbimAUixJnUMYlqIur1d6ugdTZdPG67lwDwL8lgyUSLjdq2hc8ugeDZQ7SRLVy9mRs80gTQE9C9zs+bRCpI9NmYRfCXBwigAjQSnhUNqMnpx5XzbNPOFlYuD9TwLYt4IRxe4jKL/dFxrBltFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763678963; c=relaxed/simple;
	bh=Br88158eFAmnM/Fp96DF4FrOGTDLPMRgchWd3iTu0gs=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T9PTeXs10qoD0jrmBDHEheOGooQMDAk3crF5aHmYQx67L4Ap/BvH7UwJ2NjeFEfGmV5E7PMvd7DesSK61exe/C8kSYlIUyCQTQB8XZVh5kngeAO0xqJaOQd4IiMFDhSD9gkCoKemnp98L7jZdN3+e+rqmJZAddw8+yzphOGEKms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g4PHn/b0; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso15372105e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 14:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763678959; x=1764283759; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=92mYVJu8zVYn8oShK0O2ENKfrNo41xy/o+ZtfwrkjMw=;
        b=g4PHn/b06Lik0D1jyF9BKd6EKKdpodJciicP8kWwLEHaNY0Tpkt3PuKBIT6zX9QGv1
         g4511bVwZA8E9OHnqpNPmTtxcsgNu6yHGlKJMWqM9U+qIDimsk+9rjl1hblyl7DsAZI4
         kT2pZMKcrw+edM3+E20v8VFQk/7mAsGllgheFnA27208SGo5anFYV8vpYHju5O+wipNR
         D+8KYa+SwFRrCWu6oCXLlhIMg9IRgFcKKA1tIIbcLdMSxb6Jhc/AIRpZhevuo0LpKf3k
         Lxm4DSS4GIGcG436Hpw/kwaqTWaM2nQjwUa+oKjopferpRtMPv3CZoCELIgFeYwmFXWy
         7Uuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763678959; x=1764283759;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=92mYVJu8zVYn8oShK0O2ENKfrNo41xy/o+ZtfwrkjMw=;
        b=VaRYLmynw/BT/Pa07F7xbMMAY1BPycSaAT75Y79THXazcUqRUi4DGJdal6tl2ciSSV
         2iTHc6XV6RtzXgow5WUxnsDy0LbubdJlWWL9yEnOl7ta515f5Ar1lcgQx6/913bWlCIH
         eNsQ9FCmpTTeqxDLyaV18x1tzqZAFP3AY94a0rs1NuPpaZElRGuUBg6ZyZ9S7togTQoR
         lM3BorSDAsSEjiziT77sHloUaGczyaiZfRTA++NFeFmw3FNkWHzg5ZzlZcvbJJQYB5vd
         57aMi17ZF3ryDQV32wcglhiTywaPPkXQRRY2G4tPr9SdZfHH7WxzTU6ILnxVw/Gl1K13
         9rWw==
X-Forwarded-Encrypted: i=1; AJvYcCWkkTomYu7OqpGQb5WQ00/w0p0yM1UxiknEhAb34AvUE7H9qbh8u6fGDKerRVmKse4/NiwHXzU6mgml@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2JJBK+i760wxgtLK0zBqmtOI2prTorbLnsTeKlIX/cOR1aN4k
	9MqJnQk9FqFQlmGMnKHhtiJUaf25M2KUWupzOX+uvIcTVdC4Rg+KCenG
X-Gm-Gg: ASbGncvComGUtlby79ajL+mXcT9n4mQZRbM0h+RSbdNh9SR9o4jDdnAzW2/t1AeqJyM
	DUyboD4oh3iA9hIVJfVX7LfRtr4mNAfeFki8tNJ1hD8QEA0hixbBSqfhmGRwvoyQg00o0GRuwJv
	UD9auNxqkESx6aJGsc2sOjPeFNRZButZ9OnB4wmk4Hsiw/85gs7DeHi94Emq6iUtagOcSCaQIF+
	m/9lhFkoAuHviUyQhDvMV3EjKOi/I9OTs2hC4du4z9KcigmgtlO169L8bh/4143Bw7LQ+y7ld7v
	XzQtmQc0LmXD9wM9lfdtBDn7b2ZTMaN89H35pnGI0PcP/6cs9tA0eN6ToDaY5r9+vVz0WOMd2Np
	ObCGLtGTuHW7EJ1ZzTn/9iq6zEaxitMPOQVnC/LFEPeUJ5tDjqxOfTRmqVUjk/cfe+CJOCs8Pqa
	eBEfSnVOE+qq9YlS5S3xPVFuFUwFFzL0907n8HASM=
X-Google-Smtp-Source: AGHT+IHGEub+G9/ilkk7Evhx8oxfLEzAt672n2dcbFiQn5RMJjnl+9Pi1r48eK/UWsvT8B/B+uJl+Q==
X-Received: by 2002:a05:600c:4515:b0:475:dd89:acb with SMTP id 5b1f17b1804b1-477c01ae317mr2279335e9.22.1763678958463;
        Thu, 20 Nov 2025 14:49:18 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9723a6esm76553305e9.1.2025.11.20.14.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 14:49:18 -0800 (PST)
Message-ID: <691f9aee.050a0220.138abd.0f33@mx.google.com>
X-Google-Original-Message-ID: <aR-a6-zCkF_KpV0Q@Ansuel-XPS.>
Date: Thu, 20 Nov 2025 23:49:15 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: qcom: add ipq8064 board variants
References: <20251120135435.12824-1-ansuelsmth@gmail.com>
 <8e75be2b-643e-4380-a018-3cb718745101@oss.qualcomm.com>
 <691f3465.050a0220.105096.7667@mx.google.com>
 <20251120174119.GA1586641-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120174119.GA1586641-robh@kernel.org>

On Thu, Nov 20, 2025 at 11:41:19AM -0600, Rob Herring wrote:
> On Thu, Nov 20, 2025 at 04:31:47PM +0100, Christian Marangi wrote:
> > On Thu, Nov 20, 2025 at 04:25:37PM +0100, Konrad Dybcio wrote:
> > > On 11/20/25 2:54 PM, Christian Marangi wrote:
> > > > Document QCOM ipq8064 board variants ipq8062, ipq8065, ipq8066,
> > > > ipq8068, ipq8069 now matched by the QCOM cpufreq nvmem driver if
> > > > socinfo can't derive the variant from SMEM.
> > > > 
> > > > Suggested-by: Rob Herring <robh@kernel.org>
> > > > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > > > ---
> > > >  .../devicetree/bindings/arm/qcom.yaml         | 20 +++++++++++++++++++
> > > >  1 file changed, 20 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> > > > index 18b5ed044f9f..0eb1619fede8 100644
> > > > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > > > @@ -299,12 +299,32 @@ properties:
> > > >                - qcom,ipq5424-rdp466
> > > >            - const: qcom,ipq5424
> > > >  
> > > > +      - items:
> > > > +          - const: qcom,ipq8062
> > > > +          - const: qcom,ipq8064
> > > 
> > > Since 'items' requires that all items are present (and in this order),
> > > we would normally have a board name go first.. but I suppose this is
> > > some sort of a fix to the issue that sparked this (posting the link
> > > for others to have more context)
> > > 
> > > But since these SoCs do exist, I wouldn't say this is necessarily
> > > wrong..
> > >
> > 
> > Well we can see this as a ""template"" for device that might be added
> > using the ipq8062 or ipq8065 compatible.
> > 
> > When device with that variant will be added we would have to just add an
> > enum with the real device name on top of it (as first element).
> > 
> > Honestly I should have added these compatible long time ago as on
> > OpenWrt we have tons of device that are ipq8062 or ipq8065 with the
> > compatible structure
> > 
> > "device,name", "qcom,ipq8065", "qcom,ipq8064".
> 
> If you don't you have any boards yet, you can do:
> 
> items:
>   - description: ...
>   - const: qcom,ipq8065
>   - const: qcom,ipq8064
> 
> Just to prevent skipping a board compatible.
> 
> But you said you have tons of devices, so...
> 

Yes the problem is that it might take a while for the DTS to be picked
so maybe it's better to push for the description solution?

-- 
	Ansuel

