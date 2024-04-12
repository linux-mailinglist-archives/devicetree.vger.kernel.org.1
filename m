Return-Path: <devicetree+bounces-58870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2704C8A374F
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 22:53:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D20872829CD
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 20:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D27940BEE;
	Fri, 12 Apr 2024 20:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="JOEhex0/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377C0262BD
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 20:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712955189; cv=none; b=K0Jaw1uZl+ZpUCrAe4EG8xXCpTKMkDXqCkDk3CwQo9ViFJFRXkdbXRDj0yj9zFewHXAaM/bbU5tlJKaCpI+MgF1+fc41+U7iT+WI8o+VsjHO2Ch+T3X/GDEec0xqp2MVmm2W7965sQSEXgAgY3vFotocjaE+pE2U5U96PCnRsDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712955189; c=relaxed/simple;
	bh=qGcc/rgVjEIkz41rcNhQCOoE29RUhq2mJkMJFN2mQyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AmbxgWgcI7cQdcGo1TpJMRjmtNReK51uHEhUS+dShKYKhs0j6qYVnw7upL9Ok8YGCiOqzgmq5nUIAa+v2GImpPLeqFLsEQS1NdJWt+aTftB+HmAOK6O6Fav6hWnJ/uQSt4sm8MmFmuGQifnyOahogDGaLkK9GDzfDhX+g/JHuys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=JOEhex0/; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6ed267f2936so1109690b3a.3
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 13:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712955188; x=1713559988; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kuI1xDSDY3wZqRxOoGKgeFXQbOBRCo2OPPgj3TfcWU4=;
        b=JOEhex0/s/ow7z4CMqiadcfhvIHg0Uxi1d5Z7kkTTfVP76DW/9/u5zWsbmxg16pHAQ
         dh3M0+xNPwCAXJPUZEp49nhrMIrqSKRfh6YvAnQ4ox9f24RzckPEO/mI2RCOcZxTjGeW
         qZ1OhXi92XV+ThrCYM23ZigHzGsDY/NTB/6/3Yp2rEwZSYK0t4ImGWxjSIId0ZpwvcNf
         EGxxoCHdekz6IxC/V/QZLvv68+JCmP88cxt6ftcnJPWm/LI9QixucKkf9u6NtYlkxkiz
         oHiHNLBrxrvyII4YMOn3hZqbaF79PN64gqTN+K06a9UgnxJLcycQMxoOPI2d27eS9Szy
         rKPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712955188; x=1713559988;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kuI1xDSDY3wZqRxOoGKgeFXQbOBRCo2OPPgj3TfcWU4=;
        b=EiQG6rqWUrohEFScX8Zv5h9ikftb/3YgUy5HTpj8b5iI7pVi6FxLjBPIXUF77nuPoL
         Gci75gNyb/oTIAYZA4jLLgYq5I/byFxaafmmxRBAtmvtuOe06Ki4StcCqtZMgjB9E+lS
         NmqFocqPUs1tmL3OoBElVSAqa7OQZl3e8aZBOdULwB5ClsrANZtYz/BbNPvgwCuxhcL7
         XZEU02GYn6qsiFGwN6DKsLx1a4RT3VpOrqYQ0ALhbU6baoqSw4eekau6jn21TlNwhdBv
         VjJ8fIizPukBK0FQpcHsLkCnLKJ9VBYYySc5emZ5IUmu7hvBmeX0XbCd68UcKWlBKN65
         yooA==
X-Forwarded-Encrypted: i=1; AJvYcCUdkAHkhtnf/fEN8CmeQYSO8gPmNDxWMZLoUmSGdKlOXVbbAL1vQHGp+yqOOtzOR01QUgVh9yoW3iHvIqw9NGi1BxuGvvRDyfndvw==
X-Gm-Message-State: AOJu0Yx+H5s9T18tEbYghSTfUjDmdgil7u4wes5tRguYpFCo8m6qnOVD
	eiCNcvmYbWOSOo7q+G4Qbj+A6LX1dI+oLXxC66PHWdw7ClySz5g9uAq/mgK/Yl8=
