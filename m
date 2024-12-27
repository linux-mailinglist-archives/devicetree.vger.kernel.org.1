Return-Path: <devicetree+bounces-134281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A509FD1ED
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:23:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52B07161C27
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CB2114BF92;
	Fri, 27 Dec 2024 08:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xZt0ZrpH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF2B42070
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735287808; cv=none; b=b7v2fv7fMOLkFFcy+UbW8myoPpafBQkPCnMy0aS/ccbUcQdu6ofXOhILcQ+l1KpQrCtJYLHpoPHqFYpEx7g5I6zWRlMa6CmgDJT8S12QjM3pDkMGf65hc8fmGE5o6xqMPkXNkfxRBcOuo5UPuh+aA7G8Vph93wlFbeDRhw/Jd8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735287808; c=relaxed/simple;
	bh=oXzi3CC+CiXNTQ5UNVpJvFDoaeyxklmAi50O6y7h7oI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QpnEVSDDLoaVI+uCLBGxxPhrTy0DGwagzVVHZgCBECcvjQT8d7J50cmgZbYrV50a9MDYbXT9zvxyUTavBfP7ggXnT5VTcN5W8NERDJ2YvI6h90DcPprtzpXJzNmyvzUYLFruFb3cJV7HYEtGg9DF1fqRjZDqkEFvnRuNOEMah9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xZt0ZrpH; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53e389d8dc7so7589333e87.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 00:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735287805; x=1735892605; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dVcsrmKwkxIKz+eCCIw3WHKCv/X66XMcWh6vJ2SRqGw=;
        b=xZt0ZrpHUZ6pUtSXDvpRwUu2J6ndKosPTDFYXeN+XszKw3d34ftrk9z8sC412Fu3RA
         +iuFzda/orjO2NnVZY+q/kRUGIkbKUK75U3iArtNXciEzpCwfpkg4pGg98MaZui2LqZa
         y729LCC1wQS+A1ONmw1A09b3nI2b64EmSfACLRiTR979PngOmmqsSLh6N6xv2GG8CQvT
         4v5fs/H6J4MpXOGmQvG6fIMmtX9Ga4XO8a+OzMbgfrL2JDJ68HBxwKNHUlXRllLpKi0d
         06n6mgJBFI0tBnFrPkmDYCIf9ROsb3/ADoZ2pVWqZwstIHT9kqF72SSVeA/UpBpjULP5
         +rew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735287805; x=1735892605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dVcsrmKwkxIKz+eCCIw3WHKCv/X66XMcWh6vJ2SRqGw=;
        b=XjnYULXFnH+SqnfWV2SYCVPX+2zRj9kKkH5hOOeKjcM/ryS3Q9LQ4pQksUwGPqfDOx
         x0/o/lXwz8Il6p7EL/ucBrF1knYU4/F1w+7aRxNRdMEsl9vtxRegSlrYPWf53XtJvACz
         xdnbkx/McyU5ZV/cslsxSQjXHmLLUuKPP303CApJCWc3VcoZBvanYgdOLmEkkcyhXZ+P
         bbhuGSWnOXc4zI/cEFDYIKaar9Y0zVNX4yF+/ZPCfoDmbzD3TQu/ZrGkc8UMjDZrGp8O
         wrFkXEr2HWPP0uo28VwDwLil/bTAmr6lTZ13/e5otiz/2xkst8FaPoYItCHnKisSnGa0
         m7hQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEie983Nl49XTDKwIt+g8WcArohw7lxqtWN5qhDOU4cmxh5NNxdM55exzIFzG83e5y9DP6bR5nwYq4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb8oh3/fsgcF8x50YDUzQBjTdkqLqjKAKIG3uLLoU0kLt75WmJ
	I4RP6Ho8IaQG9ZCqFSK+VS1bWmIReWymrKkxQC+1c+G0p3hPGsDrhllfz214VkvWrVYiUurS6yb
	kvhpfq8aBLETcickkgPL4+RODCNkhqnJRa1S9Aw==
X-Gm-Gg: ASbGncuf6iZLXz8IY8zAJ+nSukjG7EweklA9WeguNhxxXgoszNXa9Y6m7U8xEpwwX3M
	RUnlW+sbSMRepb81bw8oWCz245+Sqjf5tJxKL
X-Google-Smtp-Source: AGHT+IFYIOklSZ9sJMM5TQ3zMjDwQ23DBG0sFeGBh5tQkGSxcVbvZSf9AiFrryAVoUGw4Nv3w5+5ALeURj3MiEoam9I=
X-Received: by 2002:a05:6512:1283:b0:53e:2f9d:6a7a with SMTP id
 2adb3069b0e04-54229562a50mr6753089e87.46.1735287805076; Fri, 27 Dec 2024
 00:23:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217085435.9586-1-linux@fw-web.de>
In-Reply-To: <20241217085435.9586-1-linux@fw-web.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 09:23:13 +0100
Message-ID: <CACRpkdakCrw3v=iEq_chxxhcEaUipqhyPA2GDZ9gp3tMTbuWBg@mail.gmail.com>
Subject: Re: [PATCH v7 0/5] Add pinctrl support for mt7988
To: Frank Wunderlich <linux@fw-web.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sean Wang <sean.wang@kernel.org>, 
	Frank Wunderlich <frank-w@public-files.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2024 at 9:54=E2=80=AFAM Frank Wunderlich <linux@fw-web.de> =
wrote:

> This series adds pinctrl driver, dt-bindings and dts node for pinctrl
> on mediatek mt7988 SoC.
(...)
> Daniel Golle (2):
>   pinctrl: mediatek: add support for MTK_PULL_PD_TYPE
>   pinctrl: mediatek: add MT7988 pinctrl driver
>
> Frank Wunderlich (3):
>   dt-bindings: pinctrl: add binding for MT7988 SoC

These three patches applied to the pin control tree,
please funnel the last two patches through the SoC tree.

Yours,
Linus Walleij

