Return-Path: <devicetree+bounces-231789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6E4C11A03
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:11:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9EC364E6B71
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0706131BCBC;
	Mon, 27 Oct 2025 22:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xSoM4J4R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A412D94A3
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603064; cv=none; b=LhMvLr4zjnUDlvXv4BouR4iEY8gUAn4ViuIJHhhpbh1aZG1+EQEwOWF+bB/PrIeFAcjvP9cspNOVDj9Z9a3Fpr/310fjbI3c3Ojbb4/6IcsaLMbMbTr/KnlV4L30ZCIRQVmRVU2CnMZiGY2nogmxvmG8TIK+ogWdBKAXYucs0kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603064; c=relaxed/simple;
	bh=v9H38XxmVOscTdAXBIMgyb10vFFsNxVOxLuwwMxDzMg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qOthykNJiPgyVmdIfI7cD9iHMNB5e0McdbY7cpANTerHjS2VT5KvWdzgBWsgblflIXzpaGqeBmApjUzLBtqnmrzQ/cYCgEksTxGgQoELtMavL3obS2QK3axBSX+BdzlHb/g2uCTeHhdTr3SelR8CS2AmknWtPeMb2DlCVTxRn+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xSoM4J4R; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-378d65d8184so83421461fa.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603061; x=1762207861; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v9H38XxmVOscTdAXBIMgyb10vFFsNxVOxLuwwMxDzMg=;
        b=xSoM4J4RpfdRV/WtHwRQcV2fC0k4PmVf2cXIk9Lnd6oGbNYeBoCxBIFYiuXwUrhKrJ
         iMspsjtzu4jFF2tLOGjB4zKmL+MfgKL7HUifLb3Z+tdl6CeXeCIZDbI4HL36mwB1L8rp
         cKDqcTXan3XGTpVADqw7+MqNXxaYR9kwsUwp/n06zRZtBWszcUzVuGDVuMpmm5Gxcg9b
         rV5j5AFJWPOeTFGhLGNxJx2E2wg91ALFCsc+KmY47LfwWOIyhJpsKIJHlmq2X6STRbwP
         ZMPl16OPrm1StX4rupCtU8GM7r6zK7YfpcgDtFxZDpAkhrtO2hZoHidSbUtabtm2sfmG
         FLlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603061; x=1762207861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v9H38XxmVOscTdAXBIMgyb10vFFsNxVOxLuwwMxDzMg=;
        b=qiZG9Heb3Cm/nHUvNri9cr6ZX11LHIyBJ7OW4yz/iogrCJkTnE9n9wcrEDzA0GgOUS
         SrBBQ2si6PqTCbffRrGFvmUR4zHGnA6Z/mgWiOGGtVKzxskWREU12lRtFgRwO4uzrqdN
         /RjuJEXmINH+OR5KOKzh2UirdntzXxvxB/pMKkNC5fScUtyhGGMpfQnAp5E9jotaiKFd
         sVhOLyXZpGDJbDpB2+E5EuI9mgv9cQPVMtnWXrJEO7bqT4E0Uc2aS0hTIso2yBY14fVR
         eNFbO1+w+kqyQRHMLpRJLUwsyU3GbOKMgMIKnxSHt00Ekp3eJ/8JKcOdIGaagEyOvz23
         asPw==
X-Forwarded-Encrypted: i=1; AJvYcCXFfOfiIduR3P2hUmvwzKHYBZOPixzit1RsxLSiDn6WUWhAkD5pVMIjVHmeY94K5s88U8bak3SP/A22@vger.kernel.org
X-Gm-Message-State: AOJu0YzzgVaP1cDyM1EeICKAL4Oj0M4Wk5zflf8nbVhbibZFfbbtSOpu
	ExB3Aq+la4IMylIjRjt+5NyEIsQyrymErryTy2LXf+DZ0E1VRbS23tejasrvPABuVYq60o2+urg
	vKca0lBSyWl3FhBv3JBLfXecT6FpeD6Ip59UEZTkbXw==
X-Gm-Gg: ASbGnctMy5VzDTx7Rv1u0jOP2F10c7YS9AseuQsou3nCctWgPZsRn+QhstJO8Sz6J4X
	i+f5hG6HjcM0Mvz3qGhiSIzrvfB4E9eyjYbcfafHFwSeZpTIuKlHGIorXck2hIndbJxsdUqANgf
	0dGE5eQuqlOAzAiVE4F5benpvzrVIVa+5aPY2sJNSWt5so75KTDqqsXUt3VwifLRyhKP056H+he
	EpoObVop80EgE8lC7BlLRyBAuX5d/rsngQ35NQnMkuFXvLfFssY+leD2xKm
X-Google-Smtp-Source: AGHT+IE3B73ELbUQavOS3+9V8O99ObkxGs1XUoqNSIUdKZBsD2NXFZZaX5rjgwqiz7ABPv8TjN+usn9RpujxaCi3agw=
X-Received: by 2002:a2e:bd89:0:b0:378:e097:e195 with SMTP id
 38308e7fff4ca-3790775a094mr3319331fa.33.1761603061549; Mon, 27 Oct 2025
 15:11:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-4-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-4-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:10:50 +0100
X-Gm-Features: AWmQ_bln6fs42YRtiqP8ik_NX7rcLNvMO96ITfFJr8FlYTKtoHQT9TbJlFukMl8
Message-ID: <CACRpkdZETuUGn47foo49xhj5krfE42sJ09vYf7EuKzm7J7kfUg@mail.gmail.com>
Subject: Re: [PATCH v4 03/12] pinctrl: pinconf-generic: Add properties 'skew-delay-{in,out}put-ps'
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

> Add the properties 'skew-delay-input-ps' and 'skew-delay-output-ps'
> to the generic parameters used for parsing DT files. This allows to
> specify the independent skew delay value for the two directions.
> This enables drivers that use the generic pin configuration to get
> the value passed through these new properties.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

Yours,
Linus Walleij

