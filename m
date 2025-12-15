Return-Path: <devicetree+bounces-246751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C416CBFBBB
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31B93304A8CB
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E68B34572F;
	Mon, 15 Dec 2025 19:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hP33xbMo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D203451C8
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765827285; cv=none; b=V7nmpzTLLdTdcOI6LVL/KO92gsTmDaeaQcBLUgrhMwgabFalFt6tXsCnV9xFTpllFZhp6rbqLcxrv9/HUIQOwfrfSWygCBBAdRVsTDACh2+gsE8qAiS9CSITOIuqWWK10sS+rmZZoMDte/UwJHUMb9d7icvBQO+PuzpCuwbSmgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765827285; c=relaxed/simple;
	bh=R9rr7JYAlu4ut1klPHqgSod04bJtytEccLyOYIIOoOE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RGcs2OcnopocPsIbfmYsYpXYr6ABL3NmKvhpbTzYxJzDS/wx6oXjJvy9iO1nG+T+iF8k6NiqhFqg0coKn8Pgf99P/UJLIv+87B0kZeiwce+iaQHOAdEa9WZpiBz8cO7PL+9oFn6566Tm06MvnSkuNd3yCKkxgyd+LG1rFxukcNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hP33xbMo; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so29810545e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765827282; x=1766432082; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xvsN36HEjkdkzaTc/2dKVIMfjzjS0gkF6l57K40dHSI=;
        b=hP33xbMogz6C+7KYeJ4qUY2y/7SUagcVMZnRLJK1gzaibawRUhT66dJ6GpTu/C796Y
         Rxo4076qBEOjdfB5DJwbxgrMHLQvvtufQvjED7i3vXS3Ksvg1ng44+lrUJVbEudf/kBC
         asxaA7eMuS4/vMz2Rbkq4R8UjtHx7dpKnTtWFSSn6GHDTl7JhQk+jpZItmTkQGmk+5Zv
         7rWDGBBe9WY9AoQ6s8qJ0qKABXDHBzLctwmteSMzoMFTftdVivb8eH7mzSsvGQD/PO02
         3412cSpQ4/Q7Hpop3uUoS4FFZ8vr0HVMsPL2GrnOC7bSp7W/FsyeAyIzC2bbDKEctIoa
         o+yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765827282; x=1766432082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xvsN36HEjkdkzaTc/2dKVIMfjzjS0gkF6l57K40dHSI=;
        b=XORVHtidaXPV+KaBtlrf+Ic2C0/j0wUSE/TZHqwBvKKfU7fpxJhNlLObqaplNsDtxc
         TypiVyUdMf6jn1ECz0MVf9kfe1z6vRRgBo443dLAo5rJ0XvGVtooScrSpX1kmWedbw7D
         XsoFVp0V9PWLpnbo5DXapZs0YcMxn1jD9sj6XA9zeHYHEM/v5N2uZ4sUy5FwIBSD6VHc
         IOPnhmN/hL6E72A5MUFKNxi4U/rXSToixg1j6Epw87dIoBMbmKQUv0c7j3w2tvPG8bUl
         qGx3Z0jHNgxHpclum5O1HOY3RwUZjqoTQvr5ULz8SfMhocu5ZnrECnigq0nMKpM80WTd
         TYXw==
X-Forwarded-Encrypted: i=1; AJvYcCWnjvFU2q8HKoxla6ylGPSVXJRmmzZG6+PoV+64KUdCKpNeEGGXGIk/eeD79TfrSV7OoLVZxTPzz9Sw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5QMH3aa7zh7KJ2M4Kl22XNjhHZMVBNbkQmxL856wduEvCmHWz
	eoohCWuD31zvsKs2Z+opli1vETk+xVrBEaexGCTyiyEhji4SpBV6v6T4
