Return-Path: <devicetree+bounces-217388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DF2B57797
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:05:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F26F216EFB8
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F09B2FFDF6;
	Mon, 15 Sep 2025 11:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XZ4cQqEy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3AF2F2906
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934159; cv=none; b=sssTUNSjDZM6cdOBz2NJK3MwTQCYA/gi49kAMJt0Z6ZBEvFuLoFP5NmsWR1hvxIXLbHje7AlOUYBGaCX8G7Mlq4HEMuyatVWr0ReKIFvR2snrhO2O4Wfbjoy750OFoEU1OwJKNHXHfvqb44iuLLttAPT47LUtWsPcefnvbwV0ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934159; c=relaxed/simple;
	bh=iKMAgW0jQTDxBTsxxTn3NzLbmR5UC1qx3JVqLTQyo7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kPUn10MA2TkOoy3Kez2dnU8Imk/c3Q1s1pnBC5xLgusKuyO5et89jdl0z5lCj83PiCTYZ3ZkpiALJag65ZakqhrSECXbTxpzNzGARf5DgXtvmAYWYeJnKHDcLvwqzbTimEmZcfqYuloQsm0HklCdzLt2xVNXSTDUFcaQj416jiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XZ4cQqEy; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45f29dd8490so13317705e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757934156; x=1758538956; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GXVKXBL0yz+l6XWANTUIZ7DjyjmDmj0eECvduqIUxgA=;
        b=XZ4cQqEyHD6x/t5/XpLJ1HnQFMrIlWoQUkHNrcm9EGLe9JlwsPergrwjPgM6caH/Qo
         gpNHmGXsOWij6FKjwIhbe5BUxeQEGWwTiveDzUyCa8zP4L3tceBz1AudclNBiGkRydE5
         kt698gaEZrbkX0mij9WX+nML1t5PVbPBatxRyazfZ7WRICd+6q7b7ca78Oiax/CvNAUy
         G67bpaj91zIccIzoh0AXdeWQ86UQpYdKyC6oSlAE79YeEj6dtXJU8aMB+0GGitIf+3Js
         nOGRfjuljdoXC4VbMseIw6CWfWNOoy+J8/x5ueAIB7/4vw1IE/Shhti+mIglDs11uCSa
         ZRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934156; x=1758538956;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GXVKXBL0yz+l6XWANTUIZ7DjyjmDmj0eECvduqIUxgA=;
        b=s4l2xS+JBSb6dRH2DpRCs8pSl7QZoc6beKViShnkNBktLk5v1b6kUc1DJQj9Q/dH/o
         4W3omThe+iMdYobm2qJ0QGs4XPlX0hluUkwKm8RBlK9L0S1kDeS4pswoI/BP02aN25yX
         fETg3TMNTNGlX2fQl9RHt6s2HrEr2g6HwsMn446avSKR4hxblTDEmvup6HgrXdmLrD8i
         XqBSSj9ap1BpwVI95so2IOOrpP0NY92regFE00ofeal4GBFO9PLNjRNoGnVOy5CCrD0k
         TNzEktVnT1nYGZ+9EqLKPy4GUtNrhL29P0p4FyiXWAS52DB5zWEM41pRSgeoybeE0Smt
         TM9g==
X-Forwarded-Encrypted: i=1; AJvYcCWS5EbD4yjzm6sw7rGJa/CMu7xs3sAj5qGy9mGZCVWJJr+XFd9dlF7ISlJ+1YSMQ36mgD2wkPtZegXG@vger.kernel.org
X-Gm-Message-State: AOJu0YxofLvY/iMZm6zuw64pKQTmiTRrGLbU9oOugEdjE2+8SMOo6oPk
	f/OtU0/H8dah5nBOavFlO4AXhCfd46mXPDlYudcyw9zKtH1KHaCGwKMVN7jc1WZ3fJI=
