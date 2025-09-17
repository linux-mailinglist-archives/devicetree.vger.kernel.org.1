Return-Path: <devicetree+bounces-218197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1351B7E034
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:39:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A2C41C033B9
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 06:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D165A27E076;
	Wed, 17 Sep 2025 06:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Lw+hKY8x"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA4461E3DF8;
	Wed, 17 Sep 2025 06:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758091249; cv=none; b=b3BzRXFKncFf3Js12eUVxE+I4NeThJYApD07RyfiD7MsmzSuUtXOZhle+Tq6xPvVQb6V1DB+mN4pxdhkHV5uxKqQARR7TcmInlWn2PRqCMb8aLfw0kvBIsRF/ovY5MOwNO1TdoF+RWzKudyTtFFVyTY9KxrIiduqo5Hw+AvoLhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758091249; c=relaxed/simple;
	bh=d3CvzUjYSYYXdVvGb5ln+NyyqN5yoOhS5Tx0XiWdVPQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PlW3S4r4HIxGQPuctWh1wIgkm+IYbxV8oa+8Uwv63aCDhC5J/RVfGMfyodyXxoT/TcydwSgGg29Owzd9nAYrqZv3hyeG401/sOnDhaLGYMRxRGro2bQsrqXvzM7eBnzJ6cWZQurqXbZ6XrngqMetvB1dtrcWzh+ex2ipj4ixHTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Lw+hKY8x; arc=none smtp.client-ip=91.218.175.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Wed, 17 Sep 2025 14:40:27 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1758091235;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H5UUIFMPHoohc3Fdvc8WcHTl6i/bRaOEpCuA/zGUknE=;
	b=Lw+hKY8x9PeYcU+BuVv/eoxt1nvmC4NdQsoL9qf4eabtzRuqnHdbnFlTc7zbqM8Z5JScnp
	+GqPfyW8wvz70sJpNoYwFpVFe1O0XVqApx+mKfnQReQrmpTX7udCuW6JEEjabvWPhlh1MG
	N2xXN+8nqrJYfshZOgCtU7KFQsWbago=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Troy Mitchell <troy.mitchell@linux.dev>
To: Rob Herring <robh@kernel.org>, Troy Mitchell <troy.mitchell@linux.dev>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: Add CTF2301 devicetree bindings
Message-ID: <aMpX2wTqXCSvEegs@LT-Guozexi>
References: <20250916-ctl2301-v1-0-97e7c84f2c47@linux.dev>
 <20250916-ctl2301-v1-2-97e7c84f2c47@linux.dev>
 <20250916135216.GA3674673-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250916135216.GA3674673-robh@kernel.org>
X-Migadu-Flow: FLOW_OUT

Hi Rob, Thanks for your review.

On Tue, Sep 16, 2025 at 08:52:16AM -0500, Rob Herring wrote:
> On Tue, Sep 16, 2025 at 12:46:45PM +0800, Troy Mitchell wrote:
> > Add dt-binding for the hwmon driver of Sensylink's CTF2301 chip.
> > 
> > Signed-off-by: Troy Mitchell <troy.mitchell@linux.dev>
> > ---
> >  .../bindings/hwmon/sensylink,ctf2301.yaml          | 49 ++++++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> > +description: |
> > +  The CTF2301B is an I2C/SMBus compatible device featuring:
> > +    - One local temperature sensor with ±0.5°C accuracy and 0.0625°C resolution.
> > +    - One remote temperature sensor for external diode-connected transistors, offering ±1°C accuracy and 0.125°C resolution (temperature range: -40°C to +125°C).
> 
> Wrap at 80 chars.
I'll fix it in the next version.
> 
> > +    - An integrated PWM fan controller.
> > +    - A 1-channel fan speed monitor (TACH input) for RPM measurement.
> > +
> > +  Datasheets:
> > +    https://www.sensylink.com/upload/1/net.sensylink.portal/1689557281035.pdf
> > +
> > +properties:
> > +  compatible:
> > +    const:
> > +      - sensylink,ctf2301
I will fix this warning in the next version (your robot reported)

                - Troy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ctf2301@4c {
> > +            compatible = "sensylink,ctf2301";
> > +            reg = <0x4c>;
> > +        };
> > +    };
> > 
> > -- 
> > 2.51.0
> > 