X-Gm-Gg: AY/fxX5XkwMmO5Khz3F/9awHSYjSgvXQddFspZm7j+VcXHRdaPmjnPHrvYqbSUqUbE8
	m6QqA36HmqIx4SNm5+96SMVE0wuJhdJQG0Eyemoc2r2tjwzSdFKavTUBStIWfuCeV6TB43DZbpQ
	S/Le5nuE3uS0ZEY+PcTH7izde/Pre2xdvG0PB5K+KNQDa4tSvKLyDFd3D3fa4eHd5q7YZLDbapx
	M5evPT5XO6G0ScHAbqhcQMKyDC3tXmS7Ub3XGwN/MO+5dLkBYJabu+H0angBRdMqu1NBDlVamp9
	uyuFGvks6tdKut8v+fe6B/iFXrtU2UW0rKvaRCqlkt66LN+QLDrQU2Bd8ILgXliQHcIHwxfImJD
	+7FC1hx6ZVoajJzV0Rw6RhRAd44sUUDKss8Ur89BJnaR2/vR6mQCsFj0PVjZkjdznPYNXZEjZgq
	8241Qk5Urn3m4p1c6dhGfMzS7JQaEV1H8EEj5SLkk4X2I3ITrL/j8PHJnhPyAkaRtk
X-Google-Smtp-Source: AGHT+IHqMmTrPYwvoqeuDlvMpEDl0MXgKJmnwWH2vCQFY8SiusRi4m3bCAkknOzdZ7YPRYj3LhSsRw==
X-Received: by 2002:a05:600c:3ba2:b0:477:97ca:b727 with SMTP id 5b1f17b1804b1-47a8f907d9emr138780595e9.19.1765827281485;
        Mon, 15 Dec 2025 11:34:41 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fbc6e3392sm19493062f8f.13.2025.12.15.11.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 11:34:40 -0800 (PST)
Date: Mon, 15 Dec 2025 19:34:40 +0000
From: Stafford Horne <shorne@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: Add compatible string opencores,gpio to
 gpio-mmio
Message-ID: <aUBi0Fid8vF-G8Wl@antec>
References: <20251214180158.3955285-1-shorne@gmail.com>
 <20251214180158.3955285-2-shorne@gmail.com>
 <20251215-skillet-perceive-2b564a29ed71@spud>
 <aUBWMbKLMWO2Wv_B@antec>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUBWMbKLMWO2Wv_B@antec>

On Mon, Dec 15, 2025 at 06:40:49PM +0000, Stafford Horne wrote:
> On Mon, Dec 15, 2025 at 04:57:45PM +0000, Conor Dooley wrote:
> > On Sun, Dec 14, 2025 at 06:01:41PM +0000, Stafford Horne wrote:
> > > In FPGA Development boards with GPIOs we use the opencores gpio verilog
> > > rtl.  This is compatible with the gpio-mmio.  Add the compatible string
> > > to allow as below.
> > > 
> > > Example:
> > > 
> > >         gpio0: gpio@91000000 {
> > >                 compatible = "opencores,gpio", "brcm,bcm6345-gpio";
> > 
> > What you have done below does not permit this, it only permits
> > opencores,gpio in isolation.
> > pw-bot: changes-requested
> 
> Understood, I was not familar with the new schema. I was trying to follow what
> was seen in some other patches, now I see where I went wrong.  I will fix this
> and use the schema validation tools to verify.
> 
> Thanks for pointing it out.

I think the below is correct. But, would this be ok to put in one patch?

I do:
  - Convert compatible from simple enum to oneOf.
  - Add items: for the openrisc,gpio compatiblity string.

 properties:
   compatible:
-    enum:
-      - brcm,bcm6345-gpio
-      - ni,169445-nand-gpio
-      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
-      - intel,ixp4xx-expansion-bus-mmio-gpio
+    oneOf:
+      - const: brcm,bcm6345-gpio
+      - const: ni,169445-nand-gpio
+      - const: wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
+      - const: intel,ixp4xx-expansion-bus-mmio-gpio
+      - items:
+          - enum:
+              - opencores,gpio
+          - const: brcm,bcm6345-gpio

Thanks,

-Stafford

> > >                 reg = <0x91000000 0x1>, <0x91000001 0x1>;
> > >                 reg-names = "dat", "dirout";
> > >                 gpio-controller;
> > >                 #gpio-cells = <2>;
> > >                 status = "okay";
> > >         };
> > > 
> > > Link: https://opencores.org/projects/gpio
> > > Signed-off-by: Stafford Horne <shorne@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > > index b4d55bf6a285..0490580df19e 100644
> > > --- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > > +++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > > @@ -23,6 +23,7 @@ properties:
> > >        - ni,169445-nand-gpio
> > >        - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> > >        - intel,ixp4xx-expansion-bus-mmio-gpio
> > > +      - opencores,gpio
> > >  
> > >    big-endian: true
> > >  
> > > -- 
> > > 2.51.0
> > > 
> 
> 

