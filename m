Return-Path: <devicetree+bounces-137577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49278A098F7
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 18:53:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4570416B2CD
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657222144A5;
	Fri, 10 Jan 2025 17:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b="D7JaW4fY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0869214231
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 17:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736531607; cv=none; b=IGVEDqh4kj0GYM9fS5zD8GVG8sqC9WGAlqVWli4HKB/jIgr9zOB6dQC0Oz7GwjUfzBJSikoGuIMJXKMiSyVRuurDnRLu3uziMaqXjqiBksJ6WTuIwJ918FWRM1wN5jkVri9bK2j+gpGS4PgfpQgcshma5VslJIEJasXaeiI4YGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736531607; c=relaxed/simple;
	bh=5huuw9HXKrRNxSbHfo2OvXsv35m9fsr1qEEkOID/hsc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lAZP8xGHxeVT+6UFFwYNj7RUPxc67Rb8tJzjB2ER2dcuWIafn6TL42ee2e+aaLLDUOICdXZR3r2+8d/0luBNbKctaI44alc6ITlSL7WNANdWlieLc7H9e8sajqGWfPj77CzWqEvxN/dS7qwJTk+o+oohrBn6Z7LcHXms9t2LFzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net; spf=none smtp.mailfrom=minyard.net; dkim=pass (2048-bit key) header.d=minyard-net.20230601.gappssmtp.com header.i=@minyard-net.20230601.gappssmtp.com header.b=D7JaW4fY; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=minyard.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=minyard.net
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5f31f8f4062so1012313eaf.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 09:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1736531605; x=1737136405; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6JOagae3dW1lR5FIp/nsWts7K+C85jj/Xatk2ej+x4U=;
        b=D7JaW4fYAwAm7w/aWe0t5u4UKpltxLzfe3C9WHBaufI+N76epPlKT553BtwpmvF/VC
         P59fCvRWmMiOOMlHvG3uxU2+hrJd7xWWxIDoo26H2IzSG9bTqkDAKi797FQ24SR75oo1
         NImaKqePdaQ+MOG9IQuIYLt3o7mMwlE+bxjaMckcnx3/LY1WTdYrvmcPCJkI4dW/cAn0
         KrV9XwN8e2B95xRfPga9FKAO9WYcmqBsItTBsKpCHx316qU8oUpF8XenodCW+DuylLUc
         l4oArQnyZC4mqAY3VIChfG9ukeedpzwqHwMb0Z9MhnoFa31xgtNGbmsLhteLtQA4qHwp
         VBMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736531605; x=1737136405;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6JOagae3dW1lR5FIp/nsWts7K+C85jj/Xatk2ej+x4U=;
        b=l2/BgB1UH+VDvTFH8H0s/8SjYDwIrtXM6Hbwv+h8Fb8aQUxXkXtgtPN9VKuJRKBZw1
         r5pzyAqdid+HQAEjMqXqMa3wrPH1f3ZM+IH3U0ZHQaD25XeFLsMsChmeKrzVVWpTZmE8
         1k7mcKfRMmKWtwzzoErMQSdslGSnS4yKAVwpEqO6wxnNUBEo+nm8H/g99z5915GeRDmm
         5WQWb7TSsPi93UTUhTekwAD9c45IGcTuTxMar7NdHG9AAfbnwNTPjkm8BV1yIvzj2D5u
         8iABLa2Msk9BpfrEeNgGnqNZxjCG6zCBjKj10l3VlKDIJJKkoKnimP/Z6SoLZUjNp/kp
         mnRw==
X-Forwarded-Encrypted: i=1; AJvYcCWVHANlIgAQvabOZJ2Rwncy9ZS68cQauhorV/q9p5zyeFM1cxcSmeFsZtgVOjgYNQqzqHVexs0fAG3Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzrlSkoL/rnUSh/8VL+lOye0uqZuxfvXxPDwX6j6UwPy7+swBff
	xhO1lLPRSYOOxaquYDuDOP1O8PSHOodeeExLb04ENIMGYqXFjFWx1hWvgu/WgzQ=
