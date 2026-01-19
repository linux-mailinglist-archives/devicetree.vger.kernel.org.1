Return-Path: <devicetree+bounces-257103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF576D3BA0D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 22:33:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F60B300F674
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 21:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01682FBE1F;
	Mon, 19 Jan 2026 21:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="lUO9pwbt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5AE1270ED2
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 21:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768858410; cv=pass; b=eHz6CVJ1bzqB2BlaaKRYagsv7nQAt6WUQr22r6fw6HOxTWr9k7+Nif9WVc2PxjsRcD1Cd0/EPRnBsjBis4ex+SgfHC0Wcz6p6eyDEjUZlk7Yw9rmhofAM/dQmHhBZt38b+GLM9qX+demipjTXW64KyoZJDQuhGXIv0lZxuD331s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768858410; c=relaxed/simple;
	bh=WYt6AqzlDCpX/kL4Ld5TnPmJOih6jU/LzjugOjIWs5w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lYjp7us+6DV/roojNy4gDjHJd+81iIdV22CN1n2IDBTO8JenKHF+0XB6RYRJpzEwGFrVrTc0MYPzN5cNh6KlDia0X44mRMm39L5APzEEzBnTsfNFqIvzt+m9vj9s8ejep+ZeDRrn8Z91HcBBnZwy4jiHg5davRR+m04TeGT+WEI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=lUO9pwbt; arc=pass smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a3e76d0f64so28654945ad.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:33:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768858409; cv=none;
        d=google.com; s=arc-20240605;
        b=X58bVaqX7tLinly3GKN6OVU3dUeA0vPuVP0DA1fdPSpuIx2upSxMF1VbuAAtDESGoj
         /PNdAvUpI0cVYfQ4oyFlT7LH9baBZYOYpru9yIYKEXhp9OCylLXeesKwNTp3e1yuogkD
         owusqaLUoGTopXRb7jcFV1+k1Qah5+/vCPnUKpbacbG7E8iq7BJWMr4RL7rzxJdM6Kun
         UjvOS/MbOaQMARfMjpm4aYu35UWy1Zzyv1WfRfkMScyU0BXqsEzNvKfOS3PQp8Qp8wDp
         jSVOANQOXorREpIe5DiK1m5GBZDilaFH248/nTm7bXvoBz81dtvo2eaF96fOfxf8Ro3N
         0cFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WYt6AqzlDCpX/kL4Ld5TnPmJOih6jU/LzjugOjIWs5w=;
        fh=7uIZNZCPC/c5L+GekHkhE58VhwW1AJYRl+enJ9wd92c=;
        b=CqRsUkpi3QP2KkMkISYUx1Lw1KVgB+lpSViALGPf3gXEEzd5WKCx97YH9zpwwc8MxZ
         AhhFXBeaIf6xlrFSBntnEMwohSrcD55xAGLyN6p1hUQB3TMtAotwJ6nB2fR1XrEda1iU
         EKEfi2lZNCaSvMF5NswjL46sGbXIB+SvfTxCCSb3jwrv0eWuSLHRnLRawthkRnmdaOrG
         lJ6QcozJc78od32A8cimyUizfsyhjOK36+EfjQerLPniEwu/txLzq/uRQMSHJdMObIte
         t8i4UkXhn9Lm0jr5VhLrp+HNVvlFZp0qw+/gwL5KYd7MdMcnju/8Ounnoo/gltG62r/1
         tlcw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768858409; x=1769463209; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WYt6AqzlDCpX/kL4Ld5TnPmJOih6jU/LzjugOjIWs5w=;
        b=lUO9pwbt420d/9mYQq8on079O3/F+ZGF5Dv2imAbUFjONsy2eHSA875QaSH5f2ZpxN
         QPK6In6smYi8esLYj6HI/JBozh0DEADCytcnxnH+n0Dpn2bVD8hljcoJslSzUEMX9erU
         NZ5DHG1aQtGee/YYddXR3UNQgGZ+X79OojVS0q01cU1czp+icjZY3dU6Er962hwTLCOx
         c2SW440TzkcdCCS8iUDJGrgz0pl+lVaTUXpQqOLqYOhvB7abviL9+FF1DbVIAuGkM9cy
         A/FF0kRJ3dbfJXItZT4IcXI1i5FwV8aDG5a4+AFrTY7aAPrDoUOwnn5X4p9qWfoEibGL
         1mOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768858409; x=1769463209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WYt6AqzlDCpX/kL4Ld5TnPmJOih6jU/LzjugOjIWs5w=;
        b=OWfaRgRR2Mamsh6UaJNyyrL97QrYSmDfI1xmGUCC9FS+SJl1KuXiyUeXyu8e08v/6t
         EVqUbO4gMa7qm6ysuV6T8I7zMTfKodXIr8U5rN/LTc5Zrzvd1Mn/D7q9WefMXOY5SHMq
         d52R73AQVnYjZISOn9VolAEsqInte+ZKvg717WRLAyWuUmKHaHLU7J8fXprcixZ03JUn
         JB/5RHlv8IzO0jxDutmrnuWs8ZmP4V5CjOl5AFNtq6Np41fiR50CGAwbokQTkTTg5tBS
         T9smwWi8x3Da2T0367lzHPuRzVaaq1YyTfK6yQCl1axvz4QOkiFRTfPU17w0RoikAw7U
         yktg==
