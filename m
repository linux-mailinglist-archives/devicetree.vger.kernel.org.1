Return-Path: <devicetree+bounces-128237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD619E826E
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 23:10:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F38F728132C
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 22:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA2A15D5B7;
	Sat,  7 Dec 2024 22:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Des9A9hR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17F71547E3
	for <devicetree@vger.kernel.org>; Sat,  7 Dec 2024 22:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733609445; cv=none; b=Rr9+QY07ylmKA1F5e7ZIg5tVxWmkdV2bEBXV56szNdv3vmurQlXN+MWbaGSu/IP/f4kO8Ks0sNsfg5pfaBR0fDr/x/dpBYJHt/5Hq8FQ5vh+FCVGWFJF2AUZOuphOK6riWCsZZb4PLtwiPsJSqpk9AX4w0Y6Gcqk7A7s0WuIsRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733609445; c=relaxed/simple;
	bh=2yeHJBuvknf2hLBb9j5/HvmE+uUK/8GcZejF0YdVYK8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IrN0MeaqiLmFulrZkZxqDxMrKJ9THPRMOk8Ztl7KYM/uMen5Atw561tg8I1mo1qP5mfDTslAdUvgVWX94T3uaE7FFKc7P3l7tYTOwnQoyqtlihhkxKzXCEq3Fa4ENdtp9z/ag+pQvNsBLyGP4shS/Ae09H8nZUgJm/WJ1VbRY4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Des9A9hR; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-29e998c70f9so1943883fac.2
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 14:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733609443; x=1734214243; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJBGA6D5vNEtEB/ib66h+psHOFDDtr3mhYyS0Z6TU5g=;
        b=Des9A9hR3gOxmX7W3Ui7svdGAiytxqKy5j+LicvGHytfptaUS0vXd2uOX5kjMY/S9C
         rfI57AHvOXB+P7+wW8YSo8jPzYDXFfQrJ4bzt7HpkcYOF1LXte+3m5QsYAmaogg5eheb
         iOrUrWddvTfmveFH/2OKTzjHcIEKOudzLIrLU5ASoAKJsgoZG0gojKMscHbVyiDnKWO8
         +Ag6dRiQLaPKDYypl3qZfBnIS5+DmEraCtVOtxfwyTGa9n8i2mm2Lovti2pt5nu4Wsil
         G7LfqHoscGPlhrLsISsf1mTEdbv0IDSmRQHRTw6w5lypkyh3JoQCFi2BThFgibOYVw1M
         T5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733609443; x=1734214243;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KJBGA6D5vNEtEB/ib66h+psHOFDDtr3mhYyS0Z6TU5g=;
        b=Z1ps8zVha14RMG18SkllcrmaMcdg/Zmnhgt2fVPcddbJgYSlcIWVxSKKT+/iwagh9n
         t75E1wm8TokUXh6On05QBbl32UebIZrx5JW4U9HepyXhmUu9NIye+VNBdaoa8sktpmE0
         5cwLls8XaqKlmQricQesVUg+ZR6+b2Hq/B7BMVNpNuxPDRBiKKyTlinskInR1qp5m3nt
         DeMUaJtPXAitTOqZhMFnemAxhx7xCmUipIiHaiEtoUsXlEBpKm9AEEVYQEvKJzM6+4PU
         HOpbNP6lCORHzqixO4qEoopcOE24cz3G5nyHjnTn0WwjH0skzhTwRk32BW09+J4W+b9u
         2KVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQal41w9TYA+21czJx8mENJ06DdO0zSL47SvwmgJxr08oD4ueYJEVL219nUGMyixrROlZB6i3cQxd/@vger.kernel.org
X-Gm-Message-State: AOJu0YxnMyMZNdJNr2hmlLMpF5aGrB22kG5XzezhUv7hRqms1sNirvcO
	ERXw70Qb78s6KxYV/kr2J9Ar8LYFnluufWuWIB6aeippMVh5DsTZW7H/VcAr2BE1D9j1o+hiy8Q
	bgh1f84WhiE6/TGvGCfJatB+GMLu8AjDhkFEILQ==
X-Gm-Gg: ASbGncvKPOPKmRJyI3OsqzbhhcfsD+LgAdwPcdxpocl2rgAj6QdUugWH+qZSRbeTlEn
	ikYdaHsJzK8Xj6+MyHYm5Qk9jxdcrrM4=
X-Google-Smtp-Source: AGHT+IEzfEqpnzeYKIfkF5R8fv702t9MqnWDdRkAxs3VAzNsDFAxfBBCyID+B7CHmUcn1Ieg9oCtaHwIu5Jv/QeLWcA=
X-Received: by 2002:a05:6870:f78a:b0:296:e88f:8f56 with SMTP id
 586e51a60fabf-29f7389c4e1mr8234677fac.26.1733609442837; Sat, 07 Dec 2024
 14:10:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
 <20241203-gs101-phy-lanes-orientation-dts-v2-3-1412783a6b01@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-3-1412783a6b01@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 7 Dec 2024 22:10:32 +0000
Message-ID: <CADrjBPpOj3E72SPAB65Zrbct-ny=ynZxKx+21foJdQ9qkPzC7w@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] arm64: dts: exynos: gs101: allow stable USB phy
 Vbus detection
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Dec 2024 at 12:40, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> For the DWC3 core to reliably detect the connected phy's Vbus state, we
> need to disable phy suspend.
>
> Add
>     snps,dis_u2_susphy_quirk
>     snps,dis_u3_susphy_quirk
> to do that.
>
> While at it, also add
>     snps,has-lpm-erratum
> as this is set downstream which implies that the core was configured
> with LPM Erratum. We should do the same here.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>

Notes on testing:

Tested with a Pixel 6 device with 2 different USB hubs and also
directly into the laptop, plugging and unplugging from both ends of
the cable. With this set of snps quirks disconnect/reconnect always
seems to be robustly detected.

