Return-Path: <devicetree+bounces-221611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E46E6BA1606
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96D4B560B63
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 20:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E096E31E896;
	Thu, 25 Sep 2025 20:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l0AP5ItH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6E01D5151
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758832659; cv=none; b=UVig7rGcuHja5zPJbPhFmbngS83FJxK78UBu28tWL/Kl4TbRIVhxRfiZ7UKeN79SsZp2+v7FtWW1M8uWK2FPnK9ROS8qLCEMIvgTYw/1GvAhSaffqLzHCKc75qTPGzF+MppDI3Ld6xuQ9xFs1XFzSNVJ7aYc7C45ad9F1aYRxH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758832659; c=relaxed/simple;
	bh=CXaPqJgmPfMMppa1RfUc94L4Ntew1IQa6R3v7sr+oVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L4x95dLBMTMulSq9mjLTe9Lx15VdMwONoY9kOiK1yzErX8xxKwK/oRk8OTzP0dt+qVxDTGpc/7ruzuLcRHTvS5ozEJsQmXQcJNG7NOd7/2TNFJoWbGr6j4bicI64nz6BPFfGP6kd7szsQh5JQ5OilkbNS7otjJquudk7vHKJxDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l0AP5ItH; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b57bffc0248so1120875a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758832656; x=1759437456; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eNKk1kU6SOtjUkITv/KCJkuTdw/0nVnpYUbhmN061yY=;
        b=l0AP5ItH2dspA9W0OZZe7i11ks3E+c3kPfL+K1o11XjW5Aa5YKLS+FcMLI+Tvbbe2x
         SgmNWwVQuSjuEhpra7FwVrOn+sXYe6HQxJYwchUokwTgGgsPwZBYTjCcXA9MzESQdGVO
         Ff6ZLfhQyCV93nqdUO2vLZAc+jIrQ/Tb7kFhwYlfgkozkQFpQT0/cq5Uvk4Bu0kon0f+
         FscoY3eT7vqB6zSzSvorgdbGu7AlP9kBpBczmTzT3zQztUNNP4721p2uTNm5IRVfDJxl
         pksOwMh1cCRdUi70Q/xE6ZRbA54xN7po0TddZ/mzuf5vf+GiOOWB4cuHWNai/Rn1zh3L
         dBkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758832656; x=1759437456;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eNKk1kU6SOtjUkITv/KCJkuTdw/0nVnpYUbhmN061yY=;
        b=HdJqtdwKhPpOiFz7JF+GpL0kFUwVwRJCZfzBloPW7feWgNEuhxOy/CD0sUeJFgaSz1
         XrN3mPhDfRPSXy/Aq7FBIdPn02jV2FVI1D+8qH3E4s49pERIY6FvzXbgxhcJtNG00oZP
         WDuSWvUe+ZRgF77Wk00imnNqMyNbHZJiuA4+kAi0jomkNjoz5KraC9Vi/WIBQFM0CnEh
         lrl60pEOKyufy2RW1xWfYE4FuMDml342JMyufRUJCAoJbHbMTV8LaBU9/CxiV/jg7no0
         xMEP9Hwdh6wIkyrYPPb+lms230GyysCs4yIL59Q5FQQVJ5BFsUZtTKRliM4dkLxS5LGe
         HRnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXG8KlSR3oG39+3lCvAXfCYTdC3w6B9BrN0VAluVhSV7r02whwLkGqX2IVs4unCTsY88IAxI5zlpgXW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3h93cUMon+QJDyLCe9PY4gkTnL+wf4SOoS4PHfsTI0Inq1KMB
	ud3BzNU9wLs7HRIu0nkH7JH9mhBPAC3cBwuCvg2Q3ywtjNyKs6TZvQxv
