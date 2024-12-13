Return-Path: <devicetree+bounces-130728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C999F9F0BAE
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:54:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 396B51888838
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 420F11DEFF1;
	Fri, 13 Dec 2024 11:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hpk3h/JR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CFE4A21
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734090866; cv=none; b=Zqt6bGmo/hJqemi2ypENIwCLeveboYy0NPMuktgaBWQBeMDhqiSsWBnM7GWyf4d2kIsTznt0w3cVqOSjkb9tebkWHVGcrMpGptNVeXIh7HTSIbRtv6eo3n373MdM0I3TckcKp4/xVEmeJ+QFJcTgiqdOoxlLUGZBy24JH3dQiS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734090866; c=relaxed/simple;
	bh=7OdF0EY5Q+8a9qm+6ImL1Xu/5X7exvu/NnoY6NU8IIo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=IzLK5g1xYlDM5N78eak3q1YD3CG35DFwtIexDBhtlv5PNr0/g1Z/ZDDY3/B6Ijft/JXaQVU2bsU0SG5M/z43YLRXXeKKgA5FNBo/Z14HDBE89JerSzM0JxIXndZgv+MocCa9IGwzgtEb3xwvex456ctHQxT7xSJY3tbcs2YCSVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hpk3h/JR; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43624b2d453so19765155e9.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734090863; x=1734695663; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7OdF0EY5Q+8a9qm+6ImL1Xu/5X7exvu/NnoY6NU8IIo=;
        b=hpk3h/JRnLcpSvkrdx2bcHVsUe4XoYEAOFMPBfPKRMNXylA4VFnfxbB2hNgIi6Uusl
         Wcb8GA/yZwFIelLNQqAAdQzZFiEzUgr58N2Poj7Y6V1gYnB5jaRCjZVicDHWZESVbNOP
         nk/HcP08H9Vn5nnM1QEop151AvwbbVhEMFWfjDU4QqyEGWcgroVit0yLAVlmNTBYTfdP
         eOptqSOa7l4LA5A+JN6h9lcEbSPa1ETjHD9dcv3r+5YIJ78v8EaSAF2V13Shbb5D/mTw
         kQA/EypBbKNpuNPE9aekM62eX4qbZuCe5oIvK2xFraCx7cLcTvrG9DKWgAxoCFeygChk
         8DKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734090863; x=1734695663;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7OdF0EY5Q+8a9qm+6ImL1Xu/5X7exvu/NnoY6NU8IIo=;
        b=Ee4rvu5aO5t72Y+nvVSEIDg6AjagnzjRHqtdNbs3OntTI/pBUO+oYn8EHbPMTEWHAs
         WHg/dECgPXMCT2nJemGyXvBESTHcswH/LtNNeUj4FAaBQUqR9c2Nu071yQtkYj9YGfe2
         TbtHe5dP7bvAVSwXW6/cC/bKIS2Irae/xcQ2z+20/WdiapJtuQfkVKw4QWrD4Gpj63UK
         b500ZVxeVbw+/ZH8yY9i/JMyjgYaEXdI3gir3ZApJgh0VqqS03i4CahW3rHTaHil8y5Q
         6tpzMSrFM1Wwq0kODe0nun6zZo3TxxaEAbB3791WGOwc2nDSI9CeCrbpy4RixMecFzIO
         D3Aw==
X-Forwarded-Encrypted: i=1; AJvYcCXp9gmXpuIlL9IMUpxTAVDBN3IBpVQ04CbheNPUEwKVV8IOnPqGgApa6Wd15dsqs1TpvLr5l8Q8E+4q@vger.kernel.org
X-Gm-Message-State: AOJu0YzvD8PCAROVSH7E8GSbedjerBJZ1q5CikBV7JRn4ThaoH0UtwFZ
	Gy+R3kcNAXh1c21EZ2UpXkbyeVuIdLK9TMnMu95e+3QBjadN3aLbMIKpEA6Y1Xo=
X-Gm-Gg: ASbGnctx8bjznXT07w3tj4hMlSlfJa4OdSdNc5Q6ZOLV0t07+c2qgo5L+vFZh7Adk3h
	8ncNlfQdp9Q9UOp8/whiR1UMdcTQJMNsuakp9r9xMlBm1k1LittCbOX02KjP+DEFdJhUlM/Et6C
	eFPVvgOlMdsoKJ83YXVoj9+N5Jkh6ABXBuNjzqX9tPKF8mHBaYfHcmU8gTiVaiHxLmuYEi0w00+
	pu/YquUHfXfumbChu37SnEq8FwR5F6t4KL+8fwCgNIZNk/YsLUIodJt6EA=
X-Google-Smtp-Source: AGHT+IEP7mBEOvmUCI0JCUPommiopQ1xlLMzyLAN5twn4ljSdanIR6qca1odC4tLmLtYHsoaBmE8aQ==
X-Received: by 2002:a05:600c:6749:b0:434:f817:4492 with SMTP id 5b1f17b1804b1-4362aaa6334mr20421705e9.31.1734090862466;
        Fri, 13 Dec 2024 03:54:22 -0800 (PST)
Received: from localhost ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362559eaf6sm47324465e9.20.2024.12.13.03.54.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:54:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Dec 2024 11:54:20 +0000
Message-Id: <D6AJWNO2P6MR.1ZSDAC71W3SS2@linaro.org>
Cc: <tiwai@suse.com>, <lgirdwood@gmail.com>, <perex@perex.cz>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <dmitry.baryshkov@linaro.org>, <linux-sound@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 14/14] ASoC: qcom: sm8250: force single channel via
 RX_1 output for qrb4210
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, <broonie@kernel.org>,
 <konradybcio@kernel.org>, <andersson@kernel.org>,
 <srinivas.kandagatla@linaro.org>
X-Mailer: aerc 0.18.2
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
 <20241212004727.2903846-15-alexey.klimov@linaro.org>
 <ae57068c-5d73-459d-b319-46a582ed7f3e@oss.qualcomm.com>
In-Reply-To: <ae57068c-5d73-459d-b319-46a582ed7f3e@oss.qualcomm.com>

On Thu Dec 12, 2024 at 5:22 PM GMT, Konrad Dybcio wrote:
> On 12.12.2024 1:47 AM, Alexey Klimov wrote:
> > In case of mono configurations we need to enforce single channel
> > output. This is required for audio playback on QRB4210 RB2 board
> > since it has only one WSA8815 amplifier.
> > Implement data variant for qrb4210-rb2-sndcard with
> > sm8250_qrb4210_fixup_params() that does that.
> >=20
> > Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> > ---
>
> Would it not be enough to set channels->min =3D 1?

Enough for what or to do what exactly?


