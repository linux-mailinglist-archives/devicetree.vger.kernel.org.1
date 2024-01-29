Return-Path: <devicetree+bounces-36184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CF68401C9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 10:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C28B1C229FE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 09:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC85155C26;
	Mon, 29 Jan 2024 09:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PJQAqNh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ED359151
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706520820; cv=none; b=mgzBNLgYQ12eHVL2VVwqAZJQvhbljd2ykFVE6Vga5j88yQuHdhcqFpuetHiO0PI40UtYG7yATeaHVMEyHfvgy5TEO1sOAK4daQ6fBHyiHRDEH36AI/yvFzMSwtuKja2sHAB2jkRRscf3rmq4JqQOe+y1qrTjMoQd6fCk41B07EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706520820; c=relaxed/simple;
	bh=F08uG1fFi/fLFDzlR0qXMroCbHKufK1YlVSo9WyAdiQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CwB7md4k8EVBcvd7Vnn7wnADRSXMqNK8IfE04x4Y9tdH1SvmPZHN8kuoWsdo1U+YCYvZjVElGtXh/0lPz+fHGNXIECSOteYTBVs7HuM7kIJATs9eUt3UuNKD+wdnnsSojLCqfHLAchf3x3qXXaa9JPxbT4yyqHT9bHElTBfbu3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PJQAqNh4; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-42aa241b91aso12877361cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 01:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706520818; x=1707125618; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G/A92MZzvjUr5qNJFHAqRjVJ9i3IKPry+qg4x9OfXy0=;
        b=PJQAqNh4t799Ryz4IIcud2cjjYwaXZ2GXEfSTscpBiy2pT6OuerjJ9yQkGN5suniUr
         0uDP6TmaY+1dXVI03LQCJMgziocO7nemsXaJGxU2Edb2aOQ/55riLiqXWLOh8QxTfqZ6
         5YYcD6T0KP02MM7v7M9Ml2/nRBkJiL16u9H62zdeig0Y1L0NvrJeyhazHgMgFt4UYN9D
         EuAOr5vraINBgpKvECupGO8wh7LKmSzsmo7GDy4LOXikfvpG0zGk52/me3JsCM3V7Sk2
         kwujUuD2S0JoJQWYwAWTLTvl/aY2OKeRatLHcgP++kQIQ4+Up5WK9dVLV/ak87NTJneP
         GTIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706520818; x=1707125618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G/A92MZzvjUr5qNJFHAqRjVJ9i3IKPry+qg4x9OfXy0=;
        b=VthrBClc+io7ZCWWKdNx0Sgki3wVY6EUYXgwheSVf7xVVN3X+l4tiUCUiu4IgqXkaR
         z8fH2/Gz/FdzvZ7mouqTIAKrXZbBGkBBRZLzXQgV2QbobXd87kpRvh7K/kZiXGGJb+LN
         QF57n/yChr2J24j3u7+9P1xMW750BGgplkQwWMptdOwZApQaz8ffo6QLxXkOinM04uKX
         NDcIvp3A9y98c64zf8NaMAvAgPpn4vy7M+weq44qKMJqA0Pg2lJ8pYY4nXbAuBuuCih7
         I4cUgQXAPDpJ/df0pad/k/vedYDoguekUu1TPmKIXDr1K6UUraz7ONAbHAKdtOq2hFu+
         pcyA==
X-Gm-Message-State: AOJu0YxMBeyaG9nbayHz+TZw+b7VnWOIjdRfvQYLmFf2ImX42gneYhFm
	941y2DSPahDvG/weBkiG28aFqBt6TP1zTloXSXTBvCGTN8/ETyp1OYjUVjOowAddZUfXFO1QbK9
	eClwXZuMUOgmJQbgIIJdJ/t/wSWKLmzna7+HU5w==
X-Google-Smtp-Source: AGHT+IEU0GPPlIF6iHh/5UWCSLCCIj0jEqEODZOMhFSPXOcrOtrk2N4luE8XcYROBlvPp88vlBopAUq/6j9ZKWTW8Qo=
X-Received: by 2002:a05:6214:c2c:b0:686:abd7:12c2 with SMTP id
 a12-20020a0562140c2c00b00686abd712c2mr6475664qvd.122.1706520818159; Mon, 29
 Jan 2024 01:33:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org> <20240127001926.495769-8-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-8-andre.draszik@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 29 Jan 2024 09:33:26 +0000
Message-ID: <CADrjBPo5ojYm+Zg-d2qvZJmTbG30QR_z+jdSsbx-ma_Bfe8uiw@mail.gmail.com>
Subject: Re: [PATCH 7/9] dt-bindings: samsung: exynos-sysreg: gs101-peric1
 requires a clock
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, semen.protsenko@linaro.org, 
	alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 27 Jan 2024 at 00:19, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Otherwise it won't be accessible.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml   | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos=
-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos=
-sysreg.yaml
> index 33d837ae4f45..c0c6ce8fc786 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg=
.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg=
.yaml
> @@ -73,6 +73,7 @@ allOf:
>            contains:
>              enum:
>                - google,gs101-peric0-sysreg
> +              - google,gs101-peric1-sysreg
>                - samsung,exynos850-cmgp-sysreg
>                - samsung,exynos850-peri-sysreg
>                - samsung,exynos850-sysreg
> --
> 2.43.0.429.g432eaa2c6b-goog
>

