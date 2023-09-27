Return-Path: <devicetree+bounces-3949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A667B0AD4
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 19:07:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id A2D9FB20902
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C1049985;
	Wed, 27 Sep 2023 17:07:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14E4262AD
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 17:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E5FDC433CA;
	Wed, 27 Sep 2023 17:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695834437;
	bh=ww8RDx9hkAQpnQEyKaBryIAZS7sFZDCDMf/pXai+c9s=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=pONniO0Wh/r657qy6wzumxLdiRzPPpwd5i5nolw/BqVERxHHVS13jzYKlPW/cqtZM
	 v8sxdbM0gJh+HkGRDYS0dxo2G9ulEQ/L0ziwKzZLVrPtSaEws2hXWDj6qNUz2slwUc
	 0K1VsnlFFGiOF8SRTviD38W4tFKZK25/ljWADwS1jKOZGHYMMQ75O3XscT/9i4zSz1
	 TKMB4mn/0ntURaEZZoAXkIYlFBW0Jdxpl3UByarb8geZGVfZw1LIJ/NZZtpgQrLPuy
	 /w9DehAbGSlOWQUIzo8lMKhXGLBj5JvcH2QBxGo02OoDG7z5nOPFp+h3xhO2je9YT+
	 t67pZWP6WrurQ==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5048156976cso2810847e87.2;
        Wed, 27 Sep 2023 10:07:17 -0700 (PDT)
X-Gm-Message-State: AOJu0YzewQ3TrswF6TktxSRXSTCcclJLMYYBXLha+te2kXY2mPlHKr1Y
	2aAzbc4ZcbJ/oCMLK4gJ4fJon4MlW+XBMPxSfQ==
X-Google-Smtp-Source: AGHT+IGOLYTox/AsEEvFcAMKFEwLQY4eI4MKNQ5mu482nElyCsj5ZwnSX1DOvDq1FlFAXqyncxX32XFlR0U+KrDkKh0=
X-Received: by 2002:a05:6512:11c6:b0:502:d35b:5058 with SMTP id
 h6-20020a05651211c600b00502d35b5058mr1936935lfr.4.1695834435296; Wed, 27 Sep
 2023 10:07:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926155351.31117-1-robh@kernel.org> <20230926155613.33904-3-robh@kernel.org>
 <20230927-utmost-copied-6982126a7f00@spud>
In-Reply-To: <20230927-utmost-copied-6982126a7f00@spud>
From: Rob Herring <robh@kernel.org>
Date: Wed, 27 Sep 2023 12:07:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLFxAf1MA2qhENGFH6Rim2ePWf8Y3RGxiUGyH3uKMC63Q@mail.gmail.com>
Message-ID: <CAL_JsqLFxAf1MA2qhENGFH6Rim2ePWf8Y3RGxiUGyH3uKMC63Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: PCI: brcm,iproc-pcie: Fix 'msi' child
 node schema
To: Conor Dooley <conor@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <ray.jui@broadcom.com>, 
	Scott Branden <scott.branden@broadcom.com>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 10:35=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Tue, Sep 26, 2023 at 10:56:09AM -0500, Rob Herring wrote:
> > The 'msi' child node schema is missing constraints on additional proper=
ties.
> > It turns out it is incomplete and properties for it are documented in t=
he
> > parent node by mistake. Move the reference to msi-controller.yaml and
> > the custom properties to the 'msi' node. Adding 'unevaluatedProperties'
> > ensures all the properties in the 'msi' node are documented.
> >
> > With the schema corrected, a minimal interrupt controller node is neede=
d
> > to properly decode the interrupt properties since the example has
> > multiple interrupt parents.
>
> I suppose this is an ABI break, but the patch just makes the binding
> match the example and intent.

It also matches what the in tree users do, so not an ABI break. I
imagine the .txt binding just listed out properties and the conversion
carried that over.

> Feels like of all the patches doing the
> unevaluatedProperty additions, this one is the most deserving of a fixes
> tag, since the original binding just seems to be completely wrong?

Yes, though the example fix is a dependency, so probably not worth backport=
ing.

Fixes: 905b986d099c ("dt-bindings: pci: Convert iProc PCIe to YAML")

Rob

