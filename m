Return-Path: <devicetree+bounces-241490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 582D2C7F070
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 07:20:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 145B23A4AF2
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 06:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDD823E358;
	Mon, 24 Nov 2025 06:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tx6tIqXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99B2262FE7
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 06:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763965226; cv=none; b=tyHk7nj4Lj0RRg5W0baqjceIDIusBfldYg1CuILJePF1JQgOVs1v8kDLL4+eJBtFw73//S4HyIIHZoH9MU9bE9yEyMHRSrOPBqWC+qJ10loO1KrkElPSl0QKf5ONa4yAv4d5O8005HclwfOUC+NAOk1OsTGE0bkBIXf6+GfMyAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763965226; c=relaxed/simple;
	bh=9vOp6QAlNYQyce2JUewamgiMt/YZ0C0xojMCKLqTtZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LH0YmHp8h9Axr8b5Mds+XJm4nQS89zF6Ng5/RzhLCNU9vObmjzHTopU1pHe2PCd1HRSaVSy3VHHf7aX+W6Jhs5ZUoVc/4V8V3oDhCajpHXJpWOBjyr5KuNio/9gYJmendmEhWZd8mqOr+Hz7F1652Tyn2nvJ55I1fxCkZnWJRnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tx6tIqXq; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2958db8ae4fso38887945ad.2
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 22:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763965224; x=1764570024; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EPAZIdyYVCYxtwDpqaoKTb52vleiQ/i4dqqg/wvgYNg=;
        b=Tx6tIqXq4y67pDCj3h2ULPIbbvzy1KlSsigx2mH9MlCBlrDw+Su9Ew+MTzvITnBEQR
         po2gCuouuMl2M2sIsH3bPunMHFiHHcKFvAB9IM+NzhEJ4CcLb2168gcyOCLHgdUCQHuE
         btInT0xeXsrK995dHvOVa2uCM3WDf3eVcl0sm63uerp76HN3eFV8MD+IG3eBuWMR/D7a
         JoRl1AllucjO0j+cHwRKzww7vKxTWtS8WFX7RBJtHLlZYRANF4vvPBwZQtTLYKU+dn7b
         qpEV2GhbTTUF+NUzs0suN96Z0aNUOfW9U7Sqg4/rLo5Q5rRcYkZrtBUBiLBP6war1UPf
         kSvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763965224; x=1764570024;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EPAZIdyYVCYxtwDpqaoKTb52vleiQ/i4dqqg/wvgYNg=;
        b=T7kL2kOE/cwBbDhdjSN5bU4jFlFPAI4arLvZjMkRbZLZ3DTimZ0hRY9+/PHaCImJyj
         GflYuhzTWPawqk49HWcrcBOxJE0JrXjoSbkbWo+wwhyhkCtkOs883Ld8CwgtrH9kqWIM
         wLIPGN8Spf7ran5PG8eugcVxeEvW1mYWQmcFZAC9PcW2jLVMwenQb8KaJpZ2qfpX4IIZ
         MIiXkhWWhoP8OGftLOWbwwIXKP/PYm7KAv/rgFY0K1lkV0FN9+RIoTxQ6uaOFCcSCtKi
         8SEavvyYwlyHEvkUknEErndxyGbhFZM7V/Aq9Nh7X3Xy+oF8ModTqXSB702m8zKU6aKx
         8gEA==
X-Forwarded-Encrypted: i=1; AJvYcCU8XX3W3/D5c5LW072yRwO0mTMPtr278HmH4mgFfRWJ8qG/8M7WmaYWaV1oAZBONEPc7SNXo3ROJzlx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz32m4z8OojAcVSEXT4updYuuDpHNV+/GmBs0JWQ5NtmP8i5q9
	8oWDlN85UNmhFryiG8psW/oloyFFYu7ELyDIXm1f1Xu+wEYEkOd4CMJ3
