Return-Path: <devicetree+bounces-174987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F76BAAF78F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:13:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 580EC98647D
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 10:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968441E1DEE;
	Thu,  8 May 2025 10:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z56VpmEf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70E042065
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 10:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746699190; cv=none; b=d3utuV5djOJ6asc8cH/ghH2I1p9vXuA/aP8a4yiQ0PRTEU3YtzKaj5DHraMdxRlh0f94gkN+yjijzd4+f2h9dcqp1eKZyT5/nBc0UQgMZm2VZzWjWSeRKVmwGUrlUbmFi1Htp/qbyonOecKFzL+3f4NG/GwHJrNlj2VE3Ufkpzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746699190; c=relaxed/simple;
	bh=GaU7b11uch6HEVNCi/BIgaqFmQ/4amSpG/dObURRasQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hzlJuy8pkjZal3QTUpzd2bHgPj8hfdlRzgpg/gENj7ZtGfbZFNkRMMsJig4eZ9NrMo0PNybRufPfrM6Rw7dv/V0ej9pNaZDnhaQ5YBQCo+lo1wGA5h21SP4nqwRSleuZZ9g5pl7VLrOHe3v854/6eckQhGfIcHyXJmpo0CBXdGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z56VpmEf; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c54a9d3fcaso86893985a.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 03:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746699188; x=1747303988; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GaU7b11uch6HEVNCi/BIgaqFmQ/4amSpG/dObURRasQ=;
        b=z56VpmEfIr3G5KDQb/tzjCLh9LS0YOrxGz7zPE8YfcbybOktu/P8cuQBsEwqpoADdX
         SbJ51/+mYNOgClsqPCFK4MfjRVCd+daCztCHyP5EnVz70gq6Su/JL8wGl92s5in/i/cf
         Z0abIf57pTYZF3byCZ43Ez0YQcCwJuEjFzQyozvDbAppNMOwVix+DHWimqWSsXaZa09E
         27BA2dXmcVXqFFsPmvkLo65/GCMKITUgVF1v3kLFXV4bXAQMjDkuj6sagdN8G7AItqnn
         IbWahmTfqA1vEiHz0sdvOwTfAnxM+C4drcN10wGE0xTwaJSTUF6Kdohxg1heKTI5IS3l
         4SMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746699188; x=1747303988;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GaU7b11uch6HEVNCi/BIgaqFmQ/4amSpG/dObURRasQ=;
        b=Ae0Eh6o1UCb+YzP558+VIntdaaD1O/B4kL2kqO26AWvOunPTiQvl/eI520tbPSyTfW
         2ntZAXKGFTWJC9x97z3X8BkiUz9rfQRUD9ghVC/1fjLw53X5iEoZ1C0u/kL9bsBdPz3F
         UXuqQSPVFGQyBqjnyUp9rUiVLRutzzavDDWGqXuQqLqq6oKdTwNH1rwWxHTNMKWjFZvr
         +j8pIPSiwjVAubaBf+C99Se7yNSNF5XKYeBlHYD48rAzQHLJPA0q9+uDSzMxqSHZty8F
         Bqd8Fu0EIioGy2zu6tu7DXOtfwGyX8UvrWND25wfABYlIkjoiFHgEPjoVJ3RF8iJlVEp
         vrRw==
X-Forwarded-Encrypted: i=1; AJvYcCVQep+9EJBVEMM9O9XgKkIFFFzR8Pz9ggTyALDcHh+OJ8sdjn4oMeK3dg0JcXnwN3foFEzA8ks9etXA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9F51ToBos+pZamJWqTltIE6q3uDB52oASg7Ny67kQSzNCV/Yl
	wWTMAwDxEJa8/vxsNhR1rEZEM+BuXJyEFXBDtrv2QmyupP1a2YjY40+bX+myS25QMsE36cOo39w
	gTtgZDEGN81b5qVUFfEJZ1SDbZIJGQc/vC5z84zBIl7I2MOrNCek=
X-Gm-Gg: ASbGnctDsViYSLHF1EIKwSu/pob9PH9nVfBws9kxF3qKTmHIG8OALRzrZES2grhd78R
	cJwIuxkOJFNoRINth5BmfBnCLV7PWO530g+jUVGDkEwqKxTXYJyWbBSFXqIfujj/KiBpEGlqGRh
	YfuF78O4/O3vKZYrtj+sCgJKI=
X-Google-Smtp-Source: AGHT+IGHZuVXaUQ/u3XZJbuAZafur+n/lC9GK9G6Emz/GScjl53R/86ubfnNKLg/l/AxbJxOUCz0O2Jkui3OicdLBOk=
X-Received: by 2002:a05:6808:200a:b0:3f8:e55c:16ea with SMTP id
 5614622812f47-40378032892mr1579070b6e.24.1746699177190; Thu, 08 May 2025
 03:12:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com> <20250402233407.2452429-4-willmcvicker@google.com>
In-Reply-To: <20250402233407.2452429-4-willmcvicker@google.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 8 May 2025 11:12:46 +0100
X-Gm-Features: ATxdqUHvE3fzypmFP1S8IOQDU_RCSOzzbAgcVp5I5etYCYOISwNGGPhI-JRyTfE
Message-ID: <CADrjBPphh0DgdeFSAZ9WDNqUOE=C8XasoW_9Hq=p1Q8onZj+AQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] clocksource/drivers/exynos_mct: Set local timer
 interrupts as percpu
To: Will McVicker <willmcvicker@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Donghoon Yu <hoony.yu@samsung.com>, 
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 3 Apr 2025 at 00:34, Will McVicker <willmcvicker@google.com> wrote:
>
> From: Hosung Kim <hosung0.kim@samsung.com>
>
> To allow the CPU to handle it's own clock events, we need to set the
> IRQF_PERCPU flag. This prevents the local timer interrupts from
> migrating to other CPUs.
>
> Signed-off-by: Hosung Kim <hosung0.kim@samsung.com>
> [Original commit from https://android.googlesource.com/kernel/gs/+/03267fad19f093bac979ca78309483e9eb3a8d16]
> Signed-off-by: Will McVicker <willmcvicker@google.com>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

