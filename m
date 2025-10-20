Return-Path: <devicetree+bounces-229097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CE1BF3A36
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 23:06:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FA8318C456F
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA27D2E1C4E;
	Mon, 20 Oct 2025 21:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OLF1VWJf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF4829ACD7
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 21:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760994368; cv=none; b=Okf7R6ZGU0LAFEZRFTxRI6FaCaU+gAzhVDfeSdiYUL52xoVrlU7ZIff2UGZ7u+1MZS6sX3umz7E6Duq63Qm53GZ/nbDH3gdi9LIIxnm4KxvvDYtQXBuu8Q+8Vtxqao3twN1CmTxRgcywmX0LGkdM2ySSwiD1MoBw1EQtQrZywLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760994368; c=relaxed/simple;
	bh=hJC6wrWvLGEYPpXdlMBPye+uWwg8bwB8IuKv8v2m3Qk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=miaTzy8sefDaScaZZQthuIfdJynKceREs74AvodveKpdfR0/lLURUEkLVQi6qTsadPi5Ey8LS8XVZB4cpWGGrBnxCuL6KQnm//73ZPgsPv4g9XDXo2cDaUWZfjIVVDYgoSDs4PphjUVhAgvjkZFtspWpHgfhrd3u7I9JRyI48u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OLF1VWJf; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-37777912136so46324161fa.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 14:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760994364; x=1761599164; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hJC6wrWvLGEYPpXdlMBPye+uWwg8bwB8IuKv8v2m3Qk=;
        b=OLF1VWJfDnwC/YPBamHdiFxfR8WzcWlIMRMW1Vl7B/Hj0gXcZl4Tp6fHYG2zHFDiR/
         7LOKyucrMXZtbuWazf4guz9tp7Mi1/+zL1u5JnvghuOZW7KVTE2tkQ2NZ4yTBRbLXr4D
         2ttZBdxHPRD7I6uOuHkX6UmhHL7hM0W54NUYUcSNw81qAI3DZ+wcz0fM4CvrZHbDl9w5
         o4WUZW5CnKitDcrNCnUOTlqrNsinWTBPoDXIZIMYiiBfnDqhfYxNXzXBkgm17wRERepk
         Pah9527G3PSNYEsYt+2XaWeKO5KN0F/i93QU/GzNnRh2uY9bH9iXnDRe6oiux/cuuhuM
         X59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760994364; x=1761599164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hJC6wrWvLGEYPpXdlMBPye+uWwg8bwB8IuKv8v2m3Qk=;
        b=HlEmyxfSnGIWr17s1FEDNT964BtWi6/hND100GwyMIatbHgKy6u8dHAyVrJ4xZaUXj
         l2fK9SXpdr9D3pY+2Apb5048l8S4Np5Y3GCxKkHfLy6oBXKFA1wrlZDft4Bh/XzuSJod
         9x1nZrdJSoie7MDhZUrm3nf/2RouhUVEANlqgZVN95p0/EGsFzUP2/h49wF9MRkPbr5H
         QUJRLYO1b7T23eHfyJgJgUloys1zVzuTgZKP2P280Djx10A2p9Z72zKPv3+qgz0DHI/s
         v99t7ssGpRo+HsedS1ajQWaVx9IDU4KTp/KA0fURLjpicY9k1ryOuXO6hp1vVDc+zC9d
         P2lg==
X-Forwarded-Encrypted: i=1; AJvYcCWm0U3udBC1esiIVcNo0RwQyTbKShAhBlNHzYquZMpGG87giqHH2mgYwRQlFA3Wi9hO9idspBR05m93@vger.kernel.org
X-Gm-Message-State: AOJu0YxXqeATPV8OMnCXjFdPYd/ImeZgM17cTftWiPkRs6WVJ0/HIzrR
	OJZdiQJ3qfwVBs1i7qbWe1HCpghPqBV2OwA5iKGSAj63vgkU3Qgf5qaVBNkY5k3sCyDSaDNVqvb
	l7h7Oy68WYQ4S/zbQ4C6CtSib2/kaa90C2BZDMoOTyA==
X-Gm-Gg: ASbGnct+NYnXYYLekjbrgYvSu0Me+T8DnCKX8fp1jiQjeafDyHWm/50mQisiD+jDYK8
	A8KrviRHVpixt8/e+NkUcyI295kgIwZUSKQtLRCQunv15o6XDZRbJBwfjji9SNDjCbtUZCSeP+E
	Cht4XX3HzHaczxHR1yPUSAj7EGr5pdRCUIIXhVmZ8eIMkz1+QiTcCnJD7AYKBAFUB7xOuyDhz/a
	yLvUBptvjpzjeVXBG4iCKqTsSBXfzLgAjD9NvrX9OLKP1drGjePc1SK1uOQpppqDMehD6Y=
X-Google-Smtp-Source: AGHT+IHqI5sn0aHZVxmgNoOeEHqPV/4OMj4aOHzfWKj6c+31WvQm9My5mBGOvht8/Q+3HwJ1qNC0mchFVak7q0/vhTw=
X-Received: by 2002:a2e:bc87:0:b0:372:8e46:3705 with SMTP id
 38308e7fff4ca-37797a8fa2amr46522241fa.44.1760994364136; Mon, 20 Oct 2025
 14:06:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014-retype-limit-e6cbe901aa07@spud>
In-Reply-To: <20251014-retype-limit-e6cbe901aa07@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Oct 2025 23:05:53 +0200
X-Gm-Features: AS18NWAM_KkQJcc4_uDxnZUaq6pPWmRrcpznRb0EhOrILJeBdRjz8Rzkex7daQs
Message-ID: <CACRpkdadawJmrED-dPpnm+MKD1ndt4V86GOebkiQzU=d+-vHjA@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] Microchip mpfs/pic64gx pinctrl
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 4:36=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> From: Conor Dooley <conor.dooley@microchip.com>

> Following from my RFC recently [0] I've got a v2 here that's implemented
> the change from using the pinmux property to using functions and groups
> that you asked for Linus.

Overall I'm very happy with what I see, I see there are some comments
and my only comment would be to add

depends on ARCH_MICROCHIP || COMPILE_TEST

on the drivers so they get some proper compile testing, and I expect
we can apply v3.

Yours,
Linus Walleij

