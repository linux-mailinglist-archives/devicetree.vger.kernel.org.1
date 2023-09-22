Return-Path: <devicetree+bounces-2549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B01247AB495
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:18:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6398E28205E
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BAE13FB0E;
	Fri, 22 Sep 2023 15:18:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF442171AA
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:18:17 +0000 (UTC)
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77BAC100
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:18:14 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-692a9bc32bcso698971b3a.2
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695395894; x=1696000694; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=28ycCMVqr+jLHcID+cLGjL2F35QcRv/+OsF8PSg4e9w=;
        b=ButDVAR9tTC7uXAuV5J2qo4ZQbvJl8oZRiJIqRfLL8Wrj/4DPr8pUXQGcqaNe3cLhK
         POhz0NNfhCmdVR7Cfq0k/a78GWVXkYaa0M4xf5WA5ae8UGtas3u4jFvwDbqo4CnBv6Ee
         b+XEZRXiOCQzeijJhPI31QvcFxi9NHI4MtazLywyBkW1C9+5H+9ZQEWn+YX4GXHUq9Pa
         +zyI7PcWx2QK8klHQWL3P8JatyYCjho8j5Zyi8JpgoQg1tZcH9FKtctvNLFukeGDMur4
         qNwsqaqmsFImdFQeZ5bswJq0wBvMm51FG0yqKeyfm7SC1TGM7Im97qDY8e0UPehHBJ1f
         cNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695395894; x=1696000694;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28ycCMVqr+jLHcID+cLGjL2F35QcRv/+OsF8PSg4e9w=;
        b=IYdcmqAvvwpd8UCEY5lWc4K9IYxISj/O2bzUPfUNU3kl1ukvQngPVAHQX8iqvhQ1kD
         R4LbM0SX0zHgjZ2b1c6ccLVGKVyLT+0jVOVzIcrkWUxveIezJR/o6nfvRDRtBi1G1eU4
         yYKCTq5dwcI9uA5o3QJSYruW0vN+jur9jK3fwueEOPNR+Tu8Qwm6B8HETz/64umNhQu8
         5T+bgZTng3F4WCwCn8raPv4CVzyDrAB2C3udc7OwPs+qYSNofuufgu2WmuUgsfCfXmr3
         A6V7IwaypRJaq7n/jnN/0POlWdqZ4ZZA4NvlsUBYnxH8BPyXc8x+TNKp4BUpVc751XqS
         47gQ==
X-Gm-Message-State: AOJu0YxmZeBM7s9Tf0k7Ohuy3KQvM6EzTFm0pzqRmHExPww0x/3dAhWs
	doeg3CpDd3/naUYmAX21t4/l1A==
X-Google-Smtp-Source: AGHT+IEYqxKV/Zdv/b6QlfOjx23Mb/9uFyIcZZjiFtr8f5V9ahoe0eQHX3dZEw5wH7KcGntm/EnFFg==
X-Received: by 2002:a05:6a21:4881:b0:14c:9a61:a310 with SMTP id av1-20020a056a21488100b0014c9a61a310mr7787505pzc.24.1695395893958;
        Fri, 22 Sep 2023 08:18:13 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:c44:77f:ca7d:adec])
        by smtp.gmail.com with ESMTPSA id 6-20020a170902e9c600b001c1f4edfb87sm3614450plk.92.2023.09.22.08.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 08:18:13 -0700 (PDT)
Date: Fri, 22 Sep 2023 08:18:11 -0700
From: Drew Fustini <dfustini@baylibre.com>
To: Conor Dooley <conor@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Xi Ruoyao <xry111@xry111.site>, Han Gao <gaohan@iscas.ac.cn>,
	Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/6] dt-bindings: mmc: sdhci-of-dwcmhsc: Add T-Head
 TH1520 support
Message-ID: <ZQ2tP48Z19C5xRug@x1>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
 <20230921-th1520-mmc-v1-1-49f76c274fb3@baylibre.com>
 <20230922-parish-ice-a22e93dc3027@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922-parish-ice-a22e93dc3027@spud>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 10:57:36AM +0100, Conor Dooley wrote:
> Hey Drew,
> 
> On Thu, Sep 21, 2023 at 06:49:48PM -0700, Drew Fustini wrote:
> > Add compatible value for the T-Head TH1520 dwcmshc controller and add
> > thead,phy-pull-up property.
> > 
> > Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> > ---
> >  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > index a43eb837f8da..46b768d46712 100644
> > --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > @@ -19,6 +19,7 @@ properties:
> >        - rockchip,rk3568-dwcmshc
> >        - rockchip,rk3588-dwcmshc
> >        - snps,dwcmshc-sdhci
> > +      - thead,th1520-dwcmshc
> >  
> >    reg:
> >      maxItems: 1
> > @@ -60,6 +61,9 @@ properties:
> >      description: Specify the number of delay for tx sampling.
> >      $ref: /schemas/types.yaml#/definitions/uint8
> >  
> > +  thead,phy-pull-up:
> > +    description: Enable weak pull-up on PHY pads
> > +    type: boolean
> 
> Why is the weak pull-up required? How would the dts author know if they
> need to use this property?

This is a good question, and I don't have a good reason beyond it is
what the vendor SDK was doing.

There are only two boards right now using the TH1520 that I know of.
Both the LPi4a [1] and the Ahead [2] have the pull-up property set on
all the mmc controller nodes their downstream device trees.

Rob suggested on #devicetree that it would be simpler to just enable it
in the driver and disable support when needed. I like this idea as it
will simplify this binding patch and the code in the driver patch.

Thanks,
Drew

[1] https://git.beagleboard.org/beaglev-ahead/BeagleBoard-DeviceTrees/-/blob/v5.10.x-ti-unified/src/riscv/light-beagle-ref.dts
[2] https://github.com/revyos/thead-kernel/blob/lpi4a/arch/riscv/boot/dts/thead/light-lpi4a-ref.dts

