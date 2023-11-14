Return-Path: <devicetree+bounces-15763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E8C7EB94B
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 23:25:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6906B209E9
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BDB22E840;
	Tue, 14 Nov 2023 22:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YLwfwu8f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067242E83A
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:25:01 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 261E1BE
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:24:59 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5bf5d6eaf60so65290437b3.2
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700000698; x=1700605498; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VZH1moAA0yVg/Bb0Aws1epxcC7ep8j8z+Au9OoiC60Y=;
        b=YLwfwu8f4r9Why3kj5g+LjIriHAIWAZSK2cqGUVcK/FL1qccdznGhtlV0Mi1ZtMhNG
         PzEDavVxIdD2i7wac6AxaWnvXvuYDZhBLu0lA8OBrn/ofkPDaF9wynJzXVS8E9COnA4a
         1DiIsn8Q1mHdL1PVWRfkLmtL3nMS974daABG8RyoE32AeIls5DnjSIA4XC3le11UFDgO
         EVAhfRi33dHllU2nvt+/dO5EvSzVn2yYoP4z9Traqp3H6Vzrv6a0WDgsgv+Q76PpYUUB
         S3tfo5wvatOEnrfNEZvziq5t9JXtN/NTNO4u3S8lxS09iDr5bVaWre/Okw+/1ly16hDh
         iIFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700000698; x=1700605498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZH1moAA0yVg/Bb0Aws1epxcC7ep8j8z+Au9OoiC60Y=;
        b=i6cm1NPlu81Sx/nsKrBJ0rm0SmmlzehsheirCSjO52QgKCAc0qXL0fwiD7TsAsCu0y
         YYKPlXqXaFhH9Y0/6jjvZD9q094xG7isTo99vPFJqK+Usgi0VsmDd+YbfRXqoKjGE7YE
         N03ok1luYQ3yCqBBUrwAujyk1CxOYvuTRQUtjR42yYRCQSBROV2ZPu2fBFH/KIl2Hzg4
         Ijq+3ySdairURHPbwzvcozFwx1iVH5r5fByrv6j9RDSZrBwT1GaOmv+vzsQnKuPWDtqB
         wR+RW7COLA9/9wnFn6appL6OeZrb2HyjXFWnMCKerTaQ2+Kj49XDcinA0nbasDRTwUq1
         O8ag==
X-Gm-Message-State: AOJu0YxqM/Bf9tH2XLnXfDhyu/lz1uyx55hMjc7LloD6Y9aqb1szpvJY
	7aSB22xGu4qKGkI1tq6z8Z82Rw==
X-Google-Smtp-Source: AGHT+IEz88PTlxccW21WoEn2f42pE+pucQRcPi0Qyotu8SKV4KH1w7/IOT3aZDt9e1YeaqgPDQ7h+A==
X-Received: by 2002:a81:73c2:0:b0:59c:aea:d877 with SMTP id o185-20020a8173c2000000b0059c0aead877mr11208270ywc.40.1700000698319;
        Tue, 14 Nov 2023 14:24:58 -0800 (PST)
Received: from x1 ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m1-20020ad44d41000000b00670c7fd09cbsm3706qvm.95.2023.11.14.14.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 14:24:58 -0800 (PST)
Date: Tue, 14 Nov 2023 17:24:55 -0500
From: Drew Fustini <dfustini@baylibre.com>
To: Conor Dooley <conor@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v6 6/7] riscv: dts: thead: Enable BeagleV Ahead eMMC and
 microSD
Message-ID: <ZVPzt0w2+wNz6PnH@x1>
References: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
 <20231114-th1520-mmc-v6-6-3273c661a571@baylibre.com>
 <20231114-subsiding-tipoff-f3c15ef22985@squawk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114-subsiding-tipoff-f3c15ef22985@squawk>

On Tue, Nov 14, 2023 at 09:24:40PM +0000, Conor Dooley wrote:
> On Tue, Nov 14, 2023 at 04:08:00PM -0500, Drew Fustini wrote:
> 
> > +&mmc0 {
> > +	bus-width = <8>;
> > +	max-frequency = <198000000>;
> 
> > +&mmc1 {
> > +	max-frequency = <198000000>;
> > +	bus-width = <4>;
> 
> If there's another iteration of this patchset, can you use a consistent
> ordering for your properties please?

Bah, I don't know how I missed that. Thanks for spotting that. I'll fix
it if there is another rev. I still need to see if Jisheng's is okay
with the most recent changes in the driver patch.

Drew

