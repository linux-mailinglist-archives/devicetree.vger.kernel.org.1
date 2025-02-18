Return-Path: <devicetree+bounces-147974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DFCA3A183
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 16:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C87051893CAF
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 15:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434B726D5D1;
	Tue, 18 Feb 2025 15:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="z1zSPrkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CA826B2AC
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 15:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739893272; cv=none; b=n/apaiDs7dOH2orPKcKzbAmJQDM6PKlQycwz+MjpksKuaeOqkMvVAZmX7XnONepb5YNECYtOigCMLyUkOwGRqGUL0fX1Ma1mUIejjfKD1DSv77a+i+vfY9r0f/TLZAl+clSShKnKNoz7/HiRy4fwvla3IsVhUWjYcppC+h8DGHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739893272; c=relaxed/simple;
	bh=2lp8XQ80q8YzfZF+FMF8cPlkqzqEkoCXL7zcnd5prZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qrv2fdHGvegJhlfzOoIT3IpJsG+ZQh0B2YL+gCzuGn+lIOnrv3ZmwsOMVN3fhqJVOoqXexuv7CiADIghoZ1jcLPg+eWPyvSGD8F6OiOJCu8uYbNUDpmK8uXD/DNFKWLLEDBzCv7X8AJqWcz4GengsxTi4vU+uIKO6+thhl9TWsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=z1zSPrkR; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-438a3216fc2so58893565e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 07:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1739893268; x=1740498068; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Q30dDgKfgVMd6trtVKX22J5bpFlivRbZkay2aGYd+k=;
        b=z1zSPrkR826ZNcLA/4xd8KolRGXCF0HWxsyHcOKLSP9YqAJkV8wWuCWVR30KXoLBsl
         24/wUZmXzbFUb9C1MJqa+zsPpHb/0hIr7b/hOWabK5wLxFZUJPJvlYQjZ/N/h64Qx4jV
         kVT3BXo01H0mdXrGtC9LIl/pruabPD170d08KTht+dqXzo8pf9DblPLDjiWN7z6IrcE4
         2yBMFiwwmkrxF+/qy9oVpYXduSNqRoWaaEznHZVLFBJf+I3N6luf/Y+SKmOc/qm+gR4l
         KWL7nNjug9xUY88BD7p2jHIoWFC6RVznjzge+OQvR4dbauBVJgzeuD8mJZOyQxD/3IuY
         gr9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739893268; x=1740498068;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Q30dDgKfgVMd6trtVKX22J5bpFlivRbZkay2aGYd+k=;
        b=bj/oXMBrDT7xXH/9j9EE9ClMz235S9Q4s+Je3OuIkouWVobe0FtvcvwZ+tiFXnKIDn
         jGlbc9N9amycau289Cmxa9amVwp6NGFcfREedg3YM4kBNznPegd5ys7SJw/NFTkgQPVE
         Aqv+zwhd0qz/9n/v+58gptuxWacnLkmreYWc0HQrRf/iAMCk96FE8C2Yn9AjJi7hucmt
         7K5AzVzTOsGAPbPlpK9QnLNJluWMjLrwRxJlDPyRB01dBnSLVqexZvgGjARbZi75aEVf
         hsKUKBpZ2etuxfpigGYefgVWpekmbzkHyjJNY/iC3kWPAPE+ZTahz2suoGPlSq+nqeMY
         NyDg==
X-Forwarded-Encrypted: i=1; AJvYcCXn/pG0ClgMvU28SmpSr7kArtaimRMwJgXi/Tz1EBhTaxr0lVyjtx6IsblBYgtZJX8iy/t2kgWj/7NB@vger.kernel.org
X-Gm-Message-State: AOJu0YxLNV9IThOwatPol9fQpBf9cpb+vUqWEyOIkQ68VCfbJJkwG5ec
	M7UbE2vLxlD2YPpGCgxkMcjPbOptPvlba5NMUgbEnYMHpRzHsy3w/UfbPn9ibDM=