X-Gm-Gg: ASbGncsaFuHVLqAhvgC42uUIG/DMCszcpiMhESOYOdypuNyTsPMA/HhR3fTje6PZv2a
	AJqOXaF2ZZwiFnWBSCJ0xLqJFmk81Xrm1VP2EtqDO603B6qCvmThBFT81tTG3YQpRz+UdG82poI
	ynSw/IADeKzoWJuIVDZ6h9h+PqGYnaMmxWKCvESkS4z+pj0BkWkkv1jIZ/F+MlcIL/ppVR/aU/h
	L6EDXdWEGhY5GfPZLrW7Kwj+wM/jgBqGfg8d0+ifLbfZ4MoJm40OnUHKLMj
X-Google-Smtp-Source: AGHT+IGB0PKOvj7h3ojvbM7pAuyzSK65qG5xXrDh822hP3luACM/ibUleffXIwmcp6JhMd8+ciJOnw==
X-Received: by 2002:a05:6870:a691:b0:29d:c999:b90c with SMTP id 586e51a60fabf-2aa065118c4mr2126228fac.1.1736531604651;
        Fri, 10 Jan 2025 09:53:24 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:1850:cb65:a40d:8a99])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ad804af3b6sm1080167fac.4.2025.01.10.09.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 09:53:24 -0800 (PST)
Date: Fri, 10 Jan 2025 11:53:18 -0600
From: Corey Minyard <corey@minyard.net>
To: Rob Herring <robh@kernel.org>
Cc: Ninad Palsule <ninad@linux.ibm.com>, minyard@acm.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, andrew+netdev@lunn.ch,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, ratbert@faraday-tech.com,
	openipmi-developer@lists.sourceforge.net, netdev@vger.kernel.org,
	joel@jms.id.au, andrew@codeconstruct.com.au,
	devicetree@vger.kernel.org, eajames@linux.ibm.com,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 02/10] bindings: ipmi: Add binding for IPMB device intf
Message-ID: <Z4Fejhd_qPfuVLiw@mail.minyard.net>
Reply-To: corey@minyard.net
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-3-ninad@linux.ibm.com>
 <20250110160713.GA2952341-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250110160713.GA2952341-robh@kernel.org>

On Fri, Jan 10, 2025 at 10:07:13AM -0600, Rob Herring wrote:
> On Wed, Jan 08, 2025 at 10:36:30AM -0600, Ninad Palsule wrote:
> > Add device tree binding document for the IPMB device interface.
> > This device is already in use in both driver and .dts files.
> > 
> > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> > ---
> >  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 44 +++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> > new file mode 100644
> > index 000000000000..a8f46f1b883e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> > @@ -0,0 +1,44 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: IPMB Device
> > +
> > +description: IPMB Device interface to receive request and send response

First, thank you, this does need to be documented.

> 
> IPMB is not defined anywhere.

Indeed.  At least reference the spec, but better do that and provide a
basic description.

> 
> Which side of the interface does this apply to? How do I know if I have 
> an ipmb-dev?
> 
> This document needs to stand on its own. Bindings exist in a standalone 
> tree without kernel drivers or docs.

At least to someone who knows what IPMB is, it's pretty clear that you
are saying "The i2c device this node is in is on an IPMB bus." However,
to someone who is not, this is all a foreign language.  This definitely
needs better documentation.

Why do you have a "reg" property?  I don't see it referenced in the
driver.  I assume that's the I2C address, but that's going to be the
same as what's in the containing I2C node.  I don't think it's
necessary.

-corey

> 
> > +
> > +maintainers:
> > +  - Ninad Palsule <ninad@linux.ibm.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - ipmb-dev
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  i2c-protocol:
> > +    description:
> > +      Use I2C block transfer instead of SMBUS block transfer.
> > +    type: boolean
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ipmb-dev@10 {
> > +            compatible = "ipmb-dev";
> > +            reg = <0x10>;
> > +            i2c-protocol;
> > +        };
> > +    };
> > -- 
> > 2.43.0
> > 

