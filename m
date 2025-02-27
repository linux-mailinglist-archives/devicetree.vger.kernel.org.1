Return-Path: <devicetree+bounces-152339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AC33BA48C69
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 00:07:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 96FA81890795
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 23:07:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46B923E35A;
	Thu, 27 Feb 2025 23:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VKtr77nN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEFF422576A
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 23:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740697642; cv=none; b=axySP2A80459gYX1zDECeEao3PMr52SGdyOOJkp2Wbnnpe+jMhF3dFQb3G8ixwCw5gYe6maLjM58GJ4/L9KVu773dssukPDjyl/fn8E3QbLuAjizaGjnQj3ZfDMdFgN/EwOLIGzKOuVPr2pL6WvS2ryJUDe4xfwKuRYiacfMG5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740697642; c=relaxed/simple;
	bh=vz1obdxJIIoDV20lR6JnE5eTn9ujKWpbRqwh9oeEfIg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bkuund73z/Q3Gu4IAWGjtMXobuamdqefRr07+hVkaU2ilF+ZjK9jdAxNQPyfijSO/KkdxNxNU281nZTDw3/JB0HPiMYqzHSEnzcFFVzKBE+kP+2GQUL2r+NCHE0XkGmHgJ8yscLvhckvP9quZgkz+D9/zq+LXxcHF/VQYbW+m8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VKtr77nN; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-307c13298eeso18512191fa.0
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740697639; x=1741302439; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=frw/Kxp/v2+PP+mGe/xu93cFHbH9YYmz+7s+Ghe+Vqk=;
        b=VKtr77nNb4ymvEhjFfpJCOJi/uffVf29PItT2KGqEbg1YLlQjbwC6hmRwZ/VBl5hNy
         /iCZDg4uJL7iD7oW26mwRqWrs2lGEaIm1VUDT009QupDuQaGUy+gVm8pyO5sKMUb4z1M
         IeIAdmU+42CWpD4EJQ8ssgsHO0V3WwlD0oh59BhFMOaF85rpHouAtr0J23mBdtx8Ly3o
         dYTvwwAUqX27UwdJJNIGDGifM32K7ZELdIzquK05iYZjaUz+Adx0hnMnKqJ+J7tUt6v/
         Sndl9voM3Do0/LQJMGqcuYCREo6sYW1tvICW2+wuZ1eG13RZPWdeBpYcSKly0+rsNtGj
         h5Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740697639; x=1741302439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=frw/Kxp/v2+PP+mGe/xu93cFHbH9YYmz+7s+Ghe+Vqk=;
        b=irvoYIdUatcUdBiSaKWpMlswMQcQuhJlnfgdY9OIUTZC/l7rufafGz8aYFKhT+2GFe
         fbmctVzXtL62DoERcwIbhMlQlXI0avzYpwIxSLOHU4NkLBsjPwI7US6P9nOY9zwg1936
         rku0lR23C41rkJvojLMRSGx/eDg937K272xGlvr6UMc8E5bI7/g1ZXTa7COTqDLxEWcL
         xMC9QAULC6Fpc+27dMSdfkNHZoSinEgTR15Alz99I5IWQ1ODd3hKacV8v/EOaPoe8PS8
         X0PXW4acWG42EInl8UYPMCH0t0G2Z7eiXeZw0uqdau6PcCnIB3DlZSj3GNcVH4OrdtMz
         GbyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVS6Ok1bw3KFTXon1nhv6s/fcYo2p9YETvwcGaYg77sVjDxpSSBYqH5Y0aVEIkSjmDM16LRiTqymoIA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs9Mo+pxMaUq2f4QFKacr1kkFAjctX+AIQRVytShFNI7tIm31h
	Jr+PN7xRAIlSTzusjs6QCWZUgbvJzCr/Qv1T6Exu4CgvxmCZXEholdDvYKBoxBNu3N3e4S2DvNa
	zpN0P294eczHZ+g6ZSJZC2//1lP67UMJ2eF+X6Q==
X-Gm-Gg: ASbGncvFGYhDzh7hNr8pbYKM48XQB2WqEDEx6XkRwaoTpuUy/y++zy6bOUalv3iNKSR
	7R0tLUDh1I3l9HiJvJ7BbiRxV+kxqOJLhgGC4aWYrQgj1z4iUpIDcTGKvZlvW7czI2OBClLAR/+
	46scQXr5c=
X-Google-Smtp-Source: AGHT+IFufz181XNYlSjaAjssVbP9sbOQz0B9cNRA45vok7xAon3DLgbajO4WEtqa7uIwsizRpA7u/lhxgF69lTQZ82w=
X-Received: by 2002:a05:651c:2105:b0:30a:2a8a:e4d0 with SMTP id
 38308e7fff4ca-30b90a8247cmr3926491fa.17.1740697639007; Thu, 27 Feb 2025
 15:07:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250212-amlogic-pinctrl-v5-0-282bc2516804@amlogic.com>
In-Reply-To: <20250212-amlogic-pinctrl-v5-0-282bc2516804@amlogic.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Feb 2025 00:07:07 +0100
X-Gm-Features: AQ5f1JqjsVFh7X8JQClBDzM8iluOtRQbPulUgXhGdh38CQTozMVRauwBZfmmZkc
Message-ID: <CACRpkdZg-9Zr3f7zG36x7jGvT46FRfRJ40khNZDdYb01-BGigw@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Pinctrl: Add Amlogic pinctrl driver
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Xianwei,

I applied patches 1, 2, 3 and 5 to the pinctrl tree on this
immutable branch:
https://web.git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.gi=
t/log/?h=3Dib-amlogic-a4

On Wed, Feb 12, 2025 at 6:24=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:

>       arm64: dts: amlogic: a4: add pinctrl node

Please funnel this patch through the SoC tree.

If there are dependencies, they can be pulled in from the immutable
branch.

Yours,
Linus Walleij

