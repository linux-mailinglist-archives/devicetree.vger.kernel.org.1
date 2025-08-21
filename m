Return-Path: <devicetree+bounces-207440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC983B2F747
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:57:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9916582000
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6BC2E11D7;
	Thu, 21 Aug 2025 11:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EeTlcgdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681C82DD608
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755777240; cv=none; b=cUyYoScbGe3s1Ty8i29s96FqLJ+QQo/uNkGjMQVQb/4R+AdtSn4YOeihnLSacOfRPQvt0P4jyPg5huIwYpP5n5Y/nQJlQFqBghIHRoESxH5Ndi4HrN4i9pnob+w9ZB+Z5l5E9FM31B1TRjd8sqSuDRgyHOxZtxfWXgwiYoehiyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755777240; c=relaxed/simple;
	bh=L7PbAw7tFxkqZThPb3yJ9U2UGY2pHnuSaci2IGV7yfc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H4eredic0DU8+YkhSC7fGGjrTv75d8Qm3hElZjPqxbBnZxGKMJWJeCy07P1EWYKX3S8VMixNoCVkQlQQuuTEhZEs6EzZlJGQG5g5IbPGUsPJbeKaeLZlMlOyJa197yiu5PdaqxJl0eFWb+eUvwSZreMUZOAv0ONgY2KQ/nQMyaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EeTlcgdw; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-335360f9b6aso16795371fa.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 04:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755777236; x=1756382036; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L7PbAw7tFxkqZThPb3yJ9U2UGY2pHnuSaci2IGV7yfc=;
        b=EeTlcgdwYygVPvWzZ81l5IByZT3GZgdfLnceLEVRtnLKn5kjZAK18d9RTZKllNN3R9
         UXNJuNZYhZL2/q7EIlmuqT/RNnXonu0xTXfM7Mu1hvzHJXxGStRwQ8wUjUvu1nmWe5kJ
         bOvHqJiyfkTBFnPalQCG/zkNmCKpV4C//WOnsggDAKiSq2dxxWaUdzQDpOv4icRLO6jy
         FLT1i4qApSx7t3oDdCbKZI6Uo/XCgFeugJGvh4s4McwDReUaIaDZCi4GNX1+YPb88r4q
         FyMPyu6OD1xEbix9HWqrFIy2K24Qt+lvmhMkS4VLBb67YbyhwsoovUIdJ3elz5ONpvok
         A3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755777236; x=1756382036;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L7PbAw7tFxkqZThPb3yJ9U2UGY2pHnuSaci2IGV7yfc=;
        b=OKkJihgeqDeI2H3hzf7XwuuNm/p/dtiPvJKtU3l/iVzUFT6D/M8MaRsVwD+tjLcVln
         RUu056I4wWYBrHT1jcKyLw0OreX2ue3dQA6d9wu7S5HyYEbeJUenRim6TRnEmmwz9OsO
         MWfSBstwvb5sWZgnUKay4XfiUo4Wr6IGFVdSPqHKHUchi9oW9Ca5L1rZqboSx5xaGhtH
         n1MsL/aezauOrzwWa2lFUXnDbkl9M4MT0KVvylfoqHMLlWHJHJaJPfX8uf+mcgHCbGAg
         1G7FELOzDfvmKcYLTGH1Gc4FvH6zE1xYppUhL755KQCE7soO0w7iVWvXkSNWZPcMC7Rg
         qfZg==
X-Forwarded-Encrypted: i=1; AJvYcCUnrH/3IJWNDKB4PV0jwqmSTP9IYd241FGQhWghC+C7s+CBUPI0PglmDqOwVKaaQZM1uLHb291GEFMr@vger.kernel.org
X-Gm-Message-State: AOJu0YyFS200vpoo0HZStJ3u1/mfZ+C8Dbnvr51NF8P8x552ZvENIXXX
	01qYN59pE/5RQkrgebJa6MFZ9hWAWNkx+ljvJHckWYjLjg/1jD9TeWB7jq5eCorApYaCcVlQKUp
	Il7D5JcP427EYjTWeZ5DKzCo9vRZrIGNE0jydzj/a9w==
X-Gm-Gg: ASbGncuTKz+IkON5+3YYbAPEF1AEbn5evw4VD04EMD9p0mwqDeG2bYp9Xo3yS60FBoI
	BKeKlnqJNnRQmuZnu5R/oCyLZo28daV+unGDqZvTVRJwDizxPW/tOigkw/fgB0hsIixBr0pZhZu
	07yuCS362CtGqkhX8y9n/iW7CQmC0fWpbFzod6JQB93yffvegHUEZZ2ne4L5/+9ar6q0W1ZWPU2
	ffMm5w=
X-Google-Smtp-Source: AGHT+IFoewdvNuLwpOMDi7tPmb9FEQKLI5JEdERuyolhueuXHZ2+5KnKdkT/j3cc2QMbmt8jG7ipw7ObSBOoHSZHVLc=
X-Received: by 2002:a2e:a013:0:b0:332:2d5c:e171 with SMTP id
 38308e7fff4ca-3354a275fd8mr4061531fa.11.1755777236482; Thu, 21 Aug 2025
 04:53:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250820171302.324142-1-ariel.dalessandro@collabora.com> <20250820171302.324142-10-ariel.dalessandro@collabora.com>
In-Reply-To: <20250820171302.324142-10-ariel.dalessandro@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Aug 2025 13:53:45 +0200
X-Gm-Features: Ac12FXy1SuiUzS280qDRSJHcA_2jVr4y-FjGItB1ru8eWVK-JVnc9Ql5XGWxM9c
Message-ID: <CACRpkdbVqNpz2HiAz+_vFUkDy1TE6ZDxp6X2g9rRWAt4s=jRgw@mail.gmail.com>
Subject: Re: [PATCH v1 09/14] dt-bindings: pinctrl: mediatek,mt65xx-pinctrl:
 Allow gpio-line-names
To: "Ariel D'Alessandro" <ariel.dalessandro@collabora.com>
Cc: airlied@gmail.com, amergnat@baylibre.com, andrew+netdev@lunn.ch, 
	andrew-ct.chen@mediatek.com, angelogioacchino.delregno@collabora.com, 
	broonie@kernel.org, chunkuang.hu@kernel.org, ck.hu@mediatek.com, 
	conor+dt@kernel.org, davem@davemloft.net, dmitry.torokhov@gmail.com, 
	edumazet@google.com, flora.fu@mediatek.com, houlong.wei@mediatek.com, 
	jeesw@melfas.com, jmassot@collabora.com, kernel@collabora.com, 
	krzk+dt@kernel.org, kuba@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, lgirdwood@gmail.com, 
	louisalexis.eyraud@collabora.com, maarten.lankhorst@linux.intel.com, 
	matthias.bgg@gmail.com, mchehab@kernel.org, minghsiu.tsai@mediatek.com, 
	mripard@kernel.org, p.zabel@pengutronix.de, pabeni@redhat.com, 
	robh@kernel.org, sean.wang@kernel.org, simona@ffwll.ch, 
	support.opensource@diasemi.com, tiffany.lin@mediatek.com, tzimmermann@suse.de, 
	yunfei.dong@mediatek.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-sound@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 20, 2025 at 7:16=E2=80=AFPM Ariel D'Alessandro
<ariel.dalessandro@collabora.com> wrote:

> Current, the DT bindings for MediaTek's MT65xx Pin controller is missing
> the gpio-line-names property, add it to the associated schema.
>
> Signed-off-by: Ariel D'Alessandro <ariel.dalessandro@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