X-Forwarded-Encrypted: i=1; AJvYcCVAlV1J6SUxYG3KGli9Pd4ZrYL5aArEiB7ig+lTEGC8mrUP2ADrekxxDKtlE+1Ub1KAj3mgoF1tZZ8+@vger.kernel.org
X-Gm-Message-State: AOJu0YyUZruSryWYdEk7oH8TUOMkRgm1tEf3QySbIvKEREnfyigTHir1
	DS/pP//D7Rm5WIeujHHgdsIZNcx6jKeAhgTq1WKTmjzlDUyUlOb7mWMdPenWV+f5D5rygx4S2dT
	jtkDID/+ZTthBr3AjCZcXFf/ClNIoHa0=
X-Gm-Gg: AZuq6aLBO0gmAG2bMdE/OT7BS2UEIz5Wh+dpI21A13q3KfDxS644Ac16e/fSaY/M2qA
	h7KZOI/daPnvyPRsWZ4saT7BdVt89hzIf4Ka13yVI4Q0Bm5/E/WbFhBm6oAR2qgdylkKYVt2cx7
	N70qNMr0Xbc79qNA72lnuZbBq84tEY8AdGikbT0AVXecoZdAPNNamyNVF/VoOH9kMRmWTGJ2Q2e
	qsXc1bALG5+G00HXqOXsfB75CLEBO62WoSkcxaNV+J8c8O/oycw2ffhjDYDHh5kjYpkFsDmAbCM
	ge9zHyscR/++zr1/7Ltowaz6jkwW
X-Received: by 2002:a17:903:2341:b0:2a1:3ad6:fab3 with SMTP id
 d9443c01a7336-2a700978ecbmr132238185ad.1.1768858408931; Mon, 19 Jan 2026
 13:33:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116023611.2033078-1-nick@khadas.com>
In-Reply-To: <20260116023611.2033078-1-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 19 Jan 2026 22:33:17 +0100
X-Gm-Features: AZwV_QhxR4hX4a4tHQP2LMf0jRGW7iOKBC1pnItltQ9JPA2FUwNRfeUXWKlm2I8
Message-ID: <CAFBinCDcyH3bFbqy4WspipzBbf-ym_1vJrTA_ecB1rP1WABG2g@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 enable eMMC storage
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 3:36=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
>
> Enable the on-board eMMC storage for Khadas VIM1S.
>
> The VIM1S features a 16GB eMMC 5.1 module. This patch adds the
> necessary regulators and the eMMC controller node.
>
> Signed-off-by: Nick Xie <nick@khadas.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

