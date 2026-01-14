Return-Path: <devicetree+bounces-255065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3980FD1F552
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AF3823041F43
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E582D661C;
	Wed, 14 Jan 2026 14:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HIag13BS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372E72D6624
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400083; cv=none; b=TdKANtlFSDlgJBjiyg8WJjunYHc5rCNSUgHilbp/snsVWBXHyYDXMuOkehAMYnN0GsGLvQXhwqihddnDwCTESIVhXClouGgDKnGvV0uMSeQoxTdjEBlUHN9zAxXhw4OZs8hzEgxQHVJOXngOS3fH2Kr4vWWu6pTWRGVnjWmlNh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400083; c=relaxed/simple;
	bh=qrtUkzUvAu/GybEKdOHSy5+pyZma5Pf7dEV9LqKAr2s=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aF68aS3qlYIqhVmiHTzroAelEDYoBn/xVoreL/dIUkDmaC67B6OHnWFzJ7/ncCwcCTX8fNRUQUkKnIsy9fpadTCJjT7AeBfzG3tXwAV/10HX0B7RWDoo4Te2sC679bs+w7kXpy+Jhas3bkG2QV1b9yl3zvKYA20WDRAQ0vTRu7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HIag13BS; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8c52e25e636so168120885a.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768400081; x=1769004881; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ngcbeZxEgHt+JNZ+WGmatkfACIVP9YV9ttrHXNi6YxE=;
        b=HIag13BS41+0HEm+oowtl8xM9GWnAxFrlxF80AQu5wJBeo0mcOxvVGr3avLxbqvejz
         2e1YAdhGJQX8GrDUKccN01CJtEfXcmji3yhgTtgVnO6C3If/EXJy7k8IBhUkBVNsj4Fn
         GY4J6UMYjdUEVymGvh+Jxc/DdsfUqd04y9hRoZyokzMqtUfqhmYcX/sh6q3NBpEo1pBv
         eBrgu/3owA2wXs0mTHu4FNckUgagWmk+NYTOK/v4WPjHSfbgJKFpFnpnWHmSfLpQU0V/
         FCIxfTynz86ay9jXrZ/NkUJTfzM2tfFSbbFshqoRQvMu49n6ttUYBc0nAFi00rc/79xv
         oWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400081; x=1769004881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ngcbeZxEgHt+JNZ+WGmatkfACIVP9YV9ttrHXNi6YxE=;
        b=kHO6OMal0cqfPeJ/YAXFZQylWQbY12uh0IryiaFGkWwv+csh0VMLscorcIqSxJwOpi
         aun1fQ3U71qtgIBzAmLY7zFNCRqtV762ilub5dl0+jR/gp/vZphrRELrImWDBBZKawTf
         EsFy59Y9sO1CPnnsaLbx6PcEjNLE5KfA4O1cwmlTzkv54/k1hT1UxqcfQz0TRlzXu9Sv
         jBikeXbsn6frg7shulvLElIQTR4BM+rSHFAa7WK05b42h0XUPzKnJI3Va7+ZMMpWyJVR
         JwzYrnZSqbypaPcHTfj47rLhaqQJDKUfumo58QWhpoyJpCvF25rhRWmbIsTmJND9eNH/
         gVYg==
X-Forwarded-Encrypted: i=1; AJvYcCW89Hkj0EWC0By6tGLVzX1JJekzbSBJzLTKDDYncUSb3kjXRmq6xG8dC7Y5RhsQquWwr+gRcQvYPXQ2@vger.kernel.org
X-Gm-Message-State: AOJu0YwMnGirvJ3jRl/pZrenAX22CbFi6HLrxTB3w8DtCTUkCavqzsam
	txfgx0TxsFlunmYIqB3nRxNPIM4/tHAAW7FULl4UEudENbbUIvhs1ogU
