Return-Path: <devicetree+bounces-224305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AECBC29EA
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 22:20:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 220CD3C4BD6
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 20:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2CF423C512;
	Tue,  7 Oct 2025 20:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sMwxbj+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CD9221D87
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 20:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868408; cv=none; b=ACWuvz+enjTy9HJu2dKoPmJPdKg6KtHWzBU7ljoBzOgBxoJ0oFlicBCsiv7iotseMjCtdvH2ixWQ69zzYAf4KxRs4ux7Czi4CAlpPS5l2hll6tBAXwpCYt4520XpVvfkPv+54V0m4HZdOyECI6erMKbJ6wvcOQ/zUmgkKsEcGS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868408; c=relaxed/simple;
	bh=VOJGm4xHo9yLpjNqGa0Z0pDqyLUjWX3aXbAIUsOlMvA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SO8sGKSa8rYEDQPMQGvvIyvDwTLaGZY+0XaRMUZDxezEKFRm/m/leaPw+pS5Bb66YrO3ZqucGKzRScfVse44bRN4bxbXfBLDpm8UOAI1UnwniFucTzRfyh8JWe2ksf+cWMWaa0bmxAIM2zODcRbhzEG/nye2LKWUU5f2WGhNrqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sMwxbj+0; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-43f494764a2so3451704b6e.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759868405; x=1760473205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOJGm4xHo9yLpjNqGa0Z0pDqyLUjWX3aXbAIUsOlMvA=;
        b=sMwxbj+0yZEIWst+fxNSOKU16i7Hi2P1EAHSYTXd/hMaBD8hy/mKcLKjyDrjssPHRk
         g1xAssGwgV37uT+qwXZ5ursK5Q3KCnpkLrqZ94JAmlKQKge/Q0SdgWEEkCd8xklTSBwG
         YkwXFFITj9jR68nMy+Pv0ZkjvrzBmsJ0H49t6Hb+ZxVWbTp4SX8n5G6XFI1XADB5QLuO
         9mhktUWBZvmnDRpyJu32/tEamJ6meEdhBNVCErOmO8A2zeB1V/z0PrMCAy32K2H9KLES
         Nb/fljhmshuSnQN9JpzVaVCkewqm/2iAO9qXnuLoQLHn/frCehIb7UiIe5In0Zh57NOY
         9KyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868405; x=1760473205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOJGm4xHo9yLpjNqGa0Z0pDqyLUjWX3aXbAIUsOlMvA=;
        b=gta45+MLCDLUQ2f/IJ8SVYOK20ZqX7gkDKMdSAgtsdu6GJ3ZZsVtDbCrI9UK7fNyEg
         RtZD/XgpXlASg/Ut5QXa/6CTPYU5ay8GrTp/SbemxK1wfxIZh/YjwCATwOo8ZENvkL+E
         U/BlZsMJEBqumAQ2N9VhFPDTf/7GeDu5zx47rveMH9IglRk0jjUmvNp567obBOj4lE73
         53IXk8+KASh0WP+G9cv5ITnGwwX9HDnLTLtXvHoAzmtEsTSgVHkgjuJwtz+wV0kL2DfA
         H95/wZEgoT5cgs2zOK6bX5KZrWTHNRirF6cE/1ERW0WTHZaUI4yFb8otaUHMSh92y9jI
         lYkg==
X-Forwarded-Encrypted: i=1; AJvYcCWSrMWzGrV2jcYIelMDkhItGwcFlMjpioxh3dRgQGb7QHtfpdTeyYflgpTFE/BcriS5Bverjx2aPI8k@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4G2oD/3aQ/A43Otnr/212BlsZLDH8slUL+E43cQkwZcdUFnN/
	LF53as1xP4MPz9QkN0VHS+++nPwXIbIDK/es1YLVFOxjpr7P7l5IZUEIFrBl/14kigA6s/CVldg
	phTrvlv9CkDvD60M3ME7LYdyal32bLK7woicQVeZcKA==
X-Gm-Gg: ASbGncsVjq0oKPWOmEkz3iZr7lLVQm0pGST3ZHOp47yPKtzCP59fXFbNiR70uNywh7q
	hsSnAjoTY35MNvrTMQcAoh6z7baw9hCMEr8duR99eL2MRfn+DCgaDG8yHRuKBol97NIc8eDTSDH
	Lr17jqRWECIgSOaf8okRovbJ89CwyLHUndTK9KkOBVC/zUGQOnjV/ZiUajoFBm+6a+QhylNcI1J
	Se9w+Rv5ogEYZ/KJVAC0EcabtnCm6pwLGXJUDlVcuoiA5/v
X-Google-Smtp-Source: AGHT+IEHI8U1dVlqnhrsS6fP0FmSa3idf/Em/3CBdgaLIh3/qrBErYExCYpSsQBQQgzXfSMxAukwo27BHqZsQjbeUds=
X-Received: by 2002:a05:6808:18a7:b0:43f:5b28:f0a6 with SMTP id
 5614622812f47-4417b2c48f6mr450890b6e.1.1759868405185; Tue, 07 Oct 2025
 13:20:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007-power-domains-dt-bindings-usb-samsung-exynos-dwc3-v1-1-b63bacad2b42@linaro.org>
In-Reply-To: <20251007-power-domains-dt-bindings-usb-samsung-exynos-dwc3-v1-1-b63bacad2b42@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:19:54 +0100
X-Gm-Features: AS18NWB4avL22wQ3_NUeMTQbUpbAXczc7-BwaaCDEfZe2LaYa7fnIVbjvyZG6LA
Message-ID: <CADrjBPqeucFJw5kH7YKK=PEOOYFJkQbmZ_CORu62FoFwqySsTg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: samsung,exynos-dwc3: add power-domains
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 7 Oct 2025 at 16:55, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> The DWC3 can be part of a power domain, so we need to allow the
> relevant property 'power-domains'.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

