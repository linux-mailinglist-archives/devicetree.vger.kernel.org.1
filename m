Return-Path: <devicetree+bounces-248266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B11DECD06C4
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F14873025F9F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 677D51E1C02;
	Fri, 19 Dec 2025 14:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="INOM8+kH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92CBA258EC1
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766156230; cv=none; b=pFWJgKOJ66t+mTopCTDwpwr8Rqgs9q0B+TPocg7GuGva59t3RDArwIQEUU36dHIt0dVAC8so9puj5CqLQNOCEM9LAOMd475fwY4Rv9U2LQFUVbN2AXfhZUlBGxjdgh75eeKw02ohKwwynNCLqDi0gwmhcEnjRfS5IRD9SUSCVAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766156230; c=relaxed/simple;
	bh=8wGFJgfb4wEXs8e+H5Ec45dLu3UmfZvwKEULZrNoyMI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Nh/288qE5iq7fSnAixLkKNVid/CWvqcUULlqmj0jZpMacpVD5sEmJFxsAWypvfiYlYm1C3c/wwp4nozJFnbD+KxR113sAPzpTABhRNpAOpuPJSlfdV4fRrkL7wmJ5amfJVh7PuerdXYT5chLRI44pYlzbi8S52PHVj3LP0LbhIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=INOM8+kH; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47789cd2083so10903745e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766156227; x=1766761027; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8wGFJgfb4wEXs8e+H5Ec45dLu3UmfZvwKEULZrNoyMI=;
        b=INOM8+kHvgdlaIm0/qVMNyeInM3E6tpkB6SUZ0Lpn2kXTtaGOouIatjvAyieH/+tjn
         HAAVB4qQVE+dwj4Yp8Tq6yqWkwb1a55sJ6ZAzuyMSACvwjmK9InM1C54VoMorWtCXUnC
         XrbfV5YxuBvFSs+cQPZUwtPT3M1h1O0dmA6KkPaJqJIgSnPTgjq64u3rl9uMYAtvkAAR
         VyG9fCF7I3fS2w/iRVpGNumiAy6GwKAhoSaG3eZ36ky6csu1u12YR4NFEvExiTZ6/RvI
         MORVX5IznHFKggVdBzLeOKX0YEzo1u4jZJBoId9p0Cmoig4UQIP3cDcrw3H7p0hkON+m
         +/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766156227; x=1766761027;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8wGFJgfb4wEXs8e+H5Ec45dLu3UmfZvwKEULZrNoyMI=;
        b=d+ah+bN22VkzXIY9IsYjaAX9/tL1NEIQsYZlbKMEQ6g7EChsMD5i37RXXo/zQyCsJF
         5p6ZBRT4IqVsegdvBXpgtvt1S+x4nJ7A5syd3ayb89Se76lqPpAcI7TTTyUUSJ6nm4Sm
         2EJaZ1SvOcDzBrV/CNVzja3hwkBIQj2GjbXvRf5EguwQqZeOuWTtdpq+31oD/vi/wpe7
         lZs0kY9DwVgPx0NOD8GUO/T1WLUwB7AgOZ1yzSnQUkZaAG5N9oKqpaPl2bZjQaNnxM7Q
         LYap9izkEqqbZkAbaAHri7WYjZyamaFM9gHPT3Y+zvpCtAheTk6uw1acfgXtEEc0XBIb
         6jsw==
X-Forwarded-Encrypted: i=1; AJvYcCXZSZn5cZ3nEs0ZaMtoonz8YbV2Ca//vBjuJakdqPk7PbQ2DGvM9zH3vL61EKq13jCrE9HYFVWqBAc3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3A5uLoJ6WllgngRO65nBVzzuiUxtHr41FCbDfmQw9IPgw8WMu
	QHeojz2w5tt+XTVY8+rBPOHdq+NAnhHh55L8uZra5dB5LbyTI3ZblyeA+wLR5Iu6uv4=
X-Gm-Gg: AY/fxX7XJpnrRWBB+fXu5hGfg8vs3+9ldxPzFYKYuqwRRT42Fk9WugatQ11PS+fVSCj
	evxusnNprOzM100ANSHLx56FLcppB9HN9hBdDV9DH2CjO2dWcUDjp2BD1vyMczm1kRVlN7vK/7n
	0OsWtRyR0AUkt88R5GzybxCgvEwNIUA4f46TBsgn3t9O/OGLY0OvS7O6nSkidHnppy9a5Z8/DqN
	iQ2JruoIhTuuyIjS4OyqQo0DJzVKN4czxIy6dvoyK+w14Crv/ST6irXroqziQxWDBzOBgEZAT5h
	KNq+szN1LIl6yyUkspe6KhnU5VtuUeaSuYPN2b4AwoKicZ/5nagd6wG9jsWgGhHImyOtQ5OAN/k
	w5ovRmngRXHvIOylpPzvD9oJxQVfCJP+ygUgJblNdhB7IHsQUSyS0WzcPQmcvXsKuCyhvaC1D6f
	eQlzf6MZYt/QRc3+xhHQ==
X-Google-Smtp-Source: AGHT+IG0kuzKihAK2EYClDOPCu190trNqH7HRizVwD4ck4omkH7iQRBsiAgdxyr0jD3KRQLHTUyGMw==
X-Received: by 2002:a05:600c:1c91:b0:47a:7fd0:9efc with SMTP id 5b1f17b1804b1-47d19555b78mr36411585e9.15.1766156226855;
        Fri, 19 Dec 2025 06:57:06 -0800 (PST)
Received: from draszik.lan ([212.129.80.126])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4e91sm47624915e9.13.2025.12.19.06.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:57:06 -0800 (PST)
Message-ID: <da80f729ae5c8899181f3b35b0f30b59f11535a8.camel@linaro.org>
Subject: Re: [PATCH v3 2/6] soc: samsung: exynos-chipid: use dev_err_probe
 where appropiate
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>,  Srinivas Kandagatla	 <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Fri, 19 Dec 2025 14:57:13 +0000
In-Reply-To: <20251120-gs101-chipid-v3-2-1aeaa8b7fe35@linaro.org>
References: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
	 <20251120-gs101-chipid-v3-2-1aeaa8b7fe35@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-11-20 at 11:29 +0000, Tudor Ambarus wrote:
> Use dev_err_probe() to benefit of the standardized format of the error
> code (e.g. "ENODEV" instead of -19), to get meanigful error messages, and
> for more compact error paths.
>=20
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> =C2=A0drivers/soc/samsung/exynos-chipid.c | 26 ++++++++++++++------------
> =C2=A01 file changed, 14 insertions(+), 12 deletions(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

