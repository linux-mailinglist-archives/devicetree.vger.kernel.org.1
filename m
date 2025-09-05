Return-Path: <devicetree+bounces-213320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D96B0B451A9
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:37:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EB717BEE5A
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218912750FA;
	Fri,  5 Sep 2025 08:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Ha4Y9ktL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECC827144A
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 08:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757061304; cv=none; b=e7ulr6a4gKXgRWoQFzcyOdzBGOURyUJ/cnxPj0xXCRoxUpB/nJn6DVyX0mxmsg/gxJzN0kr221124idPGcz9yVAXIED7yBKGRfERW7EuuHHLWfUwV8KvkjnbR2lp8k8N+deQzoopRYZQVnkKyA4k/j1tO2WGGGJR5D6j7pJ2fcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757061304; c=relaxed/simple;
	bh=gUFlgVxs2HwY8p21h+fiYn/r/RFcmPpeFJj4rvWWkqg=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lE1+t/FLpTdKYzLZruLdqSm9eZVu6MsTxqNVveoY7AFpwVBeS7LE8lbzJXyz47jrfVdkBKtarL9LRzRqUovpuDbG7KArs2gp6/DR9koYYRwY8NVVCI9F3GW5MoVewkRf1m1chilHAD3e/0vn7bllUZSfynczxVShFfC/N6BTd9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Ha4Y9ktL; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b04679375f6so308646266b.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 01:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1757061300; x=1757666100; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I0QfRj9jvOthmyPm6ramOPb3vkM0waaC133mmZ4sCqQ=;
        b=Ha4Y9ktLkPlhwA7xBsC5b6AqtI2/F8Nsn9ZPixBfOphx1B6ecpfVyWD6sweAO9fZ6g
         oRQJnMY+wZDKbvSp71yITmhgAi/gkJ9pZhqjx8B85VLhKUmdqwXvqhebT8a9b16Vcsl3
         LebL73+kA61Y6FB/gXbK00m3uV7nkIkade3Ix0QeFygMs6OgC3d7Jzn7kTWmLwEPyAoZ
         zOhC1Rl9pQE1e5WdSkiLSyrQr2refBvpmWBMk9726mIFxeQTRjzRtWIGAJnvTFBl/srl
         18NigLvnzRI4M4Q9u2O6K/SpxMNsyDgzUgMClnYVjgdnK4p7kKAC567u8negePEhYWW0
         wpEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757061300; x=1757666100;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I0QfRj9jvOthmyPm6ramOPb3vkM0waaC133mmZ4sCqQ=;
        b=tVjXK1SxdSvI6gGdX8ASgZsV/84fbLOB8yh/5ueDMYmFKIlhJvu2rwyXkrlcJKPvnn
         MUz54br6YPDSrXyGRlzdwPmu/K95JcetUPp9b9jrg4GKa2GJ6ZFMbGTsRgSU4IQajg9N
         C8/p1gZoebzsE/lVHDhm09a97aaQ1YuGRL9t8phXftSuKC3BDDDszMhKeDuOLUZrqEhV
         fgtCft7bO7tWL6UuPepbO3AZunkqU1cplJ9jwcL7LOmfBwddPuGdTwQpgkuELBHxO32l
         zs1UI00tqy2iAk4CKWAvBUExAi2vJsBg6XzXFMt8SkQJVkDINGLbmmLxpQXmNhyG+jCv
         5qLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEUgLrlCrXmhwxCxbB8I6K4vVNbQfUxRpyeyoKjm2wh8VJJN3ToUBjBrh4BOdeiwjU55IF/Wckcex/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi+bNCcmvfdo3TpPCkqitMSyWU0vHN++C+8sg5F7AF5e5WK53x
	ZzRpUjpJqju89YDuk1I2bEpOzkTFpH5R+G8JwNHm9Qhsc5jqA4SPWkUaM8/dLDvaPFQ=
X-Gm-Gg: ASbGncthPiDEuSPsHmLkn0ZT56cu+rM16OqCISfvvtXCP6hmJC7T+W+ycs9Ogi3xuYJ
	FGPNgnuKwJ0k66jXnVbDX5rltILKQNWxfjZJPYmrrhCiTmEGFlse6Dcya2UrLV7zX99+nWkxEaL
	xV8RcDW8UKBXU56n8Ny+QIfLH/Q/vQ5EAHLYcvNAwDTHty6FPaGohkA7mNXZIUHYmcYlUSFamX8
	1yz4KxOVbUUJJbfudE/r50QGjTxZ/t4TbvbElSL9jgMDGlR/RTBcQmKB3sMGCn6SduaUBXtgRbj
	Rm+l6PdMANnErQ4pp99opDpEYTAfoZ5SeDez0X9mW/XeCjy0MFwiHpMqqLDjVMx+WQQR38ZOV9M
	3lU7u8o09iRWzvhcA3zIcj22wzr7YTJYwGYauLeld77PcgTNQHIvyfWZnPhuD/i6TbqHSloTAaJ
	CUVVVFLQOGELY7sp11s/T5OhQxzdKzPzNgZ/1o1+m/07Y=
X-Google-Smtp-Source: AGHT+IGMvV568alFhaO1aRFyGGr0BaG+pxGIbUoe47SM2b+PJhzJ5Zs/nWs2YwiwF5F4lh/jU0qAbQ==
X-Received: by 2002:a17:907:9410:b0:b04:7708:ee36 with SMTP id a640c23a62f3a-b047708f30bmr745911066b.9.1757061300349;
        Fri, 05 Sep 2025 01:35:00 -0700 (PDT)
Received: from localhost (host-79-31-194-29.retail.telecomitalia.it. [79.31.194.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046f2dda22sm541367466b.40.2025.09.05.01.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 01:35:00 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 5 Sep 2025 10:36:57 +0200
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com, wahrenst@gmx.net,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: pinctrl: Add support for Broadcom
 STB pin controller
Message-ID: <aLqhKcsJPB5ymEPF@apocalypse>
References: <cover.1756372805.git.andrea.porta@suse.com>
 <7ed0f2779829f4e63b69d8cf5cedda9f849996bc.1756372805.git.andrea.porta@suse.com>
 <CACRpkdZAROUdz1SJY=h_dcUiojazO1fYxGJ8X2KEE6ow7oFZaA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdZAROUdz1SJY=h_dcUiojazO1fYxGJ8X2KEE6ow7oFZaA@mail.gmail.com>

Hi Linus,

On 20:58 Thu 04 Sep     , Linus Walleij wrote:
> On Thu, Aug 28, 2025 at 2:45 PM Andrea della Porta
> <andrea.porta@suse.com> wrote:
> 
> > From: "Ivan T. Ivanov" <iivanov@suse.de>
> >
> > The STB pin controller represents a family whose silicon instances
> > are found e.g. on BCM2712 SoC.
> >
> > In particular, on RaspberryPi 5, there are two separate instantiations
> > of the same IP block which differ in the number of pins that are
> > associated and the pinmux functions for each of those pins. The
> > -aon- variant stands for 'Always On'.
> >
> > Depending on the revision of the BCM2712 (CO or D0), the pin
> > controller instance has slight differences in the register layout.
> >
> > Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> 
> Fixed up the extraneous label and whitespace error
> and applied this patch!

Thanks for fixing that up!

Regards,
Andrea

> 
> Yours,
> Linus Walleij

