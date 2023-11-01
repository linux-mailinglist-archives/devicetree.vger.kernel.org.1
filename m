Return-Path: <devicetree+bounces-13343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D9B7DDBF0
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 05:43:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C10282819BD
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 04:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 466881841;
	Wed,  1 Nov 2023 04:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="SmpH5xch"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109641845
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 04:43:21 +0000 (UTC)
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com [IPv6:2607:f8b0:4864:20::e32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FB7B101
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 21:43:19 -0700 (PDT)
Received: by mail-vs1-xe32.google.com with SMTP id ada2fe7eead31-457c2d81f7fso2683611137.3
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 21:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698813798; x=1699418598; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bgzUATk4aTDwLV5ETkynjjS36FynkenHN7MQBidatBs=;
        b=SmpH5xchV/kk/yj3fxtZYQJGwRtZ6wfSTVjR3LfLM/EOoRSVUz9GjTl9JAafCsUm68
         za+7rnGBrnELeUycXQi989f+JH0nrEPTKvY0Bar0dkflmp5L87+4dKfMDn6N5bGljoka
         kQy0FJHg6qE3JaoiONtEEd8t5M5jGD/j6UTKftdXScB+xqa27wd1INPtrqQImqVXm2iQ
         ++AhmIGRuI9/oj2tDevmwsmJTDXJ+N2EmQJ3duY1LW80ih6xYu8oHK+doV+BeNzNsNxY
         B7o+prGkK54KPPCsVXtkuv/fXrTP+L1BxQ7NAHhAlw0wlPICpiDmwRNGvqyVs5qxoFY2
         ydpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698813798; x=1699418598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bgzUATk4aTDwLV5ETkynjjS36FynkenHN7MQBidatBs=;
        b=Eh76NNfRQ7AgSCW4+15bWDRq1PztxpIy8XOr59m0yt1jJi1iRiADbvGkFD0c1gaO1z
         HhpoTDu5YvNx2v570eMSjJl34JSSyYKrgzfWHYRg3uJAkeAu2qCCqXYfBvVuBmG0i9DS
         4xg356fyOtb+BJpjUwgkkJtLRYD152zrIqAA022qTZF3AFeEMjX3hLv+rf12HI9oE7MV
         O6+fVxfU2vX6j+0CFNGxwKYwuwpgq6owzGOjlFuXcIAzWpxc+E2ENIIyfmmqrR1MxHD5
         ODNik/wl7/HTnYotrBb9DOJ2y4Zai7QVwvjUhqn1EfZPVulrCGFQUhGSRPy1FynC3++h
         DeLg==
X-Gm-Message-State: AOJu0YwBQ75x2F3SSWUh+pnE/hzBm7I7nBccu1AnQAPUcZejbBo2G1Hg
	aQbNnXrM/CNQ1/pYsFUYHQkYUKmQV21V3exEmln7Cg==
X-Google-Smtp-Source: AGHT+IGiJ2dXrF26oqY/t33QqLa6W5Q3zXHlE16Nhs1v668ybIE4h6rrhKm13xdbut+rPybUdSDFjHkOz/ki7psGPhE=
X-Received: by 2002:a05:6102:471e:b0:457:4645:a339 with SMTP id
 ei30-20020a056102471e00b004574645a339mr13663582vsb.1.1698813798503; Tue, 31
 Oct 2023 21:43:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231031044021.1162403-1-mnkumar@google.com> <20231031044021.1162403-2-mnkumar@google.com>
In-Reply-To: <20231031044021.1162403-2-mnkumar@google.com>
From: Naveen Kumar M <mnkumar@google.com>
Date: Wed, 1 Nov 2023 10:13:08 +0530
Message-ID: <CA+Hc5+6Zb65gL1tCOZ6bYQThVn3HFS_gzj+_P+y-TkrHKw6zbw@mail.gmail.com>
Subject: Re: [PATCH 1/2] usb: host: xhci-plat: Add quirk-no-64-bit-support
To: Mathias Nyman <mathias.nyman@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, royluo@google.com, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding the reviewers/maintainers I missed in the previous mail to this patc=
h

On Tue, Oct 31, 2023 at 10:10=E2=80=AFAM Naveen Kumar <mnkumar@google.com> =
wrote:
>
> From: Naveen Kumar M <mnkumar@google.com>
>
> This patch exposes the existing quirk XHCI_NO_64BIT_SUPPORT so that dwc3
> clients can also use this flag. Despite HCCPARAMS1 being set to 1 some
> clients may not support 64 bit addressing.
>
> Signed-off-by: Naveen Kumar M <mnkumar@google.com>
> ---
>  drivers/usb/host/xhci-plat.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
> index b93161374293..d5f37decb7da 100644
> --- a/drivers/usb/host/xhci-plat.c
> +++ b/drivers/usb/host/xhci-plat.c
> @@ -249,6 +249,9 @@ int xhci_plat_probe(struct platform_device *pdev, str=
uct device *sysdev, const s
>                 if (device_property_read_bool(tmpdev, "quirk-broken-port-=
ped"))
>                         xhci->quirks |=3D XHCI_BROKEN_PORT_PED;
>
> +               if (device_property_read_bool(tmpdev, "quirk-no-64-bit-su=
pport"))
> +                       xhci->quirks |=3D XHCI_NO_64BIT_SUPPORT;
> +
>                 device_property_read_u32(tmpdev, "imod-interval-ns",
>                                          &xhci->imod_interval);
>         }
> --
> 2.42.0.820.g83a721a137-goog
>

