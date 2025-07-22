Return-Path: <devicetree+bounces-198457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABB8B0D11A
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:12:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E63DE1891983
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 05:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F5D28A71B;
	Tue, 22 Jul 2025 05:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kYi/E4Re"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF789289E3B
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753161123; cv=none; b=iQQIElR3GBYi8XlfJE7RXGc7ZNEhodwYJCH/nDBtU8CkkBJM6/0vMJTQ2Ay6hBGpUZbg16cNe5Zo1B2r4rseN4A5TfLjUqmVvVSQlXgTTxY5wShVQ39ivpkJEbHY4BrIFJpbeaPlfNzfllxoy+rtSCtxCCDanGGb0FC1hEQpHYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753161123; c=relaxed/simple;
	bh=cp7QbS0xMvkOoKs4HA6eWBnh1DAtlgpSHTgAb9VZb5g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EeZGXlTWAKP29UaoIoc2bQutzxGunLphOZBm/C6RDRuvaYo8PLxcDFEpvKe4oLZ6D7n6hnUTW2YEeMUGH8ba7Te9IWI0SPF5ky5X/tPJF2qK8jd0h9bLOdCIF5OkPgR4oV5dQehfVD7KK9bkWlVOqm4F1feFqOUBa4ng+w3hWd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kYi/E4Re; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-32b43cce9efso43241131fa.3
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 22:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753161120; x=1753765920; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cp7QbS0xMvkOoKs4HA6eWBnh1DAtlgpSHTgAb9VZb5g=;
        b=kYi/E4ReHxDVNM4Ik0OwqDCrEdSHdTewPTRmjeN1CXa5x5oFUp2WqLt3kXG284e6Qs
         sOoFyzy6R1GT2Q1rEDAFQhAlvMwKg0Dyvf4jBUsRm8ky0rvKn4gU7kQyOmG5V3YIF4b6
         0GGa4tgrQ/hS8u+djNKxVJ90g66IFcMgeXSBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753161120; x=1753765920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cp7QbS0xMvkOoKs4HA6eWBnh1DAtlgpSHTgAb9VZb5g=;
        b=sXQ6qJSR0V6tefuJWPeEJHGBJ2yTOVQcjg5DV5jROH4G8akrjcXd02UF33+MUHseMn
         AwbYgf9xMMzi5L/erxdzgmudumywLFMnnZa9y+0oeAcG6tcmQPmS7Equ1oRj8DH6h4II
         7RpIY31Gs6IU6XRyNsHZu3o+mpVgmyNtBuK5PdfigltGmEX60WYQKiEb/Z21XrhENtSs
         RNRl9KsquR6qCZSp5j2RH6YmPtlVbgNbSfMYTq2t8Lq4lylkbEKX5mPiGWZ1KXQ/T6XE
         MrVMU5uEKoFKviQp3ZIoh7yXr2ujEDtszuYslgkpRWR8bxO07sgOEm9Jo8RoKqWQ8oUf
         U7TQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFCtWZvPjrUCQE7DDXkykFSfxEDcBm1A16Mhk3Osz43pXsOkLVFEJu75f1aqv94J+qNaFabTwIvgT+@vger.kernel.org
X-Gm-Message-State: AOJu0YzypGFXFfqPv3g5J8XQZrWj/MNEN6H1a3nHTyiZaSDJyEw4B79M
	y8mF0EiTjoO704ePRS0puCG2bL3cToKHWqm51Sko2TE/mM9U40STGMaMnm8itN68tB0RBYLllN7
	WbxQsRnOY9Dbq/9EmD0T9lxf4DAwSs2RxstTsnenP
X-Gm-Gg: ASbGnctR+ZagA6604Gh7M3dSpDhvuwwVldVthSLPR+aABrzA21wN1rZ/67rK77e9Naj
	Du3eN9BIOdTbA8eDigZTRDW5koK0tu83A1EVG8yYZ350DMrA1gzmOzt/1siKcqYKIq3Wplo4qv8
	l2wv8ii1xyHH3gRO9r19N/7DmH1Em6nIK7YIpWxyf4YSz6dy26Cx/bFU/0V6woBc6NZMU3R3H2e
	vXdyRtIpje1nFaDeLHw3dsysT9qVu3npq4=
X-Google-Smtp-Source: AGHT+IH22/vbUKUG8iVF8TLU3Pr09FJMHHQB0cP/VJ/YH6NAlscN+8Vsgqf7M6hY2SpFOoAipmEJQYGQAxTIjPOplEY=
X-Received: by 2002:a05:651c:220d:b0:32c:a097:4140 with SMTP id
 38308e7fff4ca-3308f2bf935mr75562221fa.0.1753161119744; Mon, 21 Jul 2025
 22:11:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250715140224.206329-1-angelogioacchino.delregno@collabora.com>
 <20250715140224.206329-2-angelogioacchino.delregno@collabora.com> <CAGXv+5FXr-mGDG4mfqFx0o_dhi=Q3s=Yjpj79UVfEQKf2Wit2w@mail.gmail.com>
In-Reply-To: <CAGXv+5FXr-mGDG4mfqFx0o_dhi=Q3s=Yjpj79UVfEQKf2Wit2w@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 22 Jul 2025 13:11:48 +0800
X-Gm-Features: Ac12FXzrJFH94VROkFmS93jdH200nA-PFU34ujXfOAcSOpzNe3a_1b3sR8e3Sus
Message-ID: <CAGXv+5FAm2zwnVZ2+YHiSJdMoByUh_UV3j4yNTmo7Ngv89Ck6Q@mail.gmail.com>
Subject: Re: [PATCH v5 1/8] dt-bindings: regulator: Document MediaTek MT6316
 PMIC Regulators
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, lee@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	lgirdwood@gmail.com, broonie@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 22, 2025 at 12:58=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> On Tue, Jul 15, 2025 at 10:03=E2=80=AFPM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> >
> > Add bindings for the regulators found in the MediaTek MT6316 PMIC,
> > usually found in board designs using the MT6991 Dimensity 9400 and
> > on MT8196 Kompanio SoC for Chromebooks.
> >
> > This chip is fully controlled by SPMI and has multiple variants
> > providing different phase configurations.
> >
> > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@co=
llabora.com>
>
> The descriptions match the datasheet and design notice I have.
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Maybe the supplies (PVDD[1234]) for the bucks should be added?
Not sure if the control and I/O supplies should be modeled or not.

ChenYu

