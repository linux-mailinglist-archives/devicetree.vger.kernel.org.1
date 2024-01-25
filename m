Return-Path: <devicetree+bounces-35272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D9C83CDA3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:40:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FA6E1C25458
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E3C513A25D;
	Thu, 25 Jan 2024 20:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Br6/qOxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E311386BB
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706215170; cv=none; b=YKH4eAVteylSAllwj1WX4sn/Wuo4mA/sHshV6dtJ1ryYdZgJIbBqFegn9wnhGdNqWKh5bqXtybQcxW0dy6iAY+tbIs+lt6oVvh+fC4/mMC29eTLSxb6gz3v1uCPkX546uSJMdTJvDbxWuMqblrHSoW6hK48KIgi044a528nEc1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706215170; c=relaxed/simple;
	bh=s+CNI3JNLu1nvooJuC97JZqUR+3i4Ph90d+KSlvbReM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o5pPL4NpLIu1aBttoFrLfZP7pu5PodcgHObhrLBCLYRLA1fdQ6P14QqY/ca7kMgIh2YPfzjQian2BZNDtIgEQynunnknJPvFTDK5eMGlMamzCH/5r7lVwmU6lY3gH8IekaaUDtprsoLMA4JrEcew2qB6nnHZiDAULjg4t+jaur0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Br6/qOxU; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1d750660a0aso26815115ad.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706215168; x=1706819968; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3pWX0tSnXNQU7YWMSUAdn8nRIoliP+SCtS9aBuv4yuU=;
        b=Br6/qOxUQF68MgLQc8X82Oaru4wWL98zhkLqH8Db5LCtWzjge2qJUyO/WTRcbeMbUs
         MhAjTmCiu0QCvWlYrbV4UjuVbzz4NcOQCncGYGiXg7ZEfCkhvX7Y1ikXItVHOwrSrSjX
         a279+fyyGjGbaplYviAxIgAC6E32nvlJ1JdNicVuwu5WQpPurC/jkfcUnpQTq/kMJcLZ
         1x4icKa5HgsHVcnglWHUGfIrX+4u+/G2tTHhTL8HN/csFGP3DnzrTJYXPXhLrbyCcONU
         HOerzGEHzfeOaiQ1YSSlWvJLdD9FhOInlQKzxHQ4g23zVNO4rhqzzbC5gbS0GA9pQXD/
         RI5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706215168; x=1706819968;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3pWX0tSnXNQU7YWMSUAdn8nRIoliP+SCtS9aBuv4yuU=;
        b=B/myi795dpbOBkSSVm6lagMr2mnLg1cTWoKoz4xYMpCVYcBbmNpa0DlsSwLkOyq4so
         HTqC/PXgrHrn6kk6OE5ZSRWj8IWWcLv8UObhxr7qBMVsa/f/bMjgUm4uIBlLghenezHd
         tQfps4XpnDBJdD5HZMsoYfi/Ccp0LqicYu/u+MwX5ltGetbrXT76E1OIXfz3HICHzWUQ
         xzQ5jk0CEgv67YstxsPFaBR2dAQPRPaYIYErY8Kzcwb2XxsVDGr89LfFXmx7L2GPyECe
         Zhn6nLgQUOAE050G6KYb5xpu754SbPhcfzGeFnqnSE9RWpAHsSyRqRSotGF8nEL/CarG
         xO6g==
X-Gm-Message-State: AOJu0YyPrUYCIn2un14Q1FVygg2qxuyDyDH28iv5Boy9xSuIJtyCpuKQ
	4GPj9Y1qAVYoPMQSQlkyZXmCfeioQqhhvWrbYCdwdT8h0u9NVvWKrNa/EQPy+3XdOZkt1LN1x0m
	/RFk0uBC7Q+/9cN28JeOKV80vU8MZ2AcjZVGC+w==
X-Google-Smtp-Source: AGHT+IFPK/mTXKZ4TYJQATnWWTb210gdrST8EgunUaaJK06mOLnEAcaZx6WF8FyEJa+mMK8KOk2avzvj3s1vIgtsrfc=
X-Received: by 2002:a17:902:b418:b0:1d7:91:4f9e with SMTP id
 x24-20020a170902b41800b001d700914f9emr316650plr.96.1706215168423; Thu, 25 Jan
 2024 12:39:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-19-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-19-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 14:39:17 -0600
Message-ID: <CAPLW+4kGTCt8cHqTzNqGZoUqw68PY3AUeZ7SzTJ6jj2im6DSGg@mail.gmail.com>
Subject: Re: [PATCH v2 18/28] spi: s3c64xx: fix typo, s/configuartion/configuration
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
> Fix typo, s/configuartion/configuration.
>
> Fixes: 6b8d1e4739f4 ("spi: spi-s3c64xx: Add missing entries for structs '=
s3c64xx_spi_dma_data' and 's3c64xx_spi_dma_data'")
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/spi/spi-s3c64xx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index bb6d9bf390a8..692ccb7828f8 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -174,7 +174,7 @@ struct s3c64xx_spi_port_config {
>   * @cur_speed: Current clock speed
>   * @rx_dma: Local receive DMA data (e.g. chan and direction)
>   * @tx_dma: Local transmit DMA data (e.g. chan and direction)
> - * @port_conf: Local SPI port configuartion data
> + * @port_conf: Local SPI port configuration data
>   * @port_id: Port identification number
>   */
>  struct s3c64xx_spi_driver_data {
> --
> 2.43.0.429.g432eaa2c6b-goog
>

