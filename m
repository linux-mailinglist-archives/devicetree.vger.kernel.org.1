Return-Path: <devicetree+bounces-138378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20161A10296
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B2363A33F5
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FB4428EC60;
	Tue, 14 Jan 2025 09:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c7scwbm8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576871C2337
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 09:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736845395; cv=none; b=EvAL7t+r509TMjWBXun9IxY/WC/p4J95MuAo9NUsNc/7mpYn2+YJRFvwpUiT7bhdQetabSbJ12KNIqjRhxbVPDH4dqoyPfWC5kCUUb0dnbMknK8FYIKELjOsD4wVKRN/43vkdS1qDowvekFbCDXlELKlcrRsIB/LNJu8baeqicM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736845395; c=relaxed/simple;
	bh=65CMyAvJZWeMYW9lSPh+gQO2EdJLTg8CEx8bGVBAi0o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=WEYqdzWxNGbxRQwyGXFyGPpj2pHBDU2kMp212DxwNzSlACjpzP6+h9Vg0VeJFl9uORvSXcklCf4Wh2wGHNTF3PL2Gu9ik7Vyl4b6OiayokmeRjoU3ihxzxfA4ysJMCcikXROMtlWiT0g2n0UH12bh+sRV81bjh4/qbMgtFp6Ftg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c7scwbm8; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43675b1155bso59427125e9.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 01:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736845391; x=1737450191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9oRp10szVe/sp5qOtcIJEA83i4TBBkxS++1UqrcNlEc=;
        b=c7scwbm8t9w1J+DWkefQg4XEOnbuAUKq33mFk3j9R0BfU9DZ6exfva0YUW74U9skoG
         rixYlk7JP/2gAypHksn4A6aeDUUTyzuXRfFfWy8HMLQmAVMk7z8GETtKFBMPyaYyAPh2
         gizhhml/O/oVy0QQHNKDiOUDAElM/lUeSiExwefZhK3/MCzLHgN8VZGAIOYl/i2DC9v6
         EUAvMEsAm3/Vb72nocZXAZPFSdIeaav50IBVt7wFOdwt+xlHBao51XLjH0+YRX3OjMNv
         h2ICGWOKIyBF52/o4VCF+/0nU7u876CqGpClrL9OqVC4hpaeTw4gzoduf9GdduhdV8PB
         slgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736845391; x=1737450191;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9oRp10szVe/sp5qOtcIJEA83i4TBBkxS++1UqrcNlEc=;
        b=SKJ1DzO98GRDbpBgFEF+opI81fS7vX+Jc5WKJvfPdcZmGxhIU2khrbUv7nxiNWJVR8
         bLQDdOzFRPE43LNcZkNHCY6pL6vfyx/gcsoJn/sqgB9Tra26rm+OKV+l1RztD/c1Hjra
         ecTKjnvoxqceOhnj4axQxQOfS6IsyaX9ONYgzmsgl3fGTVsFky/EDDJSN4uQwyzD33tX
         VxbQQVycRmtXvQKGndyYGLBy0HXrWcjKd8cdeIGSyj1MM9I1q0z4h/oU3nP2XLbuWM+X
         s/TSAEU4vQSbiSufdHtxo/LGvYu4yToSumO/Vk92/zAioZoqEgN+aP7Jd20xw4ecNN7c
         tBsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUW4ToZCjBwOCrq3mxHjs3UiZR3LyAuVeGKIANNsqQP/vJge1OgeMPzmUX8y6kvSctg6lqfVxnF0Iu0@vger.kernel.org
X-Gm-Message-State: AOJu0YywmtRMGTTCAA75lS7XJZnZQsDu/0aQX+li/yh2ZRn3OBvnV1J+
	WcoRqEieWTC06gcEyY25LT8eNsj49MM4S6bR0apJGhV7HvlLsmp/t4Dsyh8lOoU=
