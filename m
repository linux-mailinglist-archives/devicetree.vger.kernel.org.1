Return-Path: <devicetree+bounces-277569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2C1MOiqCu2mOlAIAu9opvQ
	(envelope-from <devicetree+bounces-277569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:57:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 674382C612A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:57:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7045630263C8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CAE9346E72;
	Thu, 19 Mar 2026 04:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="c5cW3sJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4623C311583
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773896227; cv=pass; b=ThdO/mDqfIBp63BX/elOx1QbJpDYeXgNx94pPqHHSDYQBngoDNNWS9FXT7C0F+gsvgNPH5nQXaEaWPLSPg+tr1I848NhoOo9HLwT5RFqlVzlDGWpMeXHDnX0onB0hhe+rkueg4981sjs6v/A6RngwuIjY/dEAL8GuX4GzxETr9U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773896227; c=relaxed/simple;
	bh=RJ3zkOU7L58sRoFvbytTBsvFQBnd1tM3hTUu3UJnWbs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BQjpQZ0grPG6FCugBu7ebE6tu68CmPOHB5JNSxZ9e0n/uGDdMfIhH+7IhilIOHlbjOPp7s547h4g+mjyhDiTPTeIH6EXMVvEazJbvW20/L7/H5GtpMTbzhhzFYIHyvPE/E6i1AglwreoNpRXWjR/Wl4/ggWR6pu5bbXOcX9qKbg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=c5cW3sJa; arc=pass smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5a12cd0bd79so527753e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:57:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773896223; cv=none;
        d=google.com; s=arc-20240605;
        b=BZhcAqN6OWdUbww3YtLhTdWlNcqCYZFfQjHaIyQRR3mu3Pq5MvXIn/CYUFkqYzuXaz
         76ojkyO30qXVvPJm4uF6wqMdhCuXI8olNBqNj7zCtnc7V/XmKGQkAraQqjdpuhHWRGGt
         DtuqmgH1o78ewEjxNr3nUeNXpxQky/7tDw4g999/fZaFnZgB5RV7IfN0aE0cVcLs+EQb
         SDXmMq2ehS/LPJmBktWrR0KRsyw8W/N0OEz691MY+n2zB0yr/izvZOnNKVa247lE6RNe
         DRCtGUmGUNu+JNAufNqaYHoDWSYYejJtFX5H3+tS+MErR9GS+/Ogpj7YU9dLF6q0CFw5
         4X1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1zufBE/wG0H/dPy5NtwxW5QdocP2uRSfDHkfDw+3Fq4=;
        fh=0iKM7Qu173Mv95D8MubtqndVunJlhmxufglmBYlY8GE=;
        b=gYtVSIU4HrEyytETv/RGnOtzCa9ilgD6/lCrk03KdccnBYymB+m/7VtPm7Qpbcrbfw
         SiN5P4SsyLpw7NOxNT0gPTPyQpxLJA11F+jltuZlD8E10LejyyLCfpHmvFPWQLeC/bui
         ZjZX8HP5fpgUeYBZdUffpWB67Lima3GGSjkoZHAVgdvb9Mqg7Xuc3cUuodgHSnAXc8P8
         aCLHH8F1/Pc6hC1HSUkKmee3oNYJJohvT2oQVG/AWzwGOf/FO4oJiSlrILn8/r+bbWsH
         KoWzov9ylrhX+e4WGxWbkvWQ08oluGCy7uxkP1nI/ox8QNgFFLMU9nSpl7Ius/a9VGz4
         GBUQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773896223; x=1774501023; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1zufBE/wG0H/dPy5NtwxW5QdocP2uRSfDHkfDw+3Fq4=;
        b=c5cW3sJap+sGtxnrhL3MefVSVt+9F1u6gmHQ7cPndo0veI049W9uS4/57N0ivvWF+M
         OlIh1AyxOkI50DGrbjl28V7X+2kaxXSaAuwpZL+46FIwvRdLOzvs6f1yEiL98ZE84jiJ
         UN4ceoFLzm8NvOP2yD0hwEKGqQngNx6q2b5sA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773896223; x=1774501023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1zufBE/wG0H/dPy5NtwxW5QdocP2uRSfDHkfDw+3Fq4=;
        b=l4UmIPEyiXdrtJsBrWm4cRBGLnBgqllU2PDNIM4BjKZQdL0Btf3/pFe8dRs0KPpzfJ
         JWDNWj1thkzx1sMc/s+iDbMgHBTb8Lmj8i1FSYCilKfE9PIslrir/BDEQdNoC/C0dJ/1
         jHc4/JcD0C+2RPzqGk+3OsMhX353fXII/Su02V3wbWZFQ9xeJwTKC3MkT/bCwPHxlYJ1
         JKMpR5Z3AlUJO1S3kCaFvWt4DCCHwdSuGOZOZG2aemilwlBBYpGuExOz1lRxGKW/p3Oh
         elkQMVwKV3kSaMIRpG8GkIwrL0LTatme6Yek3IM2l3uOteP56pLdu4lMe1WWL16pkEWy
         jxcA==
X-Forwarded-Encrypted: i=1; AJvYcCXAfYHISF9blddXPJ6PPozhj45vVzal+Fcx3cExkE8YVTFSXt5wBCOe1RD+f3wSOu7bEAQGxwIuhdOt@vger.kernel.org
X-Gm-Message-State: AOJu0YxtGs0W2SB69Dw8DbKonG8RcFTvt7WHtFYzv+nQTB/78/kydZSS
	cwy6PNhWLc469jxo6lek95RSzwikWCMB9C0JyLrSJsXbYt7B/Tpihh31Tl5wuoTFDzNjeEGhwMU
	Pmy5PMPxE0p8H5eFXV1fgOGnq9vOh1zyvy/NK82Jt
X-Gm-Gg: ATEYQzxyPrEj8zn1XPI8c3/BMd7jlFILRAgWh8cvMbx7QC/aYd3TnUP3TwC7WJZiEEQ
	0Gfog+SU2G3JrOomBOGsHO3zd3hNYqNxkm+e92NF+vT3RyOV+XgAWYBnk1z7oARKjmKjLpxHfhk
	/SgtdtUEFjJY2t3yALuBZbv4CxwueRzmL84fMzsU4kp6vkGGLeUSB8wg/RptvC23fEhHL22ot1X
	ae+BdlzMBq3YiPkeCuYwMqVH9+8GOqxYgaX2ooA35XyWpxTsjZ55Lk1o5yhhIrTjGxBEvNwlTXf
	yJitYKZuT+WSwKONQm0SJQoHHEKAqW38xgNBLw==
X-Received: by 2002:a05:6512:1598:b0:5a1:3561:de7d with SMTP id
 2adb3069b0e04-5a2796bae61mr2319165e87.41.1773896223417; Wed, 18 Mar 2026
 21:57:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317184507.523060-1-l.scorcia@gmail.com> <20260317184507.523060-4-l.scorcia@gmail.com>
In-Reply-To: <20260317184507.523060-4-l.scorcia@gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 19 Mar 2026 12:56:52 +0800
X-Gm-Features: AaiRm53ZcC1_5GBB68m3xy0r3oGl-8GEHHuCoUTvKM9klv1nQiqkqQTd8EeYleI
Message-ID: <CAGXv+5Hz6JHBTX1ftxRuD0pJuhxGJnAkGUO7=kUh3fErOLtXTg@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] dt-bindings: regulator: Document MediaTek MT6392
 PMIC Regulators
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sen Chu <sen.chu@mediatek.com>, 
	Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, 
	Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Linus Walleij <linusw@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Julien Massot <julien.massot@collabora.com>, Gary Bisson <bisson.gary@gmail.com>, 
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, Val Packett <val@packett.cool>, 
	Fabien Parent <parent.f@gmail.com>, Chen Zhong <chen.zhong@mediatek.com>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com,kernel.org,mediatek.com,collabora.com,packett.cool,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-0.981];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,devicetree.org:url,chromium.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 674382C612A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 2:46=E2=80=AFAM Luca Leonardo Scorcia
<l.scorcia@gmail.com> wrote:
>
> Add bindings for the regulators found in the MediaTek MT6392 PMIC,
> usually found in board designs using the MediaTek MT8516/MT8167 SoCs.
>
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>  .../regulator/mediatek,mt6392-regulator.yaml  | 318 ++++++++++++++++++
>  .../regulator/mediatek,mt6392-regulator.h     |  24 ++
>  2 files changed, 342 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,=
mt6392-regulator.yaml
>  create mode 100644 include/dt-bindings/regulator/mediatek,mt6392-regulat=
or.h
>
> diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6392-=
regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt639=
2-regulator.yaml
> new file mode 100644
> index 000000000000..fa4aad2dcbe8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6392-regulat=
or.yaml
> @@ -0,0 +1,318 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/mediatek,mt6392-regulator.y=
aml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek MT6392 Regulator
> +
> +description:
> +  Regulator node of the PMIC. This node should under the PMIC's device n=
ode.
> +  All voltage regulators provided by the PMIC are described as sub-nodes=
 of
> +  this node.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: mediatek,mt6392-regulator

Please add the various supply rails. This allows you to properly describe
regulator dependencies and have a complete power supply tree.

They can be found in the datasheet.


ChenYu

