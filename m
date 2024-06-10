Return-Path: <devicetree+bounces-74251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6FA9026D9
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 18:38:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81BA51F22B70
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 16:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E574C1442F1;
	Mon, 10 Jun 2024 16:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="eeYpo2mJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DC214387C
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 16:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718037493; cv=none; b=UFelnhBzRW1YNWFZ4FUEcg32zOle0XB1HmvLH22ECWLXT0LPNiATs1TKhTfGETFC2A7FJTIkrxPxrZuFUM6bJQLxdcZpV7LwyTN1m2zql/pjgja/5FbzBCMvQwICeXlfu+u9iW+ZAMShu6fYzxZ7MGj74hp7lDdQxWBSJeL5jwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718037493; c=relaxed/simple;
	bh=kiJ5B+nQ3bNrTcSfOUxREX/Sxo9421n4Dpjf7djMOc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T9jIH/epxPcA/Awa49m+tyZj6gG/Zv99F5f8M+rM7AgGtyrszS8qACrevAK3PkL/Xk625Xc4er7Z9AHynAn288WFqwIA0uPy946w+Qcqcs4tYn7bpQ2gO154qKcdYHZqiAhkIPWaE/bWv5eYydvqeiZ2BCZ7uW/i4VQ+ehHzxiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=eeYpo2mJ; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7041e39a5beso2001496b3a.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 09:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718037490; x=1718642290; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NXoCBXdsY/M+q0fRNH+4Z39Lx/Z6bNhqTdLOeE8sP8k=;
        b=eeYpo2mJKCmltM/YSNkpBTpFbSgBIvZlnOg01HHwTSceDifLDW0QFWMpKWXNf19jUm
         Lw4bYd3qomSPKP/eB0uhF+trTe5sdQdvRBqfPyCXSNlrsKNlM6pimiR20nPBj1BgpBPE
         M61J+/XH/qcs1YkO1HwW18msjqxrElztK5401L1PFKPSJyb68iigc7BfdIyjjHSnnJ+k
         juEEZqHrVLpKuer1c8IZUoPR16mtz+Gh92Fdp7LeDvz9c4Qj7PoDqD66SAkjFzhNWgfR
         bHKH7e7e1JJ+p2kuk/OewehHMJeU6qvcBvm5i1/l1TkKchqRstlqW0gb7lP4x/tSQ9Yb
         uKvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718037490; x=1718642290;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NXoCBXdsY/M+q0fRNH+4Z39Lx/Z6bNhqTdLOeE8sP8k=;
        b=isbh6B4THtnSNgErJ8B9nGXvzMDpGccs6Wg0q0Qf7m9FV04k3imJXjfKSzEj4/+9Cd
         VcAVpjYNoPSlKSX5/UB2P28X15CuL2XBnafJWYxJTYsoRaxbgf2/ym+qtEQ1LAZ5uPbQ
         YtbFQEaNLkbKzS+uZy51zpHyTvALhIu7Bozu8r0/i7Iibatg/vTcGachsUlX4C1cKg2R
         kop3dRnol/QdXO8dTnZgbEiGqezyFUieb+lKr3fuiFOi1MY5+XJX769NqCTdP+Dos2wm
         1aPNTxIH9Y997Nbz8FVp82COG1U+Stl3HFssOXNX0x+rQR7UxiDdxkSh9PcVt+AInGck
         mRUw==
X-Forwarded-Encrypted: i=1; AJvYcCUQzqtgDTM2qPNTM3YexqwCTIF5YWfL1RQ5D4PJ36BrdfKWULKt1fztzdSUyDk67GQLoj+0hTpodco6LhDH6y9HJZ+usslFQvvGDQ==
X-Gm-Message-State: AOJu0YxKn/b+HJ9RdKtH9BChVsvmcOu6KVQ8YrO+9xMepI0HOenki88D
	SfU1OnT8O7SdgE4PcR0g5QYuAZoY8KcqB/17sa6RcgdCrorFMvJQiokJOUaToEg=
X-Google-Smtp-Source: AGHT+IE55hp5TAOsUAoyvyS756iP3CfmNdcn1/vY5DaP2UtK03lkcl/o+b2HM769MgzylCW45JEhTg==
X-Received: by 2002:a05:6a00:138c:b0:705:951e:ed88 with SMTP id d2e1a72fcca58-705951f1f4cmr3638587b3a.25.1718037490325;
        Mon, 10 Jun 2024 09:38:10 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:129d:83bc:830b:8292])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6deb62efb66sm5525307a12.12.2024.06.10.09.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 09:38:09 -0700 (PDT)
Date: Mon, 10 Jun 2024 09:38:06 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>,
	Andy Chiu <andy.chiu@sifive.com>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-doc@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 02/13] dt-bindings: thead: add a vlen register length
 property
Message-ID: <Zmcr7pP+XEWHYTsy@ghost>
References: <20240609-xtheadvector-v1-0-3fe591d7f109@rivosinc.com>
 <20240609-xtheadvector-v1-2-3fe591d7f109@rivosinc.com>
 <20240610-unaltered-crazily-5b63e224d633@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240610-unaltered-crazily-5b63e224d633@spud>

On Mon, Jun 10, 2024 at 05:29:23PM +0100, Conor Dooley wrote:
> On Sun, Jun 09, 2024 at 09:45:07PM -0700, Charlie Jenkins wrote:
> > Add a property analogous to the vlenb CSR so that software can detect
> > the vector length of each CPU prior to it being brought online.
> > Currently software has to assume that the vector length read from the
> > boot CPU applies to all possible CPUs. On T-Head CPUs implementing
> > pre-ratification vector, reading the th.vlenb CSR may produce an illegal
> > instruction trap, so this property is required on such systems.
> > 
> > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/thead.yaml | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/thead.yaml b/Documentation/devicetree/bindings/riscv/thead.yaml
> > index 301912dcd290..5e578df36ac5 100644
> > --- a/Documentation/devicetree/bindings/riscv/thead.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/thead.yaml
> > @@ -28,6 +28,13 @@ properties:
> >            - const: sipeed,lichee-module-4a
> >            - const: thead,th1520
> >  
> > +thead,vlenb:
> 
> This needs to move back into cpus.yaml, this file documents root node
> compatibles (boards and socs etc) and is not for CPUs. If you want to
> restrict this to T-Head CPUs only, it must be done in cpus.yaml with
> a conditional `if: not: ... then: properties: thead,vlenb: false`.
> 
> Please test your bindings.

Now that I know `make dt_binding_check` exists I will use that in the
future!

- Charlie

> 
> Thanks,
> Conor.
> 
> > +  $ref: /schemas/types.yaml#/definitions/uint32
> > +  description:
> > +    VLEN/8, the vector register length in bytes. This property is required in
> > +    systems where the vector register length is not identical on all harts, or
> > +    the vlenb CSR is not available.
> > +
> >  additionalProperties: true
> >  
> >  ...
> > 
> > -- 
> > 2.44.0
> > 



