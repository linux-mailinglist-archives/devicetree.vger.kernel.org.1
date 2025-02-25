Return-Path: <devicetree+bounces-151055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA6DA4446D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:30:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29EC8188B08A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1E0F26BDB1;
	Tue, 25 Feb 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PK0iVrMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94C326BD8A
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497393; cv=none; b=SYXJAqoDiwaYZvJrRAJRoYrwVfRUmUZdbx+QwPEv5vx9LOEU0boGCUhv9KQ7G26cGAUS/W6PL2FxvSzJojEo8yL1TOZu/pEVrHD/dzmb+8DulHTJtsS4p5E3MB2xtcyDpuQVHIy7GImCl/iHUi30nM7PEaK3tJObD7jqbtikSss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497393; c=relaxed/simple;
	bh=wWdKSLMGtVhehTwaDiWa/QdGdTyZRwxOUPS5ZjyNBak=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NF12y4tAakncFC55G6FU70NOJjmrfU+Zxdl196iGwWvgCYjzJXk+3zV+BNOEYRW4PAEfH1dCbgmcwsoCODtBTnsyqaBGUWxw/9ZL/ZmzIyR/GSErzVvubui2IoeCoNrKuctNdNsG3rIiQc7KNaGv06tduEBNQf+MiRHRU6yXUWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PK0iVrMZ; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30737db1ab1so45423421fa.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497390; x=1741102190; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wWdKSLMGtVhehTwaDiWa/QdGdTyZRwxOUPS5ZjyNBak=;
        b=PK0iVrMZIjuE3nSmGvq39lNXR9njQtjA611bqdgJ3xS0EgRwAp7SVwDni2TlSbjuQm
         /R1Folk9D10ge7vhVTIAv2yL1RIv48b55FGd/nJLF+UJ44tfU/7gSHv2wzSiLbT2j7tx
         A1Wx/9e1VNdSSBPwOuU4XpFwWMnkqzkkzHE62EU8IrCWhE8qxuzu6Y+mWkdnMRJqbD91
         DA1hBVkLTgnHM+Ixa2YBvx8ja6KW6CPlxoClCmTVMY8ExQ6+Hokko2dkdhFSqQZhSUz6
         KS3ZI5t2IqtXqm14vruC56FkwXizSd6tTFpnV7Hfy4sOvid8yRjdem/EuYbDOgm4HJYU
         07Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497390; x=1741102190;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wWdKSLMGtVhehTwaDiWa/QdGdTyZRwxOUPS5ZjyNBak=;
        b=ncFah1y4mRdDtzuP9aZMfml1UljUXNVzrz+NMS8YoopxFnoJ2w7sGtQGvxdoLGpBTY
         MQi9PwzdY+05ll73BEVRyFz70u0Zqb9UQoKbr6yh+sYPtAKEtypd3nGiQXvPrGFdKuZ5
         t2f2AVqSOx8hreKIkqGGjVifS3qRCAWApeFVZtxf4/VsZr0WAc7xzbkUsJO8zQ2Hauuo
         yd9q5WSf/ccUfTD46q90JJ4c1OnjJJlBhowRzcHQtn4zc/l1H+qq/2CwvJO1bKRc5VA5
         sZNF+Ajn5T5uXx8GOR8yno0FKtLmcZfbsxYxHpaS3YT8B/rRwDY6zPEmoyB0LEML4dWq
         InZw==
X-Gm-Message-State: AOJu0YyhoztDotW4ipDorCkJWm3IUrIsZ/j1YZ+uYC+8F+ctaRJ65klL
	IrdIASO6fHGajCCa6E7rX8RYpooCq80zOUbHZQ3QL0X0rVBzvFNLAxX2kWcuuLF2oRo18AQVIh2
	6i5km7IK9I+zx+cb++AMy2ZnsihRH9CZA4GPMAJ1Tjv+vMGUjcyQ=
X-Gm-Gg: ASbGncvoiETq2jWu/Msms30EURcbBeFgy7sR4uplKvmw4E0B7SvKAJIbRC+LAsrBQT/
	7Cb8/6Vw3QSZsKqwtCRAsjusHVcYMOPzuICN2FGrUm/HFJwKTEHE0IRPy3sHRhGWpId3XIc/hXt
	tQnw2Its8=
X-Google-Smtp-Source: AGHT+IHvpjreeVdSU9R9yS1LahY6jIM253YORDAz6aGw1c4d6Ig0oMzawVusMy/Ox5z7NzVK8VH5Bf9FnhT6749AFpc=
X-Received: by 2002:a05:6512:2204:b0:545:2300:924d with SMTP id
 2adb3069b0e04-5483913b648mr6916367e87.22.1740497389960; Tue, 25 Feb 2025
 07:29:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220180427.3382482-1-vincenzo.frascino@arm.com> <20250220180427.3382482-8-vincenzo.frascino@arm.com>
In-Reply-To: <20250220180427.3382482-8-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:29:39 +0100
X-Gm-Features: AWEUYZkxyqLZJ8PShNH5_rYAenOAI2e1xZONqXj_RF2KAU6bd0KxT-okASSmRCo
Message-ID: <CACRpkdagr5EhOL1K=SYHxpT3KV7J2WypynOEpTmExK16Nx1ezw@mail.gmail.com>
Subject: Re: [PATCH v6 07/10] arm64: dts: morello: Add support for common functionalities
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> The Morello architecture is an experimental extension to Armv8.2-A,
> which extends the AArch64 state with the principles proposed in
> version 7 of the Capability Hardware Enhanced RISC Instructions
> (CHERI) ISA.
>
> The Morello Platform (soc) and the Fixed Virtual Platfom (fvp) share
> some functionalities that have conveniently been included in
> morello.dtsi to avoid duplication.
>
> Introduce morello.dtsi.
>
> Note: Morello fvp will be introduced with a future patch series.
>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

This looks like a good base to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

