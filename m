Return-Path: <devicetree+bounces-114651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB289AC2DC
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 11:05:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE7231F24853
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 09:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8846A19755A;
	Wed, 23 Oct 2024 09:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bf8WlTYY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7895B16F0D0
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729674327; cv=none; b=g3rfM73tw9rORodrpYcKFIIT/aTpdfs+4IQFVo6xIrpBX5jnzowE8ag2M7jdDmy6yeouuBVwnY3dOcWqG0GZgPJh8UKffZd+0VI1qjNusaP1b2HFXTDPkbV8219mFCX6C/qmEvy5RqIfCVCE1J/QwGPjR9f5iUqyjQYY55LbaPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729674327; c=relaxed/simple;
	bh=X36zWetOyTJAz93vBOWJ+rocrYfNGhJ7Z73gXa68vyg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jSbLvSSrW+AkbZfb8wLBECbMUtRnxVxN6x8DQK8PLN1xTkEpiBDNSH0jjuxt7BgWiGICi+EQ3QPuAqIA37z42qlQZ2hHaEXM8q6UdtmcvUlX4D7ZumIHs4nrucoZfRbI34cxDOfQ98LYV+6oXw5FM3VlNiem7ZUvDTrL3AfA9Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bf8WlTYY; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539f72c913aso7655671e87.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 02:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729674323; x=1730279123; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X36zWetOyTJAz93vBOWJ+rocrYfNGhJ7Z73gXa68vyg=;
        b=Bf8WlTYYkazelvOtD4+8fKPxplJyMy/MFUXpwj/wtxRdiA/9k4ANP89QOrXqvKte/r
         VKeoW/ZKUh1Aak3JYBP+PyFsT8nBxeIPCjO8cIiZi8LXjHeu05bDq89k08EMQoSfTzXn
         Gq3cwjaGVuZ7qTp5o3/UWU4vMcm/hSCQupbCQwzYM+nN03VWU+tNNkoNu3xNVg1agQP+
         FoTMO3Pk3xEjhyfJRSsEiEvlQ9FOjPGPF1YhRrpTCHZykO5Qj+By1MwLPds4R5790n/L
         hehWQQTPCFi6YqPR9Hww4hiDuUreSsv4d+kNbmyNWPaSYLdXggrcb46HLZBVCGGUtaeC
         sjUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729674323; x=1730279123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X36zWetOyTJAz93vBOWJ+rocrYfNGhJ7Z73gXa68vyg=;
        b=roSm2oyJ95ZZoeU5tH9cn6Tb/CR3ZWCDk+7qx+cRBN7sbHgaH3tGnjpDPhjy2QkuCw
         DcE5FEqMasoEBduXqxIOixHGBDWbp6Z9t7tzOKsVVWwyMEbcVebjYbIy0rk8gI4l1v+w
         0eb+MCOIR1OUMSibgVpETIc7e17niND5ihbWtAYAIkrI6p+owRpyGw941mUQuQSznmg9
         6YJS2DByewi/QC8pQnatO6nJf4blTZhnyEC2bgcThGV7waj9ZOlXLPqGiID5veE7Cucb
         oAanGqjrRiK8yAecRNlZNvdkJkisOJ1HZXtQpe1eTageTZehZXSEQ3i+7PZZ3+khfIyZ
         YUPg==
X-Forwarded-Encrypted: i=1; AJvYcCUI53T5y9+P+NWKE+5b82lEGMdcYj02VU45PbHEEMRr0TSRKaJhomSAt70wOKh/pKxp7yNZ/3ybwSYD@vger.kernel.org
X-Gm-Message-State: AOJu0YzKwLVC8IEceabbIIYidhkNZPM9vCWQciWAK+1Ju/reyPwNRwSs
	RkQqD6vRzLaCWdLhYZoY1ya3/spaP2qoRgrLbNV+fSehRxTlvJ+5P4AM+/1wQ9bDFR5wifAZRRA
	hDyKSkbu5ME9s3xeXkezN2vz8Rm6fGgMLjlq7xg==
X-Google-Smtp-Source: AGHT+IH1+v9bDoKekaMKgbzEkbrdYTS5dXGjA0/CBdqgcdFe8CjG21FHGf37DjwlkgqMpl892dYOQgZjGQaLo7ZGFiE=
X-Received: by 2002:a05:6512:3e0a:b0:539:f37f:bed9 with SMTP id
 2adb3069b0e04-53b1a2f42ffmr857364e87.8.1729674322600; Wed, 23 Oct 2024
 02:05:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241023044423.18294-1-towinchenmi@gmail.com>
In-Reply-To: <20241023044423.18294-1-towinchenmi@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Oct 2024 11:05:10 +0200
Message-ID: <CACRpkdZP9oDd+fRKKagFtGbfLx=Rk5LJ7bvaKimw5-t25XZAfQ@mail.gmail.com>
Subject: Re: [PATCH v6 RESEND 00/20] Initial device trees for A7-A11 based
 Apple devices
To: Nick Chan <towinchenmi@gmail.com>
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Mark Kettenis <kettenis@openbsd.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2024 at 6:44=E2=80=AFAM Nick Chan <towinchenmi@gmail.com> w=
rote:

> This series adds device trees for all A7-A11 SoC based iPhones, iPads,
> iPod touches and Apple TVs.

This is a good and important series. FWIW:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Are patches not getting applied since you resend them?

Yours,
Linus Walleij

