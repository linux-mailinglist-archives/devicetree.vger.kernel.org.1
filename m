Return-Path: <devicetree+bounces-141477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4F3A20E35
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:16:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 174137A1296
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E644E1D515B;
	Tue, 28 Jan 2025 16:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Hge9pbJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00991A8F79
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 16:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738080964; cv=none; b=cLseI6EZqA/cK4crezPO25s/If0SI7qutNfoStWgX2+Wvnb402eZAqShnoaTchA9EMkv7JLTZiFEObGDpFgy6urXE6YXh97d2pgx1nI2NuHXyWX03S1gRrvn6obxZXsftclilKshiXwxvMj3DA2AJAdzvjwPJ61O+JDcj8BrCnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738080964; c=relaxed/simple;
	bh=aW/6gRy4vh1cQ/UhFCd9W6hG9dPvBCWRkXazoAlGt/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U44J++J+EsBWuVyUGpcOBMaIUYoEe1k9Ni4on9rs1ZpeG7YFETLhJrwfBg38tf1OgaactOmt+yXsG1MF9L1aj2HPbqz4FTeEaI0G0bvrcuidD5mlvfjn248B9kOFjyayd31o7o2Z84uOIid2DwnzctM4ZGZWUHJ/P+A9TxozMxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Hge9pbJa; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5f31d3b4f8cso1315105eaf.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 08:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738080962; x=1738685762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hIAEQeg78QZ/lezyk1TRO3AWQG1bJJ5m1rzrXE3HII8=;
        b=Hge9pbJapbtgFqty25IV2Jpn93QYSDXPU5H1NkTIR03BVsL/gMJ+k5z3IciyGsrw/7
         FVSDkAa+dj11/NS9LmcXC/FZCfyxtWkusETcXFChisi03MeJJ8PYNdX/0iupf7kHGUju
         PWXZGwaAi1Q48anEkr+FbQ0t8t1edUS1phJWNmylkxwqzFl6is6Mst8FT7LzvZ22UoYz
         seMQnDRZi3JXMURquLCEJk2QGdLLZ0cTLLzsOcABeNfTq/p9b12qY0Ms+yaGZcUz40Tl
         FBqrImJFO1ah4zbV4joioODCsJ7hGrYBH2ufFYsdimzEUknDsQ8V3EE/xTwmiHVd1tqz
         ymdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738080962; x=1738685762;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hIAEQeg78QZ/lezyk1TRO3AWQG1bJJ5m1rzrXE3HII8=;
        b=pcJLzeE+73wbPjzEMYx7e3ch5BdAkbNG4nqo5Gqh6oePUXMT0sdVufsYx1gihdwzvc
         8pVjfyEZhKuDXZRBja7YlSao6+grmpR9JBxl8+o3GV0b4IVrslSHRmn9T+whldkeO7Dv
         CGIyY5LRlRUX5pU/jcoK6jKAIAuFEnepKEe6jxjAsDVU31yhM1TQ8wPrs3lbb75AyF6L
         txDPuYP9EZCyNLuodMunznFLZHLVdG/PkYGD9Xy1kFVtJo58x0aDkGn0xQ3OoaScGb2j
         18Spg46QtfHREJkVhMap+15kMNGLHvpWps2BgPDlCShwpQe++ySuca2vYDuVXRSVaHgp
         dPzg==
X-Forwarded-Encrypted: i=1; AJvYcCXaCM2MrNpvMMoN7znHNsKZVFDJ+zHk7jsSZG8JdFTcEIT8hRS9sO2wQhRrH8ElvL40oHxlHgPzEW+T@vger.kernel.org
X-Gm-Message-State: AOJu0YyhuKqFBcJbepx3I2eesj0McmYiPsGLCgKIq+LEMT+vpEvjblfT
	yL8JE3t4ahpmjdoesjp47vxoaHLjqaN4m0jHeuc1lP0EyZ1xF1kyf7xbEDBitE4=
X-Gm-Gg: ASbGncuVQe4juvb7KYl+2VyWXu+rXzz8meOhoLvZr6gt8RtZDsVH1Icvv8igRiQoHFB
	uwCluyFMPUT/qJUCJb9NACGhuDWmyuCBrjobBDVFGSmeYwjQ/Zk+7VIYFb1IMgntvTLc0URpvE+
	AK75eBDXDMvnM90gNz2mXwc1ZChwzlFitxaOi7RjVa/giNDZofxDt8gmH9RD6qvM1A90k/4G4r8
	mDhYiK94NKcV+7csY276DB/X7P18cfCOSSdbmfIKI7LtnzmbtmrEu3kwwSopJ2x+PVz8Kcy3qnv
	xRUQVMz4umI5QjpH1rQaSN2DBiPrpSArIJ9ERen8jAXBzDkRucVM
