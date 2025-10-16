Return-Path: <devicetree+bounces-227708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597CBE3C78
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:45:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86963189D9EE
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6809133A02A;
	Thu, 16 Oct 2025 13:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uUeUqTY3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DF132D442
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760622202; cv=none; b=Z/3nJ87e1M4zqg0c/XY7iKEDy4MjrNmil6aNtKGRjSb7c+iJc/LjC6ndru2YaDcxRH6SJ0hP8kRpLcwltjBLi0iKMsczerUQE0hpS+xLsdQkw1PGANoYziSvxfBD2Yaz6Kr3bco6741hTy5Jd0tR99inP8toVwBAOXGqJ2oF4zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760622202; c=relaxed/simple;
	bh=jDp9/QBfldp4RgNCkyVTB+rWmBU/cFzzvTwjjiiKsD0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SkI9XqwRB+Q7M7bjo1w46Ut9PDRkcCdGuPo9Oy9ZDKCkppkYtKekRo4nht7Dj+DDLB0qi92BHYUMt8QyU8LZPDkj2OeYaW35Iz+34AK9XtyC92PbvoHfGIpgdLdt3mUkWBg+phiLEJWxwFFcEawBzO7X2AI9qxQkG1fLybyk3bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uUeUqTY3; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-591c7a913afso96313e87.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 06:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760622198; x=1761226998; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPa1I3Sb/NK9EofjdAp6afiIJMKd5znl9EBjNEXePg8=;
        b=uUeUqTY3M0yVdJekd+rbaKKgBhgIQ/FbtquqJ8k83WXKo07FS3iLkIieZOXgBnYfwt
         FJMYk44HwpdnDZcaiNnUJR6TihDMKRKTWz+nATgR4WHyEsDR42H72kQN9strCDyAne7C
         RmWPKC1mdrIk+2JmHd/F1MiMjFcLPwSq96n2V6oDf+xGSruWsH+3AvqHulpfGalEaJv9
         rKqLAMxABbbzr34e4AVSEAw11rw2JQtJrsW7pQnVNZ4Q4tGuS295DUx0W/o8CeF2Dv6W
         0vPMJ9WCyN2WDeie6X7Oapr68a7iidDrUhrdLEjKbTGHwY4v36rel0G+cOVX0w4fJhFm
         1XuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760622198; x=1761226998;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VPa1I3Sb/NK9EofjdAp6afiIJMKd5znl9EBjNEXePg8=;
        b=nbimcLY1ZW6N6mc3sjv+qFTokZvRiDlDPHsQoYO4ok1ZMG0cNnX4NcMyuW6CxMZoCv
         oNG3aqqZZe8QgVXQYu4WlAophLnYnkzZUd0bjOMkaJ7n8lKXOtwbGalJ2gQDA8b3aaBm
         ic9we2Sd9JQxAGg2MgcosyUgrMbeAQCHMgc/ZEUksMGw+Jq1oe922YhBeMha/zrEV+b5
         MzNDUV3xAoneE/QeLo5ylHVmY+opJo+Zfef9mGIuZCYYwby5tQykPKaDwM6mSgNSwdOG
         tbYPP9h90Jv3HZZRLdnzhGLn+zU5vbpccC5+i4TtpsrQBgeScAXjqMw5Hx6jztIapu2Y
         8fdw==
X-Forwarded-Encrypted: i=1; AJvYcCV27qnIh98C6gGJt0N+ZmPtTj04ril1lUsM2hPOTZG3gRP6r4XBMnpbwdWau8OV/Gr1eQeK6N1hrFYF@vger.kernel.org
X-Gm-Message-State: AOJu0YwlI8FkUy//TXSWUjKAi+QFgDkdvGsPPlqogDLJhdLERMnXiPpM
	if8zHk7erpUhbVHKxCTtHGnmwoTaQcCzK5mcOEKpi6jlMUfcTcpAhw0xk7J9Msh+gAI=
X-Gm-Gg: ASbGncuofKDlGzYnDe1+2U3GJ+FzLWYgVmdesyRt66AggNLjn35jn9JTCu+ld/Q90E+
	kqWSMR5WGf9Z29Kgy5ZiaPIB5gozOBFDlT0Sd0PX/Eb3ZMuI71sHrObHa7HPQbErCExe4C+9tmK
	uVy4yZVDtYP6t1dJIdaPa29a04w0qC82FTF888JnVqrm9QE+dVkL+/hcynErkovqI8W1dkpYRv8
	HDMKwNTxIL6WRScrASOlutOkdDvwsfKeel27sL1IP2Rm3qPdNbY57e8ZoL6SphvZzMqNtDBDUf+
	cdDRgCvABfZiWq3liYYPFcTljP65P45Iu538ctE5tW/xv213u/rEezBh7tc41vx4g6IP5NM0Hvl
	4AnHt+NFo6jVErd7Nv8LFlp7UN59WiWUwhDqt7D6z4t8JcV0i7V79ckAeFALTr4yjaJOUDk/Fq9
	/C7e7Eot+mAqf22N9fNm9H5fB6cpvLU14e8hnWR+copg7aTzVCkeU90VBqvLE=
X-Google-Smtp-Source: AGHT+IEsA6UFmX5BTWpr/DOMf7GtkUjTzhwEWEKu2is2k952LHuOq+Rngn7xDEvuu7cdwPIaQxIv2g==
X-Received: by 2002:a05:6512:2347:b0:582:512:f4bd with SMTP id 2adb3069b0e04-591d877125amr3346e87.9.1760622198485;
        Thu, 16 Oct 2025 06:43:18 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881fdfd8sm7032230e87.52.2025.10.16.06.43.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 06:43:18 -0700 (PDT)
Message-ID: <cf1311b4-4190-4557-a958-55699df495e8@linaro.org>
Date: Thu, 16 Oct 2025 16:43:17 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] media: qcom: camss: add support for SM6150 camss
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251016-sm6150-camss-v1-0-e7f64ac32370@oss.qualcomm.com>
 <20251016-sm6150-camss-v1-2-e7f64ac32370@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251016-sm6150-camss-v1-2-e7f64ac32370@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/25 13:22, Wenmeng Liu wrote:
> The camera subsystem for SM6150 which is based on Spectra 230.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---

<snip>

>   
> +static const struct camss_subdev_resources csiphy_res_6150[] = {

For the names of resource arrays please use a valid SoC name like it's
been done for x1e80100, here it would be good to have sm6150 suffix.

> +	/* CSIPHY0 */
> +	{
> +		.regulators = { "vdd-csiphy-1p2", "vdd-csiphy-1p8" },
> +		.clock = { "csiphy0", "csiphy0_timer" },
> +		.clock_rate = { { 269333333, 384000000 },
> +				{ 269333333 } },
> +		.reg = { "csiphy0" },
> +		.interrupt = { "csiphy0" },
> +		.csiphy = {

You shall add .id field to all .csiphy structs.

> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	},

In general the change looks good, after the fix please feel free
to add a tag from me:

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

