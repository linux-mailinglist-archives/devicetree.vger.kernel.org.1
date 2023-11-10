Return-Path: <devicetree+bounces-14897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD797E7628
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 01:58:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A052D1C20BBC
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 00:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 006B8A40;
	Fri, 10 Nov 2023 00:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V5c558bw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6CB7F6
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 00:58:45 +0000 (UTC)
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C17E73A8E
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 16:58:44 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6d339b93423so12099a34.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 16:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699577924; x=1700182724; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xJVrXuXFcu3DgtWdnbXpFzASR1Czvt1UEeVrRTmaZPQ=;
        b=V5c558bwpJbS+RsMjl+81BnZskU9iA2PziT2KM/lWdWWWu9sF61J7xxbkit5dKirS2
         r46y3F7gdM+v0QWicY8k7FIYJb5Dw3lpnFUDM3m4L8n8WniI4rH9r8J2k99Wtdjlx3Fb
         cwZB48T+NKxPi43z6rvgfk/gCXdrlX5dBOCqrgDLWe5aYioerEi22D0WnIYhJA53bF61
         2Wt2HG7wPkxoF3tCC0mKbYrB8/JhenDUbnG+eH0+lc2Y4Db7+Gy38b34eL/xGguoIOwW
         3M3hrwMEaHFE2CBRj16ppDuBnYjw4ba78bTRKl83sEIGAc3ygF8yvXkwM6qFYWp3ifyr
         /Wxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699577924; x=1700182724;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xJVrXuXFcu3DgtWdnbXpFzASR1Czvt1UEeVrRTmaZPQ=;
        b=mBynP4Cfjva6DVUgjd7nov0yZzxvmmF6QocLu/VL5Hr6fr9cl0QdC8tthYGpJRSy1y
         8VNJ+CPPKnV2KXVw0i24dDKXCk2xKiG+6DyqjUg9/AYGj2WrD8toEDSzJgDhvEXSC4PU
         DeUq1K5vPd1PMgdViOoP70NumaWyLhpjBe1GHQhQmWoUI+YWmNbNSkGwBeSYKK0Rk/rw
         /wp2/R/pxnLh93Z6MMTK9FQYM1XaEUNBUyWtDvQFztmVJDpeKdG1Da6bc1aQ2LMrdjKZ
         RisDEVAmDRFGwpCS8WiTZJG5xK2GNh2g6e57h2mf0R5ZUOsOVtXC++771YcmTNA0vTYK
         24iQ==
X-Gm-Message-State: AOJu0YwjGq9hv9pZONfUS9Kcq9JNmrp7ASUPyBQNXUzS20XYKWzLywNp
	uuuDj4Am32pGPOPqV+NniWx6fw==
X-Google-Smtp-Source: AGHT+IFCGAq9uOJ74nOCEa1XdXbPO22Qfscitoj00Gqwgxzjx8UkOGK6WexDGU679wSnRWP4OZnOBw==
X-Received: by 2002:a9d:6f16:0:b0:6b7:36af:1937 with SMTP id n22-20020a9d6f16000000b006b736af1937mr7501364otq.0.1699577923984;
        Thu, 09 Nov 2023 16:58:43 -0800 (PST)
Received: from octopus ([2400:4050:c3e1:100:f2ee:7d90:a86d:610])
        by smtp.gmail.com with ESMTPSA id s4-20020a655844000000b005bdf596164fsm1746007pgr.94.2023.11.09.16.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 16:58:43 -0800 (PST)
Date: Fri, 10 Nov 2023 09:58:39 +0900
From: Takahiro Akashi <takahiro.akashi@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>,
	"sudeep.holla@arm.com" <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Subject: Re: [RFC v5 5/5] dt-bindings: firmware: arm,scmi: Add support for
 pinctrl protocol
Message-ID: <ZU2AP7leDcIZIN+b@octopus>
Mail-Followup-To: Takahiro Akashi <takahiro.akashi@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>,
	"sudeep.holla@arm.com" <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
 <e9285b4377242e4d888391be987cbb99caf8c573.1698353854.git.oleksii_moisieiev@epam.com>
 <CACRpkdYW-xmejyOo9H9XSkcabvYgBqPvpjppvNe_RF6RLxyxKA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdYW-xmejyOo9H9XSkcabvYgBqPvpjppvNe_RF6RLxyxKA@mail.gmail.com>

Hi Arm folks,

Do you have any comment?
I expect that you have had some assumption when you defined
SCMI pinctrl protocol specification.

On Mon, Nov 06, 2023 at 02:12:36PM +0100, Linus Walleij wrote:
> On Fri, Oct 27, 2023 at 8:28???AM Oleksii Moisieiev
> <Oleksii_Moisieiev@epam.com> wrote:
> 
> > +                keys_pins: keys-pins {
> > +                    pins = "GP_5_17", "GP_5_20", "GP_5_22", "GP_2_1";
> > +                    bias-pull-up;
> > +                };
> 
> This is kind of interesting and relates to my question about naming groups and
> functions of GPIO pins.
> 
> Here we see four pins suspiciously named "GP_*" which I read as
> "generic purpose"
> and they are not muxed to *any* function, yes pulled up.
> 
> I would have expected something like:
> 
> keys_pins: keys-pins {
>   groups = "GP_5_17_grp", "GP_5_20_grp", "GP_5_22_grp", "GP_2_1_grp";
>   function = "gpio";
>   pins = "GP_5_17", "GP_5_20", "GP_5_22", "GP_2_1";
>   bias-pull-up;
> };
> 
> I hope this illustrates what I see as a problem in not designing in
> GPIO as an explicit
> function, I get the impression that these pins are GPIO because it is hardware
> default.

If you want to stick to "explicit", we may rather introduce a pre-defined
sub-node name, "gpio", in a device tree binding, i.e.

  protocol@19 { // pinctrl protocol
      ... // other pinmux nodes

      scmi_gpio: gpio { // "gpio" is a fixed name
          keys-pins {
              pins = "GP_5_17", "GP_5_20", "GP_5_22", "GP_2_1";
              bias-pull-up;
              // possibly input or output
          };
          input-pins {
              groups = "some group"; // any name
              input-mode;
          }
          output-pins {
              pins = "foo1", "foo2"; // any name
              output-mode;
          }
      }
  }

It would indicate that all the succeeding nodes are for gpio definitions
and *virtual* gpio pin numbers will be assigned in the order of
appearances in "gpio" node. Then a client driver may refer to a gpio pin
(say, GP_2_1?) like in the current manner:

  foo_device {
       ...
       reset-gpios = <&scmi_gpio 3 ...>;
  }

-Takahiro Akashi

> 
> Yours,
> Linus Walleij

