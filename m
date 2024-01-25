Return-Path: <devicetree+bounces-35261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F30E83CD4A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:20:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B81F7295198
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AFEB137C34;
	Thu, 25 Jan 2024 20:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aA34IaJ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58A113666B
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706213998; cv=none; b=DMRS6NFfIEeRktceshTElP5l99oeyr9/9AUOSRlfOavMMuu1BZs3h8A5UGazmZonjCaOTLD0EVcBAtZbPw/QAmj+DTi/Liua8ZwAOabvqv2wGJ1BIIM1QahZLXT7nRZLrLU41ZfkVM8citApv6dyZYcbX6ArImdvQuWPJjwQddo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706213998; c=relaxed/simple;
	bh=PhI9LW/VlbekrhSAPPRbJUPp4nixxFeRGjHAOy1SKHg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KCu6G204z4/PdApFJ/NBBIxTx31AZfd0TUkokWiGQ6pNsJGb365y5lwgDPz+DIRW/bEh1VDAbrV0ChIgYipf6IeVaz4dwuaiCnLFAOkFYC5Vy/6PWHPsBIJqiLBuTspMvBgqaFH4CjfY8gSYE3pVxc2LeVClW7Vm0Fa04AZ/2iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aA34IaJ5; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d71c844811so38939375ad.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706213996; x=1706818796; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1AMn0y6UWpR7xw27jljzDWKtm5PPL6Cu6Mug2W0VcTk=;
        b=aA34IaJ54qmnN4639ntC0tBaqILwKLtWGgrubPDL42t7BoVYBjeWxUYWALtJ61N5dC
         3JhqHizcKmyiEjULvkyUaQBVdkxCRxx6Bk3CvgNgnSrJfeUmXMBfmdwBCtIxZPb/9bWo
         Ei/vFFMofDL+pP/fP90jLr3MsrZkTiRcClsByswP4HWxICQKZPP+ZYWLhSzb7MruJErZ
         HJDYCLuen6vJzs+/qlFZchYBYCHK/Gu15yOlA098gCZQY9wP/L4akPdFMbWAokPpzzbP
         6uCqxY/GXwlRkficGYt4NTcIYYQtwJEmzP5V7GfMzqvvqakLX8aUMNKIhmdvzWBDc+GO
         MRHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706213996; x=1706818796;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1AMn0y6UWpR7xw27jljzDWKtm5PPL6Cu6Mug2W0VcTk=;
        b=HZovIKcB69ZFJFDJkACl3EYb7jOQUUirotqx2RduSuXavU0eea3ViFKmefVLAGuSTe
         1UYOAlgVAIbls1KeWNtsobiETPk95rvbhjaeo37uGrD7bIq6WxB4sJ2eFUyU24duhmTx
         GCnSpq96GnbZJvjAlGx+7/XMsL+kPt5fEleDiXVTftRYAeIJbnyGML7f9GH9JiWus1EF
         QEL3dI1iuN++J3IPQSOYNzQVnk4OPcYyOQZCsNvz6Q3uwPsVJFwerOI54u3/BjJH5WW4
         qd5S77NFs0WDqE5uTcjydZJKk87Gp7ig3fPnGb+lJM+3mkuCMzP5qVfo4uC29BGzJciU
         ijFw==
X-Gm-Message-State: AOJu0YycNEyM1kuJ+U6ILHqxq0h5dYZ4jUN0rHBYDzy9s96/tfu4SEpq
	m2jCJ6v9bk0NdZOWlv0k9GyufyVt0yobamT++GzpgKiWwRJABZjgZkZnzbdPCKog/K7sOcVGNdx
	rWw+pvk7uem3lGGQmee1GXn7len2JjTofn9B+PQ==
X-Google-Smtp-Source: AGHT+IEDlNMo5aTWzDJycnq3U1sMwSmzGwmT5xXHVku5Um1940OW4HPZE75X2sbisg5ytxzRxcqd5yUDHa1l+h1tjfo=
X-Received: by 2002:a17:902:ecc4:b0:1d8:94e4:7718 with SMTP id
 a4-20020a170902ecc400b001d894e47718mr262595plh.114.1706213996125; Thu, 25 Jan
 2024 12:19:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-13-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-13-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 14:19:44 -0600
Message-ID: <CAPLW+4nW1LyMT2CGD7R_oRPtRgNQiyUjjUqZJYTAJ2HJMW9yfg@mail.gmail.com>
Subject: Re: [PATCH v2 12/28] spi: s3c64xx: check return code of dmaengine_slave_config()
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, arnd@arndb.de, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, andre.draszik@linaro.org, 
	peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2024 at 8:50=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro=
.org> wrote:
>
> Check the return code of dmaengine_slave_config().
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/spi/spi-s3c64xx.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 107b4200ab00..48b87c5e2dd2 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -297,7 +297,9 @@ static int prepare_dma(struct s3c64xx_spi_dma_data *d=
ma,
>                 config.dst_maxburst =3D 1;
>         }
>         config.direction =3D dma->direction;
> -       dmaengine_slave_config(dma->ch, &config);
> +       ret =3D dmaengine_slave_config(dma->ch, &config);
> +       if (ret)
> +               return ret;
>
>         desc =3D dmaengine_prep_slave_sg(dma->ch, sgt->sgl, sgt->nents,
>                                        dma->direction, DMA_PREP_INTERRUPT=
);
> --
> 2.43.0.429.g432eaa2c6b-goog
>

