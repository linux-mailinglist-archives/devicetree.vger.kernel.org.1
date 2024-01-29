Return-Path: <devicetree+bounces-36300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED4A840722
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:37:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D33761F275B0
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08D7364CF9;
	Mon, 29 Jan 2024 13:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OXWVf8IL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738B663105
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 13:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706535425; cv=none; b=c2U4LCZHAC7+zWm0TcZKLyUcRPJxVZYB/zVFeDCiAQ/X2U5TsWUdzJYHIevbAyqyMM4OcQONPvs0JNDme7TltgeI+fitmMyJ6+74cqwf9NLUWnxFGNK14Vv9/WYY+eYV6YZgeKrNT6SdQahJrExQxW6RJ05e+O9j0fbWtS1p+ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706535425; c=relaxed/simple;
	bh=ZCsj/za7RaBNkGKT7kYWtyXABqM1HFsxCWGwnZwyws0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E8VdG7Wn4legvUSAuNAOwnPfHvvaZL6daEPrJIk9zs2dZtq4mwNviuSxI86o3ZVsz+wQcdC5dn5Zcq3cjBiD7I/qjYNJcLqI7Trg+IaRehn/T7nAPvvbH8ot1Wm4J58AMRl/m2d6hi8FLvC5+rc+2vYyYRKu+FBRG5Ki2GWKy0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OXWVf8IL; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5ffdf06e009so25141217b3.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 05:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706535423; x=1707140223; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZCsj/za7RaBNkGKT7kYWtyXABqM1HFsxCWGwnZwyws0=;
        b=OXWVf8IL7ZqMV2ci5Jwg9lVK1Ybj6KfFHqZ34kNHNtNln6/fZBs/LeHdX0bghc1W+U
         6QscO7l0tJCcUzy7a0rYNnZEdpkD9bMomaEPsi45cNK7qBRChA83dLoGndFcwGWU7/qT
         GRN5EvDlC4y/Tvf8bFMlwIfhq0jRCAoHX7HkBtoJIUuLETKsZslhQod7PUIfwknvNQ/+
         eVAwJUnaRIFa92t3zWkIW2+k4aMF8hPFDaGMAt+MaarnTNvML2hqEbuP5rV/Vh2WtVkG
         2Kmj6/U5InXuo6XfUXy19KY7oBQtbNkk71cQHjmynmT3Pd/QtL6aNn4CX9+UYcg/M97I
         z9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706535423; x=1707140223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZCsj/za7RaBNkGKT7kYWtyXABqM1HFsxCWGwnZwyws0=;
        b=LnlXDV/On/kLR6xes0NZgL3XVNu7cxujiFQApQdEfbrHn4UL4fOjFVBrBDoUSpDBUH
         FvFv8Z38om+iyxHs+KSeqGhtHd/MEwPD1V7ygzgja2qkLwFleh5AUJYRhg5+vFINqotA
         2bS+IkXsZx8sHjV4DnEORmZfkRZ4BLmntnn7t/3868I/GLNyt/r8kI8ojEaXYUR41/V0
         iHtDqOyrgd3tRJGxpx/f9iviJSU/WMeRD1uLOORGHEfY8/+JUpNm/tsoXPL22lVI7qB6
         LtZR67Ir4psKyiH4g6KOMAJr2iy3Ygeu/S8rnRfcp0/HBgEeWCiRhrH9g42UnlfnI41X
         d7Zg==
X-Gm-Message-State: AOJu0Yy6vsF5mRPBMrGmzN1LOIqK6D229Uj3xMx0+rBT0ZwJ8LVx1S9R
	elQ6zinmUukyfpUv4/vrlJ2jlVImH2uQembkkXxFpoKna9lqtlQvc6u3FAB8gzivVVaARkCfmze
	f/ftlQXvD6JvFEN5sfKYFtdmViphu2jnQKQJDKg==
X-Google-Smtp-Source: AGHT+IHZ7ppV7Ra7ON9UtE6bhsWl2QM45AmHugXBrqcS6qRScJO5m5BM8d0Bu6WpG6iGltf56g+QXH1UdhgEs2wGbiI=
X-Received: by 2002:a81:b61e:0:b0:5ff:e530:eebd with SMTP id
 u30-20020a81b61e000000b005ffe530eebdmr3227907ywh.19.1706535423411; Mon, 29
 Jan 2024 05:37:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240121-pinctrl-scmi-v3-0-8d94ba79dca8@nxp.com> <f88d07ef-83b2-4d14-976a-6dbbd71e036f@oss.nxp.com>
In-Reply-To: <f88d07ef-83b2-4d14-976a-6dbbd71e036f@oss.nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jan 2024 14:36:52 +0100
Message-ID: <CACRpkdYV=qYQ9qDUWYTLDAV1niay30gYH5S=zjfi31GpeY5o-A@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	AKASHI Takahiro <takahiro.akashi@linaro.org>, Peng Fan <peng.fan@nxp.com>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 29, 2024 at 1:37=E2=80=AFPM Peng Fan <peng.fan@oss.nxp.com> wro=
te:

> And for i.MX95 OEM extenstion, do you have any suggestions?
> I have two points:
> 1. use vendor compatible. This would also benefit when supporting vendor
> protocol.
> 2. Introduce a property saying supporting-generic-pinconf
>
> How do you think?

While I don't know how OEM extensions to SCMI were designed,
the pin control subsystem has the philosophy that extensions are
for minor fringe stuff, such as a pin config option that no other
silicon is using and thus have no use for anyone else. Well that
is actually all the custom extensions we have.
(This notion is even carried over to SCMI pinctrl.)

The i.MX95 OEM extension is really odd to me, it looks like a
reimplementation of the core aspects of SCMI pin control, and
looks much more like the old i.MX drivers than like the SCMI driver.

But I sure cannot speak of what is allowed in SCMI OEM
extensions or not.

Yours,
Linus Walleij

