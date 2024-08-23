Return-Path: <devicetree+bounces-96097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C2895C965
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 11:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF9DB1F250E7
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 09:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B1E14F9D4;
	Fri, 23 Aug 2024 09:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TXcAiR0s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A6314A092
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 09:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724406048; cv=none; b=gRmUxY07hqJvpdIZlqtw0UD0DI2et4RVMah7xbvrJQFxxprPHmRZDsmC7dXoWhqhHqmZfGZzR6EHZRPv23q5DKfvSvoSxXyP1p3zWT5porbt1mTRWMoTW2p43cSdFE7lzfB5h456Z3JPFQ2vjgJjOphAFJ8LyU3MyY3/0FBd+B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724406048; c=relaxed/simple;
	bh=QYKrgYPSt+PzLBYRBlCaV98ntftxVKjhU9ZHUca4mVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TqU9jM4HyMEUFT3KJww8RS6ng50uEi5RRLzMXO7hraNGC5jvm+gzmfgHx6NdFDyh4OdDV75IYXBH4RzYFmyzgHGf0TdiVmoIjyFhIbgBxNVsMc9lPeyZzUDWtAkZJqF8jOAUkpRdnnsbOuxJXvSEhnN/zzRQtjYwyfX7OovgAbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TXcAiR0s; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71423273c62so1371999b3a.0
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 02:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724406046; x=1725010846; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I126+cKdGYbZIz3R6I4V2r9+Vz0iXJ8BxplRUfjmS60=;
        b=TXcAiR0sz/g6kZ02mOdW+P0V+CjOU3uCvuTtsZZ6DeTi17acFp/vMjlJxuMtQY6EjF
         zcJqARm+PyWcQBR6ggCUsanJBslV2EiFNnXwOv6Iyj2B+CQtoQs+DyShvA+xV672lpyd
         K9PjnnD4i0OsRjeXoY8ceaO3RxmLxokYV7QW2NpvxUozC/eqKvdGo13KKdBD/NWX90HN
         /ZDBG4/GZZWbwX+B8UbQgbSjEKuATW83qpM0XI+8ziIII24WOKsTVuWgLW6CdhVfElPv
         xReixBgQa9VWJmQB7xpREUeCxafOJnloaiJvIxbXQa+yRDx9QPUqEZaAdHD4McJNbbTV
         WWdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724406046; x=1725010846;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I126+cKdGYbZIz3R6I4V2r9+Vz0iXJ8BxplRUfjmS60=;
        b=W1S57Y9MEjQb29l2PESWnZ1smFmH/GWlXJI4wxzLooZpqONY3hNQP15OSAKzEuQWpQ
         s6te0jngocW9pRO4/TRj/I/41q8qijCEpB0HrXe1Sv7lJrHZChhrIGJACYN3xGK5rp5C
         c9VqRNlOD9Vhg2838697UeRE4MKXd6MROSFot5qcXqMIEIEQletWjdJW2WiouEjkrMv5
         aTQD+O4RC3HzD8MHrHTJHeYirzqT21S0PwiFH8KJxSCVuEhmFE5ttm/z+IFR4lY6etjj
         90O4QvFYll0W9gpSfweegjHIVPDRo65ycSnz/52aXCgNe8MsybSh3mx2goW3Au4IfHkI
         chmg==
X-Forwarded-Encrypted: i=1; AJvYcCXJL/tw96nqlKLa8JL3alnOUmizNwl3Lxb5vamzzY/45B/0HtnlbTwn6yM/XQvfTnVL0BKX3Q7a9ZGj@vger.kernel.org
X-Gm-Message-State: AOJu0YxmwkqbAOgT3MucP6RK55rwUFiw/qyL6X6e0Npv7W/9CmBX7Qkw
	X0mhD3SG0n9fAsZnhGnKjmChnLAirIu0D/O84LqCT3h0TkeeDm824NcmubgGzA==
X-Google-Smtp-Source: AGHT+IEZ7oVQVdI6VEXdebOFtS4lQUtfFu5fTDd3UmD/IV+0quZsPl84jbflNGtuVTHo4x2PWVlhRw==
X-Received: by 2002:a05:6a21:4a4c:b0:1c4:b302:ad14 with SMTP id adf61e73a8af0-1cc8b49b962mr1602960637.24.1724406045766;
        Fri, 23 Aug 2024 02:40:45 -0700 (PDT)
Received: from thinkpad ([120.60.60.148])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20385580810sm24903965ad.105.2024.08.23.02.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 02:40:45 -0700 (PDT)
Date: Fri, 23 Aug 2024 15:10:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>,
	Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	cros-qcom-dts-watchers@chromium.org,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Jingoo Han <jingoohan1@gmail.com>, andersson@kernel.org,
	quic_vbadigan@quicinc.com, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: PCI: Add binding for qps615
Message-ID: <20240823094028.7xul4eoiexey5xjm@thinkpad>
References: <5f65905c-f1e4-4f52-ba7c-10c1a4892e30@kernel.org>
 <f8985c98-82a5-08c3-7095-c864516b66b9@quicinc.com>
 <ZrEGypbL85buXEsO@hu-bjorande-lv.qualcomm.com>
 <90582c92-ca50-4776-918d-b7486cf942b0@kernel.org>
 <20240808120109.GA18983@thinkpad>
 <cb69c01b-08d0-40a1-9ea2-215979fb98c8@kernel.org>
 <20240808124121.GB18983@thinkpad>
 <c5bae58c-4200-40d3-94c6-669d2ee131d4@kernel.org>
 <20240822140956.unt45fgpleqwniwa@thinkpad>
 <7969b2e6-1046-4bd4-bdfe-d2bc12a1db1b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7969b2e6-1046-4bd4-bdfe-d2bc12a1db1b@kernel.org>

