Return-Path: <devicetree+bounces-253822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AFBD11B38
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:04:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60C24300B68D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4035028FA9A;
	Mon, 12 Jan 2026 10:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N1MAv9wr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F162749D2
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768212251; cv=none; b=gsmj1W3vNoe4QWrGqqd7Q0a1iKKeIM1ZVnksBjVEVqFzKVlSd3GbPLMzbEmFxhzgNkBP0Yq6/bF1SVHGNne6iY16DBvZZfHwvI3w7IVnfbsUda9NzOnic0Sqq+meRmdiw/e5FPXYsPIPXZOal/YNyBJ82Hl0UbHOQpjkdCWx8og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768212251; c=relaxed/simple;
	bh=oqOGXbeDIQlNePE/yiwJ+NT0kXzbdHkFX5Jkw1SZilw=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aDxswzCQhmcoQWD7rZBGU82cww21n/ml21aS//tYpriNoWSIxnkn8Nyo9GZ+jrpkqoXZxrWbGbqeapnnzq1xjneIGYoybr2Y+4qfrnByQVjKDaUmjXG7ejXnR2PSUhxKlBwqxGEgoszcMaxIuT2pH8itLquLcHKbXtfCwoOZ1lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N1MAv9wr; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4eda6c385c0so48416201cf.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768212248; x=1768817048; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U5hiBX/EJmbP0rFvOH8HeLIh3uhucig2oXB0fSc8NSg=;
        b=N1MAv9wr2GKPAbiYalM/ultWNNHRnItPp5uXKvCM9nkvAzQFdm99JkOJgc33VhPz1V
         ibfz65ZZuDO5Q64juKemL+byXnTxxmBaqh6NpWTEYeutm99LwhE4t0L1IjKPo5I6DNZK
         yDsg1alLvf+bcgzaDP/IQuQr7ZCKORbG5WY4yyRoeleYUijEUSRze7dROPJ5+GCepI+/
         WR7ZTH+369iyj2ABChPQoETsUQKDQ19Pl26Vn9SG+8ekLchPlJgNlZg/96+zI1T36I6z
         xwlh2MOOSc1e5gQ3sdFPCNY2S+Jse9CZh246KE0DfIHACdcwtxABH6KKStG+hBW8Ssdq
         uLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768212248; x=1768817048;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U5hiBX/EJmbP0rFvOH8HeLIh3uhucig2oXB0fSc8NSg=;
        b=XS63L4boQnrkT5PtgYh2FV1kqiYavQk9yK7v371r8c0jNo2G2gdAyRKaH1D9xru8tO
         YOvdwktS+lPqWCMX5SO2AVSkRyov7DC+JCNVI8CIQyNdaVwlZu0G9ld0aE1KtPnzlhOn
         kYI9W1Sy6QxEOYO/OkN+xMd2CP9TXaqAdjvIr9ms+pGZvyKc4t2WwXIqP5EuoCZsSNBs
         Sx/zl96vMpylFpaFbw22k+Ce9mrY7ZYmV741dme3aBBWcYkl8XzMdL9oS0cokQqKI7t6
         jfAz9066kJFWUtmFy0IvkkL1eZA+22h2wA41SVHJhuCOBxqm6UvuEy+BLLiKSZgjSEP1
         1jcw==
X-Forwarded-Encrypted: i=1; AJvYcCVuGv0h/k9lvHO0EE0XiWjVQ81yf4WKMlJQ1fgfeun+2+VOdTsSyuqc7tBBM+7qILT0Nt7UZjwlQP9T@vger.kernel.org
X-Gm-Message-State: AOJu0Yys7HnR7qdIk58s82CMH5MvRsjodMN6LDK3PimKanq/jA/xIso4
	YjKVM7DNhCQXZtwkxIa6+3DnmnZYS0YmUC0/ohW9Rz98JdZlNjn343Xp
