Return-Path: <devicetree+bounces-32874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F9F830E1B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 21:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99BD51F28F8D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 20:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B51250FB;
	Wed, 17 Jan 2024 20:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jHP26o5W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A622124B2B
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 20:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705523945; cv=none; b=Td5iHscxI4Ea29h48hdYEAlyuC3+Dh4FfFibFwYBICr6ntXmApi9G2VzLv0k9puN7jc55hTCM1DTrV4ld8tkkxZNeNxhPenvubV4BbYglb2yfZx/bs8k1VtZPgXKU0LRAlRC2TWBUkYgAvZfvwktSFNHsipuHZ6rzTcuGCnay4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705523945; c=relaxed/simple;
	bh=8mQrGiJSycupzR9LCfp2y/hXC4hOoN/BwZCVy0ud0Qw=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:Cc:References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding; b=op0DYXlYEEKzpH6sryqeGxTof7uD4yb1e3viEVTAsEBjJHx7usO7Co7iJzwGCB08WLNJzJAed4jTP2hgkVZIzx0toU7+WXORMUD8gToKuQxuogn0kMvtnjCQWw/XIJWM8IHgpggvu+EzKV4hhlfqgCGR6UUUiNtz3Q2q3A5HmxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jHP26o5W; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50eabd1c701so14301087e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 12:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705523941; x=1706128741; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GgXkc5sUxUIkETjKviniRFVlsVpLigaLq/cF1b+TQF8=;
        b=jHP26o5WrV6KCT2wZb64mCG8efGy9DKuuCRK/hWMhId5ZE+/ZBUeu4hr+3VXQBH6/6
         oKxwFErWEWlphNkDmdFIf53Wpi/qEzkgqNLdW5+/aQAHXEXmEW9QMd09bov93nyF9WbP
         KO1l9F/mANimDw6iC0vvKkufVaIS/usMfD7mHuK8dfCWg+CWmD3bY+woC4Zf0zeU4YTo
         hWMWARgQhbri/h+e0K/pGLcYp1flTprI7Bf8lVqJpGbtNuPffX4oDgcy0loGbHil6Mxu
         VNMEUsqFtgzGC1bVDnGrK69MnYRgP9VBDR+Ia5/ajrTcT2zLgyoVuvi9QcI46+gEDbyp
         mPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705523941; x=1706128741;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GgXkc5sUxUIkETjKviniRFVlsVpLigaLq/cF1b+TQF8=;
        b=ayvLjSD9H75LbTSmS4R9ecPmFjtpODzouhGoYOJjvQPvFCZkpUZx9kNNG91AIOMsau
         5PKUXX/u5/i7ggIgro7A+FX50DJxcrEA2XM2rlwREpAUuv3Z1CzX7q7qjKEJNMwhZQNw
         2TiHsYKxYqC/jZl3gVolsWy3T3qM0uG3LPkLuXNwgc939VQAAhwq8gPlzoOXKNxIMrjT
         a5Y+Xr06BBnjqcNfNjWJquj/4Lg8zpQZ4Qoa9wFUzXmtifp0YHFhD4nemYF2ug7ycXeo
         hUxsPkv2UrsY6uciarirYodXjLotJ+PggoOS+iRfpzTC/V5jcUZuXXiuZvJszBftCWw/
         dNnA==
X-Gm-Message-State: AOJu0Yx7nVxljqt+MJvG4W7S4fJrsiIE83EDaPjs7l2dUvwVZErZn8hm
	Dw9hszsCavqyFRM4YHJQXYuS/XCDzyaHLw==
X-Google-Smtp-Source: AGHT+IH4ipoxHkKQNJEd0DPLD6yKVnjy+SJgqD2yxB7AlMPeI7nOM+GXKDnx8Avc8zhm56zqNkkWWg==
X-Received: by 2002:a05:6512:3a94:b0:50e:7dd5:e5f0 with SMTP id q20-20020a0565123a9400b0050e7dd5e5f0mr6168847lfu.12.1705523940588;
        Wed, 17 Jan 2024 12:39:00 -0800 (PST)
Received: from [172.30.204.151] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id r26-20020ac252ba000000b0050e87c5b837sm363612lfm.263.2024.01.17.12.38.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 12:39:00 -0800 (PST)
Message-ID: <2cbdbe92-ce36-4147-a64f-7f86ee3761bc@linaro.org>
Date: Wed, 17 Jan 2024 21:38:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 7/7] arm64: dts: qcom: x1e80100: Enable LLCC/DDR dvfs
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, sudeep.holla@arm.com,
 cristian.marussi@arm.com, andersson@kernel.org, jassisinghbrar@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, quic_rgottimu@quicinc.com,
 quic_kshivnan@quicinc.com, conor+dt@kernel.org
References: <20240117173458.2312669-1-quic_sibis@quicinc.com>
 <20240117173458.2312669-8-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240117173458.2312669-8-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/17/24 18:34, Sibi Sankar wrote:
> Enable LLCC/DDR dvfs through the Qualcomm's SCMI vendor protocol.
> 
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 48 ++++++++++++++++++++++++++
>   1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 6856a206f7fc..3dc6f32fbb4c 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -329,6 +329,54 @@ scmi_dvfs: protocol@13 {
>   				reg = <0x13>;
>   				#clock-cells = <1>;
>   			};
> +
> +			scmi_vendor: protocol@80 {
> +				reg = <0x80>;
> +
> +				memlat {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					memory@0 {
> +						reg = <0x0>; /* Memory Type DDR */

I'm not sure reg is the best property to (ab)use..

You could very well define a new one, like qcom,memory type,
then the subnodes could look like:

memory-0 {
	qcom,memory-type = <QCOM_MEM_TYPE_DDR>;
	[...]
};

> +						freq-table-khz = <200000 4224000>;
> +
> +						monitor-0 {
> +							qcom,cpulist = <&CPU0 &CPU1 &CPU2 &CPU3 &CPU4 &CPU5 &CPU6 &CPU7 &CPU8 &CPU9 &CPU10 &CPU11>;

I fail to see the usefulness in checking which CPUs make use of
the same DRAM or LLC pool. If that's something that may not be
obvious in future designs like on dual-socket x86 servers,
I think it can be deferred until then and for now, AFAIU you
can just unconditionally assume all CPUs count.

> +							qcom,cpufreq-memfreq-tbl = < 999000 547000 >,
> +										   < 1440000 768000 >,
> +										   < 1671000 1555000 >,
> +										   < 2189000 2092000 >,
> +										   < 2156000 3187000 >,
> +										   < 3860000 4224000 >;

I.. can't seem to think of a future where this doesn't explode.

When you release a different bin/SKU/fuse config of this SoC where
the CPU frequencies are different, this will likely also need to be
updated. We don't want that manual cruft in the devicetree.

Since both previously cpufreq-hw and now cpufreq-scmi generally
operate on levels that map to some frequencies in the firmware,
could it be bound to that instead?

Konrad

