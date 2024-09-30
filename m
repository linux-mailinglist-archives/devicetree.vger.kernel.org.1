Return-Path: <devicetree+bounces-106359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AD6989E07
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 11:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DAA5D1F2368D
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 09:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B819818A948;
	Mon, 30 Sep 2024 09:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y9kD6YMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F4718A6B1
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 09:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727688189; cv=none; b=hF9wt4ZuwtFr6Y5+hMrMb1h0XVjMBTKaMxFm3CIu0R44jbAECNMYYvAGH+vB9snYWYJ2h5dd3gwR5ZsfKoL8H8Wz2rb65vZp6uZglBAkic/msmlHlil/25CUrEJMRjrIBm3ZukejWks5TylSezgDnAfMaLBqa7Pfn5VGE0Cfi/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727688189; c=relaxed/simple;
	bh=uqEiOLQf+09k0PDPr/f0mwknVrseMs6izw2Nm759oZc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=avhv4YJuZH7IhcKYPc8bqFU26ndLOToDVLDUPx9HIAugsuc3uNlL80Oi70MMGrGXu0Y89jegmi/OwiWG2gdzz02yDAHEv5F+NJChHJFMH0Dp2g5j7qYBDL6R1Lz0Y3bI7VLkhh+fjyfd8PQuk+DmZNyr/KaT7m7wxYbFBV5VNbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y9kD6YMC; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5389fca1fdbso399144e87.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 02:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727688186; x=1728292986; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1ltQXeep9oOQ6pKlzxhqMlffD/6AO/c7iqrOiK81Hlg=;
        b=Y9kD6YMCLrUVlPusj4aVg60B89ndtBRKliSUKEWTxrNDuPGg6zxclBt7NruT9swREb
         NYwMztBTccKhSL8eNPI52OzTBZ/aGtxAP3PcoIGKM/IsY9+NIx3MlFzRcKlmz1Wos0sA
         +51wNT89MnYkpKwgzWH6uIprD0VQ9keQ4t/LR0ihmiqRQsfR3Qhu5KmEVLNT3Lgx8duC
         Vpf2WpTtdNWRF33AKKST0zS0i2flXCnI/+/QAKwOL2qd0+LNGbPFcIT/B72jCBQPoPnY
         l7MtYgTRTCw24VjRv9l7S5wM8+67pZ8MnDBPLz58Rc1gviGiIayHP9w1dy+SSSTOyiQz
         1How==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727688186; x=1728292986;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1ltQXeep9oOQ6pKlzxhqMlffD/6AO/c7iqrOiK81Hlg=;
        b=MuWss6EZ5T8tvCCJKAO/hE2DmeNfZg5L948fqIghjoMl45Y9+W2EoKg3OTnOaH/46y
         7a3e6iHZrHIaiwNuLEMqYLraPdycFvIeUq/blHQ0E+S2RMDAEekrNGS5EaLJMMriHntD
         HoBWZnXBEJNKBc7yQcjg3sW/afDhlzxAf/IvPK1XCw9Syf61hqLuc6qlkSJJ7ndRqOnT
         x0QrVywgoCGWWkFT3xISz7pWqVJwAwaDhI0BoJHQoHor+VxaWCZotHdKO69sR2O1vKP7
         Lr2gqUdqMR+sGsFKDDrV/GsgMDjG29Cm9qynTUnCiNZJFQ7uJKmJzEBfZSwLimeum0SF
         5ZDg==
X-Forwarded-Encrypted: i=1; AJvYcCUGQ0dkrS8W4zlb1afnfjBWN8Qx1lgPZInKyVq6f14LCGrYzhqPFXlDKsjhGVAGmtX4ScnyQftRtHH9@vger.kernel.org
X-Gm-Message-State: AOJu0YwwfVoGy2mh0W5kdwzWHogHmIaoEpKhGXMSyJt2uMB01OdVo8wp
	pyhyK0SROADi7viEodAKQRedjKPqd+o48fuBMt4XJ3BIqyna52RlpqIrz/sKLuc=
X-Google-Smtp-Source: AGHT+IE3+ypVYjUVsYiHlugoMY0nBT/CElPSzYpL7ESBRrsMF4wUgGAelWlIYyIpEd1EJdtkH3K3Ig==
X-Received: by 2002:a05:6512:1188:b0:52e:ccf4:c5e2 with SMTP id 2adb3069b0e04-5398c31100dmr870735e87.8.1727688185764;
        Mon, 30 Sep 2024 02:23:05 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5389fd54e80sm1186432e87.43.2024.09.30.02.23.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 02:23:04 -0700 (PDT)
Message-ID: <83b46dcc-c69e-430b-946e-ce9d299a27c8@linaro.org>
Date: Mon, 30 Sep 2024 12:23:02 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] media: qcom: camss: Add CSID Gen3 support for
 sm8550
Content-Language: en-US
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-13-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240812144131.369378-13-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Depeng.

On 8/12/24 17:41, Depeng Shao wrote:
> The CSID in sm8550 is gen3, it has new register offset and new
> functionality. The buf done irq,register update and reset are
> moved to CSID gen3.
> 
> The sm8550 also has a new block is named as CSID top, CSID can
> connect to VFE or SFE(Sensor Front End), the connection is controlled
> by CSID top.
> 
> Co-developed-by: Yongsheng Li <quic_yon@quicinc.com>
> Signed-off-by: Yongsheng Li <quic_yon@quicinc.com>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>

<snip>

> @@ -1049,7 +1050,10 @@ static int csid_set_test_pattern(struct csid_device *csid, s32 value)
>   
>   	tg->enabled = !!value;
>   
> -	return csid->res->hw_ops->configure_testgen_pattern(csid, value);
> +	if (hw_ops->configure_testgen_pattern)
> +		return -EOPNOTSUPP;
> +	else
> +		return hw_ops->configure_testgen_pattern(csid, value);
>   }
>   
>   /*

Here you accedentally break the TPG on all platforms and introduce a NULL
pointer dereference, please fix it.

Any generic/non-sm8550 support related changes like the part of this
one shall be split into a stand-alone generic change aside of the added
SM8550 platform support, it will simplify patch reviews and hunting bugs
like the one above.

--
Best wishes,
Vladimir

