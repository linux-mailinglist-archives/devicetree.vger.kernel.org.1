Return-Path: <devicetree+bounces-118117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3359B90B1
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 12:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A1FFB20E21
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 11:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C222D19B595;
	Fri,  1 Nov 2024 11:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KvCwlNdl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81A22A1B2
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 11:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730462072; cv=none; b=cjhz7V6x/xXIhoMxCRNiSb1B1zSr/9tr9GCd5rqPcVDT06S9x/663F8qJctI0FGQTw75PzyUZk4PTXQR/xQv3GXoEn/zTE5gnDlYuIEdpmhyc6sGZienAyAk4bqUv7NSuNP0Gvn0jjpf45b/i1AtWdNGY86lPf3HXRp4tvzQpM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730462072; c=relaxed/simple;
	bh=VTkHIu6x6J8oDnM2EYPHGTKSx4bAvmnfjc2sBE+Lf2I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GSB0fMwLSk+g3gCues3Ll/6rVfiLPFSNpcuME17RiAEx0/TU1eiuVaZm2A+oPRAfX1+D2ok7vH4NIo/aedJmw43F3LXEu6f6aNdhC/Ed+FeA5gNHLOHsnbazZP4sr0jjXVk7DS9cniGt4Q3CjUpx7RVxN8RwGiOKn0E43G6hbps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KvCwlNdl; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb3debdc09so14278031fa.3
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 04:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730462069; x=1731066869; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VTkHIu6x6J8oDnM2EYPHGTKSx4bAvmnfjc2sBE+Lf2I=;
        b=KvCwlNdlZHvuAo/NQ5ntgTz2uEH4MvpJYhRtkGuJBChah7TMnK2bcJGKzICMAV4w/T
         pa4vgCG3Ap8WwjrCkmmExzda5r9G0rsbWSXPSyNdEknA3EDl4bNPtE/qXWhcea+BgN4A
         FQHWhF/OsNG8AiJvhDVHrbXaXUBXlm6jHkefkSnVJRETESexQoXHjDPLKQeCHw7ON114
         m/QLQ5EUExO2wu/A0Evc2+ix7btfJsQAmMWDYsPT1kP3izFcREiC5dOf7BvSJj/+x530
         c6LkygrZkILgtzmTVT9sT5s03GPXOCCOoH/z+dfAiEuQfzdQPZmycj5yqOobbTQWtlP7
         mEPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730462069; x=1731066869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VTkHIu6x6J8oDnM2EYPHGTKSx4bAvmnfjc2sBE+Lf2I=;
        b=d7UoE4kFQwoE69FrXvyEHgNWP39L5ahakqtiTosesorga6nubzhdnTU7roEyV1w+H4
         7ebhL7oO6MUq75A5B6OB7joj58/CX0MnKuXYFC0N6nfMRVcYgwGPBc5Tlb+9a/Bgdzcp
         frT3Dya6xW2izf3x0L9XBitIwk6/fPanQl3wiDiAS0BwdL49gstRpS9DnykXu6Xrs5z3
         os5mcE4sSPeUf7WQqoIBeDihbk5ATGCgh03qrUJCzmgmHkZeGGzmS7a8j6U5inGFUL+F
         9vLMlZ1W0SLCvc+eBvieKz7g9oltJD3DKlzbwuXoK/HLqzw2uWRXOCw0PpAsNGNNJMq1
         +I4w==
X-Forwarded-Encrypted: i=1; AJvYcCVuA9UlHZ2ezr4oNa2aZPnv5Z/CHhHYY5KWxSvnKbsl+e+ItyOqGa/6I/yiiRmTI41TV9b2kxdO4Jyw@vger.kernel.org
X-Gm-Message-State: AOJu0YzR45+JGDzSWJqsT3pJ53mnExgmFCOInyx3zWBKN0BcCT3XVDFt
	PBx859YKblaC6L+gLpa7eZE8kNZNnwvrM0RcDTyndIEaBG/P7ba1Dd0lcVyDOtORerR7dg62gKz
	HHTfaRSzUy3wxM6RX8LuWfint/fVXq5LdDkICQg==
X-Google-Smtp-Source: AGHT+IElM+4cf5nJiQK/flMPFGUQS/qscWK2wONW7FVnOjF9n3NBlck/a/D8oXjerYOiHg6n+ZKlCTOw3SU28go/iqc=
X-Received: by 2002:a05:651c:154b:b0:2fb:6394:d6bd with SMTP id
 38308e7fff4ca-2fdec4e750emr31077211fa.12.1730462068876; Fri, 01 Nov 2024
 04:54:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241101080614.1070819-1-andrei.stefanescu@oss.nxp.com> <20241101080614.1070819-6-andrei.stefanescu@oss.nxp.com>
In-Reply-To: <20241101080614.1070819-6-andrei.stefanescu@oss.nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 1 Nov 2024 12:54:17 +0100
Message-ID: <CACRpkda2Ss_oy8vX6V7KK9DCvSoWxSg2R_iCourt-XReHBcpLg@mail.gmail.com>
Subject: Re: [PATCH v5 5/7] pinctrl: s32cc: change to "devm_pinctrl_register_and_init"
To: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Lee Jones <lee@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, NXP S32 Linux Team <s32@nxp.com>, 
	Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 1, 2024 at 9:06=E2=80=AFAM Andrei Stefanescu
<andrei.stefanescu@oss.nxp.com> wrote:

> Switch from "devm_pinctrl_register" to "devm_pinctrl_register_and_init"
> and "pinctrl_enable" since this is the recommended way.
>
> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
I assume this needs to go in with the rest of the patches.

Yours,
Linus Walleij

