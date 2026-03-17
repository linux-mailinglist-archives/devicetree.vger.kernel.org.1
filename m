Return-Path: <devicetree+bounces-276738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJ1bGzhwuWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:16:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2692ACCE3
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:16:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 148EE31316C6
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE2093E51FA;
	Tue, 17 Mar 2026 15:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jyX8lFYk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D372C3EAC7B
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773760068; cv=none; b=fLqeYJShHrZPOOYrKhGyedsIL1ttAsLjSkvNeaxv4/Hc90F+lgD1hsOwkH7r+NrZdEJC2c/A9Z2PeeHocR5dddkyXV8IElnTYrpccro+EHPfXgydTg+sguXdqvc6RxlYU1wqJpSHzB0QHsuhGQHGFvumyi6cTM4kdZFwadcnUc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773760068; c=relaxed/simple;
	bh=ugLXSOQq7QSCgho2RoIr1fLG4lvZP4+2+LFPJMLE4ls=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=cWFNm4pRrRPakKuBsb9+qyPQu2Cd+++7JPxVg+3umwyn4KUieKS/2L2XqtCFKiivLBgxJsVlLbCqYD019QXataicppB4QhApzz6aFBRhNc/CICqoYFQoFE0jBx3m6XNig3QNYFqfzjoowGMgVIdK6VYpmCmSL/bAAYupBowk/LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jyX8lFYk; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-439af7d77f0so4355525f8f.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773760065; x=1774364865; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m89VOcIDuR8pU5+lfBINwqojWHzS8GSlw/sbPEudCRc=;
        b=jyX8lFYkECFWfZ0uCwgGLWwmXyER+V5DbQuT6ntwPFxAaulYS8cBZjn+qDp3PNd4b6
         L43HuLCedOhtCNgkC76DO56lbqrB7xW5xevqx4ecSmT/rGIeQTdbF62LcbylF/JktMkR
         CeqX5LGlYL54JKcmqKDvF9Eoc+BATtvw2uyc3L5ulRajdf/K5vKJefgTXD156NCwtOwo
         Diyh+1QzdTKvm8ATW2Hvn3Idz+b6rekCYCRw1pw71Z8MI95JzTlFteE1R3YYPtZ1T1Zy
         rgziuD4LjknvTbAz5pJ5QFqAy6981We8C723dnbWqtkjBI+5lY3aQDHKWiVDIs7mhz3D
         CJWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773760065; x=1774364865;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m89VOcIDuR8pU5+lfBINwqojWHzS8GSlw/sbPEudCRc=;
        b=WDsGaJk6p2Wpj9Li1It4T2hEGbSR27gaA6YitSN3aZkWSz57s0IrCgiVg8XgkujiTp
         SEvg5d7cGBqN3OP5Pkcwdx/BjrrNTC4abe3AESQNVEnyiarjuQ5StpUmJzPm46CwUGMI
         o1IyiJzdEhOCFiWd4W2tzwd2pGx382F3gmzbkHXRTvy9AcMZYcd41IH3qn7wPOvFMGKk
         m2L6wAAHQT8Cn3VRSA7QAQwNCH9B+9XfXIOwKdkRB757h2f35ujiU2i9ybetC5ZznKtw
         N15a+lwlP2rvThNtbO6XzuoegnRxbvyLWhPU3K1ANEV41/7mR5SCTonCuGenv5yzZIxo
         WGGg==
X-Forwarded-Encrypted: i=1; AJvYcCUjNe/57vjCJlLM2bdQvb9bMzudYqkslHO/3RLXpcWqVjHcu0S5Gl8YnUoGTYua/Z/P8tal7z/ik3xU@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfn8ffqJx9O/CCkjOtUQQXoavNduqlKo/I47fEAIgxsh53aOne
	oSxPEeW5Jx04yMbCDV8L4R18TPuM8qLwta6jaaXyv73uvZQdLYEwb7otRs8MsR36EZ4=
X-Gm-Gg: ATEYQzwe/OYi8C4LjCNLpOjdp9ewkqIazcotWUvU7R75t8C1M8GMLKvpcDZsP+fxlPw
	JjJkjt8sjSZEHPLRYhvyvaj4kvRCpRWWizFQSgFRWE8lnuQAiapaF99UkB7xERax0J2Tjq8ZqRN
	uefyvuupu7c13SyMUKwqSehQu5qYFeJxnaVkEaqZc7B1fHHPXA0NaQI9H7Iu85fBoWttVBYmy6b
	MmjTZlNRl1fYRB/pmcCjetmbyO6zHyABx6jpRC+r9uUTJaN6w7dG03ItLkgmSX7J6zPmzKFCgOT
	AZtoOZ7tKxkpiptcLc7o9wHD9eoKAwA8GLbgMuBYl/z58ryV3ynJ3NCpaLzlC3ZoFknr/KvYkki
	MMzZKRjPiIo4lCQHqfXT9H0G8Rtq1j5Xr3GcXlgOHbyWk7/j264tVyWLFJlSBD4OfMvllqc4bpW
	mASpRRy7FJgBGdcK2KyM1wf5fF/OolaJXSjqw/ahlMpmkxsK0i29N1VbhB0gUoOc+kGg38UXjE4
	7uPTw8PGJ9Hs9Iupw==
X-Received: by 2002:a5d:5d09:0:b0:43b:4faf:a496 with SMTP id ffacd0b85a97d-43b4fafa6cfmr3562311f8f.31.1773760064888;
        Tue, 17 Mar 2026 08:07:44 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:c778:639f:c042:aa01? ([2a01:e0a:106d:1080:c778:639f:c042:aa01])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51852ab3sm165071f8f.12.2026.03.17.08.07.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 08:07:44 -0700 (PDT)
Message-ID: <a5cc6da7-b530-4acf-8014-4c24ffa2130f@linaro.org>
Date: Tue, 17 Mar 2026 16:07:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sm8550: Fix GIC_ITS range length
To: Konrad Dybcio <konradybcio@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
 Abel Vesa <abelvesa@kernel.org>,
 Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
 Melody Olvera <quic_molvera@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jishnu Prakash <quic_jprakash@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260317-topic-its_range_fixup-v1-0-49be8076adb1@oss.qualcomm.com>
 <20260317-topic-its_range_fixup-v1-4-49be8076adb1@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260317-topic-its_range_fixup-v1-4-49be8076adb1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-276738-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:replyto,linaro.org:mid,1.5.137.32:email,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: DC2692ACCE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 15:41, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Currently, the GITS_SGIR register is cut off. Fix it up.
> 
> Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e3f93f4f412d..0fc86967bbeb 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -5274,7 +5274,7 @@ ppi_cluster3: interrupt-partition-3 {
>   
>   			gic_its: msi-controller@17140000 {
>   				compatible = "arm,gic-v3-its";
> -				reg = <0 0x17140000 0 0x20000>;
> +				reg = <0 0x17140000 0 0x40000>;
>   				msi-controller;
>   				#msi-cells = <1>;
>   			};
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