X-Google-Smtp-Source: AGHT+IHrp3HzycZe7Jfb+XseUZGp1zZGIQ3nFRwoibOMYKPLe2QkUbH6yPsYO0522TOlVaFgwYmSxw==
X-Received: by 2002:a05:6a00:1798:b0:6ea:bdbc:6a4 with SMTP id s24-20020a056a00179800b006eabdbc06a4mr4030047pfg.13.1712955187671;
        Fri, 12 Apr 2024 13:53:07 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id j16-20020a62b610000000b006ecceed26bfsm3264351pff.219.2024.04.12.13.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 13:53:07 -0700 (PDT)
Date: Fri, 12 Apr 2024 13:53:03 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Evan Green <evan@rivosinc.com>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 12/19] riscv: Create xtheadvector file
Message-ID: <ZhmfL4Nutu8s4SMF@ghost>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
 <20240411-dev-charlie-support_thead_vector_6_9-v1-12-4af9815ec746@rivosinc.com>
 <20240412-thirty-sacrament-db052c7fe6fe@wendy>
 <Zhl8Y+GzTB/ip7rT@ghost>
 <20240412-displease-sensually-33d91fc3fe63@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412-displease-sensually-33d91fc3fe63@spud>

On Fri, Apr 12, 2024 at 08:00:46PM +0100, Conor Dooley wrote:
> On Fri, Apr 12, 2024 at 11:24:35AM -0700, Charlie Jenkins wrote:
> > On Fri, Apr 12, 2024 at 12:30:32PM +0100, Conor Dooley wrote:
> > > On Thu, Apr 11, 2024 at 09:11:18PM -0700, Charlie Jenkins wrote:
> > > > These definitions didn't fit anywhere nicely, so create a new file to
> > > > house various xtheadvector instruction encodings.
> > > > 
> > > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > > > ---
> > > >  arch/riscv/include/asm/xtheadvector.h | 25 +++++++++++++++++++++++++
> > > >  1 file changed, 25 insertions(+)
> > > > 
> > > > diff --git a/arch/riscv/include/asm/xtheadvector.h b/arch/riscv/include/asm/xtheadvector.h
> > > > new file mode 100644
> > > > index 000000000000..348263ea164c
> > > > --- /dev/null
> > > > +++ b/arch/riscv/include/asm/xtheadvector.h
> > > > @@ -0,0 +1,25 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > > +
> > > > +/*
> > > > + * Vector 0.7.1 as used for example on T-Head Xuantie cores, uses an older
> > > > + * encoding for vsetvli (ta, ma vs. d1), so provide an instruction for
> > > > + * vsetvli	t4, x0, e8, m8, d1
> > > > + */
> > > > +#define THEAD_VSETVLI_T4X0E8M8D1	".long	0x00307ed7\n\t"
> > > > +#define THEAD_VSETVLI_X0X0E8M8D1	".long	0x00307057\n\t"
> > > > +
> > > > +/*
> > > > + * While in theory, the vector-0.7.1 vsb.v and vlb.v result in the same
> > > > + * encoding as the standard vse8.v and vle8.v, compilers seem to optimize
> > > > + * the call resulting in a different encoding and then using a value for
> > > > + * the "mop" field that is not part of vector-0.7.1
> > > > + * So encode specific variants for vstate_save and _restore.
> > > 
> > > This wording seems oddly familiar to me, did Heiko not write this?
> > 
> > Yeah, I wasn't sure how to attribute him. He wrote almost all of the
> > lines in this file, but I put it together into this file. What is the
> > standard way of doing that?
> 
> The original patches have his sob and authorship, so I would at least
> expect co-developed-by.

Perfect, thank you for pointing me in the right direction.

- Charlie


