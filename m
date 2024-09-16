Return-Path: <devicetree+bounces-103357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AFE97A7E8
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 21:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A3C81C22DAC
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 19:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA32A15B966;
	Mon, 16 Sep 2024 19:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QbK7rgrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982A315CD54
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 19:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726515928; cv=none; b=aTwB/U/BMPQDNid3TC75GVqeRkxXw00dzlV8Z8bzfutv2Blr3Yx5BioNtRYBBtOgzeKOPfnAtrxg00jVykIsgMRFJLxniMMmEHWu2Wb6j18MJB5J0cC08cX1HG9f0yNXP1Bp7EL2UjLM8/XA7cuYIMr6AeUX6FFP/nVsWMh1n4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726515928; c=relaxed/simple;
	bh=86FkMyQ/G+8VD02/whrVHHkVIlcKpQjBLC52Gq1S/Fg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PEPklb5rys8Fc7xqxwvpGSdbHsx2RGlXROpuGa44sOt6oAmxR6DicWxUpGsDy/EnwhM0FgLqBofguC8jgYuRhbWFVLUrwUsb7QUbXxjwWFgObmo+iikEFp6965BYrK4/01BSwdYySA0wdIM68onwRVwZjKWmfZXvy4CXvxxAUpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QbK7rgrn; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3e05a5f21afso2727918b6e.0
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 12:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726515924; x=1727120724; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t7hgMVwljI+22DdDn+2KiS5sYn8c5xk9LzhXAy8Fwus=;
        b=QbK7rgrnMxI+6EpxS7ZLgRdxOrguiFtoWRbhXFsFa0FrV9hL2jPWzTxrWVUyPqoG48
         O+1BO+Gq/ZDhORKg61K296/MzFeEgAoc+rywRIzVYTa5TjInHgqyAvF4YZXs6EC/30Ru
         yYcQc8OgstQdXm4x9JP7p6OyNvk6g5zAiTmhMzr0h0/cl1jprFZemQUVpOajySzUanVz
         oMpx0ethAMsVK9pZ2da8g6oFFou10l2bOphT79+i1z+8RGtozHnPaPCFdNoa4Nt2cDGZ
         dSe+9GHPmm50LXuT4mjf3uI/XFKIA4DknC0ckj8Ktt9tGgmHtdtIWtNUWsVmpYuxR2N+
         poYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726515924; x=1727120724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t7hgMVwljI+22DdDn+2KiS5sYn8c5xk9LzhXAy8Fwus=;
        b=j7tfGC+y0iDaTeJza1c1Mh02CFSF1C32ebDg/RxY5h8AE9hDEuvPFVi0gX6plGvKe5
         KCu0ywJYKKSU6R3Hyk39rOnx+UANQ2i+I9gN5quceBE2qls2Mbadm5lfqKYPAlEK1VV9
         UbG+c/FwOS1EKAnIGLN60B46CPTLjbuFtdPq/ZuGkM7fo9KsG9vWPyOj/jw7tvv90HmK
         tjWQzTpqi+SfH+8wuGk1IUwNqadwQzQBhBxnqDaXoy+41WS82MIKKLL5pWRZfIGH0BoM
         10xqdJzZ5id8yJINjfP+GZu7bssvZtYiMYoQyGQ80egL47Iwy4A3YfMCtUU991NECDm9
         4clA==
X-Forwarded-Encrypted: i=1; AJvYcCVzF+Xf0EvJEQzYly9uiD9ApPR5ddHK62hgpedYx0etOeD94lVs8FBDxcoSuZEKQagC6SJ6h+2bW5aZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwhaN18GhUn785T+FqDCYOdIkuWbOEhQNXASbQVsBXb9pr/u8qL
	7amkptWGVg9JNx0mpg+73bzXfm1GfEfKccGcge63hs8fXCpMyRkvPrZ29bnna8pwih3g7xbxHMD
	o2YuKS14KCsJpwWBW1im4t/CNKdyLH0OMD8kcwg==
X-Google-Smtp-Source: AGHT+IH3OZJ7Dfh/L28GaVIFfHELZkTBoO/heaD4KN599aOPnL1NQjJea+s0cJl9iKsEMo5848K/h/romXt4JwpU1rg=
X-Received: by 2002:a05:6808:1290:b0:3e0:41ca:1443 with SMTP id
 5614622812f47-3e071a9a491mr14060081b6e.16.1726515924309; Mon, 16 Sep 2024
 12:45:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240916-max20339-dts-v1-0-2f7ed7c24e83@linaro.org> <20240916-max20339-dts-v1-1-2f7ed7c24e83@linaro.org>
In-Reply-To: <20240916-max20339-dts-v1-1-2f7ed7c24e83@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 16 Sep 2024 20:45:13 +0100
Message-ID: <CADrjBPq0D1q4f7CxVpvdEs20uxkagsGfFLCNHeAQzm7L5CMaGg@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: defconfig: enable Maxim max20339
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 16 Sept 2024 at 17:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org=
> wrote:
>
> Enable the Maxim max20339 as this is used by the gs101-oriole (Google
> Pixel 6) board.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by:  Peter Griffin <peter.griffin@linaro.org>

[..]

regards,

Peter

