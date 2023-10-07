Return-Path: <devicetree+bounces-6680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E6C7BC6E7
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 116F71C20959
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 10:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2241C182DD;
	Sat,  7 Oct 2023 10:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA01F9F4
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 10:45:00 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D5BAEA;
	Sat,  7 Oct 2023 03:44:59 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3af59a017a5so520914b6e.1;
        Sat, 07 Oct 2023 03:44:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696675498; x=1697280298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VXhc4AjiVWEhMnGIoyNOjXGEIVUwbZEwWnoHiLFbjX0=;
        b=ilMMd8G9ORFMvuZyVSd4lnr4CSkFz4qWYf3MrCUy9qP/nT/VevQ2g3yswrvSG9DPq6
         H/cVtyix+t/pRQsbwRAet36SMsKCVJR4SNLTJ5gS2GxqKapYmfmF2viN1OkSgztGsZpc
         IfFOlEfV/UNeo8sgfW74KAWkkF50sZIlKQF/LhX97igzKNBdfyKN/WUsqUZiGCALOd0B
         aXSWXCVRf0PtZT4VXzKfaSg9dmx5+O0Ne7rEBd9KCyS/jMeVgkDINaGJv1RDNKOo1+6P
         r0U2SZuMGESTbXtkEeztwpl3Ne7pXawGDvmYaVR3KzCVYW/tqHy1KYm4hMq95FehkV3v
         ypfQ==
X-Gm-Message-State: AOJu0Yz4yIf0QDUBifjfgWfDs/bK99g1jMdU/S+SRGSelfEEfRrzLo9k
	6At+x8pMJhadfp4rnMi6iLKtQW8WuV25rhLMrWc=
X-Google-Smtp-Source: AGHT+IFRS4P43ZIQse0aIU83wX0h2pT4KbfEj1/GBsYLcEBcde33BDz2cby3K6bpc13NeyU0HatTVwRle8efMP7f4PU=
X-Received: by 2002:a05:6830:490e:b0:6c4:7516:f2cf with SMTP id
 eq14-20020a056830490e00b006c47516f2cfmr13156936otb.2.1696675497907; Sat, 07
 Oct 2023 03:44:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <5716404.DvuYhMxLoT@kreacher> <f0daa859-f9eb-4631-b2f9-6ee3ce5b691f@linaro.org>
 <9833cebf-e951-47c6-97b7-458ae1a5b747@linaro.org> <908fc8d6-10d2-51f9-fd70-171522c7e67d@arm.com>
 <ca4b87ea-7b59-4465-ba29-3280e82149e4@linaro.org>
In-Reply-To: <ca4b87ea-7b59-4465-ba29-3280e82149e4@linaro.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Sat, 7 Oct 2023 12:44:46 +0200
Message-ID: <CAJZ5v0jXPN4KEfZsFO0yU76jUVKLYFnp8-ib2tkcOvc1R+k0eg@mail.gmail.com>
Subject: Re: [PATCH v1] thermal: Remove Amit Kucheria from MAINTAINERS
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Lukasz Luba <lukasz.luba@arm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, 
	Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, Zhang Rui <rui.zhang@intel.com>, 
	LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	Amit Kucheria <amitk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 6, 2023 at 11:44=E2=80=AFPM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
> On 06/10/2023 15:48, Lukasz Luba wrote:
> >
> >
> > On 10/6/23 14:43, Krzysztof Kozlowski wrote:
> >> On 06/10/2023 15:43, Krzysztof Kozlowski wrote:
> >>> On 06/10/2023 13:21, Rafael J. Wysocki wrote:
> >>>> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >>>>
> >>>> Amit Kucheria has not been participating in kernel development in an=
y
> >>>> way or form for quite some time, so it is not useful to list him as =
a
> >>>> designated reviewer for the thermal subsystem or as the maintainer o=
f
> >>>> the thermal zone device bindings.
> >>>>
> >>>> Remove him from those two places accordingly.
> >>>>
> >>>> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >>>> ---
> >>>>   Documentation/devicetree/bindings/thermal/thermal-zones.yaml |
> >>>> 3 ---
> >>>
> >>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> and unAcked. We need a maintainer for the bindings. Someone else from
> >> thermal?
> >>
> >
> > I'm going to handle the review in thermal subsystem. Although,
> > I forgot about this 'binding' thing...
> >
> > Daniel, what do you think?
>
> I can handle the bindings, I rewrote the thermal-of code and worked with
> Amit on the txt to yaml conversion.

Sounds good!

I'll send a v3 of the patch then with this change included, please ACK it.

