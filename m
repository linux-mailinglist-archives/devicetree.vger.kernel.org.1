Return-Path: <devicetree+bounces-255079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46350D1F676
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:25:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6BFB303FE01
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D9722DC357;
	Wed, 14 Jan 2026 14:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RUMwOu5n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B526280037
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400687; cv=none; b=sNZvlIORE1H1h/nNN+TdPOovfWROowkYeg7hhLpylE+JIxeBjUvIuVuU5rWdvHmL2gtRGGwcYWYNCCms7aD4cs11WNTwO2XiyFSSuzby/LXEto1GK04KmZWfXsRUpKaaz/5mIByUNCDO1PN5B8URYOL5TFNs4lFwDKWZGPKzYxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400687; c=relaxed/simple;
	bh=5oL6AvIqkyKwZjO0mD2/yYyQwRXx8TSv2K9qlKzrIXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z/+Z7ecETFsZ4JS+re8NsMNte01H7ITnli2vXIIjzzD6rcM1psjWQ9kapacyG5mrE+SqNhzhaPdhhGm+Wdv2PIk4Je1DfXXr26JKSKDz7v4Q1wobFbgwF4ZzH+gR2mtHCU/Em3BKG7gQFSMZtbq8iPLGXYi29OqvX0+89STGvDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RUMwOu5n; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so87859255e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768400683; x=1769005483; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ijENdGZX9Lgu2wTs3qW/G5R3AgDc664xhdb20AB1kI0=;
        b=RUMwOu5nLQqNO95IbNVJgOcZ6Ss/9l89DpfA8Y7a97Qzzr3+pqQOrsV/nAbeqi5MOM
         BueDuyx84ql+bJOsZt8m6lrgA7Ekx3r656bVODYGCjoti+jaYOEZaYLcm23Yvnw5+EVv
         3iDtL9I2VVa2Z1iX2cIA+1sWu3mfh1lQIJQEZQad214Bik4cKa1Dt+Ouv0SrSd93cK5O
         yz6Hzg37MXi5gVLmz9mrm+iwpPhiDaAoQz2KEJJCQ6LCitRIXbpyEzPEwz5XTluzHwpe
         EUjREbsq9ADAtJ8m9UBdl5JNISiFGc0MXrkpuJomoFWkpvS8JMZNbIxyVJa7PLt7gJEx
         m/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400683; x=1769005483;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ijENdGZX9Lgu2wTs3qW/G5R3AgDc664xhdb20AB1kI0=;
        b=pFYJ2s6Rwe0QimfzZlVJSEiegjNVzg0PG15GULAdew8BnFUcs1PTh6oyeKkwdaBI0J
         IAuaqEP5y+cXq2vstAUMjr1euCrznL6yU0jJ00k9qt+gxfEUawKBWGgFziFM8i0kR9Qn
         KXEr3NKfK/vtJTB0HKVz6zylypqbNWgfKQ7w08VEj2f9Yuz4TJw5SDe/bT/XyTxx2+QQ
         /Jd7rcGzH4kA5tMGoyOtlJne0zudnhpv+W4Flo8m+yxelfxuC0VfG5k8ZH4/LZ5q59E3
         SYtua19ECQRxP4QGYHVJJaAFlVseJwkCe/hGmBHxjUHcWT2CwCU09aAyImCQmbJvyazd
         6iCw==
X-Forwarded-Encrypted: i=1; AJvYcCU4JLm0e6npr9lOv9eO2S5iAz3ujzXi2Oc9/MqYdYZfE9jjdw567I2OZzZ9CQfag1Jgkm5UrccPPtQc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9bCNQzX40Knz4eZ7nWNuiArKGlhb6lCgJ4A2brMqHie3sIIav
	1hnZa86fn9h1uOrL36y9P/UjNAuk26sO8yRUhzu8iAFdn3ZjxsgScqec
X-Gm-Gg: AY/fxX4E9POKo0uxm+sjGcn8cudb/EduIetAKTzQ/cW054TJ+5Tuv6lA8PQbmA8UJyN
	Swir78jH9qJZqjUJLCwK3E27r+juwAdVSccz6g8Au9JrbGWKpF9bbUGfKbHQT8+fQZBQ/+h0T1Z
	FsOpsDM56SyKIMmpYpbLPYuqbjAEq+9wwINLCES32c+5a25aHTmoN20N1ftTBPJ1pNO4GGImvRP
	ZyCMRFytb9YTS9lZlh6Rfp5lfp2C7xXQzW4CEesPVTutZrIcJm1R0KdUOpGvidV9+fqpCREcTsx
	sZaOD9u8/O6HRoqn7qy5i7antNQQk3VmtASHT1f+HSET0aJjhRBJalyQp0ltI67jOJKRAM/W3BG
	/40TInONYAgSSSOZOcL/nXe3wL279lwShwo5rGHMkEMVCpRszsVdlbcXmwMdAh/k6RyGy15Holc
	kepzeFQdLYpfQ/qlLEA4WIlnr8q4vwh8m8cX4YEravQqbSAPN3FFbCRLtKIgMe8ePG
