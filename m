Return-Path: <devicetree+bounces-157522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B49FA60F25
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 11:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1C883BA246
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 10:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7CFB1F3D54;
	Fri, 14 Mar 2025 10:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ky3DEI/o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFED1F1312
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 10:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741948741; cv=none; b=DMOt9w0tp30ZMSbikzoE59joOLNsjFG2LLwVcHEEvv6SygWGnWX8zDI7bE39YdGsU96RwNKRBRxnSkGgZ8+QSubKENu/lba+u7mztsnoFzGTlxDJpFXUbj/qPBmy0ArYi6ZfJqayfkwnmQuMY9gzVwb6qnw/DLYJKvSKmHW2ekU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741948741; c=relaxed/simple;
	bh=NyeLesu/6qOxsTAaXie5nFM1At2JPy33BMSuqodw/Vc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h3+xt+rE6gEY/o8WC1rDbytLtiAtpU3ngoqTarKyBF3vhynP7oGOLrQa1ze9ZtY2UYY37B5Db9JAubAfP7XU3wMVvEUJrbOnVr2n5pcc530+5Ao/8VCucSmJZe7PGDo/DotK4XNzYjDgrH2mS9O/Nv1k2BDs/8Q1oXW26O7fmc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ky3DEI/o; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54943bb8006so1817858e87.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 03:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741948738; x=1742553538; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NyeLesu/6qOxsTAaXie5nFM1At2JPy33BMSuqodw/Vc=;
        b=Ky3DEI/ojdNomHzrTkgJ5n80G+gVyhrXzrC4wCU4Y8GkPoZm4IcrFfijqPumlEc9/y
         COfbmkidsngyMd+SNwaTdaujLJWiY1Lct5s+kCXfM+b83ib5O87/xUYpPm1nmgroq3Pg
         Q+c9O/UK4V//rekxxEsbtTo7XQJkjyRxLcOaqae7X8eSx3EfxBwecrSolv2U4kdNeWNd
         FBnmlIbuJWTZkqzQ4Tzo8+HPiShXVpOhTIi1pLS4lMjHGkrhpu/vj84Jncq+h9W4kvGk
         kOWdHjZNCAZ3WGknuySX8gMp3Ey4qZtLYSdMn8kojUHcQC/HTPiAFCgo3fwBDcuSUcoA
         TJSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741948738; x=1742553538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyeLesu/6qOxsTAaXie5nFM1At2JPy33BMSuqodw/Vc=;
        b=g9/Hg1DHczJfVASg/x5ShJuQmnHfxMExJY8ssXoE/EnctcpMOuxOtEpEVSFF3W2An4
         nxR/dSmaViq/YU6GEx+uS2pJRDHQCSmd/VakNAH4xSLt6nVE2hOM5lXqi31N3yiH5bf3
         yzw12V7Mzh0L4q86xhV3K8v2WWOKt/aZgy40UhkMYgyhCQTVurh1NgqUMP6INZWDNy7Y
         53kmc6u4wkDDdaZplExkdJLBmYj+6b436Fb61QUAM48kk70x5n3sChiIVmdHt+uIDxWF
         93mkC3Ipf5dHmO7qYOdvkIqv2RQN+ba/AsRcHIVKkrFVIUoVB/lMBYL6TpUZnMlzTR4Y
         bA1A==
X-Forwarded-Encrypted: i=1; AJvYcCVXBYOnLReYPyNxHSjz62Al8DKo+J4z9oEcvpZD5Hx8As8MBDvR0BDsMOFMEJGlg/pLMqdvMayg5bI8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8ZNJ7PtSFpbqcxngFMPcqNjorasH9yj9EhV4AKm7Tj+vc8+JJ
	tiCxNpxtvlfTws8rFht9Jl9tCHOtl4OftVWXn84ABNBt9aLzQ8433UzsFO5/+HngyNck814qaAq
	hpRQ+XMZ0Jp5r0a+FO6uWzkiQ5QSX1lqTI6tk3w==
X-Gm-Gg: ASbGncsKj651xp6etFowwbC5ZpeRMl8zq2cDzHCzWOGCLeQPDnzIii89+psnm1M+N41
	11jQsOxVunGaCFQ4kUEDB9Yb2LSkjNySWQa45bSCeiXGWXILNd9tdd1O/j9HtvILsBcAPC3YcTI
	uaoO9vi3FPo+QTkchtDjhr9q8=
X-Google-Smtp-Source: AGHT+IHxhAnR8E+RwasBnU+EVae5M55GP8ujY0PhZJ8YjGHRbmG1lTmcDhu2uwV0HMJdLPp8ZnEwtoKmC+WIjWFCG9k=
X-Received: by 2002:a05:6512:2343:b0:549:4de9:22df with SMTP id
 2adb3069b0e04-549c3612160mr635995e87.0.1741948738199; Fri, 14 Mar 2025
 03:38:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250307-en7581-gpio-range-v1-0-de1262105428@kernel.org> <20250307-en7581-gpio-range-v1-1-de1262105428@kernel.org>
In-Reply-To: <20250307-en7581-gpio-range-v1-1-de1262105428@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Mar 2025 11:38:47 +0100
X-Gm-Features: AQ5f1Jo9_mqBFukwygbuTda_hEtN2V8hjFmv1KBkHq8fVH1jsyHNXjQJZyWyfVk
Message-ID: <CACRpkdZpj9q+yH7VEQJ=tOjpR6S3GTeHbyYpqaTYxCOJgGd7+w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: airoha: Add missing gpio-ranges property
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 7, 2025 at 6:08=E2=80=AFPM Lorenzo Bianconi <lorenzo@kernel.org=
> wrote:

> Introduce leftover gpio-ranges property for Airoha EN7581 pinctrl binding
>
> Fixes: d0c15cb96b74 ("dt-bindings: pinctrl: airoha: Add EN7581 pinctrl")
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

This patch 1/2 applied to the pinctrl tree.

Please funnel 2/2 through the SoC tree.

Yours,
Linus Walleij

