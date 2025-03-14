Return-Path: <devicetree+bounces-157607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5678A6158C
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 16:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0AF119C07A5
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 16:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D717C202C31;
	Fri, 14 Mar 2025 15:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pbdD17BP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D2320299E
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 15:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741967988; cv=none; b=ArmjLfbWeDhpIoNJfJynqNR7gmScHllGDwzYwP8eep7qslbHSn/tg/h2JXCqeJrNkARKPy6sCDfgdzikQk4yv6Lqbn3zRYS0IApA9dDL9u3VPsc8lQK+x3/MN7JY8GQJhxZo2VliNaqRlnQIqRYWVvKrTRUijiAsU2aumvCL2FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741967988; c=relaxed/simple;
	bh=qbAf7RLJv6RsTwMHx91Z6PJ5PYNVMVgiR3uOKlVTE8s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gbGN1KJSq+H5Qj2vpl7fjBd5CeIGJtkvBjYLU4OHtVUE1hpdCDlRqN9BjnPhRcxsF4n0c/NVzxIokZlFMlM7tmHTERAjzGf9AQAY3IEkin6T3KqmchXvgFAtqg/q/MjH08Ow3JorIoXqrEZ5uvxhbtFkFD0LMrVgXUBQ2XJJ4Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pbdD17BP; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43690d4605dso15956045e9.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741967985; x=1742572785; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qbAf7RLJv6RsTwMHx91Z6PJ5PYNVMVgiR3uOKlVTE8s=;
        b=pbdD17BPKnXsMKsBtrq1RoP+o6fqRqO8bb5yu7ddTufgEuzYwiuIDowaw7504uNHPb
         Wfd4KSKMBcZjA7vr/GwlLg3vyrgB3DDzphXemPHz6+1Hgah13e7Eoa24wka11cjXGp2g
         f1J861OMCg/JyjPY0RSm4tWuKsS0JcSCygPtLFJ+E+FJXhV8OkgpTkeWPNyvWUnSpZk5
         2mh+CitzJ3vUXhyhaSkLtIyDlXRe073Kuug7k8HwPyQrhS0+3DnGqkI1QXtap1VlAmnz
         V7B4aM6HX6hVGIIbROJuMM1pIUQGmGEirmEQJS8vG/bQI2XEbK799RoDOi+vxKmjP1VE
         CbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741967985; x=1742572785;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qbAf7RLJv6RsTwMHx91Z6PJ5PYNVMVgiR3uOKlVTE8s=;
        b=rQ+VvfTNk3/4eH9ChzC80mrLwM1CMK2sTROLEU3svzJyQw/s/6iFg5JleWXg0H8emz
         6OBC7DFl0TEaca7P44s51t1pWjJyBnSldbjXtZQDTaFuizla41jGXKZKqCCT8rt2CQP9
         tGixSXxM/+p6ZGju1Sd6nnghI7hRJFNYndZqJh74S+1MI8vJn+ILqF9yzmo6bXr6POub
         Y7+Pd/GOJTylKKLfeTccDTho2VITUgSsF3FyqZKSdGM6MJ7cds73HNXECnl3d2Zu5skB
         yAbH8zMCfUujSNz+gXRYJUNvrAyIME9ajtfMcU+k9++WIBNW/SP1GKnWq7zXJhrA8dd+
         6UZA==
X-Forwarded-Encrypted: i=1; AJvYcCXbgcKIlP3c1PyVXoTScmXhlHwixKUNdb7w+Np7AJY8/34zJADQCPiomI1wxUF6nXKFPCjcjOHhYy5S@vger.kernel.org
X-Gm-Message-State: AOJu0YzrPSy4FAZ8CTGIoKz0052xJHs9wueacJyei053Hl324WoRDE/F
	X8Aagux2KEzqZLwNMeDMaEVzHE7iagqISDvHIghDI+4Gk8JdLp+24Lv0NXQVM0s=
X-Gm-Gg: ASbGncuX0ehdmeb1BE4HAGYfu4HGDGUNotwzNXFVMP57AeeBFyxYksfzszC/dyEPa18
	iPR6HNET3hDHUnq6tWk9o7b8QCok71NBKHixkPRADP90pGPey9j4BHxFKbCbA0gJ8b1lGZ2S/oO
	R6moLktoKqSsqNBa7JZwZPrW47pGgpOqi+KJjK5XBuBl3Q3LEsnBRmLmVKQ0ITWkmvD6Ie1WsSh
	Rb+QJKc0o5oox8gQQ7Uo+5/gWzW/nw8UZbOegIXfM6/4x8d20GgmufGJsW1CwNHGcrHw5Eum5Aa
	64kpQ3C7fdB6KI7uLZ2QwQ+QcYOspy0hShtjz3ssW4fhICAn
X-Google-Smtp-Source: AGHT+IHxwHHx6Fb/u1dWZbQ1qTy60BcLwUz4P4SvmS/UEUbzjpP8/AFJeuPq9qAxmx2U4YpAhe3Dbw==
X-Received: by 2002:a05:600c:41d3:b0:43c:f689:dd with SMTP id 5b1f17b1804b1-43d20e467c7mr27073105e9.19.1741967985037;
        Fri, 14 Mar 2025 08:59:45 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d200fac7asm21846905e9.28.2025.03.14.08.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 08:59:44 -0700 (PDT)
Message-ID: <931e5e0b07d598912712b091d99a636b796fe19f.camel@linaro.org>
Subject: Re: [PATCH 2/2] scsi: ufs: dt-bindings: exynos: add dma-coherent
 property for gs101
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar	 <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, Bart
 Van Assche	 <bvanassche@acm.org>, "Martin K. Petersen"
 <martin.petersen@oracle.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, kernel-team@android.com,
 willmcvicker@google.com, 	stable@vger.kernel.org
Date: Fri, 14 Mar 2025 15:59:43 +0000
In-Reply-To: <20250314-ufs-dma-coherent-v1-2-bdf9f9be2919@linaro.org>
References: <20250314-ufs-dma-coherent-v1-0-bdf9f9be2919@linaro.org>
	 <20250314-ufs-dma-coherent-v1-2-bdf9f9be2919@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Pete,

On Fri, 2025-03-14 at 15:38 +0000, Peter Griffin wrote:
> dma-coherent property is required for gs101 as ufs-exynos enables
> sharability.
>=20
> Fixes: 438e23b61cd4 ("scsi: ufs: dt-bindings: exynos: Add gs101 compatibl=
e")
> Cc: stable@vger.kernel.org
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> =C2=A0Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml | 2 +=
+
> =C2=A01 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yam=
l b/Documentation/devicetree/bindings/ufs/samsung,exynos-
> ufs.yaml
> index 720879820f6616a30cae2db3d4d2d22e847666c4..5dbb7f6a8c354b82685c521e7=
0655e106f702a8d 100644
> --- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> @@ -96,6 +96,8 @@ allOf:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock-names:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 minItems: 6
> =C2=A0
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dma-coherent: true
> +

This is allowed globally already in this file. Did you meant to make it 're=
quired'?

Cheers,
Andre'

> =C2=A0=C2=A0=C2=A0=C2=A0 else:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clocks:
>=20