X-Google-Smtp-Source: AGHT+IEREbV08zViG4ro+q6+GbmAwN6L5mM4g1b+2nZW4JAo0bbqiGtKBOnnzRCek2knpbearmMH9w==
X-Received: by 2002:a4a:ec49:0:b0:5f6:765c:d260 with SMTP id 006d021491bc7-5fa3889955dmr28139232eaf.7.1738080961757;
        Tue, 28 Jan 2025 08:16:01 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fa8b9a1f5bsm2931148eaf.30.2025.01.28.08.16.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 08:16:01 -0800 (PST)
Message-ID: <08d8e97d-752d-4fa7-95f0-d828ef80f7b8@baylibre.com>
Date: Tue, 28 Jan 2025 10:16:00 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 5/8] iio: adc: adi-axi-adc: set data format
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
Cc: Nuno Sa <nuno.sa@analog.com>
References: <20250127105726.6314-1-antoniu.miclaus@analog.com>
 <20250127105726.6314-6-antoniu.miclaus@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250127105726.6314-6-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 4:57 AM, Antoniu Miclaus wrote:
> Add support for selecting the data format within the AXI ADC ip.
> 
> Reviewed-by: Nuno Sa <nuno.sa@analog.com>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> no changes in v11.
>  drivers/iio/adc/adi-axi-adc.c | 46 +++++++++++++++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
> index d2e1dc63775c..3c213ca5ff8e 100644
> --- a/drivers/iio/adc/adi-axi-adc.c
> +++ b/drivers/iio/adc/adi-axi-adc.c
> @@ -45,6 +45,12 @@
>  #define ADI_AXI_ADC_REG_CTRL			0x0044
>  #define    ADI_AXI_ADC_CTRL_DDR_EDGESEL_MASK	BIT(1)
>  
> +#define ADI_AXI_ADC_REG_CNTRL_3			0x004c
> +#define   AD485X_CNTRL_3_PACKET_FORMAT_MSK	GENMASK(1, 0)
> +#define   AD485X_PACKET_FORMAT_20BIT		0x0
> +#define   AD485X_PACKET_FORMAT_24BIT		0x1
> +#define   AD485X_PACKET_FORMAT_32BIT		0x2
> +
>  #define ADI_AXI_ADC_REG_DRP_STATUS		0x0074
>  #define   ADI_AXI_ADC_DRP_LOCKED		BIT(17)
>  
> @@ -312,6 +318,45 @@ static int axi_adc_interface_type_get(struct iio_backend *back,
>  	return 0;
>  }
>  
> +static int axi_adc_data_size_set(struct iio_backend *back, unsigned int size)
> +{
> +	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
> +	unsigned int val;
> +
> +	switch (size) {
> +	/*
> +	 * There are two different variants of the AXI AD485X IP block, a 16-bit
> +	 * and a 20-bit variant.
> +	 * The 0x0 value (AD485X_PACKET_FORMAT_20BIT) is corresponding also to
> +	 * the 16-bit variant of the IP block.
> +	 */
> +	case 16:
> +	case 20:
> +		val = AD485X_PACKET_FORMAT_20BIT;
> +		break;
> +	case 24:
> +		val = AD485X_PACKET_FORMAT_24BIT;
> +		break;
> +	/*
> +	 * The 0x2 (AD485X_PACKET_FORMAT_32BIT) corresponds only to the 20-bit
> +	 * variant of the IP block. Setting this value properly is ensured by
> +	 * the upper layers of the drivers calling the axi-adc functions.
> +	 * Also, for 16-bit IP block, the 0x2 (AD485X_PACKET_FORMAT_32BIT)
> +	 * value is handled as maximum size available which is 24-bit for this
> +	 * configuration.
> +	 */
> +	case 32:
> +		val = AD485X_PACKET_FORMAT_32BIT;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return regmap_update_bits(st->regmap, ADI_AXI_ADC_REG_CNTRL_3,
> +				  AD485X_CNTRL_3_PACKET_FORMAT_MSK,
> +				  FIELD_PREP(AD485X_CNTRL_3_PACKET_FORMAT_MSK, val));
> +}
> +
>  static struct iio_buffer *axi_adc_request_buffer(struct iio_backend *back,
>  						 struct iio_dev *indio_dev)
>  {
> @@ -360,6 +405,7 @@ static const struct iio_backend_ops adi_axi_adc_ops = {
>  	.test_pattern_set = axi_adc_test_pattern_set,
>  	.chan_status = axi_adc_chan_status,
>  	.interface_type_get = axi_adc_interface_type_get,
> +	.data_size_set = axi_adc_data_size_set,
>  	.debugfs_reg_access = iio_backend_debugfs_ptr(axi_adc_reg_access),
>  	.debugfs_print_chan_status = iio_backend_debugfs_ptr(axi_adc_debugfs_print_chan_status),
>  };

Why was [1] not addressed?

[1]: https://lore.kernel.org/linux-iio/9c262f599fb9b42feac99cfb541723a0a6f50e6b.camel@gmail.com/

