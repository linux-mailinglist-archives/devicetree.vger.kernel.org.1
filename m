Return-Path: <devicetree+bounces-191524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C83DEAEF91B
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 14:48:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 972253BB5D1
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BA9618DB27;
	Tue,  1 Jul 2025 12:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gd8TZmdp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571A64A23
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 12:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751374100; cv=none; b=J82BmNhmO5fR3Tm8Zt5E3XWDYxje/zitidg0kfsaZhVw/WVhmAM4CocpIcxsfgjljRjNKxClBmAw+nb2mLF7EN5ZIAmphSvcOaQ/xPlGo8VIfWSMHjD7oTXqRzEV6p+j6xSLgMHlyIrTv14Nd4E3WErECt2BcHoHACb/Hg8DLKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751374100; c=relaxed/simple;
	bh=B5sYwCzrOUsbU8d2XsfZDMOWyPI4TT2SG8glzF58Rjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=p/toIqeADcEwewpLxHhO+fX8YDJq0ysQE61u3Jh8OhPGD1lmiLBvIBSAHbBNvNTM6GnLsNAvyycE36G05lCrbXtGpO75LGFmE8PtLACQlMtHoWvubCRUfPM2xv/ziBkSKXauSO9sKLvP8tWT19h9laMeuzWsz5+rbVIadDj+Iyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gd8TZmdp; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-450ce671a08so21341765e9.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 05:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751374097; x=1751978897; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DFgm4nb9P5q9Y36iXQaitvKFdafFjm+S1uOuQEYApsc=;
        b=gd8TZmdph5XWeYYTFgghe58oAWYdKEA+sObAWnRWt04NOEcCAuaBXbBEImHKtJTzpx
         7JVnDNrEMtt8JifbaSoNMNG6Xlf5lrLAN2iiSEbaMnwy3N1ORLvAzypcazItkQU5I9rY
         77kiFbbHufn+cyE0Qekhj7TZ9d9i4axC2A3/uCWA032M+vcnnfGNB1P8keu4LNuqDkow
         mUlYBbVG7KVHhTMfPEmlTKsK0X7pJK8M5LynsqGytAfKh8vINIDPyEIhlVv6DfDPeGAu
         1H58AiuAEdz/TZH0Cv7PKWLc40eUlcOeBlOT/w3aGkmfjr05KuI2Ugl7Yf09X0yOWWxq
         ps7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751374097; x=1751978897;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DFgm4nb9P5q9Y36iXQaitvKFdafFjm+S1uOuQEYApsc=;
        b=eH/rvu0umfblRYFb5BVsKgWonqenXlqJXlh5XIdwD0vMfE1ZAPmZtuJ4kA7JAE+e5S
         1VJS2n4f++incHBzGaiD07RYCTKx+TJ9Pl8Gj6gefyIo0CFOD12jmYca+XCiPYdc/pB5
         4V7pAaW2qCooajbZz5TFB1q0FY+0aJCa3E5GpowniZMFNJgJsDOy7UOCLRpS8M+DMBp/
         yW+AaTC0PXeoaAMx1M2YgPGjYeSSg/lOOqZXDSyMzWWjMFgaKmr0gLRJVmF6hEzUQPo+
         52N4psV5NKLTJmZ33tUQz9OaikHhMR6Blph2zuLuMxAKMEFW7emYeAuQ+hTlVNuKDSCF
         HRiw==
X-Forwarded-Encrypted: i=1; AJvYcCX1wFdt3lmNmdiWXV0NQFVR6qelcgldyfRLd0lowEaEjr5OPaF6QML2+TuSJAC5CQ+jd30k/MpN0FxR@vger.kernel.org
X-Gm-Message-State: AOJu0YwzC/mIpxJoAStoxIv/0e6l7WtVsRHyp4MRXpI76H10CZd+uJ9E
	Pokfqo3e39LPXAKdgxBl9rrt+y6M2GoQMqsjQ6jqje/X3usWZiBnqwzD3FUQ5dFsrLg=
X-Gm-Gg: ASbGncttI+tjLaUSxlpB7SWzlHnTrVvntYFjTjWv2mi1UmF92oRRfUc57sjYIEm25Yt
	1CGwVb2NtenVID2BBL8gB/W407YaDfgm9FpGsV+pp9ZsKtXc+XFKayWItm6k82GNRtOzWqyqI8j
	zOiA7oKzTYN4K1P6OHtuS1eFCcbxxXhNzUGGRUoOtYSm+zzwnTo6OyL5QH1WGd5xltgB+ytJtQ+
	5gPdioNSqxiyoLfWha+x0SX5ZcCco+8N5caZdaxtXW0E97fzj4MfMjvh721IUvUar51Y43kRH1Z
	WBNA2hpXE1Pq+Pah3cmmjLOHr3X81IIVshbw2yCItjp8Cb1SdOtx+FoO3OiY6rA14VhRVu6VxRp
	d31uGKz6OFv1t8EzKCy54YXKXDr6ei5L6uJeH0A==
X-Google-Smtp-Source: AGHT+IEBhwcFqQlAPSzSQUtiRdSN/GLV080z0dQVtAlBuMYPKfmioQErq23N/4IGxkxNFd6RD6iFSw==
X-Received: by 2002:a05:600c:8b01:b0:450:d30e:ff96 with SMTP id 5b1f17b1804b1-4538ee5dc58mr175426545e9.0.1751374096628;
        Tue, 01 Jul 2025 05:48:16 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a390d11sm167773995e9.7.2025.07.01.05.48.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 05:48:16 -0700 (PDT)
Message-ID: <d3c56e1c-69fa-4bf0-8257-aa18ff7d33cd@linaro.org>
Date: Tue, 1 Jul 2025 13:48:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] media: i2c: imx355: Add power management for managed
 resources
To: Richard Acayan <mailingradian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250630225944.320755-7-mailingradian@gmail.com>
 <BD1H-JCa9XL3c2ph25inGRiOw1mADgqVDBbKWBM8giD8IGia2UIudM4TAJPOLq09nlmGCzZf1YtrH07VyqDqtw==@protonmail.internalid>
 <20250630225944.320755-10-mailingradian@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250630225944.320755-10-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/06/2025 23:59, Richard Acayan wrote:
> +static int imx355_resume(struct device *dev)
> +{
> +	struct i2c_client *client = container_of(dev, struct i2c_client, dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct imx355 *imx355 = to_imx355(sd);
> +	int ret;
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(imx355->supplies),
> +				    imx355->supplies);
> +	if (ret) {
> +		dev_err(dev, "failed to enable regulators: %d\n", ret);
> +		return ret;
> +	}
> +
> +	gpiod_set_value_cansleep(imx355->reset_gpio, 1);
> +
> +	clk_prepare_enable(imx355->mclk);
> +	usleep_range(12000, 13000);
> +
> +	return 0;
> +}

I'd say this sequence is out of spec w/r/t your sensor.

Almost certainly should be

- clock
- rails
- reset lines

The reset sequence should be

- Assert reset
- Wait for some amount of time. Either you get this from the spec
   or you borrow a value from a similar driver...
   Suggest again what we've done for ov02c10 and ov02e10
- De-assert reset

Then use these power_on/power_off sequences in your probe discovery, 
since they will already have error jump labels to do your tidy up.

---
bod

