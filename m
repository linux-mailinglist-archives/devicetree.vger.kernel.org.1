Return-Path: <devicetree+bounces-7742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3107C5463
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:54:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE51D1C20D3A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 034B11DA31;
	Wed, 11 Oct 2023 12:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJr4PxMf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBABA107AA
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:54:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6065CC433BF
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697028879;
	bh=lsXLuQurGnh4Z0akGPosK/CsIo+qnmnGl1yd/JhynMQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=TJr4PxMfQ66iTpUsLi0t/XB2NNLOOVtPTsOuvyhUmXSF637kHZ/ag5bcrCmpsGnLw
	 2zDvMx1av8zgYaUiFDcux3qv9N/T9Txx/q5UhM9NYjlHqncGDww1JGua9oNP4vw7vU
	 F8DRzCDUBXADwLVeBXEJSMmUNLxUJKwNsNahkLLkH2M0zFyI2sZRRoF5gCbQCw86gQ
	 fO7LytSB6utLlF8Sos6Z//qU3c9b1urxAhDKrm8vmSnCCFzjOPP6GLxYz38wVmggd7
	 uoDgQbYeI5q3vOoJZItq1LMT3Bj+Mb2R4ntYJifdQFx7CrmJM0K5SeerDAWekaNoRP
	 0A/JhtfjM/c+w==
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-53829312d12so1971971a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:54:39 -0700 (PDT)
X-Gm-Message-State: AOJu0Yy7YkesttdCtX3MFKTbdAsK3xAv5G8heGSqAy76LOjJ8lfBa5aL
	ol2FHUpO67WkZyjGIM/NRTGYdaZLWqWvG4FMsOS/tQ==
X-Google-Smtp-Source: AGHT+IHbEm3Uc2en9wMFmmEPBhW/KYWyTxzoEHjV+GnKE9YZ88khdvtKcTY7Q+g52u+n7nUhh4rPKmXMuT2NYqW9/gE=
X-Received: by 2002:a17:907:7246:b0:9a1:aaae:8207 with SMTP id
 ds6-20020a170907724600b009a1aaae8207mr14014040ejc.20.1697028877819; Wed, 11
 Oct 2023 05:54:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <5725069.DvuYhMxLoT@kreacher> <f74a029d-39be-4deb-bc4f-a1bc1e401082@linaro.org>
In-Reply-To: <f74a029d-39be-4deb-bc4f-a1bc1e401082@linaro.org>
From: Amit Kucheria <amitk@kernel.org>
Date: Wed, 11 Oct 2023 18:24:26 +0530
X-Gmail-Original-Message-ID: <CAHLCerOYRm6_ZUbpBAxtRZ2e6O_1-w9k-FxfsMv7k-wkN1nG-Q@mail.gmail.com>
Message-ID: <CAHLCerOYRm6_ZUbpBAxtRZ2e6O_1-w9k-FxfsMv7k-wkN1nG-Q@mail.gmail.com>
Subject: Re: [PATCH v3] thermal: Remove Amit Kucheria from MAINTAINERS
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Linux PM <linux-pm@vger.kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, 
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, Zhang Rui <rui.zhang@intel.com>, 
	LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 7, 2023 at 6:21=E2=80=AFPM Daniel Lezcano <daniel.lezcano@linar=
o.org> wrote:
>
> On 07/10/2023 13:36, Rafael J. Wysocki wrote:
> > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > Subject: [PATCH v2] thermal: Remove Amit Kucheria from MAINTAINERS
> >
> > Amit Kucheria has not been participating in kernel development in any
> > way or form for quite some time, so it is not useful to list him as a
> > designated reviewer for the thermal subsystem or as the thermal zone DT
> > binding maintainer.
> >
> > Remove him from the THERMAL entry in MAINTAINERS and list Daniel Lezcan=
o
> > as the new thermal zone DT binding maintainer.
> >
> > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > ---
>
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Acked-by: Amit Kucheria <amitk@kernel.org>

