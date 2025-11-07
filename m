Return-Path: <devicetree+bounces-236216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 610CCC413F5
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 19:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 682CB4E50A0
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 18:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6B13346AB;
	Fri,  7 Nov 2025 18:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UE6nluFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9946C326D4F
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 18:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762539384; cv=none; b=jNM2t9OblTRErSF4kmlsQCIRkr6pGyCIL3MxxjXj5YcDesXnLqyGEeZaDafcUFdFnl6icsL1Ah4rr9JdR3LqDT4YKdehwYTEmPIYfDAS1J+4utAsei/zEyQs6mUr45p+4G6eP1M7bjehTnyn2ITeM6UqVCl8IxW0Tgx9D3GXxLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762539384; c=relaxed/simple;
	bh=7NAI5FTEyIjlm2QNRL+eBBHPdSk1Sz6seoRXTUUH+h0=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eAfBCy+EVKe9L+qq57Y9yQYnXjO485kQeV/oh1RfmQ8CnnLpmcufudhX0yMc7RjdpnvYWsUw2VAp4gkPECJhoiScDXvGCUFXlYTLekFwCRaAfxZjBuNKBYd9wMky74iU+sWGxs62YdOXsdvc3mA7PF2S24dGNTX6EWeycra+l5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UE6nluFp; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-429ce7e79f8so805623f8f.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 10:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762539381; x=1763144181; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tVJ2xtJlmj5EezO+VKSHrAcAYjS9yDJNYT/T6/c6kPg=;
        b=UE6nluFpxEZoWh57vmSk/hMa4YWOQZv2LrubOYKt080kzcbRhfKlVsjzu527iAxx3f
         i4jH6LbeBu+rWsarkhgvVO3Fel10ahN6nGkV4o6nCK4cmYMFaRyZcXhoqRTbbaB7xBST
         D6eBLFK3/QwNtK/FqAsZN3sUMl+UgEsZDZr539IowhmAfqS5LmdLkOuZgoktAqg15upA
         RbSxvNBGjyfaGHFTjZZTQbq8UDToxTj9JLKfn+xj/Ou4iSqgdiHP6lsSpwUGQ3cJnow9
         NVdrrpysnFNCPzAs8U7Sdi7yHmCNmfpTVqvea2IGq8ioEoKIidmSlO7kfLQ//xlwTixq
         li4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762539381; x=1763144181;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tVJ2xtJlmj5EezO+VKSHrAcAYjS9yDJNYT/T6/c6kPg=;
        b=U+aFvbhtNJqdutLfOghpHlK/vsChjc8r4NJMh5zuu/Z82r7DHZHJwZovpp7JLKEAZT
         l+CFoR7J6tXxzt9l6qy8eNtjLBHm9tGUQMp1y02FSXqdqW1XqJmiGKnu091X7qtYrgcG
         Y2IY54tXxB2oXz1qB/bDhTURwZt6HSZXGTz4Wv0bLqvTP0KRCXnUWSZA2ZmDMW+a4IRc
         aGcx+2uhaMXL/1KIPLhDL+CkLoH0WbJUkNB5n5Q/DCWQUBBxYtC0qQuTeA/H+GTOeuey
         II0hVtJ4TZmLxRJ9UgSFz7UUykWah9HP3xIVn4l3XjM/02jjCcgTvFsqgNQiPHQNeqL0
         t/wg==
X-Forwarded-Encrypted: i=1; AJvYcCWb+Ijvt/RadAPjoi0PbQPbZ7o7/KXxDEbr+xOU8QqnPvwUkwJxW5r6FQxdSB1TXmcYlEGUscp7s9P1@vger.kernel.org
X-Gm-Message-State: AOJu0YzfHtswbdPuNN8HtwGtHXzRI0iynbgaalCkwIcnYb2nOaBhoMIS
	p09GnhAfvB8IpStTEalk/af0K4qdm66vvG86PZScd3cgOfSQIRr1VSNn
X-Gm-Gg: ASbGncuejp9XDmS5hVFDGl2CUieD9vp32f/irXuMmY4r0Uz9yEp8ojumB/SR3Xv6XLi
	cBHJsRjyyc9Hr5L0qI3tjodoPJDVKdKvKGaJKL2ShyPaX7dRl1hp86ioL67cfoRbUGnEbcTmzFh
	5+gpWSGiXnM8WrfxM2D2LQmCWi78Itxma2/zm2SZc0X2cAnh780TN9JaV4m63idHDtMi7umwzlr
	W4iZk/NvwN54MCPNFc2uUjDYvKcA+7LfEm3ibsFkHtAtDdRLVMa0SQWOQ64aHAdwsFWg4pTDGTU
	bkJy1/5qJZ0XJaWlmY3r9AlSK7MmbQPo1Irbc+hb9WMaMnSvIN9A9Pf9rQ9qSjmp75fAjF9gFrC
	RcVoJCJTFSEfEDJE2MOuy6Ve4r4IBMgtE/gBDCrdOPKQC+fJka0Nb2WPtFvWAjL6fe+jNOdQ4jS
	PQbEK3D/4lHGUuYFOuiI1JsKkDADjzISD/fHp2bqI=
X-Google-Smtp-Source: AGHT+IEp8RA70w6dQWLu5Sj+5AV/4tZ1eqge9CXFqZ79B7Chsq8jWBSCViddS2yq0HyDzJ/vWl+q5Q==
X-Received: by 2002:a05:6000:25c3:b0:429:c851:69ab with SMTP id ffacd0b85a97d-42ae5af4abemr3058281f8f.55.1762539380754;
        Fri, 07 Nov 2025 10:16:20 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac679c5dcsm8032998f8f.44.2025.11.07.10.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 10:16:20 -0800 (PST)
Message-ID: <690e3774.5d0a0220.2246e9.71a5@mx.google.com>
X-Google-Original-Message-ID: <aQ43cbO7Lu_IBJek@Ansuel-XPS.>
Date: Fri, 7 Nov 2025 19:16:17 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: soc: Add bindings for Airoha SCU
 Serdes lines
References: <20251107160251.2307088-1-ansuelsmth@gmail.com>
 <20251107160251.2307088-2-ansuelsmth@gmail.com>
 <20251107-crisping-doable-365d6b7d60a6@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-crisping-doable-365d6b7d60a6@spud>

On Fri, Nov 07, 2025 at 06:14:31PM +0000, Conor Dooley wrote:
> On Fri, Nov 07, 2025 at 05:02:43PM +0100, Christian Marangi wrote:
> > The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
> > purpose. For example the Serdes for the USB1 port can be both
> > used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
> > used for USB 3.0 operation or for PCIe.
> > 
> > The PCIe Serdes can be both used for PCIe operation or for Ethernet.
> > 
> > Add bindings to permit correct reference of the different ports in DT,
> > mostly to differentiate the different supported modes internally to the
> > drivers.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >  include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >  create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h
> > 
> > diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
> > new file mode 100644
> > index 000000000000..a14cef465dad
> > --- /dev/null
> > +++ b/include/dt-bindings/soc/airoha,scu-ssr.h
> > @@ -0,0 +1,11 @@
> > +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> > +
> > +#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
> > +#define __DT_BINDINGS_AIROHA_SCU_SSR_H
> > +
> > +#define AIROHA_SCU_SERDES_PCIE1		0
> > +#define AIROHA_SCU_SERDES_PCIE2		1
> > +#define AIROHA_SCU_SERDES_USB1		0
> > +#define AIROHA_SCU_SERDES_USB2		1
> 
> I'm going to assume that 01 01 is correct here.
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Yes the value are then translated in the driver internally.

-- 
	Ansuel

