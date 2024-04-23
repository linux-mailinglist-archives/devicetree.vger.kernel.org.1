Return-Path: <devicetree+bounces-61828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6608AE550
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 268F4286A4B
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CCEB13C823;
	Tue, 23 Apr 2024 11:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RQHL/jBw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8CE86AE6
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713873056; cv=none; b=Mhdovvmw7rS2X+hVkrFMhLv2pi8nalzSCd642qp7AZNc8bN6DNyRpQJo4+tlzOJP2eR0xIYZJ5oDkuIdiYriQD/hp+PK+IkLLT9U9B2i1Uh2OKwvr4hE3R9YKg3DC+pMMq5yUYAN8ElBCblmiuZO9t39ts1fQOmayPpoePfcmyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713873056; c=relaxed/simple;
	bh=QhV8sC53PuoWeO2HSJ4LPypflMXSSVbyY/ZD56aWh1o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dw+TrRPYBnYMvgEkhGcBTxdgFyB9ROMNU9kIXrcIpZM3mjwe6yBn6fKvLwSvVaZU5i6Jp0QfdFFUa9LnA+oW+noWJTmziRpVFnfzlzT8ngRG9hCkhHbmPBy+YCumU8Pt0aP/fhOJfqzRYWbfCNgIDid+NaGMpowDiR4r7WnIqig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RQHL/jBw; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dc25e12cc63so5813673276.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713873054; x=1714477854; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QhV8sC53PuoWeO2HSJ4LPypflMXSSVbyY/ZD56aWh1o=;
        b=RQHL/jBwj0uZhjk/jROTT4fXiy5UlK0Tl2Ab2lYGLDdg8YnZyWdGp44gbyMmATvupk
         06zd3H1HHr2Lbq5EayrVZu0WkrVDBIxQ2Znq/k7zp4ZN7xcYCsXDy3vqysslC+ubFcRC
         aRATxPVGKxS4lfdDD4tDWVOPRaLc+g2VMuyJG9U4ajMCYRgqJ9NjxhHeDkXAX3mbeL4e
         kYLj5+UkquWa+agZg6NmWwxS/jPhCqWXT8utHc1NDXcadY4LkqFl6ZFgfH2SLs3Q6sT8
         1ADS1f1Bvpf2PcIW+etUbj2vfKM5fmtQkuVFgLI3v08uK3GW2xvkiKIXSbUKpl/uguWR
         Tgxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713873054; x=1714477854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QhV8sC53PuoWeO2HSJ4LPypflMXSSVbyY/ZD56aWh1o=;
        b=K6yZehZB3TZhucmIxLhZdshAJtJ/XYUGQKXZLtnqI3qnbM0JchryAbSc4v09IjSH+M
         yttBPTCpCfNR0FLqz7bYH1MuphN88+WaeX2BR7M/u9Mobb5OlkQovmAa/PQdBvvE/n6O
         ISK/22v3xwcZySFdLZ0PzNTVHsXlTchmTLjYkavNssMb/ybZ6Kn2EP6Qb6Nbdsous/OH
         qyYRUZ+fUSfxt5GXYdviqW/AZK1K7Tp7sqq8eg0wIjCd6NpMI5SBeWq5mw2umoHlCNCZ
         a1rLV95CIRUE+GuFWmv+ZWEimBehExdoqz2NNhtC5JvVG7EzjKwooTpANGdnlwgqo8oj
         IjWA==
X-Forwarded-Encrypted: i=1; AJvYcCUSSNt+/PoGUX9VaoRgoEfieInhYMCbi0PPdGcZOeCcWjM+OkP08gfvoCV0K7a6ShH6JakUiYhdB5/6GDc1GVKuCXXwqqDSwT4xiw==
X-Gm-Message-State: AOJu0Yz5eWOFuQPxWMtNMz1tvEPXYFbo7p+IFYWm0ZJ6YE+Hy3KtvMaN
	pW1/LICTwfre7xZf9vHeiidXfxaehqnh5lp/Bpab8iHsoGY9J6Wa9A+ywwR5tmfWtKZ/lbxlRo3
	gVzYorhQ2N/qtl4BfHL4U0lQH1I7HyKaTA7oDXg==
X-Google-Smtp-Source: AGHT+IEMnU8XNu87RAEsJ69VRL2qjj7jhNKel9ZUUn93ZhdFBWYiV+1+tARnvMwhlv0ojQcSoF2a3VXIJEXW65XJUPE=
X-Received: by 2002:a25:e80e:0:b0:de5:4b29:22e6 with SMTP id
 k14-20020a25e80e000000b00de54b2922e6mr1668265ybd.1.1713873054232; Tue, 23 Apr
 2024 04:50:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-0-23d33cfafe7a@arinc9.com>
 <20240423-for-soc-asus-rt-ac3200-ac5300-v3-5-23d33cfafe7a@arinc9.com>
In-Reply-To: <20240423-for-soc-asus-rt-ac3200-ac5300-v3-5-23d33cfafe7a@arinc9.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 23 Apr 2024 13:50:43 +0200
Message-ID: <CACRpkdaDmBN1kbMbbJEroN6DXPTAtkftupWrbMO_weoDF6PMRw@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] ARM: dts: BCM5301X: Conform to DTS Coding Style on
 ASUS RT-AC3100 & AC88U
To: arinc.unal@arinc9.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Hauke Mehrtens <hauke@hauke-m.de>, Rafal Milecki <zajec5@gmail.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Tom Brautaset <tbrautaset@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 11:51=E2=80=AFAM Ar=C4=B1n=C3=A7 =C3=9CNAL via B4 R=
elay
<devnull+arinc.unal.arinc9.com@kernel.org> wrote:

> From: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
>
> Reorder the nodes and properties to conform to the Devicetree Sources (DT=
S)
> Coding Style.
>
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>

