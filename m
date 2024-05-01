Return-Path: <devicetree+bounces-64223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1188C8B886B
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 12:14:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5B5D2814C9
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 10:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7C0D53392;
	Wed,  1 May 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a16CXjra"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC17524BE
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 10:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714558463; cv=none; b=ah2aLIzVZMqul7T4KZt0jYMT6XIA7W5ZBYv793YhqHWxWUmK0tZR4yrWvqGwQix9G6oCUn5dkm12tzXIG0XcQucv46+zCg2MN1TkJ+gx44JwIBsLSD6Nh8fP6814MjyPajmQ03uKouhStmtYy2HMthioZGSTN+znmahzLNkXyFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714558463; c=relaxed/simple;
	bh=Ng5tOItL9yq/Oyae3SGSSL7FnZWMWizfspIcGK1MlEA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o/GwAXZiiMjR8UDqST5Y4RQGvtCral/uC7n0jXo4UNwb4YulM8VNKlCQPLdJohD4OYoaEfYttzmqw4NDev9m8IPhQdKZl4fdfeyYk+EZ4mdtBb+gmAAt07qgX7HVeod1glP5ISMRB6aKkhvbD8BOF8ZwwT6H0pEC+6ChL4M1tJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a16CXjra; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41b782405d5so55482475e9.2
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 03:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714558459; x=1715163259; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zScdSa2ySIZ6rQgcDeS1BUCAXDX3v1qlFq/0opj/DmU=;
        b=a16CXjrauinJBBaZCkBlRskZL+5QGqfEoVCxJsGAmFYw21HAzv7dSaoTtwg9ReF3pj
         P6N1RU2LecWP3VAk3OSBQ41lTlzB8uGjBXyYNyYpQIzOppz4ygvEbMpiu4G/t37Vy+Fg
         19KEef3yJeeaNTXXFqt2Rxoe0ecvCtqcnORAIo5nR5KpkTkseJEJt06FEkapz5Zm+U1+
         c3tZNR/+49Ty00+pfqAu+OYe00MjEMlGZwjV3tr48LDPoQRbNOz+MUSaiWKG87jObgmp
         egBoIn4Ptm2N1Zunz95c+dK1ve1r5/0m+ZkPRz/wrQMlUPem26+JPWIGN7IwLoWNJB6i
         9Odg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714558459; x=1715163259;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zScdSa2ySIZ6rQgcDeS1BUCAXDX3v1qlFq/0opj/DmU=;
        b=LoSUoo8JLbN+ljB1DXFEQ3cZt7zrYNXERS6SNPaGv4/MRvARiAj7YahN6TkysqAzGD
         MFuH5DDPetVkT5LTnHWO6VkLpBGyKm//ZulCecZsM4DxC4tFVP5KmaYdP6pmUE7YCE8g
         Nz1gGx40TGZ25awjsCwdDRQLBxnbMB9I9KRnsh5+NUvU8X2UaiQvxxA0/cWhjSdEREL5
         cV1klmAJZoLsILnf8LguBNbvtw7kmEQE9t2bh4wFXeEgp5aovlAba7qd5au/7eBPS+Ty
         PfXplfIYZe0MpAPb6VFU1HVzcfIG1g5Vmz/X44URhYK2D5n1NiXfkRZmyaGB6Rd3oHEJ
         tG0g==
X-Forwarded-Encrypted: i=1; AJvYcCViFRwVPkxogmxPkNVd5ImrWxFKsUc0y2cpc8jim4tw6cbBlbqL6VNxe/n3GBneVixhLKPwxDfMR/ipNrr1V01i/XA01eDC6L1AVQ==
X-Gm-Message-State: AOJu0YwTb3F04Fk9pBCNirP59DAkDpgTjvxgZKrsHIxbAIDfNCXO34vH
	OduSP5YJXt51NM7RM8M0sAA9z/qnegtONPOPiE5KH9oRF/QahShdBXCi7+brkF0=
X-Google-Smtp-Source: AGHT+IEN48/nlgV4qk/IWlQgEEJUbZ9RROEnU3BpBkcpYNoPG0ExeAQDiRheCUWbeotT9/saLayqhQ==
X-Received: by 2002:adf:a2d0:0:b0:34c:fd73:55d with SMTP id t16-20020adfa2d0000000b0034cfd73055dmr1700109wra.70.1714558459094;
        Wed, 01 May 2024 03:14:19 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id i6-20020adffc06000000b0034cceee9051sm758971wrr.105.2024.05.01.03.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 03:14:18 -0700 (PDT)
Message-ID: <1c3ae48e-9030-41dc-a13d-b16462a63007@linaro.org>
Date: Wed, 1 May 2024 11:14:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs404: fix bluetooth device address
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20240501075201.4732-1-johan+linaro@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240501075201.4732-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2024 08:52, Johan Hovold wrote:
> The 'local-bd-address' property is used to pass a unique Bluetooth
> device address from the boot firmware to the kernel and should otherwise
> be left unset so that the OS can prevent the controller from being used
> until a valid address has been provided through some other means (e.g.
> using btmgmt).
> 
> Fixes: 60f77ae7d1c1 ("arm64: dts: qcom: qcs404-evb: Enable uart3 and add Bluetooth")
> Cc: stable@vger.kernel.org	# 5.10
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   arch/arm64/boot/dts/qcom/qcs404-evb.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
> index 10655401528e..a22b4501ce1e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
> @@ -62,7 +62,7 @@ bluetooth {
>   		vddrf-supply = <&vreg_l1_1p3>;
>   		vddch0-supply = <&vdd_ch0_3p3>;
>   
> -		local-bd-address = [ 02 00 00 00 5a ad ];
> +		local-bd-address = [ 00 00 00 00 00 00 ];
>   
>   		max-speed = <3200000>;
>   	};

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

