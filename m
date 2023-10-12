Return-Path: <devicetree+bounces-7926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B9C7C621A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 03:15:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 481C72824C6
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 01:15:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A651652;
	Thu, 12 Oct 2023 01:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YkJEqLky"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D9562F
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:15:08 +0000 (UTC)
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3E13A9
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:15:06 -0700 (PDT)
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-57c0775d4fcso54783eaf.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697073306; x=1697678106; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pgOKZxofitClM+o1lLshkyVp5VF97o2K5OR3XWz9MEg=;
        b=YkJEqLkyoOzm6YBPOnGXJ38ZL07TGjyNcaJbVzZyLfJgXmCp9+u29Ywfp2K5omsJJQ
         NeKfgelklnAgF1mbYkIEiY/wUahN0yIvKRAswGco8zRXlgb8nw4VzmE4qzGYmbl/wINv
         oZxUoxtEVy/IdOvA7ztSW+S6eCAGqxtlt5/ag24LWLo71yxeX8e8/UQIYh14ldOJK2Qp
         QF+i1XWCCevezGlmWjG7b5VykUd3lav48BwmjTdG3fu/zw7bDJ47zH73kYaMFZRH7q9X
         ucsGyxH9BZLZzDEHbvhFKqZu/H6WRI21qRTsXiVaqWEs+bStln3uqXHxSibzscdsLHBx
         pOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697073306; x=1697678106;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pgOKZxofitClM+o1lLshkyVp5VF97o2K5OR3XWz9MEg=;
        b=ipSTMyN9eTT+oAPxNlVFiTsqc9CeEkyGMNSxzqpjcEfZaxrCaGJzUlBjbjhps+u8+g
         NvUxcLf7sTI7l8AWUnEI2k+N0O/CecSbmt2hhITUT7h+Fu+RHO655qHp9mamqEP+HBNx
         ipww0jvNq0hEva3LmChanDwvBPsDxSKo91eAkh2LafPL2Jr4OtVHhKSmbsU9Dwcd9pZ1
         jov9TDgU2ZotttCE3Lh0sCb0TD98WSvZ92OTcB4LAzs06k2VRL1PbBAMGMghiJJWnNta
         L2uE0d0WUyuMhU44N8ZglDnaQKvGrGbJcEBaraWJ2Abtpy14qENYmrdESzgNfptyQ8um
         GXZw==
X-Gm-Message-State: AOJu0YxXeIjr+gf0UsQx2VMb9iiDo9KQVGXt4opRoSa/sWhfbNsIX0Fu
	0K5NqOig1YWTGDKw5+G9MakfKNhzTX/2EzGToolFbA==
X-Google-Smtp-Source: AGHT+IE3yeeBoXFf4sEvkSsuyliBNq7zk3TnWf86xikV3WfID6a2o3LkesKNFo/NtOJRUJpc2tbduw==
X-Received: by 2002:a05:6359:6418:b0:166:8ba6:d36d with SMTP id sh24-20020a056359641800b001668ba6d36dmr714395rwb.0.1697073306042;
        Wed, 11 Oct 2023 18:15:06 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:f7a8:3d44:f8cb:28e])
        by smtp.gmail.com with ESMTPSA id t17-20020aa79391000000b00694fee1011asm10706296pfe.208.2023.10.11.18.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 18:15:05 -0700 (PDT)
Date: Thu, 12 Oct 2023 10:15:01 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
Message-ID: <ZSdIlaom+QO8IlKW@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org>
 <a8d31c42-1248-4738-b01a-3abeedfd49eb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8d31c42-1248-4738-b01a-3abeedfd49eb@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 05, 2023 at 09:48:09PM +0200, Krzysztof Kozlowski wrote:
> On 05/10/2023 04:58, AKASHI Takahiro wrote:
> > A dt binding for pin controller based generic gpio driver is defined in
> > this commit. One usable device is Arm's SCMI.
> > 
> > Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> 
> > +
> > +required:
> > +  - compatible
> > +  - gpio-controller
> > +  - "#gpio-cells"
> > +  - gpio-ranges
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    gpio0: gpio@0 {
> 
> No reg, so no unit address.

My intention was to allow for multiple nodes (instances) of
pinctrl based gpio devices. But I don't care the naming.

> Drop also unused label.

Okay, I already dropped an example consumer device and have no need
for the label any longer.

-Takahiro Akashi

> 
> > +        compatible = "pin-control-gpio";
> > +        gpio-controller;
> 
> Best regards,
> Krzysztof
> 

