Return-Path: <devicetree+bounces-253293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A8904D0A4EC
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 55FD430BB831
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E98E13596FC;
	Fri,  9 Jan 2026 12:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FFYdg3WC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD8235CBA9
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767963110; cv=none; b=OXBnG+rk9HpuzzjEhk3ZWIPFg08EAwgBQ+kZyooNgHzwfkvtin10k+jbcYkK10/3gBXZuvcWOMybwT0tKmoGvM2WwICGHdeOGuNGpj3lq+xHyQGKupNGCi2F4IkLkrtXZsOcC4WrNS83S6eX0tE4L6JFKDXF389tumosWei8ksI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767963110; c=relaxed/simple;
	bh=b2pdfqBM8QcOuodTV2+EEKDjVt4RtMF2UOfs35NWCzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d/jEb/Lc3OM7YnzdPe0j4VAL4041HW6fn3cS4yx5jGKI6ETM7G0mczqAh9MMvkaPNr4gWHxrVpOk/UTwP93epSJzUZ/jhsJDaHMk3O5tT5Qpa6p3N3fejVvy3CblvfTLEga3OIi2jHQlv/Zna5yY9sLkjy1zcEGjz60yFF35UJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FFYdg3WC; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47a95efd2ceso38119995e9.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767963105; x=1768567905; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wzhZ6qnhyB+hMkP+k7TywINSr9e1/VcrZMD9Hv7Wg9c=;
        b=FFYdg3WCgBIyCL5HmJm7P3u0kypDKbCo9XmFC/oaMQKVOl2Cdhw8ezCEbR5AcMGZmz
         JXMcQ/6qEvkafDc9hddjQXbi1hDW5NUd7pSk7MGgmFixPBph8LcVYEENMNoorp0gmfgG
         OBKYrvAYdmnt34X73AHaGvZ8GzzsFMkxY7GLkDSgxUzHJ7Va9jAVdd/i20JQKjQHYqsp
         CB7u/VeewJRUGGnvLz5FF1XRICVTIcGiu2dVz0GPk6fIAhiyfzvIUxd5K74DMKWLWMvv
         IDSdynLJU12jVUVNPklN8jwjWKe+4bzkNMvOOlhlmb6i5Ojqz7xi9We/YNfJCCCUnbaa
         ay/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963105; x=1768567905;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wzhZ6qnhyB+hMkP+k7TywINSr9e1/VcrZMD9Hv7Wg9c=;
        b=QviNAPmaVt8XckYMdi2qlvAzGl3D9Si3sTNo9on+7rp+aumbTe2/uM3aVJEAwrTrWk
         B7aJnl6J7qB7o5+yR6MqQonP3i04AMC+LbQ1s1a6w1DU3PL7FjaKU52x97KwgM+dXmcH
         wwLGXVFkFtTMRgTJV8hiSJGplJhIkMLkw87BWFOR/s1Tt8H95Pg8BoeWX4kKHFzOIf1y
         yk8PNinV5mXiOGqYkBnE3O8wkdb+VqQ0wRRgB0BmNqYOYj+6jCSO6OThgksf4JVP3tJA
         M4rld3eDYtymorhl5SiXTieanlCYuviW438pDRAjdhXhQHpNXRSS0Gy2MtCmYpbbkXHE
         1o4A==
X-Forwarded-Encrypted: i=1; AJvYcCXAmMSh2ZnGxh2lZIZGCrpsm8QN3ZkzEA7s7sL9QtnR+9C3t15BBIe7eXgD8t5Vqb6+X8wiPwl/gj5c@vger.kernel.org
X-Gm-Message-State: AOJu0YwnOeJjVjlo/wHmVK7GLMToasP6JaEJX58M6PVPwj9LRgpxPHYn
	QmbFkqBkbEyeVUofPPr883I94VLMUv8wpmQSIGDMq62H5YhpjqlfA6F4mGrtjQ==
X-Gm-Gg: AY/fxX4MdPOGLW3cNWyfgvJmzSkh/D8lwcOvg3SjfoOKiLQvRtiGOycfFwSeUKpmH6O
	DQNzJfCTiP8FfsbevBr4kqN9vpnceg6piwEpgPtG2oUzgM+aRHAX9/QAm4OlTOoM78PEhHve9CR
	wSZfTxDpNQUMyliOCsUQmZibA2memj7or+NKL4hwxjWzz+ARjvweaa+9kGXUH8teQWYmCNoDCM4
	JkVbSEGNW7dTElLo+rQNVnoSELDyUKOO3uLc8x09l88AdxLcThjPmY2BjdD17ASJQL6qqyJqp2g
	g3plGGICdnNKvaUaNnftjiS+VICdaQty7mtiXVktkYhAQcZQm5Z9WlgMHaLdrN0dtO/S2eGhSe7
	P8v/tHkKHONcqixcWgASt9HNTZgIawTtN+IarQrqeWbSqF1EN3bnIxXhO5tC3Xq6MUVlgH773sQ
	gwbYrwY24P8hx60r4ObOhbyvhH87hjKNk6MF+Uli8AYxeqRQYrjPnk2BQJffy/PnFx