X-Gm-Gg: ASbGncvePd9rDqEgQKzdOoMcjSeK99/lKSFAwSql6bMqi0c0gLanFnDHHkU7zc3XomA
	4/Eae+wDY4nRRcYTxkP0QzvokZd6CJ85zc7mWhhq3XyLmUmjOZGD9hN8hl0QfPmYgjIPsg9ZNHl
	WjNj34XMgfWwEVoJm/THaTY/fiH+ZHvQh1F8is2C9jC42Bf2R4kiKOJ++76zm8cIFU0oyvHX9Rk
	HXL3ZMXzTctrB/Ky0RHM6auFkiEhYRe4PEYTKKLu56qcohIXaR2NM99kU6I2MUiucLorSNa5QOA
	tDHnBNbTj4fCHo/zHiOG9gU1nEq5w89SB9ZtbR1bdysBnFEvN1Lc5+sHAqaYPhQTO7/hnUpbjEw
	SY1FiCy0HWChWvNeX3iv/9vGyQZ/MhvqNxfgU64mXu6/rWTGX+VRD1hejdduLD0v+44vJUo39+W
	WeTGa+Y7UOyN/Q+ykNxOE=
X-Google-Smtp-Source: AGHT+IFJ2l0baeyUrazrw5RINbL47twbhaJDHL/xHhmxwbAzaNs77RYQey961ZxCrNsm4Oc2tjkp3A==
X-Received: by 2002:a05:600c:8b4b:b0:45f:27fb:8017 with SMTP id 5b1f17b1804b1-45f284e67cdmr67539695e9.5.1757934156029;
        Mon, 15 Sep 2025 04:02:36 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e037d638dsm168083065e9.22.2025.09.15.04.02.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 04:02:35 -0700 (PDT)
Message-ID: <85b6de36-4f0a-41f4-a803-77355d5da3af@linaro.org>
Date: Mon, 15 Sep 2025 12:02:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/9] arm64: dts: qcom: x1-el2: Disable IRIS for now
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Klimov <alexey.klimov@linaro.org>,
 Anthony Ruhier <aruhier@mailbox.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
 <20250915-x1e-iris-dt-v2-3-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-3-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> The reset and IOMMU management for remoteprocs like IRIS is implemented in
> the hypervisor for older targets such as X1E [1]. When booting Linux/KVM
> directly in EL2, this functionality is missing and the PAS interface
> normally used by IRIS to boot the video firmware is not working.
> 
> The Venus driver supports starting the video firmware without using the PAS
> interface. The same code also works for X1E when using KVM. However, for
> the new IRIS dt-bindings it was decided to avoid using the dummy
> "video-firmware" node in the device tree to describe the IOMMU [2].
> Discussion is still ongoing how to describe this properly [3].
> 
> To avoid regressions when running using KVM, add a TODO in x1-el2.dtso for
> now and disable IRIS even when it was enabled by the board.
> 
> [1]: https://resources.linaro.org/en/resource/sF8jXifdb9V1mUefdbfafa
> [2]: https://lore.kernel.org/r/20250823155349.22344-2-krzysztof.kozlowski@linaro.org/
> [3]: https://lore.kernel.org/r/20250819165447.4149674-12-mukesh.ojha@oss.qualcomm.com/
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1-el2.dtso | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-el2.dtso b/arch/arm64/boot/dts/qcom/x1-el2.dtso
> index 380441deca65d1b443962fbe6151f4aadd918383..2d1c9151cf1b4aca79f7ad67328ffc3c721b9dc3 100644
> --- a/arch/arm64/boot/dts/qcom/x1-el2.dtso
> +++ b/arch/arm64/boot/dts/qcom/x1-el2.dtso
> @@ -12,6 +12,11 @@ &gpu_zap_shader {
>   	status = "disabled";
>   };
>   
> +&iris {
> +	/* TODO: Add video-firmware iommus to start IRIS from EL2 */
> +	status = "disabled";
> +};
> +
>   /*
>    * When running under Gunyah, this IOMMU is controlled by the firmware,
>    * however when we take ownership of it in EL2, we need to configure
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

