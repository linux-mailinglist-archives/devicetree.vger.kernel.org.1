Return-Path: <devicetree+bounces-253642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCDBD0F729
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 17:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57F9D3050CCD
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 011BF34C145;
	Sun, 11 Jan 2026 16:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="izhscTgG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99E61CAA68
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 16:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768149281; cv=none; b=eQOSblW94zSSKYXVuXZiV1fFbRDoz66r2f49FYrEJbP8BcDelQRJLVoM8t2LG+90YBKLMiVP7Pe6TvJWo3i2pvx3Br8FXBgQtJpqSN/S7+FrqfW2HLZ0sGhvFZMYTzmQ9oBhsCizEs7U3b15zwqbCVJBg3SkMFRJ+qkCmz1xAa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768149281; c=relaxed/simple;
	bh=F+U56dSbf7Zy+QbKFDejhjPm0vpdjDs41/JBQT0YeyM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=etDK83mOb8qsS97bFJNepzTGJl+mYgRqwfKyWcixmtS5eEwosjIEU6M3tw2mVcOcNR4vdn1Q1N1skVGDUGZQtel/qP2ZkwHNho5wr9u9tKgdxIlgVrNiBhs7N564o05fi3rtv06NbJBdC82TSQw2C7IMuSc2u8mKQIkD0bMPqV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=izhscTgG; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so34292455e9.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 08:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768149278; x=1768754078; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p8q1LsrMBmg/TGb8G1+4FUjTEnWz4H6p2nQGEZCp0b4=;
        b=izhscTgGQiCwnhQ+XHOzvZXbbf8yk5vs0bWRVczqQvjg2gd7yO8m60k0m7RlSPn78U
         DBM2757kxeUTZegXhR9HwkLqMQ1zytxTnWmfspmvf6uiSNtSMo7XXasVSbes7U1CKfuz
         flC8Ynt5LAgh++SFRMgUYh3yNNRjhZzg11oOIntF9z7o9MWfAmJjq4Q3hE79/sL/av7w
         Jk4Caot698DtgqnGvbPBA2ISw29/FwsMRmaLzWtvDxyv1Pklu4BcppKtPkTHLTSwjNY6
         4O3vsCwCk/BxTrumVNeS5UPZz38QB34MvqUDoOpUwWevb3+y5TPtq9WPEToR1lhoDCTW
         0afg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768149278; x=1768754078;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p8q1LsrMBmg/TGb8G1+4FUjTEnWz4H6p2nQGEZCp0b4=;
        b=iN51oCzEsqgiWkDuQMK/GC8r/yOiDegHCg1rEoUVeRgdiHq+umibCJjHeMvbXzaHZI
         wzB+3WuTgoqGmh0ClVIaYKKnj9D7ULn1amOl8f3umpUP62Q8ZyC9iLhRSk2q4YIB++1i
         sYpSVquSknPTRzK0hCliJmfjKnSi09EbIcm0qECzcbTTse5gtTs1vXThLBZG9udpW09n
         XP961921868g4Wq+c+FcbegUR9ngYeEz2XKFtA8RU3uu/Z9o15BkmXNPqKUihQnO75eR
         PW4h0jvoTlKxG45FsrKnhZyoMnQ0z3/5Bi4RIc7mXLllW1+cugurZd8dMnP2YGGvhMP+
         M0+w==
X-Forwarded-Encrypted: i=1; AJvYcCUUbyIZRrgxDyoK/QybsOZasuz5CYa52AOyW91usL5KOaRSRzXXXEIx1zuq3l6VPzH4o3fSV+aGmPn7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5RM4rLcVGwODRpp8StyYwdGSUGWwtVVbZHYbzMp9t83+AVCy0
	OjGEWpQcd3O6UzJciLikLKteLxO2H91FitH1BCOIvLAQBGe7PZZHss2R
X-Gm-Gg: AY/fxX6gGtIcfZcoCE7nuRgl9JCoa5ZWIlFNZpSMYU/A4ma/SIe660LHL95iOH7oV4Q
	3aHsBXpZ4mnUjR7rkt8A7UEQPc2tbPZocg7Hq4yd0GZT/ADWyatnKlgjGDgbRtMbHIjc/+kcY/F
	zrtV1dDBpNK2iTXkNnkqkXM489srExoVSlsvGhBBfKE5GmqCpmhcSx8YejXeF/MxJQDxUpBhMRm
	VqHFhGJPyyG+Cu1+buS0XZk9XqewMBryNLDzHVl15EXbYMfsSkPNqiAVydZZj7RPNIpZpiVIBJA
	LByjcqXr6DF9CZE1jS3RXZHU6OTd8UAPsZLHuSlo6/VUkNYydL25BKyA3czc+/C+8xBh+7TvptD
	7QxSCxdJ7WjHUXfm0Y7Wvn7bxDSJdpSKaoO+HXmT+WTPtJxZh5cYAqfpLbN/hqacGQtNqdDRguq
	EddDJLjP38uNpRyrD1ztKDKT7OLozIJo5Sqt55Ed3m41nXWemXSshivZnhjfYtRJ+pcg7pemTfG
	9A=
X-Google-Smtp-Source: AGHT+IFYvLDVG9dfmgUfUU3OGeAq3xGgS7rQ4R72Ej+LSG+5Vt262FuiLPk/JG1Eub29aEzaeex3eA==
X-Received: by 2002:a05:600c:4713:b0:477:1bb6:17de with SMTP id 5b1f17b1804b1-47d84b5b43dmr200425195e9.30.1768149277862;
        Sun, 11 Jan 2026 08:34:37 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d865f0cf2sm109933435e9.3.2026.01.11.08.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 08:34:36 -0800 (PST)
Date: Sun, 11 Jan 2026 16:34:36 +0000
From: Stafford Horne <shorne@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/6] dt-bindings: gpio-mmio: Add opencores GPIO
Message-ID: <aWPRHHhdjGE2f8aT@antec>
References: <20260109134409.2153333-1-shorne@gmail.com>
 <20260109134409.2153333-3-shorne@gmail.com>
 <20260111-amorphous-cow-of-stamina-6f2720@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260111-amorphous-cow-of-stamina-6f2720@quoll>

On Sun, Jan 11, 2026 at 11:20:38AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Jan 09, 2026 at 01:43:53PM +0000, Stafford Horne wrote:
> > Add a device tree binding for the opencores GPIO controller.
> > 
> > On FPGA Development boards with GPIOs the OpenRISC architecture uses the
> > opencores gpio verilog rtl which is compatible with the MMIO GPIO driver.
> > 
> > Link: https://opencores.org/projects/gpio
> > Signed-off-by: Stafford Horne <shorne@gmail.com>
> > ---
> > Since v2:
> >  - Fixup patch to simply add opencores,gpio and add an example.
> > Since v1:
> >  - Fix schema to actually match the example.
> > 
> >  Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> 
> This does not even apply now. Your previous version was applied almost
> one month before and you WERE notified about it.
> 
> Why did you ignore Bartosz's reply?

Hi Krzysztof,

Sorry for the confusion, we discussed [1] this patch in the last Series with Geert
and Linus W. We decided to Fixup (replace) the original patch with this and a
patch to the GPIO MMIO driver instead.  I pointed it out in the cover letter but
it may have not been clear.

I will reply to Bartosz's original mail too so he can understand the intent.

[1] https://lore.kernel.org/lkml/CAD++jLm1u9ChqsftwvbOptiG3Qo2KWxPjqN2snOVuZDYuVST5Q@mail.gmail.com/

-Stafford

