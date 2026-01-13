Return-Path: <devicetree+bounces-254342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CC6D176B9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:57:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 007FB300899C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDB6363C57;
	Tue, 13 Jan 2026 08:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hs5jTbT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D921F3B87
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294655; cv=none; b=hNCWnD5tOJfNZfdUU42wbVjrExUanVMfQ8T0Imbp6XPWPCsdaSSCQOYfCSQH+E+OeLoxTKe24JRkq/TsbjC7Wl+ioDO4o5H1x5oEAtAMEpu/i2jIzKuK1/aaTY5MwdSGkQIoxGbkfCZSYjhjlZKr/Z6bROdjDUKDbpDT11jFsNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294655; c=relaxed/simple;
	bh=Z3aLnsBMqI01ig7SW8ryw/EZMSWS5ROTkw8/sofKnPg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZtRls5ChUFPtvfLo6BJYmvDCB1/run2k1UfX3dHBLSKVIpjO7gMutGwLKNujgAPvf/D+lfQno+o8xdvpSwmX0d/L0QkuVIwT5Wahw+pgiA2TeiaxsWE84JjH9kJG8oAB9o8zLsjsn9pCoOJgDExlntVhR71hd/p/AfVVZcyRJPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hs5jTbT7; arc=none smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-11f1fb91996so12148001c88.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768294653; x=1768899453; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z3aLnsBMqI01ig7SW8ryw/EZMSWS5ROTkw8/sofKnPg=;
        b=hs5jTbT7fXDEOhlBfdrOfVyQWQF0rErtzR+8xKBQDb44J8Tda4m+nZu0m5KexVITY4
         HilbuODUwoJpWikQ4c9arSztNgfNTFSkzvsnFWUxf9hzbdYtSBY5C8t0BHW8vJUzBBxu
         zSi1NHyawDO1b2iWJJQrwX+rhZ78wc8BaWsiuVSjdSMQEuckSf9iRAu5TgvcUXQhOK3q
         hu5pSmUBr1ycC+nWgeOL0jojBV29aFK0S9FGzC08Smc0ELVkQrxYz0mzhBf9ycYxUzPl
         GLJwSM3T6mgpX0BPu8wOwhQeIpOXXYTfEQjdvY7E6n2P4dsbZkDb1xY/8RAa+QyG4IPl
         2mMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294653; x=1768899453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z3aLnsBMqI01ig7SW8ryw/EZMSWS5ROTkw8/sofKnPg=;
        b=ta0Z6ts8OuBPxVi23aUycPjpJJCPzKik04k1Da801o4GpYFSy7JzkGcEA399SzDROS
         ml1iDX0y6w5Rcy55GjR2kXY+yRZ2t+V0qQPw66Uw3FZbeUGVdiByB3gpJYHOG57PWTG1
         pomic8Xf9oHRjClMCo0gOaAlfAoWtmK77VojzZ2/8ALjTdWIEVqYbcGLrYNvV5O0yMC7
         0jqLayir+h4vwpDwcAMPbdHA8L9/YMfz7rMrjVSsHAhihBCec3n4N9DqOcgIX7JMHQUy
         jgThCvmoTxi6ClP94piv78Bd8o6lHNXPvnJtPhc/e2z5XzrRVHRdDGVFuZDrz6PGoNRP
         yoGw==
X-Forwarded-Encrypted: i=1; AJvYcCVUCVjKOcOOIj4b1y5MBbafva1+IevwrViX8OWyJG6BZi6XhdirdLZBItSq+Ya3oMsM14yZEo+Lr9ft@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn3L2l3l6THR9rRs006RGv0YvQQl+gSy2peoE+Q9jdBt0RmfLF
	8fwE5Oe4pTtht4oLYpizZ0xtg0JY35e2CRUJ78Zr3I0Mpks6waPigr2XQf33OYirppwlMjcQPJ2
	9lPwOg6T2Q43wd6WxwkWg67ruaZc6sgA=
X-Gm-Gg: AY/fxX4JJoeGYP/kuFL2XhFlAc4s5NHt8VTb2RVRg/CByx4P3xvWteqeOLh432lRYL+
	AeBvpLA01K/SCcRmxMZll6QLI0+ItUOm9GvwIp9AkvguZBPQPvtWYyBWXur6M6BQKh6WXJXy/4m
	act1o/lP6KjsM906cdjfY9pn++vN/91NwKFwlzgw1PY70gaOumr4F7ojxSvYObSUq3vSEck7BNo
	J2EmjQuurHYBSjIPT5w1NkZHP59BzjL9/xgzHjdwUqc9zzIGQhq4qDF9FrX3tHOmNEGxJtP2Ine
	2bZVWKNwUAkfb3V3/4rTC1mjkQPHs6jUsgdKFPEngIikpypsKmmKif+Io6l0wbp7+Aj7wKbAkXX
	oRXDN7diEFA==
X-Google-Smtp-Source: AGHT+IGmM3x0udx2jF6xiiwxJaTLbY/+mgnqHtLjywrZ5fL93iuUCbplfZKnu6LF3+3HUR+s0JIPBWJA6Z1zKzj+SNQ=
X-Received: by 2002:a05:7022:b89:b0:11b:c1fb:896 with SMTP id
 a92af1059eb24-121f8abb3acmr19422193c88.4.1768294653032; Tue, 13 Jan 2026
 00:57:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111-imx952-dts-v2-v2-0-5773fa57e89e@nxp.com> <20260111-imx952-dts-v2-v2-4-5773fa57e89e@nxp.com>
In-Reply-To: <20260111-imx952-dts-v2-v2-4-5773fa57e89e@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 13 Jan 2026 10:59:59 +0200
X-Gm-Features: AZwV_QhwFp5t77VYOIbQmjoAD6m22-epBN6U6A_kPYCLkLGP8qgHDvodNf2mkP4
Message-ID: <CAEnQRZDy7nbidWqhd8AxV6pHhHYOPw3Cbd8f2ky6YrYs8z4y6A@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] arm64: dts: imx952-evk: Enable UART5
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 11, 2026 at 2:43=E2=80=AFPM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Enable UART5 for using Bluetooth.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