X-Gm-Gg: AY/fxX5Yx5BbNKGEpGU9GsyD4G/8BJnZ28CTrLN3hazFCeENkXFwLO54nVvEuUAxhEI
	WkR6xOhbcPNQ3scH53ne+MDU+qzDPoctNaB/y8ABvPg9nQHjrf5wm8ceXjQXD9dJQkqnmrIBC5H
	rhBx8MhLZr7qPWppdITuL210E8Rm0ozwtY9MBAOAjPtgrHILHZoPm5qDxqitBmhPAwvN5Q8GSIp
	x4Cfm5dP0m8ZaszOC/Zn6pZUl8U/E2cDUOlCiavtfl7gJqcRNlQZlGwXRxM//OFJh6Mce0KF4qL
	3n7i2MyKwDV5tWiyqThdpYsPgKzrdJ+JncTJbvb2eI524YVgksPQYUk+p9UiKSted+kUA3OVrA+
	Pzn32cfIrJtfGf2LzxktiguzIHHHYAVrrk+G08h1ujOfETF6wJZpU295RiATR1cejtDarsrvh87
	E0/HEh3Vg1+i36mZWLnFZePEPiJNVkbG1vnAmwj2CBiUu+nUxMp+rpL0lqKhF18hB+gfT4Ix02G
	y04
X-Google-Smtp-Source: AGHT+IGB5QJeG8ku54AAK1oYhHpchOQzwcbI7Eq/Mwh+iHar9n885imDNGmU7We54FoKXl1Rmirvqg==
X-Received: by 2002:a05:622a:114f:b0:4f1:cab1:9d3c with SMTP id d75a77b69052e-4ffb4a264c8mr245124531cf.57.1768212248319;
        Mon, 12 Jan 2026 02:04:08 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8e627absm119541151cf.30.2026.01.12.02.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:04:07 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 12 Jan 2026 10:04:02 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Rodrigo Alencar <rodrigo.alencar@analog.com>
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v3 1/6] dt-bindings: iio: frequency: add adf41513
Message-ID: <7ck6vexpeak47kob7niupkdg3nbyvp4nab7rqmz6niq4frf64y@tjnph6hno32z>
References: <20260108-adf41513-iio-driver-v3-0-23d1371aef48@analog.com>
 <20260108-adf41513-iio-driver-v3-1-23d1371aef48@analog.com>
 <20260109-translucent-violet-smilodon-ed1917@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109-translucent-violet-smilodon-ed1917@quoll>

On 26/01/09 09:13AM, Krzysztof Kozlowski wrote:
> On Thu, Jan 08, 2026 at 12:14:50PM +0000, Rodrigo Alencar wrote:
> > +examples:
> > +  - |
> > +    spi {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        pll@0 {
> > +            compatible = "adi,adf41513";
> > +            reg = <0>;
> > +            spi-max-frequency = <10000000>;
> > +            clocks = <&ref_clk>;
> > +            avdd1-supply = <&vdd_3v3>;
> > +            avdd2-supply = <&vdd_3v3>;
> > +            avdd3-supply = <&vdd_3v3>;
> > +            avdd4-supply = <&vdd_3v3>;
> > +            avdd5-supply = <&vdd_3v3>;
> > +            vp-supply = <&vdd_3v3>;
> > +
> > +            adi,power-up-frequency-mhz = <12000>;
> > +            adi,charge-pump-current-microamp = <2400>;
> > +            adi,phase-detector-polarity-positive-enable;
> > +        };
> > +    };
> 
> One example - more complete, so the next one - is enough. They do not
> differ.
>

Not sure I undestood this message:
- are those examples 'enough' as the second one is 'more complete'?
- do I need to change the second example to be 'more complete',
  because 'they do not differ'?
- do I need to create 'one example' 'more complete', apart from the existing ones?
 
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    spi {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        pll@0 {
> > +            compatible = "adi,adf41513";
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 

kind regards,

Rodrigo Alencar

