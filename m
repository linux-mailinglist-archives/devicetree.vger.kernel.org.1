Return-Path: <devicetree+bounces-180284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 922F7AC32AA
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 09:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2981B188D9B4
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 07:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D0D1922FB;
	Sun, 25 May 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zMcEloKP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C869FEADC
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 07:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748156753; cv=none; b=RBPhPSiAjEWjFXuo8NpqP4fCGjRb6oV5+KFcMcfS+dOR09sOeUVtpcPuYFJ3zcNYk9VJmvOK+kxd3l6r2Nkb8fFqP36UJweuDPA6ij00pVeG4z1F7X+5W9ZE6Q52XNxiIV5SZPKuB5wAat3CHgsYcsIPG3TEy+9sX+6rN8v6lxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748156753; c=relaxed/simple;
	bh=jvhoBaZylv5JALI+/bZ2X6Rv5t1lsNh1PTJCaRNalmI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JEgScpLIXXY044oJ4Zc63R0cxpBaSSmCFel0y5PiOCWWmb7fpPhYzaiBSPkJ+BHuvq/D8nmJghPjxqyCcmZjmMzPrAWCI9bZZ4yPSPFwSOZSA2oDRI/XzGGOfl9Kl1PtOGdQpZeQsE7eA+WDmGN9mePf02bGSGv1elgq3tBVhkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zMcEloKP; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-6021e3daeabso559360eaf.3
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 00:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748156750; x=1748761550; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jvhoBaZylv5JALI+/bZ2X6Rv5t1lsNh1PTJCaRNalmI=;
        b=zMcEloKPiYVWgdWwOM8+4IfmGknQltM4azGGIxnUZh0tpXmiO3BJtLilWCovoKF7QN
         HCqa2n6yjEZxUg9jIrPl84EHVWA9SKjMI3ZxEHe85vObwZb/lBWHPwnxkzb/XNlIaxxP
         iDvieoc3zjU/D9TPuKANDNJrgLcmVSfpi8YjAzQ8HWB8dbCekc85fZQHszb6qXnxkI5p
         HZjecqkrpQbqS8uomjeDJWfhIv7AccpilQUx0I9IYBr/9KCDArm2wOAsSjp40m3AZoVJ
         lBWQ+Y39GGmH4DZklc314dZmkO4JCo0iK3WbyB+SAlqvCoMtMkVik8BqY4A8EPnnNzQE
         VwYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748156750; x=1748761550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jvhoBaZylv5JALI+/bZ2X6Rv5t1lsNh1PTJCaRNalmI=;
        b=TM484mNUP+Puelq/w251bpYebKy50jFXyLXcEEnrxMAkoM+qrSC0xhC2Y9xFhZMbjw
         d/BfFNDA6aPTEFkKDujRqLFPo2sNtx/RVCYll9/vW+/YPzK/6rjE6WA4dk7zXvQnPoGY
         0BEkSl71WP1w/Qxg9eTJmj2qwcFquQGH1+W3FLUdNj5OS7/dk+LQfpR1gsmKs51CzwiH
         /veCKJxU44zjbGY8K7TSeN46zcgncVPqa2hIWVZxNQHd8hYrVKD52Hozv4UsSN/N0q/z
         kL22Cu6OeyXQo0D6SgePHIO3tb/eGWHATSjBMiJhD367fnP8dPdcAT+wUG0vzv5idOA0
         +Buw==
X-Forwarded-Encrypted: i=1; AJvYcCUV+8q0U+oqDX/KW30uYLLjFKpNY+jbDwXUugHthN3qewzc/okTwJ38KeixWwuxmuUNwkEVhq18SMhO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/IJ4CRaEuKYxgplkN9A8foMHciYxrtRdDR4hXce57tTogpACZ
	fvqZYzICaN0bk6oYT1M0ZZGvL9s5hpsfTyC1hVhH+3yTD9EGI6k4X96Dtp71Lx+njGNnociLkiu
	IUzyMAsd66NFIEoPRhQb58k/Sj5WDzJHTArpr6GCoZg==
X-Gm-Gg: ASbGncsqj3ZBiVs2sEuCNQ8JXU6QnAtLhoh51Ic7XrMxcQ6SeiBar0hIvH+ApqqPgpI
	13cotn8rl44mVd95wDZbQ0Ca5aWro025mLQcbnNVK3lytsWjFQtXVZg1Jcdh6FsEsR1h7FC8qiZ
	GNfl4Glp+krlGOfrvyxWk1wkxWd75/vLn9UIX0S0OlnavjIjthqNejBQv9gIBYiV8SVw==
X-Google-Smtp-Source: AGHT+IGPkyRDJYTnbDg706EyGxrFrSBuZIpU6gujwRJ5t4G9MskZVR3FMKn2gTUYPOf5EomM6pt3h4XtTjZNiHOsagk=
X-Received: by 2002:a05:6820:1b1a:b0:604:5e57:80ab with SMTP id
 006d021491bc7-60b9f8ac9dbmr2898191eaf.0.1748156749921; Sun, 25 May 2025
 00:05:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org> <20250524-b4-max77759-mfd-dts-v2-3-b479542eb97d@linaro.org>
In-Reply-To: <20250524-b4-max77759-mfd-dts-v2-3-b479542eb97d@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sun, 25 May 2025 08:05:39 +0100
X-Gm-Features: AX0GCFuYwVDbJuGWCNZYKWJexcFUkr6L5u2qT_trsMWFdA8H8nt3PvddMdXZGPc
Message-ID: <CADrjBPq9jzuDKXE1++ds=q85eOFDfBQ2VizjE7GX9t24wMsbtQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: exynos: gs101-pixel-common: add nvmem-reboot-mode
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 24 May 2025 at 06:21, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Add the 'nvmem-reboot-mode' which is used to communicate a requested
> boot mode to the boot loader.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---
> v2:
> - add dm-verity-device-corrupted
> - update commit message slightly
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

