Return-Path: <devicetree+bounces-13939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC617E16E8
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 22:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2304B20D5E
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 21:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 844AA18C39;
	Sun,  5 Nov 2023 21:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a7PP9pAu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FA8168BB
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 21:50:46 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5D3BCC
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 13:50:43 -0800 (PST)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5b499b18b28so46432387b3.0
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 13:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699221043; x=1699825843; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hr90dwu2WPmXaV4AOaADTw6spiSJ6baUUUEIFJOSjZY=;
        b=a7PP9pAuklVXMrs/bRGWxE4gXaokmyt2253HQZVSn//yuYepZ4H6f+ietUitc/767A
         0iJopoPV104WAHp9Wf1utyP9kgmAo9+R+DR5h5zspzW2iXG8DePvTDf8t169KZKoiXZQ
         JHq1aP81+9hUAJWT29Oq+nBrjMXdzM5hFQ7iHBGlupv1fUv8gtrmikDC/tzYy+2Jb4cW
         QqWAjVG1Dc0YpwEkrPUAzj5fHvoF2HuUiMdtvDNMAsSKQMI7n7/5x8AL9Ef+0wXFsBQu
         LYR4PlUqyQ0HrdRl3NHMXi4CZC9nSN6lEdCSrDMdgtVo1tSmDNhT0HS/jQy2o8VMeCOl
         jCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699221043; x=1699825843;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hr90dwu2WPmXaV4AOaADTw6spiSJ6baUUUEIFJOSjZY=;
        b=FwVhH9+GYmJ3m6aCN8ELaeb9QGhvrNThrrI0+sL+tiVkP6Kq7hD+jP01t54JI7oFsg
         gils7jZXNV/0F5EyyhPzyOFCe+RP3KnAs5OMwt9imhVOb9VlkqteXSMcZxsZklk86qdM
         HxlrLYqLRf9805XlsJd+XzWWZwooPvxiWir+2opGydRUOl84eKgnTqJy/5xeZx3SE8Bl
         LhjglxvYn3mTqwHYj4CQ43QH/noPEz0L3t1unWTACzcfXR+82vJPo5JZY1FcLKaOLy9G
         a/DkqJZSrt/8lhpX4r7lU5jMtyW5ovNmCQcpt5vF2FKj7Hv0jPInrJvY4VS2VDFdQuw0
         9bvA==
X-Gm-Message-State: AOJu0YwL8tst1O6BaUt8PS0Bt3/ErA3XsGCDzv5hVys1hHu2VMl8EX6Y
	CqfSLyOy8DN/9ZfIg4pNMkpDZd7/Hvd58QJwzCYtKQ==
X-Google-Smtp-Source: AGHT+IH3pT1GWz389sFqirKn5caQD4B9kLeKnqxw6mJ3o9PSnnJ5ODaLO9iXH2fcFh44UlzTYX6nLVYHv1RqiDHHBUo=
X-Received: by 2002:a0d:cc4e:0:b0:5a8:5079:422 with SMTP id
 o75-20020a0dcc4e000000b005a850790422mr8924478ywd.26.1699221043009; Sun, 05
 Nov 2023 13:50:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
In-Reply-To: <cover.1698353854.git.oleksii_moisieiev@epam.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 5 Nov 2023 22:50:31 +0100
Message-ID: <CACRpkdZ4GborirSpa3GK_PwMgCvY0ePEmZO+CwnLcP6nAdieow@mail.gmail.com>
Subject: Re: [RFC v5 0/4] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
To: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
Cc: "sudeep.holla@arm.com" <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, Takahiro Akashi <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="UTF-8"

Hi Oleksii,

thanks for this patch, which still looks very good to me.

A question that was raised in discussion with Takahiro Akashi was how we
identify pins that can be used for GPIO and if the spec or implementation
has given any thought to that.

I can think of a few, such that:

1. Pins that can be used for GPIO all belong to some group - possibly even
  one group per pin such as "gpioA1", "gpioA2", "gpioA3" etc - that can be
  assigned a function named "gpio" or similar.

2. GPIO is seen as something external or "third usecase" that is handled
  by pin config, not by pin mux.

If it is 1 - which I find likely - it would be good to standardize the name of
the function to be "gpio" and somehow make it clear that all pins that are
desired to be used for GPIO need to have a (group, function) tuple pair
such as ("gpio001", "gpio") that will put the pin into GPIO mode.

If the assumption is anything goes, i.e. a vendor could say something
like ("io-group-99", "generic-io") to put a certain pin into GPIO mode,
that is maybe not so optimal, because it's nice for the GPIO driver
(which will come up) to be able to figure out by e.g. string name
conventions that a pin is in GPIO mode, and which group and function
that will put it into GPIO mode.

If this generality is not desired, having standard names for GPIO
functions and groups is still going to be an upside, if it can be achieved.
But maybe this isn't attainable at this point?

Yours,
Linus Walleij

