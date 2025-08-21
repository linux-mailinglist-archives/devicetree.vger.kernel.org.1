Return-Path: <devicetree+bounces-207615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60829B30090
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:56:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BD5C68782A
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 16:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 094862E5428;
	Thu, 21 Aug 2025 16:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wkWlqK7d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DC026B2C8
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 16:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755795052; cv=none; b=DZfB0XaZCw8no3kfgKSE9r1Kb1XRMcDI/iPDZ7DHY94gWVT4ALHvwFsDausUtIT/Jd+4mMIlsSAmpxUifsr736U+UnDXVIsAyeB6y3z31FO1Obepu9TeN43x+SMdYfZqj6fnSPwwNiMQxtWr1v/6rEv3aW8NpTktErw7mOFk8h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755795052; c=relaxed/simple;
	bh=MA5CoRznscTD/9JPv2I1fgD+UFpMWzRT7Bcr37nG6ws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pTX+0/zxkfup5hxCQOz+GdbEpsLvGQV9LKFffBQ1noN0YD+JhUowhQkLrxdETDNMWsF2qA2tsmBL069UrI2hjeaxDWiyj1ZSTbP8Q9oxVYpoJuUR+4ADLHijwH3zdTPrU91xP23J7D9c8SAn3oDs69+Kt1XowRPZvJKE93686YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wkWlqK7d; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55ce5287a47so1102778e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755795049; x=1756399849; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MA5CoRznscTD/9JPv2I1fgD+UFpMWzRT7Bcr37nG6ws=;
        b=wkWlqK7dAOZ1y+MgUubgf3rcCYYAXyFlwlaf6n4BDE1E8OdI9GvbbFHWXkFl/JUFpg
         QKfV51wUQLLQmaYPN84dofbifww2acVr069Lix2t8jO531wrxko2uFTV43AqOPGFcPC2
         WI2CIbzgrmnkREqIIFNuu2TPj9+XqcicbgOur3++CAajgcp1uC8YwLk5Fwy7lmsjwGok
         75qkS0ue+edCqf8SETxtdazBQpUu9ZXtTajUIpPtPT6xsd1EBJvuWNjHjaa7OPUO71m5
         bNJnhuWZ4pei0ddwxz9G8ZSvM8adFkmUF72vyFqcPzooTr27LGesDsqJ0Z61m+Om3WsQ
         McEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755795049; x=1756399849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MA5CoRznscTD/9JPv2I1fgD+UFpMWzRT7Bcr37nG6ws=;
        b=kJsI5gkqvq1cea5sx0wvZYEcGgXvdcshBmnhxpwVScVpc/TBXH6k5PADRzPcBrTa6W
         1CBZfmYriVbclB6FWum7Jc9wzhwDoVlGQyNKRHSi6avLpgp54i7h+BheMh61y121CeEC
         xVGvQbo7EfCEYMHksMDrE3sbF5G6bTS+udRK0lIU7KJCF3uyLiScIHOLXxVy5fMwr36Q
         FXJIHxuCZMWHWUWWdv6k9G/xPQMpdLIvlZUT4+mDVFOqB8jWkZJ/CNvcADREsfxtXkSN
         nWb9F8c7zdnCw/N3lBwprsV4gbBHTT/NoXSjQxuwPuMaZFynPGLUfRH21g6I5N4yIDPQ
         0AcA==
X-Forwarded-Encrypted: i=1; AJvYcCVGaB/8UhwuZ4AgqMsnuj8MQPG6aOhcvpzVzI9prt7CZDD+5L9l0/v3Fks/ryYU63af9FDk9BytoNKh@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzapj7LTeJYe21reQAPvN/OUkGCQPR0g5Zn1ectC8nO3pnE2cm
	n4oKXJGHFD6MqHdeLgj28GvQ+vFvPJH7lapTYU1RQgoo47/YKw6d7egcO4H6GBWYwNooyVwTAwZ
	ARHZIgdoAYgQP4+Ybim8zzoh7JggU6xwUUZ9sTJRGOA==
X-Gm-Gg: ASbGncvYiPkqGO2ZdVcLBvsy0NwmJkqhGGDGuZQok48VQotUV7AHENj7eGbgoc2mIeY
	LLc/1qy3fJ7ttvVV5jdYUNoherjF5QD1MjgrwUHxbu2EwphwVA9NWhgfLtQI4doBrpxOM5Bdji4
	OPfhKSEQwECNaEqCyCD24nw40pnJdK2z23sZ3nVJcgH9q4wBUDcy+HhZDmqGk5vZZ/X1A9zglvc
	ld/913Eto5sz/4MhQ==
X-Google-Smtp-Source: AGHT+IHXxJmnZpxwlzV39CihpI1fip8jHsQ3wqrQIPStR8+WqibfCJ2j76EEt47pzZKFul7hhblBfkLJ4pGoe6B1jMM=
X-Received: by 2002:a05:651c:23c8:20b0:32a:78f7:9bef with SMTP id
 38308e7fff4ca-33549e3ad61mr6524161fa.8.1755795049223; Thu, 21 Aug 2025
 09:50:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250710002047.1573841-1-ksk4725@coasia.com> <CGME20250821124039epcas5p34b77813c9936b8b70c801e0e1b67891a@epcas5p3.samsung.com>
 <20250821123310.94089-1-ravi.patel@samsung.com> <20250821123310.94089-6-ravi.patel@samsung.com>
In-Reply-To: <20250821123310.94089-6-ravi.patel@samsung.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Aug 2025 18:50:38 +0200
X-Gm-Features: Ac12FXwqIo6zLlw0fIpSEAb-CCiAQ7nCYe-8wPk85-SMsx3heqK_K_zSrsS4110
Message-ID: <CACRpkdbdpcPBC8mwazoXHy+HE+hH-XWDkfHV4Uz38YhZU7UH7w@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] pinctrl: samsung: Add ARTPEC-8 SoC specific configuration
To: Ravi Patel <ravi.patel@samsung.com>
Cc: jesper.nilsson@axis.com, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tomasz.figa@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	arnd@arndb.de, ksk4725@coasia.com, kenkim@coasia.com, pjsin865@coasia.com, 
	gwk1013@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com, 
	smn1196@coasia.com, pankaj.dubey@samsung.com, shradha.t@samsung.com, 
	inbaraj.e@samsung.com, swathi.ks@samsung.com, hrishikesh.d@samsung.com, 
	dj76.yang@samsung.com, hypmean.kim@samsung.com, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-arm-kernel@axis.com, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, soc@lists.linux.dev, 
	Priyadarsini G <priya.ganesh@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 21, 2025 at 2:40=E2=80=AFPM Ravi Patel <ravi.patel@samsung.com>=
 wrote:

> From: SeonGu Kang <ksk4725@coasia.com>
>
> Add Axis ARTPEC-8 SoC specific configuration data to enable pinctrl.
>
> Signed-off-by: SeonGu Kang <ksk4725@coasia.com>
> Signed-off-by: Priyadarsini G <priya.ganesh@samsung.com>
> Signed-off-by: Ravi Patel <ravi.patel@samsung.com>

Looks good to me.

I expect that Krzysztof will queue this and send
to me with a pull request once he's happy with it.

Yours,
Linus Walleij