X-Received: by 2002:a05:6000:2dc2:b0:431:66a:cbc4 with SMTP id ffacd0b85a97d-4342c501145mr3034386f8f.17.1768400683257;
        Wed, 14 Jan 2026 06:24:43 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5fe67csm50308328f8f.40.2026.01.14.06.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:24:42 -0800 (PST)
Date: Wed, 14 Jan 2026 14:24:41 +0000
From: Stafford Horne <shorne@gmail.com>
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v4 1/6] dt-bindings: gpio-mmio: Add opencores GPIO
Message-ID: <aWenKb6N6mTJDipT@antec>
References: <20260113161152.3688309-1-shorne@gmail.com>
 <20260113161152.3688309-2-shorne@gmail.com>
 <CAMRc=MfLqoPvCiEtunvfidaRGAfZFbGM98y8vjj8R187ziUtdg@mail.gmail.com>
 <aWZzZWTjctHasCHh@antec>
 <20260114-agile-kangaroo-of-honor-963dc6@quoll>
 <CAMRc=Meicads1OAYM+bRN3B8P2Jt9=D=VNSL-KQytsUiBLaAbg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMRc=Meicads1OAYM+bRN3B8P2Jt9=D=VNSL-KQytsUiBLaAbg@mail.gmail.com>

On Wed, Jan 14, 2026 at 09:36:55AM +0100, Bartosz Golaszewski wrote:
> On Wed, Jan 14, 2026 at 9:31 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Tue, Jan 13, 2026 at 04:31:33PM +0000, Stafford Horne wrote:
> > > On Tue, Jan 13, 2026 at 05:20:28PM +0100, Bartosz Golaszewski wrote:
> > > > On Tue, Jan 13, 2026 at 5:15 PM Stafford Horne <shorne@gmail.com> wrote:
> > > > >
> > > > > Add a device tree binding for the opencores GPIO controller.
> > > > >
> > > > > On FPGA Development boards with GPIOs the OpenRISC architecture uses the
> > > > > opencores gpio verilog rtl which is compatible with the MMIO GPIO driver.
> > > > >
> > > > > Link: https://opencores.org/projects/gpio
> > > > > Signed-off-by: Stafford Horne <shorne@gmail.com>
> > > > > Reviewed-by: Linus Walleij <linusw@kernel.org>
> > > > > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > ---
> > > > > Since v3:
> > > > >  - Removed example.
> > > > >  - Re-order this patch to be before adding compatible string to driver as per
> > > > >    device tree binding patch rules.
> > > > >  - Add Reviewed-by's.
> > > > > Since v2:
> > > > >  - Fixup (replace) patch to simply add opencores,gpio and add an example.
> > > > >    (It was incorrect to specifying opencores,gpio with brcm,bcm6345-gpio
> > > > >     as opencores,gpio is not the same hardware, its 8-bit vs 32-bit)
> > > > > Since v1:
> > > > >  - Fix schema to actually match the example.
> > > > >
> > > > >  Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > > > > index ee5d5d25ae82..a8823ca65e78 100644
> > > > > --- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > > > > +++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > > > > @@ -23,6 +23,7 @@ properties:
> > > > >        - ni,169445-nand-gpio
> > > > >        - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> > > > >        - intel,ixp4xx-expansion-bus-mmio-gpio
> > > > > +      - opencores,gpio
> > > > >
> > > > >    big-endian: true
> > > > >
> > > > > --
> > > > > 2.51.0
> > > > >
> > > >
> > > > This is not a follow-up patch. Please rebase your fix on top of
> > > > linux-next. I already have the previous patch in my tree and will not
> > > > be rebasing the entire for-next branch.
> > >
> > > OK, understood, I wasn't aware you would not rebase. I will rework this rebasing
> > > on linux-next reberting my previous dt-binding: patch first.
> >
> > No, you need to rebase, not revert.
> >
> 
> Just to be extra-clear: take current linux-next (next-20260114) and -
> on top of it - create a patch that fixes the issues in an incremental
> way. No reverts. Also: add the Fixes: tag to your commit before your
> SoB.

Got it, I was doing this but preparing the series with a revert.  Good thing I
waited a bit before sending.

-Stafford