X-Google-Smtp-Source: AGHT+IGcDcabrf0KiqabCe9igRWYL1ukIxgKapFHgqspyhXNU439sEDpU7Kdmj0l4SVed0DCTQbNxQ==
X-Received: by 2002:a05:600c:1d14:b0:477:7b16:5fb1 with SMTP id 5b1f17b1804b1-47d84b0a96emr108677495e9.7.1767963105326;
        Fri, 09 Jan 2026 04:51:45 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee5e3sm22332156f8f.35.2026.01.09.04.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:51:44 -0800 (PST)
Date: Fri, 9 Jan 2026 12:51:43 +0000
From: Stafford Horne <shorne@gmail.com>
To: Linus Walleij <linusw@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: Add compatible string opencores,gpio
 to gpio-mmio
Message-ID: <aWD53y15NuxrKGxf@antec>
References: <20251217080843.70621-1-shorne@gmail.com>
 <20251217080843.70621-2-shorne@gmail.com>
 <CAMuHMdUaO_PwWygW8qss47W_ErB4pm1Z2HQ+edvw1-x7ce7oKw@mail.gmail.com>
 <aV9o1LL0Ahip0O3-@antec>
 <CAMuHMdXYCNR0ANn152ghFExpWY_yZ5+kyFGGRwA+X-EFUvxZXw@mail.gmail.com>
 <CAD++jLm1u9ChqsftwvbOptiG3Qo2KWxPjqN2snOVuZDYuVST5Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD++jLm1u9ChqsftwvbOptiG3Qo2KWxPjqN2snOVuZDYuVST5Q@mail.gmail.com>

On Fri, Jan 09, 2026 at 11:07:17AM +0100, Linus Walleij wrote:
> On Thu, Jan 8, 2026 at 9:41 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> 
> > > > What is the rationale behind using brcm,bcm6345-gpio?
> > > > Given brcm,bcm6345-gpio has 32-bit registers, while opencores,gpio
> > > > has 8-bit registers, I doubt the latter is compatible with the former...
> 
> Yeah this needs to be fixed/reverted pronto :/
> 
> > > I switch the size from 32-bit to 8-bit using the reg = <* 0x1>, <* 0x1> setting.
> > > Also the reg addresses of "dat" and "dirout" are different for the real
> > > brcm,bcm6345-gpio.
> > >
> > > brcm,bcm6345-gpio. Example:
> > >
> > >        /* GPIOs 192 .. 223 */
> > >        gpio6: gpio@518 {
> > >                compatible = "brcm,bcm6345-gpio";
> > >                reg = <0x518 0x04>, <0x538 0x04>;
> > >                reg-names = "dirout", "dat";
> > >                gpio-controller;
> > >                #gpio-cells = <2>;
> > >        };
> > >
> > > vs opencores,gpio Example:
> > >
> > >        gpio0: gpio@91000000 {
> > >                compatible = "opencores,gpio", "brcm,bcm6345-gpio";
> > >                reg = <0x91000000 0x1>, <0x91000001 0x1>;
> > >                reg-names = "dat", "dirout";
> > >                gpio-controller;
> > >                #gpio-cells = <2>;
> > >        };
> >
> > Exactly, the register space and register widths are different
> 
> ...as proved here.
> 
> Stafford can you send a fixup or revert patch?
> (Only need to revert if you can't make a fix quick enough, which I
> think you can.)

Sure, I'll send a fixup to the devicetree binding and a update to the driver to
just support opencores,gpio.

Hopefully, that can be picked up in time by Bartosz who has this one staged in
gpio/for-next.

I'll send the 2 patches as part of my series for OpenRISC multicore fixups as
the devicetree's I have added have a soft dependency the patches.  After/if the
patches are pulled to the gpio branch I can drop them from my queue and I'll
just have to make sure Linux merged the GPIO changes binding updates before the
OpenRISC updates during the merge window.  Let me know if there are any issues.

> > > The opencores,gpio setup does work.
> > >
> > > Now that I think about it, would it have been better to just add opencores,gpio
> > > to gpio-mmio.c compatible list?
> >
> > I think that would be better.
> 
> Yes this is better.
> 
> I should have seen this, I guess I was sloppy :(

I should have also thought more, but I don't do this often enough to remember
all of the rules.  Sorry for the head ache.

-Stafford

