Return-Path: <devicetree+bounces-235778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4582BC3CE01
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 18:37:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2728E4E1687
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 17:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2DDB34887B;
	Thu,  6 Nov 2025 17:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cT49hAf9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D275E2E11D7
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 17:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762450453; cv=none; b=d0roLmWxmLiSq0H/LlUKdjGdAhtuDyewSFcngCcVfnuYK4lBBErYDdD2gyhffVilKA4ZWpEdvAq74PASVq1fpz8dmaMjE6B7Ny/yStBhTfPgyXIQP+mpBcc4ZoWaSrfPhaxivo9gsb/5mB3dYCuLqndSAvmWsh+I9NkR7CFOZ+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762450453; c=relaxed/simple;
	bh=xC5jpduGSYvNExHOxUniHoKwme79jjzk7c0JLPQ4BHc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XhIg6t/69mhlphkDIC7P7JW774Cy/9KINkjYf+3H6oio1XkIB8ZMhuw39vxFyzhvsa4kYWwCfz5ANk+AVZTlrULVyIQVuTgL7jKUhjPUf3Yl/sPKK633WwmebK+1xKNXzGyxs5WwxqJ9Mgi8x1R+jQgH7r0bY3eSf+ALfKLTa/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cT49hAf9; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6408f9cb1dcso2003862a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 09:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762450450; x=1763055250; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UVFA7b5QNQKKgbY4Sgbk0fAZQJ8jQ8t0W8uUVANJyQ0=;
        b=cT49hAf9OsKChazElePsEHJdxLafiAKnO3sIjrgG2uAZ6zG0QHHn2dceIli1N6jOxY
         AhyqskzfAUTwWzLb6iEcjpvwCevjyaaGcVBEgTIyzVjDQCjOWYoKr5VsyUvf8TM7qPKk
         9SzeRIzoFqqy9jh1VM9mOsVLtBT16iObKdEJdqClkcGPMhE71Y4Rpi8vvmZe6T78F1A5
         Gwi21+LYrextTTugG+qIZkcfLlJQoNrUExdsDFOuF2HWiV6zeQn/tDZTDRcnTHFwfgLp
         vSnHhpjLG02FgdJYnWYDuzhNyVL/b+/2SLf0INoX+exTOOR3ChpuNucRIzJ6UG/QS04j
         tI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762450450; x=1763055250;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVFA7b5QNQKKgbY4Sgbk0fAZQJ8jQ8t0W8uUVANJyQ0=;
        b=R0Bxe3q2PUgQ0pQKfq3u/SasQzFXjszrkWjOLuhbHpKDQm7TJ5E3jW4acmD3KUmQAp
         VhDce24Rz3R5FGlkIerP59ff3y1++aCD++Tx61G5E2NiAgmzxxb8WH5+qT2tTup4aMXQ
         OuudPhBxebGosUYGygO0gTmRprQNqZA+qdbgegVymS8Ah3TEI8hWo/nMZfqGZtgE3BiF
         x8ZML7BI9w9rMFA0J+CgVdgOpLUAWnP2XkenGBjpTjzR7njgPZXAFHL6n1HG9OX7ZMYK
         saKScLGeLDmDwqLf13v+EeiPBAojK4nRHko6Ksx67zT6Kzh5EvKudRtVEqQOqdJOyYm6
         Yrhw==
X-Forwarded-Encrypted: i=1; AJvYcCWwPexm8Bs/9DJkBjWpNcvjPO289NgsWuWiLJJpXOl7XshYDQ+mo+J3IjCJuTAHbx8Kw+rDESVaBcDd@vger.kernel.org
X-Gm-Message-State: AOJu0YwpKq8sZ5KwvLlRIbv33jvdGK2Sf09VrA7A1aibke0tedeJeYAG
	ZlZLk8gGE0pW5q/MXyPxT80UxLHpxibSUSMazo1/bVrT/gMD7Wf2QElKhzpNY+NYfH+7c6RpNgL
	zjR3noUDH9DW33jbVStMcmRMi8b/ZHKp/8VPXG2hEPA==
X-Gm-Gg: ASbGncsWqAKUvcm7bbrtyIkvYUvPj0GgiTmBG1DsNZ52UtGvDQD5V1db6+fNRme/BQf
	WLj4i9n0n0PwQF9oQfiIEtItqBFCHwwdp7k91KkX4iqMlZtYBNDnfuZ/lh4BZB/7dzHqB5TwLyn
	W8YGbvUaGj/iyfVzRxl4FYm87XvYqeccpF987niQuVAxQqSWP37187hg30QdjVRC3StkDUgi+b7
	oBcVZTjV73DihLsaVZ8gB2hBEueQfhvGEgWvpJitVcQF6h1ArnG5DgndKob+A==
X-Google-Smtp-Source: AGHT+IHa3dttDqTITgV3tGTkp6TSuSmsFY+1K88280Yqh8YjVvfMj6OJH0DKtk3h1bhQap8rFtBGhpjoLqExb/O6Ijo=
X-Received: by 2002:a05:6402:35c3:b0:641:3090:cba3 with SMTP id
 4fb4d7f45d1cf-6413f094b4amr145941a12.37.1762450450078; Thu, 06 Nov 2025
 09:34:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022174309.1180931-4-vincent.guittot@linaro.org> <20251106172312.GA1931285@bhelgaas>
In-Reply-To: <20251106172312.GA1931285@bhelgaas>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 6 Nov 2025 18:33:58 +0100
X-Gm-Features: AWmQ_bnxeRp9L3wzoigXubjMbIkUdPeZ-SXfzJV0HZAKsvwmODUh-S8pANI5ZcY
Message-ID: <CAKfTPtDn8r-YfgspLscd=4oE0GukFg6tORpsUqd7fUs7DJqnLA@mail.gmail.com>
Subject: Re: [PATCH 3/4 v3] PCI: s32g: Add initial PCIe support (RC)
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: chester62515@gmail.com, mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, 
	s32@nxp.com, bhelgaas@google.com, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, 
	Ghennadi.Procopciuc@nxp.com, ciprianmarian.costea@nxp.com, 
	bogdan.hamciuc@nxp.com, Frank.li@nxp.com, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	cassel@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 6 Nov 2025 at 18:23, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Oct 22, 2025 at 07:43:08PM +0200, Vincent Guittot wrote:
> > Add initial support of the PCIe controller for S32G Soc family. Only
> > host mode is supported.
>
> > +config PCIE_NXP_S32G
> > +     tristate "NXP S32G PCIe controller (host mode)"
> > +     depends on ARCH_S32 || COMPILE_TEST
> > +     select PCIE_DW_HOST
> > +     help
> > +       Enable support for the PCIe controller in NXP S32G based boards to
> > +       work in Host mode. The controller is based on DesignWare IP and
> > +       can work either as RC or EP. In order to enable host-specific
> > +       features PCIE_S32G must be selected.
>
> Did you mean PCIE_NXP_S32G here?
>
> PCIE_S32G itself doesn't appear in this series.

Yes I failed to rename this one.