On Fri, Aug 23, 2024 at 11:06:28AM +0200, Krzysztof Kozlowski wrote:
> On 22/08/2024 16:09, Manivannan Sadhasivam wrote:
> > On Thu, Aug 08, 2024 at 03:06:28PM +0200, Krzysztof Kozlowski wrote:
> >> On 08/08/2024 14:41, Manivannan Sadhasivam wrote:
> >>> On Thu, Aug 08, 2024 at 02:13:01PM +0200, Krzysztof Kozlowski wrote:
> >>>> On 08/08/2024 14:01, Manivannan Sadhasivam wrote:
> >>>>> On Mon, Aug 05, 2024 at 07:18:04PM +0200, Krzysztof Kozlowski wrote:
> >>>>>> On 05/08/2024 19:07, Bjorn Andersson wrote:
> >>>>>>> On Mon, Aug 05, 2024 at 09:41:26AM +0530, Krishna Chaitanya Chundru wrote:
> >>>>>>>> On 8/4/2024 2:23 PM, Krzysztof Kozlowski wrote:
> >>>>>>>>> On 03/08/2024 05:22, Krishna chaitanya chundru wrote:
> >>>>>>>>>> diff --git a/Documentation/devicetree/bindings/pci/qcom,qps615.yaml b/Documentation/devicetree/bindings/pci/qcom,qps615.yaml
> >>>>>>> [..]
> >>>>>>>>>> +  qps615,axi-clk-freq-hz:
> >>>>>>>>>> +    description:
> >>>>>>>>>> +      AXI clock which internal bus of the switch.
> >>>>>>>>>
> >>>>>>>>> No need, use CCF.
> >>>>>>>>>
> >>>>>>>> ack
> >>>>>>>
> >>>>>>> This is a clock that's internal to the QPS615, so there's no clock
> >>>>>>> controller involved and hence I don't think CCF is applicable.
> >>>>>>
> >>>>>> AXI does not sound that internal.
> >>>>>
> >>>>> Well, AXI is applicable to whatever entity that implements it. We mostly seen it
> >>>>> in ARM SoCs (host), but in this case the PCIe switch also has a microcontroller
> >>>>> /processor of some sort, so AXI is indeed relevant for it. The naming actually
> >>>>> comes from the switch's i2c register name that is being configured in the driver
> >>>>> based on this property value.
> >>>>>
> >>>>>> DT rarely needs to specify internal
> >>>>>> clock rates. What if you want to define rates for 20 clocks? Even
> >>>>>> clock-frequency is deprecated, so why this would be allowed?
> >>>>>> bus-frequency is allowed for buses, but that's not the case here, I guess?
> >>>>>>
> >>>>>
> >>>>> This clock frequency is for the switch's internal AXI bus that runs at default
> >>>>> 200MHz. And this property is used to specify a frequency that is configured over
> >>>>> the i2c interface so that the switch's AXI bus can operate in a low frequency
> >>>>> there by reducing the power consumption of the switch.
> >>>>>
> >>>>> It is not strictly needed for the switch operation, but for power optimization.
> >>>>> So this property can also be dropped for the initial submission and added later
> >>>>> if you prefer.
> >>>>
> >>>> So if the clock rate can change, why this is static in DTB? Or why this
> >>>> is configurable per-board?
> >>>>
> >>>
> >>> Because, board manufacturers can change the frequency depending on the switch
> >>> configuration (enablement of DSP's etc...)
> >>>
> >>>> There is a reason why clock-frequency property is not welcomed and you
> >>>> are re-implementing it.
> >>>>
> >>>
> >>> Hmm, I'm not aware that 'clock-frequency' is not encouraged these days. So you
> >>> are suggesting to change the rate in the driver itself based on the switch
> >>> configuration? If so, what difference does it make?
> >>
> >> Based on the switch, other clocks, votes etc. whatever is reasonable
> >> there. In most cases, not sure if this one here as well, devices can
> >> operate on different clock frequencies thus specifying fixed frequency
> >> in the DTS is simplification and lack of flexibility. It is chosen by
> >> people only because it is easier for them but then they come back with
> >> ABI issues when it turns out they need to switch to some dynamic control.
> >>
> > 
> > Atleast for this device, this frequency is going to be static. Because, the
> > device itself cannot change the frequency, only the host driver can. That too is
> > only possible before enumerating the device. So there is no way the frequency is
> > going to change dynamically.
> 
> We have assigned-clocks properties for this... but there are no clock
> inputs here, so maybe it is not applicable? What generates this internal
> AXI clock? Does it have internal oscillator?
> 

I do not have access to the device schematics, but based on my knowledge there
should be an internal oscillator for the device. But the device also gets the
refclk from PCIe bus, but I don't know if that is somehow used as a parent of
AXI bus or not.

Going by the AXI bus terminology, I would assume that the frequency of this come
from the internal oscillator in the device.

And this is common on many PCIe devices, but they never mentioned in DT (well we
do not define PCIe devices in DT usually), but Qcom wants to control the
frequency of the device's internal clock to optimize the power consumption of
the device. Unfortunately, the device firmware is not doing its job as expected.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

