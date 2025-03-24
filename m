Return-Path: <devicetree+bounces-160293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF06A6E2B7
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 19:53:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25B4116FE3A
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 18:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D741266F05;
	Mon, 24 Mar 2025 18:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xb38XE9m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE32266EFB
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 18:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742842403; cv=none; b=fFiaf5A9hU9wGHv77PdeQe4FD7Nzfjx9cJtosGwm0+C5qlw9JmFw6bwyAv3CXkjWuX6z02csSrCJOuHOGhCtGuOIUig9OSemWX0eKXv2CeL326kDglVBC1KgLhDwbkSfNLOCnP22vXUUQvwtVQskhWBDgEqCFLv4CYBKC5yxIpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742842403; c=relaxed/simple;
	bh=9Et+bejBKOhYPrG+RLIDdB0IB0BGiirDMd/wt2M4F8E=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ZxqI1qAy2PFMcpRXjLDGmqgiQByRpsbV0fsuDLk/bn5XihJfv0XdMoc5EF6SP7BV0A0ChKUGokC7JpTFEPp5IEsCtq5e8O7rwRJPAZNnBNS3Krc9iHn34fdZxR0l4SxNd+HwXwRua0yLCoy2+HSMWLxTuWHFH4nAMw227YnJ+7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xb38XE9m; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-72c173211feso797668a34.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1742842400; x=1743447200; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IZA6ZpsiQTf1qeWnuqFjmneHdX8zeg+LaVhzQbpBn2E=;
        b=xb38XE9mLRztHaEIdj18E+GP0M6qhI1LxnYODqJGtvxcXfnNhuhkEo4ain0supuID2
         yzA1xdwRPaFKvdOvWNW/yjR6S9jRzXQwC6+OXO9GTPYvYIb2aFTwGfXH9I/ZtpybGlH0
         qlZV/Vi/64gqy3Wpdfvw2pp5uu54lcyAC5jrAEWVpKYkCcBbRSj3mRm3HTn3SOsW+uQA
         6eFt8FRAs8ydcFZACun1CsclsQvVNO45Dn/AajS1UxoIYgy9WP3ADZ3HDD/XZDbZSgcS
         Ju1LpoOatGdFvAiwzq7TLnsnBNA/lXMhvrTFrWABP4nTJv6Q+3cumvrOhQVZhkja5ul6
         7s6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742842400; x=1743447200;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IZA6ZpsiQTf1qeWnuqFjmneHdX8zeg+LaVhzQbpBn2E=;
        b=XlKSXSVv5nVUkN7aJ/mrwqKhhcqDb4UinIIK0sIVgqSS2uegtSAo9UV8mhnoLCQL83
         3jOwZylHFr7r8S7eo+Qphlqp0DY4Gs8zHkfn24l9Mhu8R5Mg6hdxL7Rz2qUamM3oDMQ8
         0uJArNZ/ORzMfNeAB8S2xZleOF3xO8DPBTD6jpUpCTzpTAtDIXjJYFJdhXdHUFSOkw1H
         uLcMwad6FeADsURFwJeoJk68C1/nGkJKRc6s2jgbuhTzcNt8wizbjpiRE1O+9a863Lqz
         MQewEOa4bPVIbgoNrWseS7LCb3LYW/R56BYZilulIEA/mCktQ/4o/rPzmtT8FZAZ3Tf8
         QLvg==
X-Forwarded-Encrypted: i=1; AJvYcCUQRihVhUZ3RWFmCZBbVYW7kbp/OI+YJSbYiif/pbx/5SfIkg6Fj0IqxbhJ2Zq/hTF+S+LRRcypo+O8@vger.kernel.org
X-Gm-Message-State: AOJu0YwBRm/9B46LbBk5XiLJ6tm9CatuWMxjlf09DhB3VtrabWecxCdU
	vG+JQzAhk2/LP/2nj4icwLSsDlNYV39+HYbHhj/StI8hI6goAYf6Bwqi0v4rfAw=
