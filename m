Return-Path: <devicetree+bounces-255954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 717A2D2EB83
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:27:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B9CF5300A93E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADA1B34DB67;
	Fri, 16 Jan 2026 09:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XZZQdsAw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5088934321B
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768555617; cv=none; b=PBXPV1hDNjDEBCZg5XMhIvQsTSQPHh1NMY+3mGNl2j0dGNcZ1plOHrWmprfGRVRDqWO+KujNHfV4vGD69I2cj+X1JuWN8FjZwVd2yApqDndjMZOrnG7pwL4l1SpIpZ0eg5q+MHsN6M3LapOH+CAoUO71H++cyYaJJa3A0J7yzh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768555617; c=relaxed/simple;
	bh=w5nXkknwo+0TmPQcwS99jRHRtVkofZG2b6gSRD8S0lE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RKvxKj5Jac7/KRqdWzropfZMIBZYrNq8tjOprbFuLCgBLBkfNFHwvOiWT44PtZrJlqOIWmXkMNWbqPLmre7gY4zrVKa6QSpnqEMglIbO7CJG9pymnU0in6f4VJwVVUgeNb0BhBayv95KnKK9QDYsahHfaBVaF1qwBa/k7fCs8Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XZZQdsAw; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-12331482b8fso5945922c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768555615; x=1769160415; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w5nXkknwo+0TmPQcwS99jRHRtVkofZG2b6gSRD8S0lE=;
        b=XZZQdsAw5OMDnZ4UCVNJiv+HUpZ3+yFpCmYi0SP2KTxfZ5Ya2M+N5qK1T9GMaEwUZ3
         dUztUHXsaqagay3O+23z4e6xhwmL5e60+SB5uxUcqvStotXDK0Y5CNyKAtxL0ngrqca8
         kTLEkqiS3j319/u3YcxfVi1bHX7mTK3b/tORD6j6FrxAKrc/NU5Dpe3S3qlQv3acC7Rr
         pJH4e6+nLK7AYGPo8gfdsc8ID8619RXAIesYg7V8DVndR0WZsbliXo/5eFnULqbTj74B
         PGyc82Ip7y+EXHJFRzBFqvTBHvwTq3fWUdg4t/wIrzi69DV6bSKBFWWJPtqiSoInmyGB
         wE/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768555615; x=1769160415;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w5nXkknwo+0TmPQcwS99jRHRtVkofZG2b6gSRD8S0lE=;
        b=IO1vuw93ojqbqe1LkOu3DsIu0OSnM7x1uEXkEs4wD0FS3ZUqbm/nBQIDvNuLLFtMie
         E/wjMKEa5wqlb0FMy9gPuU7oTAFNm+dhAbZtd2GfIVeJBAum6Z81GGsJyuLiENdijZWG
         3wHuJ98Q8JIZyOkViyXkLKp5fW6DUgQFpz4GJohM25XKm76FrIprIEgRX60oanqVFzCs
         dAverkOyL7qOSNhP9umPMJ3uMLnj+9zmUIdH48YRYKfROukL2Kyq37Cdg4q4Ztl/98Va
         vpkWJ7k6anO23+Nq/mjczHEAV7LeGYXZQ1niUFIW3KKPvy9sTGtby9dZfdjqcf5EbQ9C
         NIkg==
X-Forwarded-Encrypted: i=1; AJvYcCVw6b5NfY90fLtMPwQzp7MUDPPujSYFPiPOJaFDxNmB+C8oCg4zPquOsvEH9mIvdftvezY9FrIuZPKI@vger.kernel.org
X-Gm-Message-State: AOJu0YyA69kpMntROHEQ8D9dsydUFL1gLp2v6B5NB7V5F5SOnX0JsJY7
	kM3MBl78JIEfSwzxX0F6dLOWC+OjIB855M2nLehyRAY4U45XlxolzFohVLvHhhYezSrgfK4uezk
	XA1KRxvNEF+1MRv4K3EKgzXn3+lbAsOs=
X-Gm-Gg: AY/fxX7PPNG3WnfqiK9x+LOuznEDzpwAGXgJTsE7uGVAnq+UteFZ6Scma6ac0NerGcZ
	NdjbAgvhzCyLUE4W0vk6c7iE0RxgL2wi5fo8Pnu89UnOtpydnbcm3hb3SmU421oTmGPo/nlkXah
	qAGu5eh5WI5v7iwjDU7a0osrYOpg2jYIAW/oalumNkaTk5ZQQOptg0J5kyaDQu62Y7tBv+Wr0+X
	9JBmEob5fOfJeli5TN50rgUZBXWdLyLaS967DX6/zdS0V7JSucrgCgSKk/XQWF92kYyrBkMqOdU
	HSYYxXb/ekxkvibf5MViLGmba5QKlfACF8rWc6kOF6OKkD+YQ63wW2629oJy8/cHuzyB6r1DKAV
	qhQv2IpYoxQ==
X-Received: by 2002:a05:7022:b8d:b0:11a:3734:3db3 with SMTP id
 a92af1059eb24-1244a769e03mr2330673c88.32.1768555615390; Fri, 16 Jan 2026
 01:26:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116-imx91s-frdm-v3-0-98671de64925@nxp.com> <20260116-imx91s-frdm-v3-1-98671de64925@nxp.com>
In-Reply-To: <20260116-imx91s-frdm-v3-1-98671de64925@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 16 Jan 2026 11:29:37 +0200
X-Gm-Features: AZwV_QifTzULMtGjkjSS3S8CC5_mhR_1WSH4xBiT1nAYE-It9I2PKynf_0a8WPk
Message-ID: <CAEnQRZA0TsOdttpZA3DGb7xrDXuEJp8PQTC3d1tXFQGqdY3SJQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: fsl: Add FRDM-IMX91S board
To: Yanan Yang <yanan.yang@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, qijian.guo@nxp.com, 
	justin.jiang@nxp.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 5:46=E2=80=AFAM Yanan Yang <yanan.yang@nxp.com> wro=
te:
>
> Add DT compatible string for NXP FRDM-IMX91S board
>
> The FRDM-IMX91S is a low-cost, compact development board based on the
> i.MX91 applications processor. It is a cost-optimized variant of the
> FRDM-IMX91 board, with notable hardware differences requiring a separate
> DTS:
> - 512MB LPDDR4 (FRDM-IMX91 uses 1GB)
> - 256MB FlexSPI-NAND (FRDM-IMX91 uses 8GB eMMC)
> - Single GbE port (FRDM-IMX91 has dual GbE)
> - PMIC PF9453 (FRDM-IMX91 uses PCA9451A)
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Yanan Yang <yanan.yang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