X-Gm-Gg: AY/fxX4quQ2QQALKc15P6pH5Ls6NMev0i/CISl60QyaszAX7DGrs1nydpk5wkPNRWUc
	KbHr0iV2qtaWRK8iK4mhIAso4FXRd4RvltXx86ee4mpO+w7xijWHgL5NmAzMdDBes9judFVrylB
	NEYgpekKDD3PSqKZSpYKOwrwIbO9zGFVG7GkY5+1syMik6xK+ADXwy22aAZ7Aj3ziXuNl9haUvm
	3dsEhe0QVcoIbHIQqrGCmDgS+yqPUIzBzNV8mmYd9gzh8wYeH/UJ6Ux6IE0z6DGOXaoo16ANA1t
	IG1+WyCvQdq3sN6fBvk5sHC6CThFCn174Go06iOzzcS7Au9htoEUqasIgP2rzIQ3NBtqq0AgomQ
	TCfZONIT5+OaglPa5+oAAL6iukCViTWUV+rmNokFZAWsLlLrQXbwDz169HEcIjJP5YkNLN/DqR1
	v5xNHSO4aOjKE3BbkTpK9OdnicjN4q1opFKXYtDExPy6ee7jssmQnbfoSALLZ1GwH08HvNZYpLP
	jJo
X-Received: by 2002:a05:620a:372a:b0:8c5:2eb9:7be8 with SMTP id af79cd13be357-8c52fb9a133mr375377585a.47.1768400081038;
        Wed, 14 Jan 2026 06:14:41 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cdfb0sm179880536d6.6.2026.01.14.06.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:14:40 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 14 Jan 2026 14:14:35 +0000
To: Jun Guo <jun.guo@cixtech.com>, peter.chen@cixtech.com, 
	fugang.duan@cixtech.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	broonie@kernel.org
Cc: linux-spi@vger.kernel.org, michal.simek@amd.com, 
	cix-kernel-upstream@cixtech.com, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] spi: spi-cadence: supports transmission with
 bits_per_word of 16 and 32
Message-ID: <fu4ujdxwlhyhuwjtsiebje5pyc32rfs52vo2gyy7nay2krkxeh@wpls44xdfgy4>
References: <20251031073003.3289573-1-jun.guo@cixtech.com>
 <20251031073003.3289573-3-jun.guo@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251031073003.3289573-3-jun.guo@cixtech.com>

On 25/10/31 03:30PM, Jun Guo wrote:
> The default FIFO data width of the Cadence SPI IP is 8 bits, but
> the hardware supports configurations of 16 bits and 32 bits.
> This patch enhances the driver to support communication with both
> 16-bits and 32-bits FIFO data widths.
> 
> Signed-off-by: Jun Guo <jun.guo@cixtech.com>

...

> +static inline void cdns_spi_writer(struct cdns_spi *xspi)
> +{
> +	u32 txw = 0;
> +
> +	if (xspi->txbuf && !IS_ALIGNED((uintptr_t)xspi->txbuf, xspi->n_bytes)) {
> +		pr_err("%s: txbuf address is not aligned for %d bytes\n",
> +		       __func__, xspi->n_bytes);
> +		return;
> +	}
> +
> +	if (xspi->txbuf) {
> +		switch (xspi->n_bytes) {
> +		case CDNS_SPI_N_BYTES_U8:
> +			txw = *(u8 *)xspi->txbuf;
> +			break;
> +		case CDNS_SPI_N_BYTES_U16:
> +			txw = *(u16 *)xspi->txbuf;
> +			break;
> +		case CDNS_SPI_N_BYTES_U32:
> +			txw = *(u32 *)xspi->txbuf;
> +			break;
> +		default:
> +			pr_err("%s invalid n_bytes %d\n", __func__,
> +			       xspi->n_bytes);
> +			return;
> +		}
> +		cdns_spi_write(xspi, CDNS_SPI_TXD, txw);
> +		xspi->txbuf = (u8 *)xspi->txbuf + xspi->n_bytes;
> +	}

cdns_spi_write(xspi, CDNS_SPI_TXD, txw) needs to be called regardless of xspi->txbuf.
Otherwise, there will be no clock for the read operation to work.
This is a bug I am seeing on a Zedboard running on 6.19

kind regards,

Rodrigo Alencar

