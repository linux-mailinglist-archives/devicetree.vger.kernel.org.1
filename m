Return-Path: <devicetree+bounces-167533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FE8A8AAF2
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39FEE16AD3B
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 22:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDED2254848;
	Tue, 15 Apr 2025 22:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EJTVGZLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D3E23D299
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 22:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744755058; cv=none; b=Zh8Vpau46iq2NmR3qcnPgq08JxGfDCaxDEH6v+D9VUXqPNVRkKo14qEwTBNMs7+POPPNDsQ82w6DPtiGbHNdYt5F3e0qehhgKncRaynWgLpBsleIv7EAFxibo6AG5dtvyNW4nqfsMCrRCajLyQUiuMQFAKop3yKM7B2ylIXi4II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744755058; c=relaxed/simple;
	bh=31qWf8KQERvl8g/dbn9h2rj4EmG6eTFJ1VCVzlLhv5w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nrN661cPkHbsmK0U4Won9pa5OrM0ZG2r99ADmZTxVSD5pkK5r/BzZ5Vhvvouqd0Fq05f/BPRRl3sPOVD8qOtb55EXV64irkHOtUWevk/59cDbSCiiA6OuU1S0ZCzDJg2g/UHW4vm671B7aFVuPZy0srlQaA3PW3JEZLKM5oFKB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EJTVGZLJ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-54298ec925bso5319812e87.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 15:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744755055; x=1745359855; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=31qWf8KQERvl8g/dbn9h2rj4EmG6eTFJ1VCVzlLhv5w=;
        b=EJTVGZLJ8CTfHbwcvmzhtwULAtv1VDVkrAv9dm59ChB9/5Kr80ETqGBahVAHzEzC5X
         CtRBLvE5gx+xezCbjbQVTFn4tCFe/FhiB4uGeJTsbu6cnZuIUooFwTDGwCW5yTif5dJG
         YcSm6nOB8vidGKU9D8sTJXJ+VONPIS9CjpnZEY1ZSitrE27X8jP81Bt/ZL4qHNPDzk0d
         p2p+KhmGwcJEScEbtm9wr0IPRTbiVkfbUuRmCJABkBifgyb2anGolfOx2e73I6eaginh
         08USbbqTWDvDFKF1UmRoHhNNq/+dhPWZK2HYWrVN7ytjnmT9dEKKx1NnA/C5E4Tgxc+v
         fP0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744755055; x=1745359855;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=31qWf8KQERvl8g/dbn9h2rj4EmG6eTFJ1VCVzlLhv5w=;
        b=UMQGiTK4YEj2iEINyvsVmvGaUS0hX7KK1G7ceXr2qJYV+ydKWNCz4TOFVez/L6f+aF
         kBGtLpu0DAT4CFwBv8NrTs5v91lASPUN6tDH1AC4PwtBh2rHnFS5z++61VWRPrelIowg
         GB6+ZyTRFTkKWQeirY0yN8S9EDw5jnaVOR5IKGCot0mjEfrq94msZjBAtAjQI65o7lka
         tYWsH5SW718jUxoUgsEkUXO07ZszVvjI6DGfi6hPQ190PH6atkfnkVG2PHT42w7EQIwQ
         ZFX2n2KEu4MWq+J2wmki2lGD9mV+kln7L+5yojt6iKlMhFofvnQwrG1rEwfk8Pz0JsAd
         gPyA==
X-Forwarded-Encrypted: i=1; AJvYcCVIZR2qGwScpP70FO7MKkplivqIZrNYqDccDGyHo8huV5kQFIYL9iV3CFixKe7DtdGorFvagBZ2ppoj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+iU2MLd6mYIIP1Esu+oKv6ZJGW/vOrEEBhGZdUdO1FORO4tRU
	OhaGPiynfVDtIcLQgY6rugKk9+8P19F3w4Qs1c7nizmgvx5BEyMpF6qLQ0F8H9vFK7NbI1H15TV
	jg7I6nJUXP8FKj2cTdLU5eHETO/FVSt33jKyNbw==
X-Gm-Gg: ASbGnctY6dgBwLk36M5Jy7CIx9zjR1OD76N111ZMyI8hpS6gqbK+XnHrE1gAf5Xt/Mv
	UmpmziZ2T00ihDIoF0NREFhQZ0zcAD6zV0sNqW9vtLZqKDYPw3Z0QGa17sHqFUH33G24EgnQN1Z
	ZYyiN2JqW8kW4NZ5OIGWp8KQ==
X-Google-Smtp-Source: AGHT+IGZJzLOwnZ9qpiWHcIF+V8TMR3nGOqkOptHc/Gl4TE7Nw9LgOL4ju4wMFEnKHYqcQfWgSEgPkmfn705OlR6U1Q=
X-Received: by 2002:a2e:be2c:0:b0:30d:e104:cd55 with SMTP id
 38308e7fff4ca-3107c35dcf8mr1584751fa.38.1744755054882; Tue, 15 Apr 2025
 15:10:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250324125105.81774-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250324125105.81774-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Apr 2025 00:10:43 +0200
X-Gm-Features: ATxdqUEUFUOJ2tt2s7fnA8fXcqPXcCQqJSFMlzS_sbWB5FOT4EwR_LV0iDgZ9D8
Message-ID: <CACRpkdZC40M9p0VsygE4fWeybdHYD6OJ2b4BJufbCA4LVW1z5Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: mediatek: Drop unrelated nodes
 from DTS example
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sean Wang <sean.wang@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Andy Teng <andy.teng@mediatek.com>, linux-mediatek@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 24, 2025 at 1:51=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Binding example should not contain other nodes, e.g. consumers of
> pinctrl of, because this is completely redundant and adds unnecessary
> bloat.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Both patches applied, thanks!

Yours,
Linus Walleij

