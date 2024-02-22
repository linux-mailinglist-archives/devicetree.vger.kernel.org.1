Return-Path: <devicetree+bounces-44579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DA185F000
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:42:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06DA5B24228
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68B0E1775B;
	Thu, 22 Feb 2024 03:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RGsjpPZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A286417583
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708573316; cv=none; b=Hdovoeqh6/dGzXWCz4gV5oZ/xQoTGfw3Oh7ZMrcKzdvfnLUJYCbY8MhDB/x0qF3IwgiK5RVQi2s0Go1dIWK2puODfWJ7O4q0wQs+t158VVCbothuHYLfm1eecYSLuIbZaNI2booNWv8xE3Ytx7sQnZVRWOnyamb7H9Dk2I/rB/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708573316; c=relaxed/simple;
	bh=CFleHBNrQpRDBWB+bPrY3lACjfd7SpfoVKRa4Rm7usE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GbwHUu7OO6fx4SYr26gA1aP7NDXsHIrAC12SWPxFa+DsbMIWgW02XY6ic7S5vsLClyk2T+KgaR0rBeyqypoLQY2cs3oxjbhU847uatXHK3VRE6CNiL1z57MmGsBVImQeDdTtCthfnwti73Xb4o8qrpyRYQ30qkWTHQDnJcPmOy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RGsjpPZ8; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-42e2507c6e1so105381cf.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708573313; x=1709178113; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tkWn2p2KoktTF74iyosyAqtgPvGQax193IdDSSf0wdk=;
        b=RGsjpPZ8fpxN3eTzLGz1eZxxOFjwO+7HrSuwUmiE71lFb5IKrVyulevIhya7ZmALez
         jy3xk7BjCpG+f4jVyAE+HC+lKJkomau5gSM9vbveLWZ1M7Z8R8BrVC8f8suFidwPwR5/
         ykd3fNXw5Yd+rQxp0dcNmjgxxeeJN9oZP7cXrP9j3NJOoN2lN5H4yTsluwawdw9Rm+zJ
         GXPa0qDPtDVGyDUO7x7R+Kt2qFQ0VE69V64RNtiHnyMgn29ob7gN9uBlqTAWzhe1GAue
         6cMzqGkOVyEgBzIyC91gL8Fjl27zIXLb7mb4l+4dqYdDpT5qPYnoLy4dWw75H1bp9uV5
         p+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708573313; x=1709178113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tkWn2p2KoktTF74iyosyAqtgPvGQax193IdDSSf0wdk=;
        b=ES/vGNYBSXHTt5dJvnKOtof8CORNkG4AoV7DPq3bea+CQ6fDBlPQQIOYYpBOtCby+V
         B6qW8ymNHweNk6hMZ3hl7XPNFCQs/OOhLABHmcbsnbXN7jkeLVUD2b9U49ef39vGrVyB
         a+jfPLz4rTKFS3Q7946qqEh5XSZ7ooKlcdYjSldsRvDOyR4wi8WUvmPxKS5d4c0Prl4B
         4QrB5LOJravKrsoGMxHj+E1DmXZIz1FYKPoWdZn6N01RBMtKIfLrF5v68CKd8x7iTX9P
         VueJgEQEsHufwYxvr9YIKz71N0mwoR9XqWYD+yxVE7dfdROyES5YM1hVKmtTP+ZPQ1Z4
         kT4g==
X-Forwarded-Encrypted: i=1; AJvYcCWr49dlBaxTyCdCdUeGGPLt+XakJvPl3rRWY+vwfXr8bR1snqFXfNnHoQS7qxpucrMLZP6HJqqmzYTV/vCLtzbaSvMqObV2I74l/w==
X-Gm-Message-State: AOJu0Yw34SVnpZSN6viULU+QnkswbN8Y3iKtZ9Nv912HAlBBvAU8dYa2
	2HNc0fIE4ngybZ3yGN5ya/UdyV4dJhdQW6YWmSVScSTZyhFBYPatPFuEfWIWikUzYy7jLnjMuoh
	PkS5adcoYTzZhL/XDGZPfXxahIFGWFWjUYuwV
X-Google-Smtp-Source: AGHT+IGvjS/JsDjKLRtFXUpHvTnqcMileQ3GCikt+aLAGrSc25d+ufjOgPr0Fh2MCXQbYqWszHyGfO3vfuuMY/hfPQk=
X-Received: by 2002:a05:622a:68c9:b0:42d:be0f:e30a with SMTP id
 ic9-20020a05622a68c900b0042dbe0fe30amr384702qtb.23.1708573313369; Wed, 21 Feb
 2024 19:41:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221233026.2915061-1-saravanak@google.com>
 <20240221233026.2915061-4-saravanak@google.com> <170856138383.540970.12743608676098316685.robh@kernel.org>
In-Reply-To: <170856138383.540970.12743608676098316685.robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 21 Feb 2024 19:41:16 -0800
Message-ID: <CAGETcx9v_NHhC4EwKDQ1UQMQQB=B2e1nQSqJZAwc7VwEWztp8g@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: Add post-init-providers property
To: Rob Herring <robh@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-kernel@vger.kernel.org, 
	Ard Biesheuvel <ardb@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Daniel Scally <djrscally@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	kernel-team@android.com, linux-efi@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org, 
	Frank Rowand <frowand.list@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-acpi@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 21, 2024 at 4:23=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
>
> On Wed, 21 Feb 2024 15:30:23 -0800, Saravana Kannan wrote:
> > The post-init-providers property can be used to break a dependency cycl=
e by
> > marking some provider(s) as a post device initialization provider(s). T=
his
> > allows an OS to do a better job at ordering initialization and
> > suspend/resume of the devices in a dependency cycle.
> >
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  .../bindings/post-init-providers.yaml         | 105 ++++++++++++++++++
> >  MAINTAINERS                                   |  13 ++-
> >  2 files changed, 112 insertions(+), 6 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/post-init-provide=
rs.yaml
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/post-init-providers.example.dtb: /examp=
le-0/clock-controller@1000: failed to match any schema with compatible: ['v=
endor,soc4-gcc', 'vendor,soc1-gcc']
> Documentation/devicetree/bindings/post-init-providers.example.dtb: /examp=
le-0/clock-controller@1000: failed to match any schema with compatible: ['v=
endor,soc4-gcc', 'vendor,soc1-gcc']
> Documentation/devicetree/bindings/post-init-providers.example.dtb: /examp=
le-0/clock-controller@2000: failed to match any schema with compatible: ['v=
endor,soc4-dispcc', 'vendor,soc1-dispcc']
> Documentation/devicetree/bindings/post-init-providers.example.dtb: /examp=
le-0/clock-controller@2000: failed to match any schema with compatible: ['v=
endor,soc4-dispcc', 'vendor,soc1-dispcc']

I'm assuming it's okay to ignore these warnings about made up
compatible string names.

> doc reference errors (make refcheckdocs):
> Warning: MAINTAINERS references a file that doesn't exist: Documentation/=
devicetree/bindings/post-init-supplier.yaml
> MAINTAINERS: Documentation/devicetree/bindings/post-init-supplier.yaml

Will fix this and send out v4. Ignore the v3 series please.

-Saravana

>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202402=
21233026.2915061-4-saravanak@google.com
>
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.
>

