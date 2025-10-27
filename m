Return-Path: <devicetree+bounces-231791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59329C11A36
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36C9D3B2D35
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99869325495;
	Mon, 27 Oct 2025 22:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R/PNmNrw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFC331BCBC
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603144; cv=none; b=fbLGjgy4veff9G0CQVt8VCLMs6oSl0Y6mSqWthrxvFoG6jw1ylRqTegH4fLGvk1/qMuWbp1KcTBG4TlAFo+w7x2s89ZZAuSu+wzKbJkxxMgbvMRPxUdQtmiBYbSQ9bBU9omO+huyQdusUhX3AS0L+MO2gTx3oDG38ZV+dWwYPus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603144; c=relaxed/simple;
	bh=dbID/UypVjLamN/9qIMtqE5/TU0mKMuAEmRWZAcTIbQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nI2ald0sf4UD7s8LlQzL6A3y0McKyJP1eaFSzyYp3iR6QLFgLHAcOTn+dVFlCXH6QdzTxqHi8eF75dIYS7iv1Qu+bIK+9EAbsVVIYkNK6uKQ8If2X8B27JF7lFHWMvbEz4vfufO6vLvmBuBaQAXFWmTaC42c/tkxCDcx3NvoCnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R/PNmNrw; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-378ddffb497so49277101fa.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603141; x=1762207941; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rva8eNp25Ue0gQsDBJs+PbWTXuUBcdKNczWyrciaM/c=;
        b=R/PNmNrwBK1bFfngf5QXqobXJR9n6dw4a4NONF2lvz6lpQJ3YBASBjvHUNbWv9KhdF
         hSqfxnaOSxI4eBqIszhvmGj/fzviohFUpf4NRBQYjzdFnf2t5eUiEdYMi03JPG6rMYe9
         gLCMXZ5l0+wtX71OHCFjSJuYj69Jagam/qc7Xd6K6rgrOb3Tw+UwW6LoieoVWQusct8l
         PcNZZGHqhCULFHydpPeidwoWPUFnFTj1toHh65778SM+rvou7z8I59wF9IA/4McYviJI
         rM/30wjgGit3MIM1kRBoPTNAVhKYuGZWDovNUD3APA6k2CcGVIgLAkz7Laxrg8E7hDlj
         Q9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603141; x=1762207941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rva8eNp25Ue0gQsDBJs+PbWTXuUBcdKNczWyrciaM/c=;
        b=tA4NV7cIVBgt15WhlzHsM5FhF20bJgO9+HyTa6TXiVIwAx2jfgQYAQsSSwkmtOUBLg
         irRr3+a+y1B94FyvHC9BxjHLLM7VmxqirEPq2iC8WvSGmW0jUU1jf8r7K5YLs5cjxSbe
         bI4NhbGClIgZcM7jREgEkM9lvSGBqRhMsGAVKShpriirImSobrtUUdSsFfLjRD1VWLEq
         Xc8zAv9QIQGj5DTNBcXg01NRU74d+JlvMa/gDUbUczuyWDaWJdci3zZNdZGeULGtV4Hy
         Zi03B9e44IynlwBgxwVjAVeOFegZyPYiricFuqcyJoc5m21Wuo0OcJLmxu4moe7xf+VD
         ObOA==
X-Forwarded-Encrypted: i=1; AJvYcCUdR7uvp9+5d36zl2uFQ07YQzb39rp5tHzHmp19HrP4dFC6FKmQX6ehBCVlf7DkiAUZpa7OSFTqC+SG@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5y+321x+WbcD6FoJG2xTEFkBSCqEBFVz1kCNQfDGD2j94Dd2M
	S9xqhVIl43LGB8arCys0c2fuYHEBD9hMHXDz5ZmeRhKgibkWCMb+n9FhmHmSSIgIOn6ydVbRIAm
	w63J5HjZZfeOve2s2mfZw6QR/87jXzC0s/YGXaadbcg==
X-Gm-Gg: ASbGnctV9yt+rV4doZ94LPWCnDr5pX4Cng5E8J03yWG4Xnltswg7BxCgszbH7BcTbG/
	s1DsdsVG006bXtxv4rg2VtA161vUduPfA5mYRZAaL+xpP8pEeOLqX7mIf9Jm8/OcOpFKSbfOtxo
	QKOdQqzn2MVYbqip7u4H1KNxHI25xnQaDXMOXO7ypHZYMsLZEmCPjlBUjw4owT/WzH8HZQVrvEu
	/6kNiZO/xRXZY8GB0ubtUr7gWIebh1k8sdajm+3HsdhHWkn6PALE/gTpXFS
X-Google-Smtp-Source: AGHT+IH9m/NbKfDEBOg7KAI9hfdkDs7TGJGbF3wUoHtsDaxpc5srcl1X8uRL0I9IzeShm5L96wIBCgrx2J3l4dX7aIw=
X-Received: by 2002:a05:651c:1b05:b0:379:348:80da with SMTP id
 38308e7fff4ca-379076be2ebmr3767231fa.8.1761603140859; Mon, 27 Oct 2025
 15:12:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-6-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-6-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:12:09 +0100
X-Gm-Features: AWmQ_bk9gp6HQ-6BpDwN-PY0mSBFQkGGnyA4wpSZIs-jczVxX4VZCaFGaKlsqZw
Message-ID: <CACRpkdZK9L9q_zLZVc9JLmJ=XPWFBrKgk_3bLxxpCFvRCJr9-g@mail.gmail.com>
Subject: Re: [PATCH v4 05/12] pinctrl: stm32: Rework stm32_pconf_parse_conf()
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 3:27=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Reduce the number of parameters of the function by moving inside
> the function the decoding of the field 'config'.
>
> While there:
> - change the type of 'param' to 'unsigned int' to handle the extra
>   values not in 'enum pin_config_param';
> - change the type of 'arg' to 'u32' to avoid additional conversions
>   and align to 'u32' the corresponding param of __stm32_gpio_set().
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

Yours,
Linus Walleij