X-Gm-Gg: ASbGncvc9083+mFOSJ2cAXJXK9msvvMt17vx8Gu8nPO7Y5oeK9iq/TXFGrDOs2t/5CU
	zQuySp8geTRTQA+otSimRZY8bfSWsNbvYAqbFE91IZS6u8Sv3clxERTB7Coxwd2QsPYlT+/7+qc
	Q/ZUDnVWKX4S2IwO1uj3dh/WbtyuBn5zCPktVut8Bx6LvoOq8b+B1Xtmt/IoAMcUZ8K0NFUrlHu
	CXVhtgcoI3c+xsyUATKWAp801wGpePlCLDSHtN4/HniD8VgPAcKm2F/dKbpB/s3clzd53HJqGSE
	2ljEG3x/uhnD+CRNkLbTZ6tkcbE193T4D4HeHhxRkPFDVVMUr2TKsC7FmZD3Dmd+4263sNh92FZ
	yImxvRAGYZ2h01ZH27jFVyAuX6nSh6a+ZWVeXcHQBPHT0fA==
X-Google-Smtp-Source: AGHT+IGdaPC8LUhy5y9eJbG77kWOllABnqIUJud8kZmzafxvaX4bFrJ9tXNvo9qzIrnH2+Si1arwcw==
X-Received: by 2002:a17:903:1b6e:b0:267:99be:628e with SMTP id d9443c01a7336-27ed6abad48mr50663105ad.2.1758832656340;
        Thu, 25 Sep 2025 13:37:36 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cda43sm34135455ad.25.2025.09.25.13.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 13:37:35 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 25 Sep 2025 13:37:35 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Conor Dooley <conor@kernel.org>
Cc: Stanimir Varbanov <svarbanov@suse.de>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
	Rob Herring <robh@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>,
	Saenz Julienne <nsaenz@kernel.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH 1/4] dt-bindings: Add Raspberry Pi's RP1 ADC
Message-ID: <89dd04b9-e261-4bdd-83ab-499e46fc9c01@roeck-us.net>
References: <20250925000416.2408457-1-svarbanov@suse.de>
 <20250925000416.2408457-2-svarbanov@suse.de>
 <20250925-outlying-causal-015d8ba33c53@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-outlying-causal-015d8ba33c53@spud>

On Thu, Sep 25, 2025 at 08:40:54PM +0100, Conor Dooley wrote:
> On Thu, Sep 25, 2025 at 03:04:13AM +0300, Stanimir Varbanov wrote:
> > Document dt-bindings for Raspberry Pi's RP1 ADC.
> > 
> > Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> > ---
> >  .../bindings/hwmon/raspberrypi,rp1-adc.yaml   | 46 +++++++++++++++++++
> >  1 file changed, 46 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/hwmon/raspberrypi,rp1-adc.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/hwmon/raspberrypi,rp1-adc.yaml b/Documentation/devicetree/bindings/hwmon/raspberrypi,rp1-adc.yaml
> > new file mode 100644
> > index 000000000000..5266b253fd2b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/hwmon/raspberrypi,rp1-adc.yaml
> > @@ -0,0 +1,46 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/hwmon/raspberrypi,rp1-adc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rasberry Pi RP1 ADC device
> > +
> > +maintainers:
> > +  - Stanimir Varbanov <svarbanov@suse.de>
> > +
> > +description: |
> > +  The RP1 ADC is a five input successive-approximation ADC with 12-bit
> > +  resolution (ENOB 9.5-bit) at 500kSPS. It has four external inputs
> > +  and one internal temperature sensor.
> > +
> > +properties:
> > +  compatible:
> > +    const: raspberrypi,rp1-adc
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  vref-supply:
> > +    description:
> > +      Reference voltage regulator 3.3V.
> 
> Looks like you're missing the io-channels-cells property that allows
> this device to be a provider of adc channels to other devices.
> 
Only makes sense if the driver is implemented as iio driver.
Which would be fine with me, assuming this is a generic ADC.
The iio -> hwmon bridge can then be used to instantiate a
hwmon device if needed.

Guenter