X-Gm-Gg: ASbGncszO9JP4oZz3YMusZmAyDaDXVRIeSKi5/p5egNZyohuBEXtcwlUyS1xm14BKrw
	JRnMkVGYLHdR/m+KRPZ+HtTRo8Irp4mlDow+amWJqqluwhPrzAGMyLq+Uf2ofr/XEvCfzYlvODq
	7prkScVvIkd7sXcIo/MSQeTJe0ifgOXb9yFPib8mB0drC7v+frWbbtMNq/RjB9d2VmXIF7mjUn/
	6pslAbJExK/sxN+/xjuOTVfRVo1ASKAaIOD/7bb1YpfBQnRiG7bHsP7rLQED6CoycKIf5ALI/cq
	lCq4dPiR//OHSbI0FlHRAKtRgf1WOt6brhrMCxOAVZqC2o4Kkm+Ov2rwhGLPRfVeGBvwkuqtqhf
	wwg3MBCBNYANqBXA8Y3f31jhIV06M6kdikWczv1xfATXlSYPXU8IMtOUl55nWTGTfGqYIYI3e0Q
	Py4iDInS/OmieFx2sXWerd/gBXQ45b
X-Google-Smtp-Source: AGHT+IHJoDwILUcQXPwUe8P1tkXRtJWY2KzmfIUmyHGtav1GAcpdqT3BcrmL2fh/FT9Z0bJ8sWsLew==
X-Received: by 2002:a17:902:d484:b0:297:c4b0:8d58 with SMTP id d9443c01a7336-29b6c6904b4mr114829205ad.46.1763965224148;
        Sun, 23 Nov 2025 22:20:24 -0800 (PST)
Received: from JNA-L01.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b111650sm120444025ad.8.2025.11.23.22.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Nov 2025 22:20:22 -0800 (PST)
Date: Mon, 24 Nov 2025 15:20:17 +0900
From: Joan Na <joan.na.devcode@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Joan Na <joan.na@analog.com>
Subject: Re: [PATCH v6 1/2] regulator: dt-bindings: Add MAX77675 regulator
Message-ID: <aSP5IWm9yJYFSogH@JNA-L01.ad.analog.com>
References: <20251120125449.26530-1-joan.na@analog.com>
 <20251120125449.26530-2-joan.na@analog.com>
 <20251120150343.GA1256330-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251120150343.GA1256330-robh@kernel.org>

On Thu, Nov 20, 2025 at 09:03:43AM -0600, Rob Herring wrote:
> On Thu, Nov 20, 2025 at 09:54:48PM +0900, Joan-Na-adi wrote:
> > From: Joan Na <joan.na@analog.com>
> > 
> > Add device tree binding YAML schema for the Maxim MAX77675 PMIC regulator.
> > 
> > Signed-off-by: Joan Na <joan.na@analog.com>
> > ---
> >  .../bindings/regulator/adi,max77675.yaml      | 188 ++++++++++++++++++
> >  1 file changed, 188 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77675.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/regulator/adi,max77675.yaml b/Documentation/devicetree/bindings/regulator/adi,max77675.yaml
> > new file mode 100644
> > index 000000000000..54cbbd59ff5b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/regulator/adi,max77675.yaml
> > @@ -0,0 +1,188 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/regulator/adi,max77675.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Maxim MAX77675 PMIC Regulator
> > +
> > +maintainers:
> > +  - Joan Na <joan.na@analog.com>
> > +
> > +description:
> > +  The MAX77675 is a Power Management IC providing four switching buck
> > +  regulators (SBB0–SBB3) accessible via I2C. It supports configuration
> > +  of output voltages and enable controls for each regulator.
> > +
> > +allOf:
> > +  - $ref: /schemas/input/input.yaml
> > +  - $ref: /schemas/pinctrl/pincfg-node.yaml
> > +
> > +properties:
> > +  compatible:
> > +    const: adi,max77675
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  reset-time-sec:
> > +    description: Manual reset time in seconds
> > +    enum: [4, 8, 12, 16]
> > +    default: 4
> > +
> > +  bias-disable:
> > +    type: boolean
> > +    description: Disable internal pull-up for EN pin
> > +    default: false
> 
> 'default' does not make sense for boolean properties. default is how 
> should the s/w handle the property not being present. That's always 
> false for booleans and can't possibly be true as you have below.
> 
> With those dropped everywhere,
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Thank you for reviewing. I will drop all default: statements from boolean properties in the next patch.

-- 
Best regards,
Joan Na


