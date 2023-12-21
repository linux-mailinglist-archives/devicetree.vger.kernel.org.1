Return-Path: <devicetree+bounces-27872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E42D81BF0C
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 20:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 871FF1C22148
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 19:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3783651B3;
	Thu, 21 Dec 2023 19:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="d/IqM4bi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994876519F
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 19:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dbdc7ff087fso826556276.2
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 11:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703186702; x=1703791502; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pyEpdFOQv4rMJbBA9Es6fXu/Nsh9v5HKx1M12+JoxNE=;
        b=d/IqM4bitnlnondtFa8D/fyxj8Rp1rnFn2kX+ueU2/EJPvguIt+Brl9phkH4l0hWKR
         IBHb7RKGSjNezPJqRUIN7YlulpKxYNZVQr1llSF4ObGBMUp4BvGEwPsOZE+Hl6PTLtNy
         ZvUFbFpMuDQZoovn6WKfX9DfxnTE5wmu/imDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703186702; x=1703791502;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pyEpdFOQv4rMJbBA9Es6fXu/Nsh9v5HKx1M12+JoxNE=;
        b=mYLrY61KHugjDZfmRMrVNdDfIQCirX5AsfnIrWih49vEgXAO1/s/r5NnqjDcsV6hj/
         EHNwg/0E0H92/Kf9ULAEjx01wt81EQPz9pT9eIu948QYhGEIijlsyv34Vb9tMW68q+M0
         DWRujdjqtVimwMWAwK6G00Ji96Xw2x/ysZfr/F5aVmk5Woy5MxYI6rR9HclXzvGtmnS8
         MOdb/a2fpCvKcRpS1SWfO5L1zZPAq3d++vABqo5GFAiVxh8q70MBNWFOdpW6YUGS1mh+
         SkAaUkBNYkqLbWzzWzBHK2PuQlwrLYhq5MVwFTk95I2uZDFEWtwnDgz5sWcqBFqX8zuW
         m6Ew==
X-Gm-Message-State: AOJu0YzKdPY0DNA14yFBkGwfnKShrzr1maj3aVfbgwhvoVr5D23WblFd
	RMlYpWzAEEVrY93MWKllAIZvKlpKJzAn0FjdPRXOk6eNtKFY
X-Google-Smtp-Source: AGHT+IH6BiVnGcpSlAIs2c40q4TITHGyqsdYezIEYxR5JkyZcoq6u7LYmYq+PovqOORzA4IiAzX9V8KK0AYtyMN4hwE=
X-Received: by 2002:a05:6902:1828:b0:dbd:990b:be32 with SMTP id
 cf40-20020a056902182800b00dbd990bbe32mr231162ybb.17.1703186702509; Thu, 21
 Dec 2023 11:25:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220235459.2965548-1-markhas@chromium.org>
 <20231220165423.v2.6.I06b059021de1bf6103e60a73211f078f2af75d17@changeid>
 <7199b7b7-238e-45de-96f1-0f04d0fa718d@linaro.org> <CANg-bXD+TVHO3o6f66fJXQ7AtXxPY00TQqjvX2vwk9PyTd1ZaA@mail.gmail.com>
 <50dceec0-3a43-4363-8404-d701f726acc0@linaro.org>
In-Reply-To: <50dceec0-3a43-4363-8404-d701f726acc0@linaro.org>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Thu, 21 Dec 2023 12:24:51 -0700
Message-ID: <CANg-bXAY5AGTu_jwtO8syCi8XVh5ti1V6ZFMzyCSBjzCUKUn1Q@mail.gmail.com>
Subject: Re: [PATCH v2 06/22] ARM: dts: samsung: exynos5420: Enable
 cros-ec-spi as wake source
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Tzung-Bi Shih <tzungbi@kernel.org>, Raul Rangel <rrangel@chromium.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rob Herring <robh@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> >> You do not need this property, if driver assumes that. Just enable it
> >> unconditionally.
> >
> > The goal of this patch series is to change exactly that: to prevent
> > the driver from unconditionally enabling the irq for wake.
>
> But why? What is the problem being solved? Is unconditional wakeup in
> the driver incorrect? If so, mention it shortly in the commit msg, what
> is rationale because existing one does not justify this change.

The cover letter talks about it:
"Currently the cros_ec driver assumes that its associated interrupt is
wake capable. This is an incorrect assumption as some Chromebooks use
a separate wake pin, while others overload the interrupt for wake and
IO."
With the current assumption, spurious wakes can occur on systems that
use a separate wake pin.
I can add wording to the dts patches to help clarify.

> > The driver works across numerous buses (spi, uart, i2c, lpc) and
> > supports DT and ACPI.
> > SPI+DT systems all happen to need irq wake enabled.
> >
> >> I don't think anything from previous discussion was
> >> resolved.
> >
> > Which previous discussion do you mean? In v1 it was suggested to split
>
> https://lore.kernel.org/all/20231213221124.GB2115075-robh@kernel.org/

Hmm, I thought that was addressed [2]. I was referencing the existing
binding documentation. From there, there was discussion about updating
the docs to clarify what was actually intended (patch 3 in this
series). I also addressed the ABI break concern in the thread and
mentioned it in patch 22.
"For device tree base systems, it is not an issue as the relevant
device tree entries have been updated and DTS is built from source for
each ChromeOS update."

Is there a specific concern you feel is not resolved? Or can I make
something more clear?

[2] https://lore.kernel.org/all/CANg-bXCG61HFW7JFuAd3k+OrCG_F9F3e8brjM-pmBauS53aobQ@mail.gmail.com/

