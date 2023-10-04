Return-Path: <devicetree+bounces-5696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC547B7864
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 553A428145C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14DD6AB9;
	Wed,  4 Oct 2023 07:08:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494441856
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:08:30 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6D9AAC
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 00:08:28 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1c4456d595cso1833425ad.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 00:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696403308; x=1697008108; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t+HNamXx8KNnqMjBVvxVHxCmQqxpGZi0a4VnllDCQ5M=;
        b=YMS/pQ8YiQW2H6sfa8AqDaJeM49qhkGJDBu5WBt0msFhJICyYHyhd3r34/vTyAMCoS
         UdRk8FyD0RTlMhbNIgblRJ21YJ1RcGW/yJdNpsk+LrXLr65Y2n2CVVUcMdn+ZkB7I30L
         nH3r9M0ki6B6RHvB+89oh9w1QQOK6AJ34RQl5D2IXozEDhei0Vn39EZNnBwGuANSMI4k
         nn2wUpD0J7BR+OtpptFky4H77wewma6OfckIgwVTH4uYBxI1bmP92cf+ve9SUl0Hqx4J
         SGWDAH3kElyJosLL/vP+u+rYCn4YW0Cq3VaPNewSFHdejy1gyr6oWOT4fjPVhIYayYlo
         AJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696403308; x=1697008108;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t+HNamXx8KNnqMjBVvxVHxCmQqxpGZi0a4VnllDCQ5M=;
        b=KGQZJ2AXld3djFf7c2g2J2rTobJ9kwcL1ore5kA1P9Szd22EZMW6XOpY6YrjX6b08j
         JEiQEJDrejemnRiJ2bCC5Jc1l5PWmu+9OkRqdNSykzsYs/WQ+ZyDVA9nf/xMUb36nAWU
         /YGsCT1crRbcfX0CEcO3EncEM/A616QcJrKobUHs3ckQhvT+D1CYsn37MPJrm72iQ2Mr
         Gx7g9KnVmX0Rh0PRQkrq8IgP2/sSrz3KgO7eX8kx773m8/HFWWSVke9cyi03xMFVZxzM
         2D4PnB6RjQv9Rc/OVe/eHQ1esB7jkwcWgexvr31B4CsXJyJPpO72mr2FSqyTuRscGNkq
         K0kQ==
X-Gm-Message-State: AOJu0Yy9Lh8l8MMuZnrr9KHwbUjlZOl0DyNS+Ny9b0AOL3zh4vQu+rb5
	Gdv9aCtn+w6vyA0jaGKpWUC8Lw==
X-Google-Smtp-Source: AGHT+IG9Sl5KymtbHuRT8tP6Uk0OFio8plzOQlpu4XZA2P8W7Fbb/mUXcRCply6qxt878PPQR8VPJQ==
X-Received: by 2002:a17:902:dac8:b0:1bf:1a9e:85f7 with SMTP id q8-20020a170902dac800b001bf1a9e85f7mr1785477plx.1.1696403308115;
        Wed, 04 Oct 2023 00:08:28 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:81c4:ac5:bfc9:67a3])
        by smtp.gmail.com with ESMTPSA id e4-20020a170902d38400b001c3f7fd1ef7sm2873333pld.12.2023.10.04.00.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 00:08:27 -0700 (PDT)
Date: Wed, 4 Oct 2023 16:08:23 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [RFC 4/4] dt-bindings: gpio: Add bindings for SCMI pinctrl based
 gpio
Message-ID: <ZR0PZ+RHzfbrlbnI@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>, sudeep.holla@arm.com,
	cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
 <20231002021602.260100-5-takahiro.akashi@linaro.org>
 <CACRpkdZgmwhGYH43iAq=cERaGO9a-mVHXG8sQ2htPw0DcrnuNA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdZgmwhGYH43iAq=cERaGO9a-mVHXG8sQ2htPw0DcrnuNA@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 03, 2023 at 03:16:49PM +0200, Linus Walleij wrote:
> Hi Takahiro,
> 
> first, thanks for working on this important and crucial driver!
> 
> I'll try to clarify and also explain something of what the others
> are saying (unless I misunderstand them...)

Ah, thank you.

> On Mon, Oct 2, 2023 at 4:17???AM AKASHI Takahiro
> <takahiro.akashi@linaro.org> wrote:
> 
> > A dt binding for SCMI pinctrl based gpio driver is defined in this
> > commit. It basically conforms to generic pinctrl-gpio mapping framework.
> >
> > Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> 
> I think like Christian says that SCMI maybe has nothing to do
> with this binding? It is just one possible use case (though we don't know
> of any others.) The resource it is using is generic functionality that exist
> in any pin controller that provides ways to drive lines high and low
> etc.
> 
> Would it be named a generic pin control-based GPIO?

If you like :)
As I said, I was not confident that the driver be applicable
to other pinctrl-gpio cases.

> (...)
> > +++ b/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
> (...)
> > +$id: http://devicetree.org/schemas/gpio/arm,scmi-gpio.yaml#
> 
> So no ARM, no scmi, just pin-control-gpio.yaml, be bold!

I'm not so ambitious.

> (I like this long unabbreviated name)
> 
> > +title: SCMI pinctrl based generic GPIO controller
> 
> Pin control-based generic GPIO controller
> 
> Add
> 
> description:
>   The pin control-based GPIO will facilitate a pin controllers ability
>   to drive electric lines high/low and other generic properties of a
>   pin controller to perform general-purpose one-bit binary I/O.
> 
> (At least I think this is the idea, I hope I understand correctly.)

Okay.

> > +properties:
> > +  $nodename:
> > +    pattern: "^scmi_gpio(@[0-9a-f]+)$"
> 
> These nodes are always just named gpio@...
> the resource marker is "this is a GPIO" that's all it means.

By following other gpio drivers' bindings, I will drop this rule.

> > +  compatible:
> > +    const: arm,scmi-gpio-generic
> 
> const: pin-control-gpio
> 
> Other than that I am aboard with the solution!

Hope that the driver works on real hardware :)

-Takahiro Akashi

> Yours,
> Linus Walleij

