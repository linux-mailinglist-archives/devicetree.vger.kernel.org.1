Return-Path: <devicetree+bounces-178108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A23ABA925
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 11:34:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A63A31B64DB4
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 09:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 188E41DFDB8;
	Sat, 17 May 2025 09:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhkqxQ8y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D9F1D86DC
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 09:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747474453; cv=none; b=UDW5J1A9vpGScjjn3UWXr3Lsa8+n6+qPdVpt7aoXKva9ZREJaDhXz46VlgMgFHJTyuFHzhN/TTkeFkDGaeT5o0lmusnN+SH/nlszXU3a1j+73bA6mcuF+yDoP6d/xV0Kbb7s6o6pW5CQj+akJm4AZ59guH3aoWn88letfCBAMwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747474453; c=relaxed/simple;
	bh=iw7hPS7VNDqwLduW+55keI5y01ZT6Le4WSWdcVuRvRU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J8IJzAIgWNF3JZ58gKm7pL4GSwrnFG2URY4T159POtamEKjU7wAgLe6QhRPhdyep8mPR/3qqriU7tA5ULbdYIdMDGy7s/B7pJ8/AYbAjlp9FAlJoAc/lCnPVO+44Ser91rJiGoNPzzt640IwDEAV79dIBhIgaTNiPXQ8BqmtGmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhkqxQ8y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62BFAC4CEEF
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 09:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747474452;
	bh=iw7hPS7VNDqwLduW+55keI5y01ZT6Le4WSWdcVuRvRU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WhkqxQ8yXHyv+/sQYNxSxVoneI1GWRCprCmKP0/ztIrQFPNHitm/2gxrtHly7PH7R
	 Q37wT785KEfIFMcjqX2bhayfwizyYQeaYXAJcXCSwGS81UJ1vn3jAXOpPpf6rlRjZn
	 H+zDgvnBGTcEu+VtuLUtPXs6QOxV7UcK8XjUHPQAnVoD6oM1+7SjYE5R2DxdosPVBk
	 6OIjpV3Tn87mTUVTqW46i8KeXJEoImJUGNqoMg8br1BeiuOERooXsrGs7H5zwNxVPv
	 ZxHtrOiFRRXnFfnVFe2sBkuZImptuzRXuy75Y5ZwmB7DIH38himFDKPiuwyudyST0h
	 7IbFQAnFUxtbQ==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5fc8c68dc9fso5491404a12.1
        for <devicetree@vger.kernel.org>; Sat, 17 May 2025 02:34:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUr26KUufE2yjVxO+P7UyesWhBhEZ137bgAk5aEPltdLJPtVkjn04V7VNn/1vpuXmJLKRFg6UOxHk+U@vger.kernel.org
X-Gm-Message-State: AOJu0YxD9OULOOXa5GZbJJ2v9Fv4vP/8OapaK1lFR2pRweWFYTowwOvd
	kt9j53R6HZZxeiQGVZJmvPb5Okfo9Dlxt6tSRANzOivtpFDZ+WmOYIFoR5NtWS7dh4qClAu8yot
	lIP0eAU04MjLvb+mEbmtXnTggBBNAOn0=
X-Google-Smtp-Source: AGHT+IEx2sb8edU1brqzaZRXAsI93RIheeq569tRpFtROjNbVdEh5mpzfrkYPrUa1fCEAifwPVWr9MjtqN0wFAg1aOc=
X-Received: by 2002:a05:6402:34d1:b0:5fc:aa21:5633 with SMTP id
 4fb4d7f45d1cf-6011411da5dmr4234560a12.24.1747474450873; Sat, 17 May 2025
 02:34:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1746684614.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1746684614.git.zhoubinbin@loongson.cn>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Sat, 17 May 2025 17:33:59 +0800
X-Gmail-Original-Message-ID: <CAAhV-H4EYk8j-tZcg3wF14noAmd790Czqcm8ESK2X4OMbPC-gA@mail.gmail.com>
X-Gm-Features: AX0GCFtvFGngUnZVRc__yE5K2gZtLm2g7wpfUGseHsnPhytgYHzZ06SWDjFdgIM
Message-ID: <CAAhV-H4EYk8j-tZcg3wF14noAmd790Czqcm8ESK2X4OMbPC-gA@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] LoongArch: dts: Add PWM controller node support
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Applied, thanks.

Huacai

On Thu, May 8, 2025 at 3:02=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:
>
>
> Binbin Zhou (3):
>   LoongArch: dts: Add PWM support to Loongson-2K0500
>   LoongArch: dts: Add PWM support to Loongson-2K1000
>   LoongArch: dts: Add PWM support to Loongson-2K2000
>
>  arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 160 ++++++++++++++++++
>  .../boot/dts/loongson-2k1000-ref.dts          |  24 +++
>  arch/loongarch/boot/dts/loongson-2k1000.dtsi  |  42 ++++-
>  arch/loongarch/boot/dts/loongson-2k2000.dtsi  |  60 +++++++
>  4 files changed, 285 insertions(+), 1 deletion(-)
>
>
> base-commit: b56175973e17e67e3005837346ceb79cc282187a
> --
> 2.47.1
>
>