X-Gm-Gg: ASbGncuwq7JOthxv8Dn22aUkr2qECavoOlF0pHBfDMUjUiYv6gtnXmTXUYPJnNTnaSe
	UZ3xCMvcnVMwEJYGdnFF0vH1vq60SURssTXDUI7STJYQdc7gGYUlCs2i1kkuOsUISNSCKdHUnJc
	WNicQB5cKCnlTZwM+VPNimeQLNNcmA3ZatwN7ts6/Bc0wHr+lD4LC1oZzTbZoHHJwBFoyv0nakw
	iFCmXIX+U/6ibM/LJ6ZJnJgZo0LnOLaHKThcXSrpMiNkJS3P4CWFaz66dQnTxL8oDZbV35uxe+n
	/i7nhsQVH85XuqPKHoTlffaufMelmBJ/vvOWHeWEvvPPS2WvycW6W6/xRrPOGSWVr1LJas7a75B
	SqmF/Aw==
X-Google-Smtp-Source: AGHT+IF6cN3R+AuP+yrpCG8uySpNH6oMp8tp8ZKnKYMSbTLqIU4c2Zi4NYw2RNf6jlvZs1qwrYXK/g==
X-Received: by 2002:a05:6830:6217:b0:72b:8a8b:e032 with SMTP id 46e09a7af769-72c0ae4658fmr9534102a34.2.1742842399668;
        Mon, 24 Mar 2025 11:53:19 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72c0ac6c76esm1630781a34.49.2025.03.24.11.53.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 11:53:19 -0700 (PDT)
Message-ID: <9b565cb2-815b-4ca9-a7dc-8ca2e8eb5f72@baylibre.com>
Date: Mon, 24 Mar 2025 13:53:18 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] iio: backend: add support for decimation ratio set
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Guillaume Stols <gstols@baylibre.com>, Trevor Gamblin
 <tgamblin@baylibre.com>, Dumitru Ceclan <mitrutzceclan@gmail.com>,
 Matteo Martelli <matteomartelli3@gmail.com>,
 =?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 Herve Codina <herve.codina@bootlin.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250324090813.2775011-1-pop.ioan-daniel@analog.com>
 <20250324090813.2775011-2-pop.ioan-daniel@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250324090813.2775011-2-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/24/25 4:07 AM, Pop Ioan Daniel wrote:
> Add backend support for setting the decimation ratio used.
> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---
>  drivers/iio/industrialio-backend.c | 18 ++++++++++++++++++
>  include/linux/iio/backend.h        |  3 +++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-backend.c
> index 363281272035..f4db6514944a 100644
> --- a/drivers/iio/industrialio-backend.c
> +++ b/drivers/iio/industrialio-backend.c
> @@ -417,6 +417,24 @@ int iio_backend_test_pattern_set(struct iio_backend *back,
>  }
>  EXPORT_SYMBOL_NS_GPL(iio_backend_test_pattern_set, "IIO_BACKEND");
>  
> +/**
> + * iio_backend_set_dec_rate - set decimation ratio

In [1], we decided that for a similar chip we could use "decimation rate" and
"oversampling ratio" interchangeably. And in [2], we recently added a backend
op for setting the oversampling ratio. Would it make sense to use that here
as well instead of introducing a new function? If not, we'll want more of an
explanation here on what the difference is. But from what I can tell, this
sounds very similar to the other case where they are essentially the same thing.
On the other hand, this is internal API and not userspace ABI, so having a
separate name might not be so bad, especially if there is a chance we would ever
have both at the same time.

[1]: https://lore.kernel.org/linux-iio/20250112122047.1e1978e0@jic23-huawei/
[2]: https://web.git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/commit/drivers/iio/industrialio-backend.c?h=testing&id=22894e0be908791e3df011cdfac02589c2f340bd

> + * @back: Backend device
> + * @rate: Rate in decimal
> +
> + * Return:
> + * 0 on success, negative error number on failure.
> + */
> +
> +int iio_backend_set_dec_rate(struct iio_backend *back, unsigned int rate)
> +{
> +	if (!rate)
> +		return -EINVAL;
> +
> +	return iio_backend_op_call(back, set_dec_rate, rate);
> +}
> +EXPORT_SYMBOL_NS_GPL(iio_backend_set_dec_rate, "IIO_BACKEND");
> +

