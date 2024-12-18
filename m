Return-Path: <devicetree+bounces-132280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE549F65A9
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 13:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13429188257F
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD4541A238C;
	Wed, 18 Dec 2024 12:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dSGAs0wt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952511A238E
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 12:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734524161; cv=none; b=A353OxDNojemCmDEs3W62Kn2bDhNccTVPkxPk6SC4ozKd9dq3gqw/k7ZtBgGR8e7hsWxHISkUPbDbUWdN8QlfUXUvzkagiL8gKcKyVK/1xYg/9nM42j0d1UJM6yj6YQ42pvwAaSTzP1EuyKzxf3wHZmC9ixWeL+ysbyYloBr3uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734524161; c=relaxed/simple;
	bh=QbZOpRsiSXZYAgcFjG90jFYx1m4NfzP1gX00iKnIzaM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VCwXvL1yg4LJBBJjDv11+ZhzASzrGO/Hjfru5uJ2fJTUQ9Vfscmps5cAYoLSg/PZ6R0a/7EM/SedfeAxpXVK9VxOWXGLrszdu3rUmYNt1awiV9lzAHUJssExLv+cGQjPwjToyZT3dEuRLlS1OmW7Jt2fTD0q7j5dtifCaieQkbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dSGAs0wt; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71e15d9629bso1462700a34.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 04:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734524158; x=1735128958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QbZOpRsiSXZYAgcFjG90jFYx1m4NfzP1gX00iKnIzaM=;
        b=dSGAs0wtyBPd2XJSE8lYRqtG2ZMtRuCtIFCuy9M+cxR7WdMjGJkK4Y8f4ri0IMajbS
         gMDoTQ4YdDxXmy+H6dSEFV63S+GQolKBfpjmvhBq6+2bSLVHaQ+71+aabtGTg9eZtRh/
         mg9RIxCfizevzV5dtyBcrXx+9OzkQbEOHbicOdD4bYmYCzgpff1hdq9MHURqSpXek+m+
         g4ayC+k5S6g5Cw4VlZJt100DTyvBeupFR/mJjpFXJfDqGMpsIP5IAP5tUX4FbjUNdywe
         erjXheomUnjW/zI6wNleuCbN5OUCF1k5K8X0uv+1Q1e84qp+YjoNmB5FpvTJwkS/o1pj
         qrtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734524158; x=1735128958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QbZOpRsiSXZYAgcFjG90jFYx1m4NfzP1gX00iKnIzaM=;
        b=idD2bbzJTBgx0LL7VGza0DCQ+0UtkxL/JkHMy0yYHneXUNQebhtFfKbeyG9AXR+jfM
         qVrvWYdq4DdiPbDe6kFOTSfBsfZT8M03NICDBg+wJSf2t2DSAUVAIq6+ZYmuc2jfn90u
         D45LxZus2MUJltKWwTaDYBdqOtD2EA8Bb7nJSCe5/O7M6dM4LnESMTU0yiwe+sZ7OsQ8
         dL6dXB58XdWK2GnzoFXyomG/kxwhtcxKNN/SyK7MM72WZYwVb6N8XFgpfsSck8jJMp5o
         9OCU0ME+niy05fWcaG8d0wcsBv58aHK+lP+8pOI/9asnEEkI9vtR0hFoAJxJR72ARAqY
         Zo6w==
X-Forwarded-Encrypted: i=1; AJvYcCVjseX90H+fHPUwJgRtlhsG/mpwCb/zTw9rX0B0UjC2QfHRAkgsJu9bJH+PbuhXVsiNUKV99RSIWwrb@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg/CXLbkkwIcl5vV08lYiS69h3dXAunnPKqyrnsHRpq0NUEI/f
	9I1zFMF4/oCbGpkutLdtrv/ourtaR+n2ExEyJtbCarE27p7QPV1qnTVjg5gn3fA3MyQBQZMAPxy
	tdtsOuEjgCGEMjE5eV/CPvomHn7a3SAiOWkSc+A==
X-Gm-Gg: ASbGncu/QrljpUg38aTCXMoXdKThUDzT5RfZAzno+YJzzkbiORO8QahgLl52/6Vm1dZ
	J2+YWA5L4/VwZeXEDvIfsUUgVs+R8Lq6zqKMt6e8=
X-Google-Smtp-Source: AGHT+IEB63i2cYMG7WdX1Xsg9eBVP077FZ/6FN587/r1UUMaJDNgIjEtYPcAmsRGqIbdLwv5jK6fcF1IQNO+tAEOYAE=
X-Received: by 2002:a05:6830:71a3:b0:71d:fe25:1a88 with SMTP id
 46e09a7af769-71fb75d5818mr1307448a34.17.1734524158647; Wed, 18 Dec 2024
 04:15:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org> <20241216-gs101-simplefb-v1-1-8ccad1830281@linaro.org>
In-Reply-To: <20241216-gs101-simplefb-v1-1-8ccad1830281@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 18 Dec 2024 12:15:47 +0000
Message-ID: <CADrjBPptsP1XeY1Z9ZsPrVKMPn-pgFwaq71e-+2Rjb+4rsnWQg@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: google: add gs101-raven
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 16 Dec 2024 at 13:06, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Raven is Google's code name for Pixel 6 Pro. Since there are
> differences compared to Pixel 6 (Oriole), we need to add a separate
> compatible for it.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

