Return-Path: <devicetree+bounces-246090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCB1CB88A2
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 10:56:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99E1B300E3EF
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 09:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC54315D32;
	Fri, 12 Dec 2025 09:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YSwGgriF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F64F2C0F6C
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 09:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765533281; cv=none; b=O0GFjvXuQaSLhbg0hKoXSGo7Wy7L1akdjWNOCWMG7FlFJSX+mAZSaEkr9XcqTUd5Kq+w5kCA7fZ4JJzoCVybBDIzBHvPlMhL4FsjNNUOk5ggK4PAe05pq/gSslITRyr2sy5pifLC2dGuWZGXO6ebPr4a3TagMYq5EhAbouKlLRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765533281; c=relaxed/simple;
	bh=HqEG+nZ1xiQN6AJIt2dnnJZEHC10sC0sNx6sFrPvEsY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jx2fZjTJz/5D1veYqL3eFaTF3EuaLFpGX5HMzGw4JAepX01ihZsrZ7/KXWN/0gPHzgrPAqmllpvT/tjG+B6nW0I1N4ncwKX0rkcJrWsYEtEFHw/blDlanLMI/NpNCPuI/pypDBQlCR7f8DA3snDyvELSPAozCQMpJOJ72MrBT70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YSwGgriF; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-bc29d64b39dso648168a12.3
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 01:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765533279; x=1766138079; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqEG+nZ1xiQN6AJIt2dnnJZEHC10sC0sNx6sFrPvEsY=;
        b=YSwGgriFUd3pqrIVxo6m2Pt1lW//fJ6F8ZHcPk+vJrsPLd/vBhpYOx1ybwGzO61M8y
         Wkhoa4ZS9zu3GoqrSVfj2VFXjC4mFkOle+UmGfCB6XyFvNyxIVcekLtsjl8ltEx1IdQG
         iUyTR4qaec47+goGP9mGHHtJiJWclucIDnyG9dVWVIxed5CH/DMRrAaTb7o01AInXEXk
         LfQL7BFkffTsOS+o1y6xZEpWNmThW21Af5Nb5VM3V6Holp1mO/9BSF5ImRcgzKnZOIr1
         cqtnnNf3ZIW/VXyA7vohCixjW2HQkX30p3RI3ZvCAXuqpzh2qQPkkfAAZa/UQnQy+7zR
         aDAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765533279; x=1766138079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HqEG+nZ1xiQN6AJIt2dnnJZEHC10sC0sNx6sFrPvEsY=;
        b=cZ4rC7kNrbFIcJ4kpdUKiuhIbHWKre0OLdmK3NhK530nqF/sG9IoR3O0pO+Ok9rXGy
         J3iU7ksHnvzzvHSkj0njTAnrhwpnlShFcpOUBewpqnOfb985SsoZ9vdLy3Qzve6wWvVy
         QwZL/XG+QvJM3jqcmjACN5xOOoXNOBxYAnBICNPoUEFmgMSjO0wCLmDR+D1ri42926zI
         XHToqJsGd5f06Ok4zNc5ETZmz5uHX2LLR9f5JR+Um/dGLKamEaK6kc1IdcqyxoljZT17
         E8tcDMg9tsHaCFNeOxvypqXACrYBnvvGElu3Qf7W2G0FcjF9RRDOidYvH7aXgPKA1Fdy
         1TqA==
X-Forwarded-Encrypted: i=1; AJvYcCWkZ5sqwO7i6RVK7AmTznfm6SyX9icuxN1ukkvifN7pHu0GjiqA4xJ2WiUVgA1wyMCXpbbc+tg8xmDU@vger.kernel.org
X-Gm-Message-State: AOJu0YySEiwj9WSIOAJCE5vHe25spBH3UfNsgRTdtzwgXD8iRnqo5n2m
	yIM2QciO7YfaF5KoHlAvixH5zLKiKICzjE9mHm+tMwlJGCBuuaTM7TKeLVednOu3D1wqUU7wRJc
	8eUdc/6JNgGrZ1/DHYRYlJ0AkjdY5xec=
X-Gm-Gg: AY/fxX67q5X1oY065T9zq0RMqaQFEtza+m1lM3/XG8mLBCMZi62VCG2RG4pSAHOh32j
	ipqSVRap5l3cyPbsEuXa105NADxVlcTUItr6lIdTMp2BCevIdL7v+3FdNyM1jHZWNdBkPLx6uIw
	HIed3F4FGFuvmJ4fY93prmE/NYboMK1GB43nzZr7DHD6/k53uajIIjSCSGmcvI+8xymihzmmwTx
	L0ZU4N4tGqL5cunHxyDTspsOuwkRmicCPXCJGPs85zpZrufO/HJMtf1IlN7JuLtmUHmoAFQOevf
	gYAvCbVt9Ej3L4wRubeA8fhtEt76OKbkpeFfTekfCOb1Sjr3iFsK0Qz3mvD4bxuRVVyoY8kNKis
	9g+TWp6d59NHmHcLtRsSt
X-Google-Smtp-Source: AGHT+IEa+DSQ1zpDC60+Pq9ToEAnCi93aMl+ozGf04DIAogSjg2j0+bhkGR63QOLDEz4eUMryYb2KSl+0LAa0pnns/8=
X-Received: by 2002:a05:7301:2e98:b0:2ac:2e93:29aa with SMTP id
 5a478bee46e88-2ac30106a4dmr1262862eec.28.1765533279469; Fri, 12 Dec 2025
 01:54:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251212-imx91_frdm-v2-0-4dd6d289e81d@nxp.com> <20251212-imx91_frdm-v2-1-4dd6d289e81d@nxp.com>
In-Reply-To: <20251212-imx91_frdm-v2-1-4dd6d289e81d@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 12 Dec 2025 11:57:12 +0200
X-Gm-Features: AQt7F2qmUYq7fmLxWwsl-gTOGPlSokMij1R92_1CGnoPcAOo-CVttUkZ8C_47Hk
Message-ID: <CAEnQRZB7BtSu2ec4wh0353MYkwgzbpQxD7qa0r6NC_kf+hRfKg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: imx Add FRDM-IMX91 board
To: Joseph Guo <qijian.guo@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Justin Jiang <justin.jiang@nxp.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, qijian.guo@oss.nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 12, 2025 at 4:32=E2=80=AFAM Joseph Guo <qijian.guo@nxp.com> wro=
te:
>
> Add the board FRDM-IMX91 in the binding document.
>
> Signed-off-by: Joseph Guo <qijian.guo@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

