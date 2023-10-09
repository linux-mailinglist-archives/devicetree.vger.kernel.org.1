Return-Path: <devicetree+bounces-6882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4C67BD702
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 11:29:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18BB31C208BC
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 09:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E50FF15AEA;
	Mon,  9 Oct 2023 09:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XI0PPwQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7285A3D67
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 09:29:28 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20759AB
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 02:29:26 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-325e9cd483eso4121470f8f.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 02:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696843764; x=1697448564; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X8m4m0ieEJ2SA5cCHHqMfizD1ZJJDz/TnRHcokgUvn4=;
        b=XI0PPwQ06rDSlCLpr68nDNoKTMKv98UsyZR0SJc5Uxvs91vts0ykziX76nILvSEMGq
         Od3PB+10EvCoLvW+vH4fCK8KEoitd5VlnZoN0GZj9Lf3372M0X3nY1+BQ5HEOp+kQXCb
         vatxSuhws1ELs9EoaL+Jn4ZIGsX6XFpbHM9U2UvtghswsDBZf4xXFMLzyr3NLFgGrdhA
         4UoNjEVgCUBHpN0hJffMPYGWGjtEoGuiWb880Z5MSsTLqLYNYM7zXqvGnWPaUzveeljv
         7i/rcMPEb0Cv/R7QVE7VsFICRSBkg2HH9Keon06p/rjncWtZkvz4X4TZDZZRGsLoJS6q
         jXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696843764; x=1697448564;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X8m4m0ieEJ2SA5cCHHqMfizD1ZJJDz/TnRHcokgUvn4=;
        b=R2KsQuzwbu+DG3Qb449UxcfmOweE/CZpe5MOEaxAontao/sO90xSuVvnkS3rmeX2p4
         FFiY1vVG5l9a2Uo8voK7PfkdIaFdbMnK+Fj00XFtt6duA4wBhTXYGYUQ40O8ZoAvpiL6
         9gDc23LlRE74P56tCbhZEBgPuh5QPVPuHYVSpaPPlJqf17VNH/1RfFvyw1d4oUOy0XZ1
         jphhP95EkPhcsIihV3au3N2tiEHSVhRVDyId6AmguSzmiP3BrGww3fkQF207xEn+KiNB
         MrTHJQ/SNv0lYDUgo0eEafePfVwopNS8ulN8BUvK8f4N18RY9oDZt8sH9PLsleQ9c+M9
         ZoNw==
X-Gm-Message-State: AOJu0Yw1ObrCxk7HFas7gK+dA8rlCp72PRVyOcbIAJf40j3YHLVAZArN
	bCXlAO38T/7KGr0rqxsc+6hrMQ==
X-Google-Smtp-Source: AGHT+IEXeYstdXT6TbrSO2yEei8azH2660L8AX7ojU3STjxM7Q8gohifEoelTb8KAy2MvYiMxGH00g==
X-Received: by 2002:a05:6000:38b:b0:329:6bd7:470c with SMTP id u11-20020a056000038b00b003296bd7470cmr9256860wrf.58.1696843764410;
        Mon, 09 Oct 2023 02:29:24 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id r18-20020adfe692000000b0031912c0ffebsm9059425wrm.23.2023.10.09.02.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 02:29:24 -0700 (PDT)
Date: Mon, 9 Oct 2023 10:29:22 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Karel Balej <balejk@matfyz.cz>, dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/2] dt-bindings: backlight: add Kinetic KTD2801 binding
Message-ID: <20231009092922.GA223751@aspen.lan>
References: <20231005-ktd2801-v1-0-43cd85b0629a@skole.hr>
 <20231005-ktd2801-v1-1-43cd85b0629a@skole.hr>
 <20231006123014.GA96854@aspen.lan>
 <5984411.lOV4Wx5bFT@radijator>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5984411.lOV4Wx5bFT@radijator>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 06, 2023 at 03:08:42PM +0200, Duje Mihanović wrote:
> On Friday, October 6, 2023 2:30:14 PM CEST Daniel Thompson wrote:
> > On Thu, Oct 05, 2023 at 08:49:08PM +0200, Duje Mihanović wrote:
> > > +  enable-gpios:
> > > +    maxItems: 1
> >
> > Why "enable"? This is the line we are going to us to bitbang the
> > ExpressWire protocol. Doesn't that make it a control or data pin?
>
> I named it "enable" because the KTD253 driver does so too, but also because
> that pin is also used to power down the IC. If "enable" isn't right
> regardless, is just "gpios" fine for this?

KTD2692 implements ExpressWire and calls this signal ctrl-gpios. I'd
suggest copying that prior art for now.


Daniel.