X-Gm-Gg: ASbGncviXeZk19x18mSW5Qi8C/Fpo/nQtf34SGeFrEb9koHVLelEQI46RvZE+CTMdb4
	rhmCMNRzCsATwpgXAbd9rDNVxabS+ZjtU+EwKOzlKVjcSKzVqVpP2XIVgjXENGf+2HbKbv9rlcH
	cVnTWOEglSt0fgMyf//kKNe+Vg17YMEgHnLv5VjWunXyQ8OwG8+brYcmm86lr0tPbYLSxW+g7ZG
	wVQG8OIQYTigSYl6o29wbv5GudvEONGPzJxX62JEwPWXEx5c+ElESo52Rczgq4jCknHKz27bJ8h
	mmqYg9RJBfwdKYEmpBy6keZYIEmQp3pGx9TT67U6QX/wryWWHk6MLPRDvpE=
X-Google-Smtp-Source: AGHT+IFgVQ/HTJovzYkHnF+vnnWUMuB0Qc49CucuSwBa0CgxZYS3J4v1QXbcy58eSkagjvpjaclFuw==
X-Received: by 2002:a05:600c:1d95:b0:439:8829:aa69 with SMTP id 5b1f17b1804b1-4398829abd0mr61277115e9.17.1739893267405;
        Tue, 18 Feb 2025 07:41:07 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f25915785sm15777430f8f.58.2025.02.18.07.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 07:41:06 -0800 (PST)
Message-ID: <72c01aae-33d1-45f8-94ce-b0fcfe4fec00@nexus-software.ie>
Date: Tue, 18 Feb 2025 15:41:05 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: Add MXC power domain to videocc
 nodes
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250218-videocc-pll-multi-pd-voting-v1-0-cfe6289ea29b@quicinc.com>
 <20250218-videocc-pll-multi-pd-voting-v1-5-cfe6289ea29b@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20250218-videocc-pll-multi-pd-voting-v1-5-cfe6289ea29b@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/02/2025 14:26, Jagadeesh Kona wrote:
> Videocc requires both MMCX and MXC rails to be powered ON
> to configure the video PLLs on SM8450, SM8550 and SM8650
> platforms. Hence add MXC power domain to videocc node on
> these platforms.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 3 ++-
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ++-
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ++-
>   3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 9c809fc5fa45a98ff5441a0b6809931588897243..4f8dca8fc64212191780067c5d8815e3a2bb137f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -3136,7 +3136,8 @@ videocc: clock-controller@aaf0000 {
>   			reg = <0 0x0aaf0000 0 0x10000>;
>   			clocks = <&rpmhcc RPMH_CXO_CLK>,
>   				 <&gcc GCC_VIDEO_AHB_CLK>;
> -			power-domains = <&rpmhpd RPMHPD_MMCX>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
>   			required-opps = <&rpmhpd_opp_low_svs>;
>   			#clock-cells = <1>;
>   			#reset-cells = <1>;
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index eac8de4005d82f246bc50f64f09515631d895c99..a039ae71e1b7bba8124128d19de5e00c65217770 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -2889,7 +2889,8 @@ videocc: clock-controller@aaf0000 {
>   			reg = <0 0x0aaf0000 0 0x10000>;
>   			clocks = <&bi_tcxo_div2>,
>   				 <&gcc GCC_VIDEO_AHB_CLK>;
> -			power-domains = <&rpmhpd RPMHPD_MMCX>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
>   			required-opps = <&rpmhpd_opp_low_svs>;
>   			#clock-cells = <1>;
>   			#reset-cells = <1>;
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..32af2a0f7a0030f155b7d8c93faeffa384a42768 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -3524,7 +3524,8 @@ videocc: clock-controller@aaf0000 {
>   			reg = <0 0x0aaf0000 0 0x10000>;
>   			clocks = <&bi_tcxo_div2>,
>   				 <&gcc GCC_VIDEO_AHB_CLK>;
> -			power-domains = <&rpmhpd RPMHPD_MMCX>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
>   			#clock-cells = <1>;
>   			#reset-cells = <1>;
>   			#power-domain-cells = <1>;
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

