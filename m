Return-Path: <devicetree+bounces-236940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9DFC49932
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 23:32:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 95D6F4F2986
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 22:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C30373019CE;
	Mon, 10 Nov 2025 22:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NGE+TXPc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C072F659C
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 22:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762813507; cv=none; b=QgnEaHne8g3gZwIUXjTFojOvdd2umF6aAP7M/1zgazpMRgDB9+1E/Pjhf0O8fxs35Q9Za0pnl/G6fge3fXq59otix6BXi1hA39gLCjjdj/mqwNuyFZbzohws2Hc8hfKtkbaIEUeoB3tpofH5eJkBsB95cqjGd7etLCX4vMJvSOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762813507; c=relaxed/simple;
	bh=lbYOlnC3WJYLBwDfb+oYRZV/rKekA5V2jSftip3URFc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mUbuuhCTkSnBvK2Ur/miLbxlnPpb+8FDwAdLKIzq++43kZFdsgqXt0vvze1/5mBVKGJywf796NFA1XNuLjlk1HyFFUiKATdyF99AWEvDGqus5DFM0kRIeBx/wOg6x+GN3GFOdFLRV7OCuCOdGFkvDQb6Hf/5+2qhLr7kOExRtJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NGE+TXPc; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5943b7bdc37so214719e87.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762813504; x=1763418304; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tkykz3S1CyycQbNzf0lzIqKhpFUnZB571m9tUf64HTs=;
        b=NGE+TXPct30zyW7TAFUMXCRFW+JBU/5Nyd1usdotgrc/8g+kkFwv2wiOsh2VzadjtC
         IDDhl69dnhFVPXphMxO6/Tat1Rj4WeqmvZeGSI/uf7G+hC1+rvp2RxzupvSVwLpnUXvr
         xvqKv0ESYra6Unt5AzLLFRP7NHM/jJ49ko7VJSvn7x0+fONODNhOuxz8W57JpVLfxCpA
         CdPukyJyGqqDzyjowjqJG5d8Sk5wIN7RmVi/6nxBrHkbHd1wnWMEQG8EVrEZaJFAvW5U
         MrC2T4tVAoqU8DPGJqtaJ3O8NWIIJ0p8E91j6Unn8vLNRBWtrVQ5GZOfk6kEbDvKAUx/
         nQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762813504; x=1763418304;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tkykz3S1CyycQbNzf0lzIqKhpFUnZB571m9tUf64HTs=;
        b=i1YtFoUehdUj8TOVY/WHC/WJSzJPlpQY9sip6tW6sNCycC7ppkIr8F3g/xJAtfosdy
         O3Y2oqMS7F+KuKcmVSLgcv91mELPiYOtjHhGs0SBuoB3/VhxojuP3l0VvlAtdOWKzZl6
         B0NSiAwGdrraUcbhM4SWFih1bRdFjULrflhJ6Coov2bZJkYGoSJ0JkZukR74iFb6MKrt
         713fLPYnLy8PLOs+zKlH/6BsF7/LoITs1NiZciyPOHe59vIx9udRVDuY9XxCyc7jG8pX
         8ni/LbSt2nPXFPftU28cJEI6l+1mXrGZoxj7gI8kGPLHf64dJigQNPbnKh2W8/qDPRrh
         SSJg==
X-Forwarded-Encrypted: i=1; AJvYcCU1Ek487S6YwpigSQKH/Y/5XvL/f6ujEJqU2IuRGnIZapYlpMSDuSWzbt+8KfyBeiAqKOHczga9bP+H@vger.kernel.org
X-Gm-Message-State: AOJu0YzmEPS3XCdNBR1sxlNwlqGF3CrL30m9/MWb0TKYMe6CpC1P1fYU
	KVw5p1GafO5uDYm73mNoWEFYQL3dRT//77X0O+H8QJaoAH57DABakIc2jVl2oWVi92koM6O796A
	v8kjzGUJiBLs9GPUG/YnCFIy60RvLKatozMTuUsr3gg==
X-Gm-Gg: ASbGncvowof+vwaMQhRCZq3QGBvpMxo/D7093DGFYsS4Ej9FHZXDvMqTMeccIaBBgt6
	ofHdcfoQYFdEjmBkqM+ZCtzrCoviJqZlUurNruSRhiL8ikW0CVoiesWW5+i0pghqM6GqDr27sjV
	WekSzYNJp+eXmCpC2Im2aKwL+sDgx/Ezs/6F3LLz5PufEzchnREMnejE8MZ5k+lf09dKik46hWD
	7bBPUGOi6n+QJipZax1HKE+2wX6+udrOZTp2Gz5h0wrUTK6JLRcUwxO3Kg4
X-Google-Smtp-Source: AGHT+IH/bobBHFWFdtH9zZZK7pDa53PdeYG6iIiYCN8HDJy4OkCpiUpXjuiD4ZHFmsvNrZImVkrpEn3cIhnyZOsajDU=
X-Received: by 2002:a05:6512:3408:b0:594:2c42:abd4 with SMTP id
 2adb3069b0e04-594745a4d40mr256456e87.5.1762813504005; Mon, 10 Nov 2025
 14:25:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251104021223.2375116-1-ye.zhang@rock-chips.com>
In-Reply-To: <20251104021223.2375116-1-ye.zhang@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Nov 2025 23:24:52 +0100
X-Gm-Features: AWmQ_bnqL4tp4-XtSfjpF2SJDcbcu-l1tzSoL6TKzmSJf79bXaH7H2zLWLM2NeI
Message-ID: <CACRpkdaR=_K-hewNne2fPN=RKu7iyOe0gLYhMEBfQVvemJJuoQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] pinctrl: rockchip: Add RK3506 pinctrl support
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 4, 2025 at 3:12=E2=80=AFAM Ye Zhang <ye.zhang@rock-chips.com> w=
rote:

> This series adds pinctrl support for the Rockchip RK3506 SoC.
>
> The series includes:
> - RK3506 pinctrl driver implementation
> - RMIO (Rockchip Matrix I/O) support for RK3506
>
> Ye Zhang (3):
>   dt-bindings: pinctrl: Add rk3506 pinctrl support
>   pinctrl: rockchip: Add rk3506 pinctrl support

Since we have consensus on these two patches I applied them!

>   pinctrl: rockchip: add rk3506 rmio support

Now you only need to discuss this with Heiko and iterate it.

Yours,
Linus Walleij

