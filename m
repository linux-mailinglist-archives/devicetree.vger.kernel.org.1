Return-Path: <devicetree+bounces-85374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E8292FD00
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 16:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7B1A1F23D4A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 14:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3BD4172BAE;
	Fri, 12 Jul 2024 14:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DwItWLS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E236172780
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 14:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720796147; cv=none; b=ABGXlR2gepWmz1onpf5BnJDP8DvQw7FTJzm5GJNDWdRLuog0rZIBB9yd7j2ApPjrI2UAAyjVq8HIaPABxQuCEYuzy3xQBnjjYssxbzIGQsAlkHLjfXlrOqC9hX9bA2BQY/tGmfxT1PdtEf8PffjxRqOBum0ym9c2hMK1TGgSFkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720796147; c=relaxed/simple;
	bh=G01k5MRoiTRzlIXUWS5KbwvvBH05cutX2uFnWNAanTo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oAi3CXNAuxB8QjPNKy57SnFjAxCArwQ2y6Pj2k8jrFrjbjjnwRX6lfOPV9hFAMu/CIoQV1MckTjP/snQOJKOV2eK8UEdtAXWMKAVehU1yb/FO8WoIr/tBjly6rqJl8h2WoNj0oRvNdJoZ+X9UOg6ola83Q4C8i+jFQ0hDaoA2eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DwItWLS6; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ee8cccf2bbso2118191fa.3
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 07:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720796144; x=1721400944; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fLYT2mzC0BUKlvW0kshtuuqLZAeQIwL6GMBmaptllbE=;
        b=DwItWLS6PRESKBgaTAGHOOkl9lGWJTN8o/sbx01KDBKqEMatlHLtuyTOFcAD0ovhej
         e6xzz8YFSENIIX1txpAfwcif3JmAJThAWBDiTHKbaQBDUwKVzce8a3+0Jfwr4lMvPoB8
         0uFctbT0SwPlLmVp9uB3OkZCDQEbk1h7ArVX3rau8bvwHsBRJMyvE2obBS/cJQWT1ZAY
         b/rKHVhr3Xg1t1dRtQrGekmovdZywcSUaOgnCeyXr6owUU8WqRUCvFP33H9Q3kzozSrj
         QbYpJEiCDYehnPuDKpKgi2dYmj/D3qFCSb2OzmVnzZKKL9fAe7m3S6Qn3qwMJw+5KgHN
         eWag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720796144; x=1721400944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fLYT2mzC0BUKlvW0kshtuuqLZAeQIwL6GMBmaptllbE=;
        b=wLf7s2aaJb8fYrRImkyezbwcBLOWTsclUqhnxZQL0xZXS38vxCkPIEvXj5pp9mm6K6
         PGsZBVE3X29LH2aOn1XH/FBq90F+yGs5SDggXc6AYscW26D1DPXNeQRRtsLUxSE4lJEC
         uqo9Py239fAtcOXJiNFKMreL1D8nsXPq8lsrBW/XVQYNXkRsQnM7LoEuC/mYiAmxgY2v
         dpvgNNS9kG5q8MBx1YyEssPfDUVgVkE1OmopYHltOF3/KqdsQ09ehKRDdk+H6hbIkh5+
         u+0g8VcGtpJ7hfnbmu4g98Ohd1uolKQ5g38g8o1E+lViu6XLNAzsVcZ0yjBb+sebKQUa
         P0WA==
X-Forwarded-Encrypted: i=1; AJvYcCUmD3s1a/pugu7lebaMHVv7gvdrwpgcbIZ+blSNhEdNJgnnODYBJrxdLHbDCep17Uh3Rze/TyK+IgScopPs0yt9oRQl3S3eGt0O8A==
X-Gm-Message-State: AOJu0Ywz1WpdJ1VqeKxcpzinzDKbr/PtMi9Nvw8qsRMoTf0mKcuHq53K
	1hZ+yk6oHuyxxqpBSHkpF95tKBWRMVogfHrGt5YE87q/jWIjk8s3sUVZRw8Wm/gUv4P+L1Lag9k
	7cv7ADAzpVGA41PbvXfKz6QYGAME=
X-Google-Smtp-Source: AGHT+IEmCwa8usCUTHkBIv7Mf9zJRQM2XeruzJzahcPkwF8s6bnE8YVd2+VLiFSAqpzPPKlFYwUoErW1ogjMY4ANU7Q=
X-Received: by 2002:a2e:bea8:0:b0:2ec:5258:e89b with SMTP id
 38308e7fff4ca-2eeb321c561mr84830941fa.3.1720796144123; Fri, 12 Jul 2024
 07:55:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240712143908.158752-1-shenwei.wang@nxp.com>
In-Reply-To: <20240712143908.158752-1-shenwei.wang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 12 Jul 2024 11:55:33 -0300
Message-ID: <CAOMZO5DvN7ZaL64Wun3g49ewYQLou+8ASFAAp8Tt8SHGS3adnw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx93: update default value for snps,clk-csr
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 12, 2024 at 11:39=E2=80=AFAM Shenwei Wang <shenwei.wang@nxp.com=
> wrote:
>
> For the i.MX93 SoC, the default clock rate for the IP of STMMAC EQOS is
> 312.5 MHz. According to the following mapping table from the i.MX93
> reference manual, this clock rate corresponds to a CSR value of 6.
>
>  0000: CSR clock =3D 60-100 MHz; MDC clock =3D CSR clock/42
>  0001: CSR clock =3D 100-150 MHz; MDC clock =3D CSR clock/62
>  0010: CSR clock =3D 20-35 MHz; MDC clock =3D CSR clock/16
>  0011: CSR clock =3D 35-60 MHz; MDC clock =3D CSR clock/26
>  0100: CSR clock =3D 150-250 MHz; MDC clock =3D CSR clock/102
>  0101: CSR clock =3D 250-300 MHz; MDC clock =3D CSR clock/124
>  0110: CSR clock =3D 300-500 MHz; MDC clock =3D CSR clock/204
>  0111: CSR clock =3D 500-800 MHz; MDC clock =3D CSR clock/324
>
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

Should a Fixes tag be added?

