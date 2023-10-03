Return-Path: <devicetree+bounces-5301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0F47B5EB8
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 03:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id B5372B2095E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 01:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FBC0655;
	Tue,  3 Oct 2023 01:34:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EBF63D
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 01:34:16 +0000 (UTC)
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F1DFBD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:34:14 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1dd2e4f744dso76617fac.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 18:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696296853; x=1696901653; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I7nyeV1Yn2yP8Ggds9eqnE7ec2vBo1fUqwlgRN2c/0g=;
        b=y0Ge++je358a66UI8vjzZA3ztSBnlYcrePO5jpI/hBpFCwsQzbVDKlSitLhcDdltuj
         Pz05wimlwDbO3E4YV2al65IHstG00no1946dQSrtiiZ82pfWnjfGtKNYG47S3kxc5wHu
         3XbXqjcFDu6rtJQtNiPOVs+qdG2Cp3cEKvt+rBJBUWwTyWCfZsQkvIOA5oBt8QOvcnT3
         p+GRtlFNLo4yHkxKwRFc5C+dZNH38XmV5nK0s/B/XgOMl17XhWKFpd/zwpnB14m8Ib/l
         0h8tdSSrpESjc8iFMDa+Q86DZoTTd92T+2RK4D0e7DGnQpCuII5yAjom3Rj1+gtkw1G+
         F9HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696296853; x=1696901653;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I7nyeV1Yn2yP8Ggds9eqnE7ec2vBo1fUqwlgRN2c/0g=;
        b=qUBxUrQuJaY2mKrpwQaLbNzvvB62wj2yg9GN7N9POBC+Pv0G0uaUiy5UiJyhy6vKNp
         uCBarzVzqYvINT7APcrvhdlz7rpR8N0b9GhtWOcztxF+g1zJvLkAtAp9K1qD9aab90ac
         4SsltjDSfoQSrybxIhKjYVXFUfsSWSdTv/E49yIZWl6SGfIxYWjdOIGOlgsDhcA9cc4C
         VApGQ0v3rUR7w519ta8vrpgAs1BE1VpYu76ojJwRcRTN6eOduv94zgbd/KmRj7mztkxr
         COpwD40gE37Rq2nl+TT7D/PBEeOLaWRkS/W/aJXfzmy1LF3UODLJsia28F06I3eI1yk8
         q3IA==
X-Gm-Message-State: AOJu0YybgvXqochY/MyIq62WJqiCAGMs+KOrva6vMelnEYVSkcuI/lLs
	sZfkcl/5xkjzqntwzh6LcLMESw==
X-Google-Smtp-Source: AGHT+IFl7MKPdUyLdYV+664LiWNT6GvamIQT6n7BLip/4YiuwCVklAkskqnxLOqewP8BEXYfSrxH5g==
X-Received: by 2002:a05:6808:1997:b0:3af:6453:2d83 with SMTP id bj23-20020a056808199700b003af64532d83mr16345408oib.2.1696296853242;
        Mon, 02 Oct 2023 18:34:13 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:783d:e8bb:e013:a869])
        by smtp.gmail.com with ESMTPSA id fv21-20020a17090b0e9500b002775281b9easm6931241pjb.50.2023.10.02.18.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 18:34:12 -0700 (PDT)
Date: Tue, 3 Oct 2023 10:34:08 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: Rob Herring <robh@kernel.org>, sudeep.holla@arm.com,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC 4/4] dt-bindings: gpio: Add bindings for SCMI pinctrl based
 gpio
Message-ID: <ZRtvkO56iM9JgHTS@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh@kernel.org>, sudeep.holla@arm.com,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
 <20231002021602.260100-5-takahiro.akashi@linaro.org>
 <20231002144155.GA1675188-robh@kernel.org>
 <ZRrak57Vg0X0Aqf3@pluto>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZRrak57Vg0X0Aqf3@pluto>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob, Cristian,

On Mon, Oct 02, 2023 at 03:58:27PM +0100, Cristian Marussi wrote:
> On Mon, Oct 02, 2023 at 09:41:55AM -0500, Rob Herring wrote:
> > On Mon, Oct 02, 2023 at 11:16:02AM +0900, AKASHI Takahiro wrote:
> > > A dt binding for SCMI pinctrl based gpio driver is defined in this
> > > commit. It basically conforms to generic pinctrl-gpio mapping framework.
> 
> [ snip]
> 
> > > +    additionalProperties: false
> > > +
> > > +required:
> > > +  - compatible
> > > +  - gpio-controller
> > > +  - "#gpio-cells"
> > > +  - gpio-ranges
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +
> > > +    scmi_gpio_0: scmi_gpio@0 {
> > 
> > gpio {
> > 
> > But doesn't SCMI have protocol numbers?
> > 
> 
> My understanding is that this RFC GPIO driver from Akashi is built
> completely on Pinctrl facilities (as he says in the cover), it is not
> indeed a typical pure SCMI driver, it just happen to trigger the use
> of SCMI if the underlying backend pinctrl driver is pinctrl-scmi;
> but this driver does not really call directly into any SCMI API by
> itself, i.e. it does not get and call any SCMI protocol ops.
> (but it could indeed trigger the backend Pinctrl SCMI driver to issue
>  such call on its behalf AFAIU...)

It would be possible to implement this driver by directly using SCMI
pinctrl interfaces (I mean drivers/firmware/arm,scmi/pinctrl.c)
if the system wants to utilize SCMI solely for GPIO accesses and doesn't
need pinctrl support.
(Even so, "protocol@19" will be required due to the current SCMI binding.)

But I didn't take this approach because the kernel's pinctrl framework
(and many existing pinctrl drivers) instead adopts standard pinctrl-
gpio mapping (I mean gpiolib(-of).c) and it just seems to work well.

> I wonder why it has even a dependency on PINCTRL_SCMI at this point;
> is not that it could work (generically) even if the backend Pinctrl
> driver is NOT SCMI ?
> What makes it usable only against an SCMI Pinctrl backend ?
> Cannot be a generic GPIO driver based on top of Pinctrl, no matter which
> Pinctrl backend driver has been configured ?

That is one of my questions (See the issue (3) in my cover letter.)
Why doesn't there exist a generic GPIO driver of this kind (based on gpiolib
framework) even though it could apparently be possible?

I guess that there a couple of reasons:
1) As I mentioned in the issue (1) in my cover letter, the current
  framework doesn't present an interface, especially for obtaining
  a value on a gpio input pin. Then it enforces each pinctrl-based gpio
  driver needs to have its own driver.
2) Furthermore, there may be driver-specific semantics required,
  say, for pinconf-related configurations? (I don't come up with any
  example, though)

If my driver is good enough for applying to other gpio controllers as well,
I would not hesitate to name it a genuine generic driver whether the backend
may be SCMI or not.
        -> Linus, comment here please.

Due to possible cases of (2), I still added "-generic" postfix to the
"compatibles" property so that other variant drivers may be tagged as
"arm,scmi-gpio-some-system" or "some-vendor,scmi-gpio".

Thanks,
-Takahiro Akashi

> 
> ...I maybe missing something here about Pinctrl AND GPIO frameworks :P
> 
> Thanks,
> Cristian

