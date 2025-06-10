Return-Path: <devicetree+bounces-184231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E656AAD3594
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:07:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6311A3B60F3
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E6228DF10;
	Tue, 10 Jun 2025 12:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I2Cr7Xjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4085928DF11
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749557226; cv=none; b=X8xhQL+tQtsjFZjYuyRzqhv/L40/zGOtKJlz5Pc+CCxDJHhiE09+8FrwDWzKK0C4VeJPjzXrSOAzWl7cIrBVH9Hu+p4Borz8WY4uSWDVK/TcyphDP4o3zWVGLF+BGSAHrKssBo95rjiyJiImpEyatYqDq2/RBMQRzdsf00H+HAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749557226; c=relaxed/simple;
	bh=upEgacp7mnJpqnEV2jZLm7bdZrVLCTZ4Uj3awIoWIUE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qKZ2xfJ7z+PIE4sU9kWZMc/ksfCDQl9OSKMQJDII4aUiJs28Jvic1lMjbsEmeuVZSlW/nIppzXeHKsIKmEL0RS2YH/dOIRYGSM0qGNNuWK/s7XaHG3zL9rAqkjPEUKIQIjIlACyRAWPHYlkuJHheNKG3YQYeMXPbjXtQ9Ygc5Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I2Cr7Xjc; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-32a9e5b6395so49812681fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749557222; x=1750162022; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=upEgacp7mnJpqnEV2jZLm7bdZrVLCTZ4Uj3awIoWIUE=;
        b=I2Cr7XjcL6Qqwdyyk8lEcpav4v4NYbibMuKkuNCyWCLV2vwu8n6d+Lp/wRLAoCAFb4
         f8S3onkfwz/AZ/YLNKxTxdSqPGITGRNfO0mNQcwTsqni5VsTD/3LjoOCD+HFdRT7Db3q
         aN+ZVgwlQh1Kh00vXlGrgvZjtMRdWdAFKgTdk5Bf9xfdZX+jRcehCoEDw0vMqeo7vnV7
         fex+mmoZUVsI5lkqDCV5eYxkLtT/S3FiX/TwedMUvsMNWrASwQim2BiAKNChrZ1APfKz
         CCSbUdwNC7ZzGOxqZOpJg0enroMSvqJisuGKxogj7zrY+dtSLueDsqRPvjUiYPQhI3CF
         JgxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749557222; x=1750162022;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=upEgacp7mnJpqnEV2jZLm7bdZrVLCTZ4Uj3awIoWIUE=;
        b=TtQ2m0faWHFO4UYIVieJugStZRMQAqnDNq349wKZG1WPe2JsKqOMqnzD/BjAC3aZvM
         h3iQDMHtoITjUPv1+aJZgLjJ8P0/1vWxhfeLeQibYtMugB9qUXApQXwDSKPQY95Axd2L
         Tx5i4fI1fFPHLOtMqp8pmjRfRsyvH0oA1sNV7QprvkmIQ8txZmXAtvaV/+al+/3TGLEn
         Tufr+pisu/YqjNWQcs4sVXT8FUw9/H6aR5KAUv0HBZj6ZIDynuG52/gSY7BaIY+zAuar
         IOdor3VLkcRrCDS6Gxav6baBJfytkWCQW/Cam6XTdd5nQhiz3euuIiPsuiybK4Aqanm0
         ykPg==
X-Forwarded-Encrypted: i=1; AJvYcCUOAO+Fbo+Y1DaydB3IOBR/ss4sP/240dWEtAPK+luxtwizMQbz+qvsrS8FLVN2TIrTQZRLQJQxRkZh@vger.kernel.org
X-Gm-Message-State: AOJu0YznWKc6jHuEkFmlwCBX89Pu+ryIPb0GgwUKp7heNTFZKxRMxdFr
	mf6tyBy4sp/3fMkVV0ncKP6xLC/r14jOfBGJuZ5nEdQCSGqVwE/9mrsDVFXGy9imfSKcbb7WP6y
	36EwyUawph34HEwpz8mfXg6mVmq2+XSZMH5TI0Hn2NA==
X-Gm-Gg: ASbGncuEURSTfTkJGkPczJRqtQP48hzMRbnxG433KJgxOdXmEfMopp9IMTHrZdbkier
	9ncxEWgBSpDaKTLO+ScCC/jIUcVG1SCVzrm6nBxu8wGwDgNJAHsN3vLV5IBW4tU1U+/30bvqnKf
	PB0hXp/vjluljUb5UFW7LhgT0fwQcyqfaI5HMKl0kVzIxI4+QvoV88cg==
X-Google-Smtp-Source: AGHT+IEqz0WMqtI0x3GGlKwfWemlBSbd12UaQPMKKY+qV7hhxbjKafYK8sYr8Wg2JEL7ScFpC5Ui0NiE4JM2Acs5Gg8=
X-Received: by 2002:a05:651c:220d:b0:32a:ee4e:56ad with SMTP id
 38308e7fff4ca-32b1533b1aemr8972041fa.33.1749557222298; Tue, 10 Jun 2025
 05:07:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523094319.10377-1-ot_cathy.xu@mediatek.com>
In-Reply-To: <20250523094319.10377-1-ot_cathy.xu@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Jun 2025 14:06:50 +0200
X-Gm-Features: AX0GCFuHU7ZhdHSe32gs089Kj2im6LDUCERAjIX60g6Meb5i30AmFDVd_Qjjj2o
Message-ID: <CACRpkdaGMiNwBAa60hFzsboV3JCj=sWVz-NKah=eNk+vVnUHVw@mail.gmail.com>
Subject: Re: [PATCH 0/3] pinctrl: mediatek: Add pinctrl driver on mt8189
To: Cathy Xu <ot_cathy.xu@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sean Wang <sean.wang@kernel.org>, 
	Lei Xue <lei.xue@mediatek.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Yong Mao <yong.mao@mediatek.com>, Wenbin Mei <Wenbin.Mei@mediatek.com>, 
	Axe Yang <Axe.Yang@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 23, 2025 at 11:43=E2=80=AFAM Cathy Xu <ot_cathy.xu@mediatek.com=
> wrote:

> This patch series introduces support for the MT8189 pinctrl driver, inclu=
de
> the driver implementation, new binding document and pinctrl header file.

Cathy will you rebase & resend this patch set based on v6.16-rc1?

I think the code is ready as long as the device tree bindings get finalized=
.

Yours,
Linus Walleij

