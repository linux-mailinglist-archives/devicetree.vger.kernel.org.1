Return-Path: <devicetree+bounces-222394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCF9BA8CC9
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:59:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16C19169F4A
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7C92F0C69;
	Mon, 29 Sep 2025 09:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HmVmRk8M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EB12BDC34
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759139959; cv=none; b=ewQN3W3rnkGE+Mwpq0ruRA4l4d/yi0PhqicZ7wons2o5BQpP5N4xn1U1zBtgnmtVmInURWEaGOnRNBwB+kNors+Y3+7QSyir2TKe3NB3k4aBAPfMWlcEOcxGk+ptvHCbtdhNluYah9N2C1Ft9duqc/InPsmL+3y5smeUn+ixgp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759139959; c=relaxed/simple;
	bh=2KUdznDw5vZ05JufQlJyZkuSTNllnaQhlyyX0vFY+xA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NAVEWiodMe5Gayza8fNybFxJ808tEA/R15CdQSTP8EHFeELoyxppYA0Oz8bZA/vDe8x19nCkURiRAyxT+sxh51Cg5mAUYSoDzE6gcwJAj80o8l/UgnHs6YmGYFgkMKjiSht0C8KboPB4uZ/zAG69hv9exvJl074rPXf43UpLBBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HmVmRk8M; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-71d6083cc69so51214017b3.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 02:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759139957; x=1759744757; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2KUdznDw5vZ05JufQlJyZkuSTNllnaQhlyyX0vFY+xA=;
        b=HmVmRk8M2S2In+vPAyFQuEH0KPEsA7gftYVcwmCL6u0TexkZrTr6w4XB6SSOt6CrFk
         jzK15dZ/vSDaNZGI6OxWA0jeWiUrDWm2sme03NLcAunOfQSalUKBkCjOfOeVScM0B7Mb
         ilwAqFcyFziN3kDdAw/LsXRttOxXRem8wXSYA1EHX36ZG7jEgrEckroWfMzpmQNdxSVI
         5UPUzSXuReAUGDJwtTof+Vdng7+7eXac5jNPvb36ihG1qJowi6wcHzCDPHcvikORsNCf
         p2C8sNh5YF7wwhW587+/wrWaOG/sSE1p/+daSIsLuXlBkyZ+GA+e9OsbPqcfvQGvwVxv
         y6cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759139957; x=1759744757;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2KUdznDw5vZ05JufQlJyZkuSTNllnaQhlyyX0vFY+xA=;
        b=Y2QkvZHIRk4LrKfSV8fHIEf62tv691ZEiv0EfVrXjVf3sk63jKUunYVnwByu6bEZob
         ppjVS+9hc4f2GxRaBhnNHWMg5u1qQnaKc6jYRxkckCK41f6AXkcoRheLwpMglPUes133
         iZU5L7dIsn7ND2UX1DD2+TnrFaN8FHVEmsO1dasiYgJBNm7vRGmY/BXxtFYDLL4N5USl
         FmSZtstRK5vOpZU80fmoVEbKxulvczdF2ZDEQsrpTWmVHheClj5DPdIl0wK123zWo6vt
         7kgeK2ZOEhqGKoHTrkTrO1cqj36LVxUZtfuME3taoJCijU+W3z9+6YyAiR2XKHH07J+q
         TQdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpoa1lr85bVqmeE75yz6kpfcBrgWv0egPOGP0+JHVqK2d9XBmOv7RWBuO4WHYaml5ZkVhEaFK0YyVL@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz90ya9gaWxLPGbACxBlOyei2iFLO81NNjwuo3clqeAAXp1/lv
	5eVSI4rmDcoI6FkBlE6oRMi9u421ZxB4SXd1eu4oenOiG1MAcdd0lm7IvYNKMJ15krVV1JtQyN3
	sWsXGgX09zaaX7S3OARM7ybhN5VurcT+luhJEF2DOLw==
X-Gm-Gg: ASbGncvQ7B8Bq7Hc/YMvKXAk0OkcJXVosbDMAKEMQ/ro1b7UfZGWnRovo5cfQKOiXyN
	NEr1ubVsE6m+nK04AItzz2hoq4xdtGT3nhA6Aqf+iU4KznmTS5E65cIsGYdq5WBwb5HsPmX8M/P
	joRKyGIRxnJ7S9RhABDzHynvXNAjmbYXrv4HVNolPtZ9KvhgloQDSga36lHLBkP0f+F2fYHSU1B
	5YLXhC8
X-Google-Smtp-Source: AGHT+IHKB6dZwmkkiRTmQMJ6qqV5u+Z5RUcKikaK+UuufgwTUJ8RoCQyTBvf2kQBGXi0WQ0jZXHoQTtqUIZWVWUBjSA=
X-Received: by 2002:a05:690e:1a4f:b0:636:f1d:e26 with SMTP id
 956f58d0204a3-6361a8734e7mr18613222d50.32.1759139956833; Mon, 29 Sep 2025
 02:59:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250923-mt8196-gpufreq-v4-0-6cd63ade73d6@collabora.com>
 <20250923-mt8196-gpufreq-v4-8-6cd63ade73d6@collabora.com> <CAPDyKFpLNJRRxWPm2Eye+Fs8go-LNwWGzPUPPKmNVJkyK5N3Dw@mail.gmail.com>
 <2015216.PYKUYFuaPT@workhorse>
In-Reply-To: <2015216.PYKUYFuaPT@workhorse>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 29 Sep 2025 11:58:40 +0200
X-Gm-Features: AS18NWDi6KooeuuBdFZYN2-L6gygoxiX5visVgVu6hIAQ09WtQulOO0qEvr47Zc
Message-ID: <CAPDyKFoCPkNsbq8s3d6cQXxfFhiYH1kjrocNdq8=v+g+LY8c6A@mail.gmail.com>
Subject: Re: [PATCH v4 8/8] pmdomain: mediatek: Add support for MFlexGraphics
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Chia-I Wu <olvaffe@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-hardening@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

[...]

>
> I actually have a question about a mystery that has been puzzling
> me as I work on v5: when unloading the driver that uses the PD
> (panthor) and my driver using `modprobe -r panthor mtk_mfg_pmdomain`,
> I see that sometimes detach_dev is called with the pd status
> reportedly being off, but according to my own power-on/power-off
> counting I hacked in, it actually being on. It then proceeds to

Yes, ->detach_dev() may be called for a device, when its corresponding
PM domain is both on or off.

> call my remove, which results in three splats from the regulator
> subsystem as the regulators weren't balanced with disables before
> they were freed, which isn't the main problem but more a symptom
> of the bigger problem that power_off and power_on calls don't
> appear to be balanced by the pmdomain subsystem when a driver is
> removed under certain circumstances.

If the callbacks aren't called in a properly balanced manner that
would be a bug in genpd. Certainly.

>
> Did I run into a core pmdomain bug here, or do I have to balance
> the power_on/off myself somehow in detach_dev? If the latter, I'm
> struggling to figure out how I can determine that the PD is still
> on without doing my own bookkeeping, as pmdomain core seems to clear
> these fields before my detach_dev gets to them :(

When genpd_dev_pm_detach() is called, the device is being detached
from its genpd and part of that procedure means calling the
->detach_dev() callback.

When the device has been detached, we may have the PM domain being
powered-on for no good reason. That's why we also punt a work to check
if we can turn it off (see the call to genpd_queue_power_off_work()).

Kind regards
Uffe

