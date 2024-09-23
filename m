Return-Path: <devicetree+bounces-104471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 935F197E86F
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 11:19:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DD451F2191F
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 09:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC52C194A4C;
	Mon, 23 Sep 2024 09:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dUHtDjqY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BEC1946B9
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 09:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727083184; cv=none; b=u+kysMP3cNlDB9eEKWeIG0nVjpQRJw0nhcs7FT6ceo81SVp6WuqtDpCDNuW4bWXA4XA+V8Vy11p4zCkALQdHkV7ryCznHt6xiarNJdEyuAuDCIrZLlhMCmnTADTZRRDypACQwhawHhYfrAtOx/CgyWJpbPjw+HrmQJ2U5SJxhfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727083184; c=relaxed/simple;
	bh=HbqLKOB9xBC4YcqZ9WHS6O6Bgu6BSSEF109W9pv461c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rr9oMzif6kmCO+piaZsci0d540SXE8DTf/WqYdBpLQhdXaRUDWyOUsGLRflvyFRr3mnUmxKYHKrAz42YED7DYYw+zcuhlzEdzbeVy8AZU+FRt5ElhTAXYVrtaOMSCTcxiPNDihnXk1FRl65ZNefCkb0rrOtjgKkzhJl3c6cfOE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dUHtDjqY; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-535dc4ec181so3951591e87.3
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 02:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727083181; x=1727687981; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HbqLKOB9xBC4YcqZ9WHS6O6Bgu6BSSEF109W9pv461c=;
        b=dUHtDjqYlOr8kpmIf4INscMeuPuy/TGibkEBehqkddXcesdMteAm5CbFv1CjGQAhMf
         lebb1SnoIdxiQFoDOcwnGncWczWunpY15YDvwDdWmdU5wqyv18Od5jltcvHV0e37PEux
         gEuEO88Nk7K/w2rilAWm7HsKN4IGd1RTAJscE/2De14DfVNnJA/hu+9R0ijC14WS5IEP
         FAW3yZzpe4W8WOHnWBXH0RLHBpLjIkPk0VELsdNxXop36GJpdF/WIF5TqpLvSb0Jdb0B
         dX+naykkKlgvDL40hiBnvETybwhvZJxUoyn9DVzIaBG5cSoEUD+9dTeBUioZcZ15VbVu
         EGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727083181; x=1727687981;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HbqLKOB9xBC4YcqZ9WHS6O6Bgu6BSSEF109W9pv461c=;
        b=h2Panh5hNc7act7YTNt86BceHimXCMq7rg/U1Qli8M9TldqO3qsKXI7JX1mHSikxwK
         uK5a4NRVifGmorrnm4Dmjah4ugVBjeOd6k7soDgCSNIm7iKFL0Rpse7N/iejkfvYmdh9
         026EfEGvg+6wRa70jfD2Fsrx0bzfIMbq2/eWrRjOSxjSG4zASvzT1nZ5OFQB4rlVcYTM
         TXNOw/AtL/5JY332c4Ab7DpIxCOhbBHANVzQauQ84gUx3OAkzYnpTVYy27teOoRCPnKl
         MCezoGEvE21yInt99GI3ZftnzDENx8A5XX70Fugg7tbnj0RhHDSt8SiJK80ys5cFqU8S
         wV4A==
X-Forwarded-Encrypted: i=1; AJvYcCVLs6EtMOaljaet8IQcFAumai0eIO2DxaWbJslZepiO/+DdnAq81sIRDsxeh/g8SXCzYFDs3X/XlPRu@vger.kernel.org
X-Gm-Message-State: AOJu0YxzisiTlUJKhvlU51R2AuvE9aBwAq9DysWAo51s+tuPX9XqXqw7
	F32BLtVXk4kwUbC1dN1VhFAuYH0EKe/ayNAIy1FB/qPQRxnry+tvJjP/rUfWNJ+tyyLMwp7ry5k
	itkKN0CDagexNsejZBCppbwtriMNrdBYrfuI9hg==
X-Google-Smtp-Source: AGHT+IFbnNUzhyuTeh31UmTh58QKRDJU5vK7TVaf97G8j3XcTVc7O/NrrT0g/ySQvM7uYWrGz4NvSm3Q+S61lZ6eSEw=
X-Received: by 2002:a05:6512:10cf:b0:533:45a1:88fc with SMTP id
 2adb3069b0e04-536ad180123mr5184682e87.30.1727083181276; Mon, 23 Sep 2024
 02:19:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240909110017.419960-1-ivo.ivanov.ivanov1@gmail.com> <20240909110017.419960-6-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20240909110017.419960-6-ivo.ivanov.ivanov1@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Sep 2024 11:19:30 +0200
Message-ID: <CACRpkdY=Q5JyLdPE8EdhaKE+J2j5DZMvf2Nan79yB6x5RWFusw@mail.gmail.com>
Subject: Re: [PATCH v4 05/10] pinctrl: samsung: Add exynos8895 SoC pinctrl configuration
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Rob Herring <robh+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 9, 2024 at 1:00=E2=80=AFPM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:

> Add support for the pin-controller found on the Exynos8895 SoC
> used in Samsung Galaxy S8 and S8 Plus phones.
>
> It has a newly applied pinctrl register layer for FSYS0 with a
> different bank type offset that consists of the following bit
> fields:
>
> CON: 4, DAT: 1, PUD: 2, DRV: 3, CONPDN: 2, PUDPDN: 2
>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

I expect either Krzysztof will queue this or it will come in through
some other tree.

Yours,
Linus Walleij

