Return-Path: <devicetree+bounces-6027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 994977B9B79
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 09:46:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id D70F4B20819
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 07:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99BD25690;
	Thu,  5 Oct 2023 07:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="a33qz0n8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1711353B9
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 07:46:43 +0000 (UTC)
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2BE27DBF
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 00:46:42 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-279013f9875so480314a91.2
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 00:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1696492002; x=1697096802; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gONi3mU2Nao2iYlTM3Z0y9mEcA9yDtJpsS/Q6xea9gg=;
        b=a33qz0n8Gia6g8tiygzVqJO3XOIqyD1H+EoEFkVNzK73V/FkjKv7fhdGXfWYSgZ0Bs
         9I3BiYgT1GalnqhUz4EwcrsWJhmIfhcAxexyiMQNzpfZHo8wDIw+eDCvvMyPE9p8nljF
         SPzZmkjxb9AMuwQ7o8ukNEmU50oexX0RoOneRUF15he9iN3WaR4OtSXLk6sk+1EI/7m3
         D1aGm0VnY9i75uL72/PqBHcRKH0wg2aRBO2qaWa1lA5hvwCt8sTnV3I6nI2Yt8vWDhl8
         K8ZX2oZYLXT9/aNkTiA7S/mrFLJn9Fc99jhIv8wPGC+jRrMgVsej2tJlX2XPou3I+yp6
         4axA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696492002; x=1697096802;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gONi3mU2Nao2iYlTM3Z0y9mEcA9yDtJpsS/Q6xea9gg=;
        b=EHbZgR312DJrsrs3ICQzDR1557beaRzyqpDCpE10qBqK3vVHazyNB3c31xbaLDB6eO
         tGZ/GelZ2sxDqbkTZUS8eyH5kaaAmoNl9p9HkA4mmPWQc6fRUwP+Fo0CbR3WhQHIvUao
         Tcc5Y42SKQiFXHw8Elnsa2Cxa1MOs54j66aFDD/CH96BL59r7t/CzP59Cj2eZFU0JHDD
         CvxB8000Xjbaehu9JwD8gMeHkodXj+RCPuEBRw8IpEWmJ0h11AqvKIszNaUoEletTb1a
         h7fgApeALMtszLVKvY6koLL1m7fvQmqplrBcJaDZTuYYp1D9DcoUX8IijCY2rvJqL+wz
         VH0Q==
X-Gm-Message-State: AOJu0YwEWcpHv9JTLe75FTAZMLoSKq9CY0kPJvjx7VdGcXuPdvsg59Qk
	upbSyGK6QXGZ04tDNM3ujIiFRAHCDuXra+mghprmIw==
X-Google-Smtp-Source: AGHT+IGnCQ/MzCTXbm/9BKeoqCiGoah+7aIF31lg8x7PD0677LUDZURnqxgVEDXEnB9+lJS4GNvl8XuU4H7vxTiphyA=
X-Received: by 2002:a17:90b:374b:b0:26b:4a9e:3c7e with SMTP id
 ne11-20020a17090b374b00b0026b4a9e3c7emr4348319pjb.4.1696492002069; Thu, 05
 Oct 2023 00:46:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231004120529.1155700-1-naresh.solanki@9elements.com> <20231004151433.GA3145438-robh@kernel.org>
In-Reply-To: <20231004151433.GA3145438-robh@kernel.org>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Thu, 5 Oct 2023 13:16:31 +0530
Message-ID: <CABqG17in=LKwsDoPRmN5NMNiZ3wU=bbWiyPdunpwph7hgPSxEw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: regulator: regulator-output: Multiple supplies
To: Rob Herring <robh@kernel.org>
Cc: broonie@kernel.org, zev@bewilderbeest.net, 
	Liam Girdwood <lgirdwood@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,


On Wed, 4 Oct 2023 at 20:44, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Oct 04, 2023 at 02:05:26PM +0200, Naresh Solanki wrote:
> > Add support for multiple supplies.
>
> Why?
1. Driver is already capable of that using platform data. Hence added
support to read DT property & initialize the same for multiple
supplies instead of being limited to one.
2. This is particularly useful in cases wherein 2 or more regulators
are coupled together, for example in a PCIe connector having 3.3V &
12V.

Regards,
Naresh
>
> >
> > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > ---
> >  .../devicetree/bindings/regulator/regulator-output.yaml  | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/regulator/regulator-output.yaml b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
> > index 078b37a1a71a..6d077f123729 100644
> > --- a/Documentation/devicetree/bindings/regulator/regulator-output.yaml
> > +++ b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
> > @@ -21,13 +21,13 @@ properties:
> >    compatible:
> >      const: regulator-output
> >
> > -  vout-supply:
> > +patternProperties:
> > +  ".*-supply":
> >      description:
> >        Phandle of the regulator supplying the output.
> >
> >  required:
> >    - compatible
> > -  - vout-supply
> >
> >  additionalProperties: false
> >
> > @@ -37,3 +37,8 @@ examples:
> >            compatible = "regulator-output";
> >            vout-supply = <&output_reg>;
> >        };
> > +      output1 {
> > +          compatible = "regulator-output";
> > +          sw0-supply = <&output_reg0>;
> > +          sw1-supply = <&output_reg2>;
> > +      };
> >
> > base-commit: f9a1d31874c383f58bb4f89bfe79b764682cd026
> > --
> > 2.41.0
> >

