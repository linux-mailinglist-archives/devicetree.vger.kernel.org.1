Return-Path: <devicetree+bounces-249687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AEFCDE083
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 19:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 99C6A3000EBF
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 18:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E6427703A;
	Thu, 25 Dec 2025 18:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a7Hl5DzG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C695137930
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 18:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766687773; cv=none; b=evsey2UO+tjMwG7I6x+An8FrtGN0u+211MDrKI/39nHSZg41T9orhxFQkaRO0sg5oT2xRCzxxp305uX8Z4RYRjeZjdCJ0/6FHoGSNNxSebwH5a6BDZiOv4rp6bxqdoJr7S+xFCO6C08kZ4qVlyahQmkOo9XT8vn8XvCp6J9aJs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766687773; c=relaxed/simple;
	bh=7JUOyMg8Or8uhrVC4CD+kMcOGeXL28oIZJIkKzR4J1E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bJKHY6CBlc/BTN0nmOqSv7pCOyFdA+6ZtWxKgov7OJzNp07jQvhXtwl0T5kAj/OA8IkUXx7CAyu7sRaB0lwzmJJ9nzWjpx9YWVGZD26e5ARb6kZcEph90dauWl/h9GVH9vhicCJlOxhfUpyOR75bc/NI2J/ilD1cqp5pEhYzrSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a7Hl5DzG; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b713c7096f9so1065525466b.3
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 10:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766687769; x=1767292569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7JUOyMg8Or8uhrVC4CD+kMcOGeXL28oIZJIkKzR4J1E=;
        b=a7Hl5DzGX/VND598QcCWZ9gPceIhGhboJIXRtCEoZ4swuU7teT7UtlaKw+Qtdh3/RN
         TPjGTQ5+nd6hWVRpeRSGxF92o3mUJKn/cuPqrRfW16XkjRZZdaWSvJyRcIYzj5Uk0zUa
         f8w1uAvxqB+iK6zIJkNfSgmCqnS5LQjRtyxgUn1dvUBQ1bR5cPfrdu4lnOVegv5X9nTI
         xx/Li3Z8mHwh0w+sXPgq80+gZgxf8U/TlqffsZ854pRYNQzvBqCUR0wGEd8AHprtQOwF
         SUqpYiudnDGPz0ccD+n+USk4PDgK7eWPzBjqdeytQRimjvALbYwLaz55ck/qKwQo12/D
         9lPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766687769; x=1767292569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7JUOyMg8Or8uhrVC4CD+kMcOGeXL28oIZJIkKzR4J1E=;
        b=Eb1Mp5nuDo/4P3cKLjQasG9dbwMRjE6n4UtUWCQUIkUcrn5wWs+GY9JrdNdrKaVYY/
         AXg0YLooCGe7jC3Rdch/LfxEfx4+Fl+rsqEdbY8N/TUH3Ubsjps/KWw0JbpW+DqK6IHE
         lwJtm4haoCyFMybhzQDgOFIx1tGSvPb4yI3tDiA9mHqL4HI1/jXuPVWz8NdhZ9jbQi/0
         MXx2fPsrvUndBSOkXh2EmD1Jae3sAa8GCM4aFtXdw1/rcrFgtODblv2Qs1D9iDABWRUz
         M2y9yjPpL5hQ+0eZsO+d1CgIDlmgKjwgZq+koC0l7pe7vH57Ky3LUx63KWhm8rYAaJD6
         SlpA==
X-Gm-Message-State: AOJu0YzsnsYL2F0TSEtcICpR7zX2CwQQXQKqJ+hfWDAbUnREInoIFJjR
	J0lOFcqgBEeTN8oV7DCYiYV0fxtDfSJM9t3+4USsyn5HY2q/e0xaR8BP
X-Gm-Gg: AY/fxX4Z4Ok8LRj4bYYngI3smHLUWDYgdL37yC6tcin2mgZZHw0+ejpxtRcGF4PTP57
	tI/LJ0PK+fqFV8cRJXrBOpERuRvfrS805lFpX3UTEiKEfN+AVTXPchOoKMZaZ9re+mxxxjnL2Yn
	252NV5fg6rC/idcKOPpThFV5o6v1ev94pLTOY422gXAvmF111Q3M/0BPTEYvIBlhzUpSRJzgTCj
	Kh7NmKtmN/PkGSG+j2/plEmAAdvNogse7y8a99IjRMIPPS159nIqvRyVRaeZApo/zvqMLlV/HLr
	qaLxDnBoIjpLOZdM4Kg54VKoCozM9mPx+xAVious20j/lrABEralpljYNPBDAKY9aJeVB5NZYnn
	XLWlSS8JlOcTE372O0ZCXM7h2StN0vTXpl+r/wDArsbQRxcODUrggqq5jYu3KAEhNncJNAUbU2F
	5x8k/Pwdy9kAwMmZoPuDiU3N08HxJ6EUHi9W44TZvBTn8=
X-Google-Smtp-Source: AGHT+IHEIjHpbPASvhXMCNryNTALHso5yEhVN2Zt1Wti83jtrsqyLd89aktdU3iFdV+yBgA6+HZu7g==
X-Received: by 2002:a17:906:d54d:b0:b83:1400:482c with SMTP id a640c23a62f3a-b8314005538mr450270266b.64.1766687769040;
        Thu, 25 Dec 2025 10:36:09 -0800 (PST)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad806asm2154858066b.23.2025.12.25.10.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 10:36:08 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Linus Walleij <linusw@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-gpio@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 2/4] dt-bindings: pinctrl: sunxi: Allow pinmux sub-pattern with
 leading numbers
Date: Thu, 25 Dec 2025 19:36:06 +0100
Message-ID: <5080862.31r3eYUQgx@jernej-laptop>
In-Reply-To: <20251225103616.3203473-3-wens@kernel.org>
References:
 <20251225103616.3203473-1-wens@kernel.org>
 <20251225103616.3203473-3-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 25. december 2025 ob 11:36:13 Srednjeevropski standardni =
=C4=8Das je Chen-Yu Tsai napisal(a):
> The pattern for pinmux node names is typically the peripheral name and
> instance number, followed by pingroup name if there are multiple options.
>=20
> Normally the instance number is directly appended to the peripheral
> name, like "mmc0" or "i2c2". But if the peripheral name ends with a
> number, then it becomes confusing.
>=20
> On the A20, the PS2 interface controller has two instances. This
> produces pinmux node names like "ps2-0-pins". Make the sub-pattern
> "[0-9]-" valid to fit this pattern. Avoid having to confusing "ps20-pins"
> name.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



