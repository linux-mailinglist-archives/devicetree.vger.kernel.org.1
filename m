Return-Path: <devicetree+bounces-108567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1123992FA1
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 16:42:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0C562851EB
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 14:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E941D3647;
	Mon,  7 Oct 2024 14:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CBTSsIBD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969EAF50F
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 14:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728312155; cv=none; b=IuQjkxtevyDI2bVT8Qms7wfJGJZ5YN6mBFGkmSyFCumdivubGNu6F1Kir966SR03y6nbG3tPfQ1PGwGSzRzZzQdI9fuMy8ahp8fqzOV7W4OmJ7Nfwcsh26AcQZaJsoGtzrHvcJiiaK8WvNTOZwgduSJlmwMk9kpoGz8767owiwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728312155; c=relaxed/simple;
	bh=7+PUGisIgdPujtqbJDkydZ+R2/by8q6Rd45lfxEcTJk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S9Cg+locK92PECEKrG/IiltEpgEMkZSqu9ITsAeIjbaEdhU4uaEiCQCVZYGzrMOXE/cq4ke1SRv60p/yrUuSWKdmpivaT/Y15dKGN+lS9+cjO1rSYYYI9aIqAEBJYt1O70GiwvbU16IPnuwRDtc5jw5IjCqm62cZhAnRcAAAvjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CBTSsIBD; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6e2d2447181so20167697b3.1
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 07:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728312152; x=1728916952; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OQVz0vOtE/vhE4JxfRN39I/kekE4gMvxJaTmqdYN4Hk=;
        b=CBTSsIBD09AH0zmL+BdQcIHiQwCnF9IOSODocRRF83oVMOO6D3WTeoHzKQDmAbjS2K
         kNsd1egW74s5FBmZj55qp/eKyu//VwMF94LaE22jyHEOcwvKHrc+JZF2KdKmx/eG/FgA
         kVXmD6aegLhlKo0E+y/X7xInpTU9Up5DFfHuHcJTuMpILwExzx62DL9x2EJ5/tYQeSaW
         qLm96/SUIyxNcwCDCUuIFdJYdtAuww7kIKhYiWnAz2FlflnvLWAQRZZ2Rh8bIj2UuQsv
         CCvpdTey/E7rF5eefimDZJPzB4rHkB2jfFoIwwVqChElDxzqkc55rZR65XNxdh5oyPZC
         pVDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728312152; x=1728916952;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OQVz0vOtE/vhE4JxfRN39I/kekE4gMvxJaTmqdYN4Hk=;
        b=ES3iFPkuo2EXV8XY9uk/EkVlNfFJ3BHlmVeOTbkdLuwbmU3fxRUM8VO9NU4P6ygEu8
         TNFyAicgrotVALWfyIpv8Ii2TTquduPGsCImRXPRC61azI5/6CVQ9Oa2LjvE8lDcNRvm
         r9LFvqPtCwB2J/QC6ktlvbhMWgl5/Pwa9hjSC0DopuGhisUoI48CKooDJG2bjOrXydA/
         +oBSJJvA09crvJOO5+OoWlnMzAm+9v5KrJhz3ZzG26FU/vzn0BtY0VE/3LhyQgfz57wd
         CR5Yux2RE5EPV+WqD9R4MAltX89l2LgoDmuhbTEKrM2cf/VYhwnmkuptIMT8ly2M7QxB
         7rfw==
X-Forwarded-Encrypted: i=1; AJvYcCV1XoM2r7KeKmHun3CANPh7VP4E+91Fdm2TMLoalXJHeZFQcGnCIMhiBRyzvcIHyUJs+aRIlJnk8ORf@vger.kernel.org
X-Gm-Message-State: AOJu0Yztb0rgq+49EDMz/KRnNkSVH/BJuUbADreOOBFDHjHdHntonnd3
	3Ddqxv7lvYavkSKvvuT+GTllgeH3qBwfaN8iKXjHjIUu2w9fuekEUe/YQTcwv88pogaLaxVRSQf
	9B9tzOQng+7LI6Y4mK+tA6Ovcz+og/HGUBTtBNw==
X-Google-Smtp-Source: AGHT+IFtLx92+g4Im4BYq0IF/nuPhymbQIsBhoZ0lME72v6xi/Y1yH6ePIkFIQAOuj840/kCSHbxUC0u4ACUasl+Ueg=
X-Received: by 2002:a05:690c:6ac8:b0:6de:a3:a7ca with SMTP id
 00721157ae682-6e2c728a25fmr86622347b3.32.1728312152659; Mon, 07 Oct 2024
 07:42:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240812-tdp158-v5-0-78684a84ec23@freebox.fr> <172536721812.2552069.2889737892670833119.b4-ty@kernel.org>
 <40ffacc2-fa04-4e6d-b817-c547aa75a21c@freebox.fr>
In-Reply-To: <40ffacc2-fa04-4e6d-b817-c547aa75a21c@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 7 Oct 2024 16:42:21 +0200
Message-ID: <CAA8EJpqYp8uBNVdNSAmSbeev=itxNKS_scb2xAwe63aS5bdhkg@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Basic support for TI TDP158
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Robert Foss <rfoss@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
	Konrad Dybcio <konradybcio@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 7 Oct 2024 at 16:33, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 03/09/2024 14:40, Robert Foss wrote:
>
> > On Mon, 12 Aug 2024 16:51:00 +0200, Marc Gonzalez wrote:
> >
> >> TDP158 is an AC-coupled DVI / HDMI to TMDS level shifting Redriver.
> >>
> >> Like the TFP410, the TDP158 can be set up in 2 different ways:
> >> 1) hard-coding its configuration settings using pin-strapping resistors
> >> 2) placing it on an I2C bus, and defer set-up until run-time
> >>
> >> The mode is selected by pin 8 = I2C_EN
> >> I2C_EN = 1 ==> I2C Control Mode
> >> I2C_EN = 0 ==> Pin Strap Mode
> >>
> >> [...]
> >
> > Applied, thanks!
> >
> > [1/2] dt-bindings: display: bridge: add TI TDP158
> >       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/887665792b99
> > [2/2] drm/bridge: add support for TI TDP158
> >       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a15710027afb
>
> Hello Robert,
>
> I expected this series to be included in v6.12-rc1, since you applied it
> before the v6.12 merge window opened. Did I misunderstand the process?

drm-misc-next stops propagating new changes to drm-next one or two
weeks before the release.

> If not in v6.12, does that mean it will be in v6.13?

Yes.

-- 
With best wishes
Dmitry

