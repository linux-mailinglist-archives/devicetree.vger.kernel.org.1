Return-Path: <devicetree+bounces-64355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB1B8B8F47
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 19:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B7F41F22AF8
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 17:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63DAE146D76;
	Wed,  1 May 2024 17:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="MADNhq7u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B622146D60
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714586298; cv=none; b=NnoWPnlkKva2xCgxi0WOmsJuEkFOlNAJ9XfXvre/3hA1SHlOJZased5z19jmOGgS3Xkj64u5hrpBeO/a9T7pH8kEj+sGKVq5xrvg4TzaFWxAYZvjOjCiIdd+ULGCE9swQMMae6Av+EdD5RLWkFUPhJ6+YllW9EESOItJFYdewDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714586298; c=relaxed/simple;
	bh=aEhywgK1Wn89FaWrhTM0HBEIeT3AwLow+BB6CKrQbCE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VVUAYA/O9VE65Uah/Pd4yUtvfNWnEJqFmDjoFdizQysLbNeVIX0URQo5kFOC6vbfbRWO8BWYQsVe2la0Ukk4djb0m515epqbTQF6Kan+yG4Q5fs3n4apSz/AB/DFasn3FaciUVvYGQw9HM3gXG8ZmZTE4qL75L2Yuen0cuaW0MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=MADNhq7u; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6effe9c852eso6293704b3a.3
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 10:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714586296; x=1715191096; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ewiZxKEDhipFv9WpDKT1OvAInIM8Qy/YnJeIqtYAQ20=;
        b=MADNhq7uxAPe3Mo8Oc0YkZUpGYLzdPHDbZPF0TfE7xGFeexml65gBIKfVcJjORoU4p
         8O2TNe1B5m4MNfZTfj+Jy6ZYBlydcqSy0FA+cL8RCeMe1EZUB5H0fGYWvfKLPqhnceYM
         /STiwv/l0HTWBmNoRId3ivMlkEmVYGxSFFXtgDeihan/5IjX4PDFc5CQ9/l2L48tmBHY
         G0sEDO+kJVE5Cu0ebMu7fBOv/6pkqCMks7+RjYjChg2plhaV3zFSFXoOKua0AccgcuOr
         ksfy5Av2m/c0UzdUxMDccwhWVBHydx6XU72bR1NAkHa5LLp9ZZVJrsYwCB7irWAW+JPp
         9vhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714586296; x=1715191096;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ewiZxKEDhipFv9WpDKT1OvAInIM8Qy/YnJeIqtYAQ20=;
        b=wqRqoYTqz0DdJqACHnrwbEpK+S4VDhkwR9ossJVHuEqXCNIczvvHhhXp9QAV390xE5
         NTJSzTpwh/JrTXmygge8UXYTX6OWdp+kQkc+/ayimaynL5liZFLA6yKxJh7v78eSeNRE
         DAfebwXU2pnXak7aAR/B/0K7EHAFI2LW7hEveJvyZBy7BgGKc4A4hslf9U9pri6q8ev/
         nsim9gNTQ2pGAZjilF/6xWEtwAOg+2qElSeSlIRM2RDqBcULHdju+n+RxuVSXf0o5/Va
         00yo2uA97bvImLPrWejSxgrm8Go0BwDQgfUIg8CT7GGCFlmvHvBXAq9w34xQHjC7fZMU
         q/Ng==
X-Forwarded-Encrypted: i=1; AJvYcCUf/+wM7gtlkLydAew6sKLmSCh8lrtn9raasAOd/tsLscpWLMU1v3Do0jX6OtsTYWtZHsS4Rv8Lh47Gwl0wxAZ0wEldpPu336r/dA==
X-Gm-Message-State: AOJu0Yy4koJT8nGIh6mbFrFPQGjXxvKDHfRtliRQuLmCDHqJY4Oajx0S
	iVnTIOiHMD9K9k4zsxq6XN7fivDO6IXsHo7hDdck6bJ1Rbxa8/c0BW1cT0tECSg=
X-Google-Smtp-Source: AGHT+IHowJBwbgP8/Vm7zaF9odAFfRxagmDXAI/fLRPFmpGJdmGG+eEAuwcNKsDXaL6jhqUEVkKVOQ==
X-Received: by 2002:a05:6a00:1305:b0:6e8:f57d:f1ec with SMTP id j5-20020a056a00130500b006e8f57df1ecmr4107317pfu.17.1714586296277;
        Wed, 01 May 2024 10:58:16 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:1dcc:e03e:dc61:895d])
        by smtp.gmail.com with ESMTPSA id o7-20020a056a001b4700b006edcbbff2b0sm22940382pfv.199.2024.05.01.10.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 10:58:15 -0700 (PDT)
Date: Wed, 1 May 2024 10:58:12 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Evan Green <evan@rivosinc.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v4 05/16] riscv: Extend cpufeature.c to detect vendor
 extensions
Message-ID: <ZjKCtJWqoiLM3xZv@ghost>
References: <20240426-dev-charlie-support_thead_vector_6_9-v4-0-b692f3c516ec@rivosinc.com>
 <20240426-dev-charlie-support_thead_vector_6_9-v4-5-b692f3c516ec@rivosinc.com>
 <CALs-HstM64Hy_=XVz=0sWQt=8j1u+bq6RhthUuD3P0E4=HyvcA@mail.gmail.com>
 <20240501-flagstone-zealous-2fc722bfad39@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240501-flagstone-zealous-2fc722bfad39@spud>

On Wed, May 01, 2024 at 06:19:34PM +0100, Conor Dooley wrote:
> On Wed, May 01, 2024 at 09:44:15AM -0700, Evan Green wrote:
> > On Fri, Apr 26, 2024 at 2:29 PM Charlie Jenkins <charlie@rivosinc.com> wrote:
> 
> > > +struct riscv_isa_vendor_ext_data_list {
> > > +       const struct riscv_isa_ext_data *ext_data;
> > > +       struct riscv_isainfo *per_hart_vendor_bitmap;
> > > +       unsigned long *vendor_bitmap;
> > 
> > It took a lot of digging for me to understand this was the set of
> > vendor extensions supported on all harts. Can we add that to the name,
> > maybe something like isa_bitmap_all_harts? (I wonder if we could drop
> > the vendor part of the name since we already know we're in a
> > vendor_ext_data_list structure).
> 
> Reading this made me wonder, why is the all-hart bitmap an unsigned long
> when the per hart one is a riscv_isainfo struct?

Hmm I don't think there is a good reason for that. I believe this can
become struct riscv_isainfo * with no issues.

- Charlie


