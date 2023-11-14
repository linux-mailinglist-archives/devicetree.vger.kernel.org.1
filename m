Return-Path: <devicetree+bounces-15635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C947EB0A3
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:14:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6C812811E7
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 13:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE2AA3FE46;
	Tue, 14 Nov 2023 13:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lc7nIMzc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C68B3FE3D
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 13:13:59 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54713197
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 05:13:57 -0800 (PST)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5a81ab75f21so64677037b3.2
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 05:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699967636; x=1700572436; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AC7zPHlfp71u7FmPMHHQXTaJtq2nEvQZ45ctd9G44Cc=;
        b=Lc7nIMzcZuqZj+4ZCWURjauJdITA46ouGp2tGzapwA240rPlaQn3ef6HCeX8PmhSzx
         uCx8nslVnCCBmZfeIm4SrdU2WATpdpVA1/V81D1hSpACYleXa5tVsS+s3qHrKACRS8WW
         Gn9xhRPoaACwUdXR0dnW7eOnJgiXfO3Sla96emXlEQNsAIYzxTBI3wYAej4GP+16LqHa
         ka+QlzuSjuEbI7xSznw4kDyE4OwtRKmdHcyjZhNii6GlWjsW6hj9fg4wjzEs84hW8DG0
         4P4dRJIFrbrOEUxaP9Y/Y2BKumLByFRn4mYR7vKnojnBXWPUI1kmrsgKQjudvnGR16aB
         L4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699967636; x=1700572436;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AC7zPHlfp71u7FmPMHHQXTaJtq2nEvQZ45ctd9G44Cc=;
        b=ohJNyigTgmXeIyerPotip8GqxWmO491jrHJ5Z/8JGjhvcX5KhaF0BtEBMgSE+b6VX+
         8qW6QA9wIUj+R3T7/DsgZSTzF2uL7dwk+eohEQWKcMbDuakfqJPGx7AUMhMmTvPhQa2q
         kcDnNxJi9T6hPb+NYydu7HLqUxDW3Ee7M/CvlHz0bRs2CkkXe+wSLnXikq2RX8RLJ0+R
         mMYQAsZtbXlvKnVthSk7gDE8CIwUrriWhwakYdBzVBcAQlUhB6YMlSZOEohycm42sl+2
         Pf5PG0Kx8FQ071sdpA6D5ucSaOPtU77Ie9/J+qBuHxtNXPST5r6wML/vSP2f1oa3BgRn
         WHuQ==
X-Gm-Message-State: AOJu0YzVY+6L9W5jPx+wwbdmlm5CemjD8nicQB907/z2BrX9wj2FU0b9
	lYgQnfSkyQsaaIYB7RPR68VeXqbgFLnQjk8bNs2NrJq5sZmTFvhc9vU=
X-Google-Smtp-Source: AGHT+IFBYaHMZzCsW4AsGoZv9pa46ZVwMbrh03aGv7/fzr5sc0Qhx4V8IFGe0paIJ4dy0X6AbiRaIop+hJhMUG6cgDY=
X-Received: by 2002:a05:690c:4446:b0:5c1:25f:567e with SMTP id
 gq6-20020a05690c444600b005c1025f567emr10692579ywb.23.1699967636567; Tue, 14
 Nov 2023 05:13:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
 <e9285b4377242e4d888391be987cbb99caf8c573.1698353854.git.oleksii_moisieiev@epam.com>
 <CACRpkdYW-xmejyOo9H9XSkcabvYgBqPvpjppvNe_RF6RLxyxKA@mail.gmail.com>
 <ZU2AP7leDcIZIN+b@octopus> <ZU5LFC23JaEidEGZ@pluto> <2535571d-6fea-4064-8325-0f47d031c85f@arm.com>
 <CACRpkdaRY+rU+md-r5gVyFH5ATt3Pqp9=M4=+WArYkfVLAFdpw@mail.gmail.com> <604aee95-ad46-4102-80aa-71c2c9d1729c@arm.com>
In-Reply-To: <604aee95-ad46-4102-80aa-71c2c9d1729c@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Nov 2023 14:13:44 +0100
Message-ID: <CACRpkdb-4fBSRDaXiqXWe3Yh_Z1ni4ScJHfC_bw+bm4dqT_kCA@mail.gmail.com>
Subject: Re: [RFC v5 5/5] dt-bindings: firmware: arm,scmi: Add support for
 pinctrl protocol
To: Souvik Chakravarty <souvik.chakravarty@arm.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>, Takahiro Akashi <takahiro.akashi@linaro.org>, 
	Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 3:23=E2=80=AFPM Souvik Chakravarty
<souvik.chakravarty@arm.com> wrote:
> On 13/11/2023 13:32, Linus Walleij wrote:
> > Hi Souvik,
> >
> > thanks for looking into this!
> >
> > On Mon, Nov 13, 2023 at 1:56=E2=80=AFPM Souvik Chakravarty
> > <souvik.chakravarty@arm.com> wrote:
> >
> >> The initial assumption always was that GPIOs can be considered as a
> >> specific function. Note that the spec does not define the types of
> >> function and leaves it to the DT binding (or driver) to figure out the
> >> function descriptions/names.
> >
> > Does this mean that each system using pinctrl-SCMI will need
> > to specify the available pins, groups and functions in a device tree
> > binding? For e.g. DT validation using schema?
>
> Sorry seems I made a typo above ("descriptions/names" should have been
> "description from names") which resulted in turning things on its head.
>
> I really meant that the driver has to figure out the exact type or
> meaning of what the function does from its name. SCMI still continues to
> provide the list of pins/groups/functions and their names.

Indeed, that's what I imagined.

I think the rest of my question spurred by the phrase
"leaves it to the DT binding (or driver) to figure out" is actually
something Oleksii needs to look into more than a question to you.

It should probably come as a review comment to the patch 5/5 itself.

Oleksii, what is your take on my question about DT schema validation
for different SoCs?

Yours,
Linus Walleij

