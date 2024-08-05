Return-Path: <devicetree+bounces-91035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC6794790A
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 12:05:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EC3B280EB0
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 10:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9BA6154C11;
	Mon,  5 Aug 2024 10:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O3TTsa+D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C401547DA
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 10:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722852287; cv=none; b=PEsGOt/umzALND/Q8JPdk9+d3vd3e0qdgAdJdlTMVLEMwNOleBth643a9nMrUIaR1BLhmtZa/lj42Y2B9Q31ZSh0hppDHxH0vG2pCuXgwQUhLX/RMPzzO553OLdnP4YpQT+Nkr2489hdZM7q91DQmUmQM0e4mNWU+I6x55V+CAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722852287; c=relaxed/simple;
	bh=NrP89VFBY7rsx7EbXcSXKLeYzXolWV8BMUaTDdNiuIc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r49LSYb/7KS3q4UBRKVKh3UvUVFJYRNZjtDXbSvxRUs4WwF27YqE83Zdpp1P9LCxk7eOaT7t0/OqMkNO94+z4GgdIs4azZ2CFjeS8UYK7pamFKYadBtodHlWE6fw/5ShyhtigCzaZC7BH/hUxKWFg/hxbGI8NT7ocUtS05lPGHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O3TTsa+D; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e03caab48a2so4353434276.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 03:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722852284; x=1723457084; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hSYGTPrpLH+BuhVL/Q/2E8uLKhl1KfRAsEdIshJ8Sjg=;
        b=O3TTsa+DOEhyRzwzJxdy1IBqByszFg6gCQwqgUQD/YS+eunwj3Okal63tnHQD3gFzS
         mklCASjot+6W+j97Q9xgl+oMyXSXffRPE8CpBS1WTM+6tDBfIZtqdT/xazSIL7wGnYi1
         z/lmgqcTj2hExLsPZ2dWUEHuNUmiVHEG1MlLjr0hxpxldcYNbiO+ACcjROcraZAdg8Av
         yEItCOtmHBCJCIez6ao8zHGxGWnbKuWU0un2VLkYOIVqKmybvzwzrIW6SvPANNZvR1v0
         Bn+AEWvutwS8jgZmVCDuKX0NDvqLA+PLLQDqsqk0KYPRn+J13KxhyrK/KuKNSL//s/tU
         kMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722852284; x=1723457084;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hSYGTPrpLH+BuhVL/Q/2E8uLKhl1KfRAsEdIshJ8Sjg=;
        b=kLndQzo5SgZYqCIYesuanQ2Sky4lULslAO5yqSOBmeqpYgxPisLcdV/HYTqqnbSZ8Y
         7GQKb2rPpKp7ht/L/qLcqKZEELULnyhOz430fb1TE8T1nwLsj33636VQGxPqYibpA/5Y
         8T9whOg35L4bhqCJOFlul3zONNBdDmwKE3MsCEgkRbjiwLA32YS0ppN4flN0OX7JbFpQ
         70BXaNtUxchbETjkamZZDr9pzshhOu3XunGvo536z35HkHTkvsWl/AIIsBAwCdVWDjSY
         skX8Uf3DmQfJpUU9Ph+8Z9RAGEciNfkN1PC8GU7YHxDxF7285uK/0rjJRzNGumb+jSzs
         p9fg==
X-Forwarded-Encrypted: i=1; AJvYcCUxmqnQQUnldoa97CVO1VodBF27h51Zk0ZAqm+zSvzb0mKTif6SJmriKRKTnjUmRoqY4Gq7BYlMJo4hKjEw5G3dPbHXRfC3BI822w==
X-Gm-Message-State: AOJu0YxcXb+a/lB4mm7z0lQlIa5o9AQlOJKDUwfmlvTTWAvlT6935u5Q
	VYEvgxBeFEecVYpTjMi5ZnGwCVzQ9tB10UtMFplrKIIgx3JBkpQD7w2i8otPo379TI4cQOsh8ZK
	zl5Ta+4lOh2VoyovhMas3hjP3UyXA+Eq2XWhO3w==
X-Google-Smtp-Source: AGHT+IE28QvjYWO5xF3nlYl96xgvVqGoKpL4LpWlRu2pROebD4A3WQjuKfY14W5cvKLlfjChMzAEUCdDmxnejwKRHho=
X-Received: by 2002:a05:6902:2b0d:b0:e0b:bf20:4fdd with SMTP id
 3f1490d57ef6-e0bde8ee6f3mr10631170276.1.1722852284031; Mon, 05 Aug 2024
 03:04:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240805040131.450412-1-felix@kaechele.ca> <20240805040131.450412-2-felix@kaechele.ca>
In-Reply-To: <20240805040131.450412-2-felix@kaechele.ca>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 5 Aug 2024 12:04:07 +0200
Message-ID: <CAPDyKFqyRevbmPy6h8BsiTLBi6=J+9uRmSib43bzzZHFEmDSVg@mail.gmail.com>
Subject: Re: [PATCH 1/4] mmc: sdio: add Qualcomm QCA9379-3 SDIO id
To: Felix Kaechele <felix@kaechele.ca>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kalle Valo <kvalo@kernel.org>, Jeff Johnson <jjohnson@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-wireless@vger.kernel.org, ath10k@lists.infradead.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 5 Aug 2024 at 06:01, Felix Kaechele <felix@kaechele.ca> wrote:
>
> Adds the id for Qualcomm QCA9379-3 SDIO based cards such as
> the LITEON WCBN3510A and Silex SX-SDMAC2.
>
> Signed-off-by: Felix Kaechele <felix@kaechele.ca>

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  include/linux/mmc/sdio_ids.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/linux/mmc/sdio_ids.h b/include/linux/mmc/sdio_ids.h
> index 7cddfdac2f57..63000a8f4b13 100644
> --- a/include/linux/mmc/sdio_ids.h
> +++ b/include/linux/mmc/sdio_ids.h
> @@ -52,6 +52,7 @@
>  #define SDIO_DEVICE_ID_ATHEROS_AR6004_19       0x0419
>  #define SDIO_DEVICE_ID_ATHEROS_AR6005          0x050A
>  #define SDIO_DEVICE_ID_ATHEROS_QCA9377         0x0701
> +#define SDIO_DEVICE_ID_ATHEROS_QCA9379         0x0801
>
>  #define SDIO_VENDOR_ID_BROADCOM                        0x02d0
>  #define SDIO_DEVICE_ID_BROADCOM_NINTENDO_WII   0x044b
> --
> 2.45.2
>