X-Gm-Gg: ASbGnctu4hPlcahgb2FXfNDx3SEDB+UzHadGhE+dy04pnv2bFkQ1mzQgAUPy3pUGJjE
	C77Czjrlda1F8EaKJsPy6/1eGAYODD6Dq7tq/ul2x1sMDRheo7aQZiIqKBCGZiAJEDefa5bpeRa
	w0WDC7hTzWYcDgzGHXwCNP6VNKDkkSLlaIVG8F7Wtv/qvhW4484zW8ZLaFZM+mcb2R3bcIenmRe
	NgiMl5tmw76zceWxMWXr+ZaUu/RuYYoTzYr2wP9ynlmQSIpdFBjqH/a4VdH0qQjn2JUod3jpcdc
	5XC/Eb3tjzLU/SXkaTVlTTTtuSmi0g5XBA==
X-Google-Smtp-Source: AGHT+IFGm1kBlbbYeDIOiNXov1hQWBIBtkjOag7tnMPu7QnAuqavk8TeHI5ruUgj7jK1f/l2ezBnIQ==
X-Received: by 2002:a05:600c:1c8f:b0:434:f586:753c with SMTP id 5b1f17b1804b1-436e2686096mr224882135e9.7.1736845390659;
        Tue, 14 Jan 2025 01:03:10 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:a5df:aa69:5642:11b5? ([2a01:e0a:982:cbb0:a5df:aa69:5642:11b5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436f67192a1sm99549905e9.27.2025.01.14.01.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 01:03:10 -0800 (PST)
Message-ID: <ca6d7042-e143-4502-9878-9e75453c4d54@linaro.org>
Date: Tue, 14 Jan 2025 10:03:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add PMIC glink nodes for SM8750 MTP
 and QRD
To: Melody Olvera <quic_molvera@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jishnu Prakash <quic_jprakash@quicinc.com>
References: <20250113-sm8750_gpmic_master-v1-0-ef45cf206979@quicinc.com>
 <20250113-sm8750_gpmic_master-v1-2-ef45cf206979@quicinc.com>
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
In-Reply-To: <20250113-sm8750_gpmic_master-v1-2-ef45cf206979@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/01/2025 22:22, Melody Olvera wrote:
> From: Jishnu Prakash <quic_jprakash@quicinc.com>
> 
> Add the PMIC glink node with connectors for SM8750 MTP and QRD.
> 
> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 34 +++++++++++++++++++++++++++++++++
>   arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 34 +++++++++++++++++++++++++++++++++
>   2 files changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index 9e3aacad7bdab6848e86f8e45e04907e1c752a07..0bca1f9acdedfe1852293b72862979e42fdd6241 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -81,6 +81,40 @@ key-volume-up {
>   		};
>   	};
>   
> +	pmic-glink {
> +		compatible = "qcom,sm8750-pmic-glink",
> +			     "qcom,sm8550-pmic-glink",
> +			     "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					pmic_glink_hs_in: endpoint {
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					pmic_glink_ss_in: endpoint {
> +					};
> +				};


Hmm I think you should drop everything and only add en empty connector:

+	pmic-glink {
+		compatible = "qcom,sm8750-pmic-glink",
+			     "qcom,sm8550-pmic-glink",
+			     "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+
+			power-role = "dual";
+			data-role = "dual";
+		};
+	};

and add the ports when you introduce the USB nodes.

Neil

> +			};
> +		};
> +	};
> +
>   	vph_pwr: vph-pwr-regulator {
>   		compatible = "regulator-fixed";
>   
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> index f77efab0aef9bab751a947173bcdcc27df7295a8..c53c08fc7d0d759aab921c76550bf98c2a308d49 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> @@ -80,6 +80,40 @@ key-volume-up {
>   		};
>   	};
>   
> +	pmic-glink {
> +		compatible = "qcom,sm8750-pmic-glink",
> +			     "qcom,sm8550-pmic-glink",
> +			     "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					pmic_glink_hs_in: endpoint {
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					pmic_glink_ss_in: endpoint {
> +					};
> +				};
> +			};
> +		};
> +	};
> +
>   	vph_pwr: vph-pwr-regulator {
>   		compatible = "regulator-fixed";
>   
> 


