Return-Path: <devicetree+bounces-217383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B26BB57777
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:02:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C9433B4DCD
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5848B30101D;
	Mon, 15 Sep 2025 11:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OccjbSNe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF6C3009D5
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934019; cv=none; b=cbUZwR7bwABzhWySF9ZE85I95bFqBS91Bvwncme/5HPtH6DaudzyTbujMbz6ih/uWhjYvCPYkYhM2ucv5M+wTioZYOklT8cLjoJ6ifrB4URuI17S97eh9Phtp7H8jxVjTzAZvt/jn2G6Lg11T8ccAU3JSs5hpdi/6DF5g15FMFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934019; c=relaxed/simple;
	bh=wfYWp8Pc+UKJ7u8yqUly5+sstAVS3iqcTk4Y694W6tE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IkVIffT/KrBzcaL53gs6edBqaTkKomyuaTwwLAIlubtI4lSWyb+b/zYD7aSa2RRSff+zGMY3FAkxYuLOczJTh9RpQ9veXDwgZvz6I74X5ch7OaewN0kIduD5FyKRtDR1GvLY1H2dr9UjnZVFH3FwN1uZ/MykW4h8naorMKDcRHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OccjbSNe; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45f2fa8a1adso3518475e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757934014; x=1758538814; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cGG4uvrLGLaqWZFKcwV746KSIB3cs3UMAq8Ovw+PWKI=;
        b=OccjbSNexltgFmncG4Gdh3NfulkzvtRHldiYED47R6s6HgLTiB4TDTszxm5v1F996Q
         oAHedUuZX54v9xKO/wwGoUub/8MT+KOsW+JFN8Gpjp4vR2k1DK1+BFcKEZi80/eKVn+g
         L8VG8IStuRK4mccHbwyG5zlOoL4JAXSs85ENFyUOrSB6RjwUkv3Y9qhPWWS3ZtcmPzv7
         q5p0m/liPRGFR5x2oEkgvZf4GvwNhJe9EH8geAemhIoCerfBeBapYEOf9mqcuP1SK1c0
         SBmC6wtVqqXmfUoRw+qPNedI9uD0pVQOc/DgKmzlYagfGjB7pqPjTOSI7ChaGhJ62dhg
         g9bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934014; x=1758538814;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cGG4uvrLGLaqWZFKcwV746KSIB3cs3UMAq8Ovw+PWKI=;
        b=DVsuPVJOhutbiSRhxiPecZ8dCIsRCXdtr4BMX6L5WwY3YR/XS/OsW/51wuchg6bPH2
         LTd1v1uXVAbljmDinzCyUp2TcHObYckPMlkvsGhLEkKMZYgewZv4Oyl7OM0GxCLUO/Kh
         5JW6sUI4H/roP2iXsnn01gjQLyI4LXDATPf0v9OP/RQccZ7kKgNUCAg162En7DZLrVlf
         HdBd4GNtg6MhZtxBJkODqlLXswfTc9AJ7bCkf9CmS6FX61D6S2zi5XGpGlVBMKUG53SH
         6DitlLVgkv81E1CcLK6i0fTzfGSSHdA7OkwZR0xaTVbyDByAC93chPZ7tEkZ2DL9Vuef
         bzPA==
X-Forwarded-Encrypted: i=1; AJvYcCWnrMPKH82uOULtS8CVQZI4mte+NWZsNAOWLX3/8YbWworInsFqWNl4uEUloX4OZYRTyKmUjpFmw/yL@vger.kernel.org
X-Gm-Message-State: AOJu0YwtAleBNn+ElkS4aYEVOqRVd4yWo80B5LgpaRx5ustJK3Rd5D+Y
	tnaYThgJ63jrs6LjmUV0awgpqEu1I2W3I60IbH9XV76luFVDwkwOmlzUTW9fVfXUguc=
X-Gm-Gg: ASbGncs/6CNMZ+yStPKJwK/sV0OjqdnoPdpKOE6NFYSbnEcdrOPA4FrLRS8hVhgM2BP
	pZfkRLhZGSTyEfCx5qW0kpdH7UnqqXqghtaqeIzZKSbICz6/ToEjiZl+xfp76h2NY8TBGIFIFRe
	6zCp51fF1FnDejmdBLgCI+1JCdjr133xu0R1ZhtSAmem+HX7O4ROX/cPV2715URmOxitPge0Jav
	bj+AJT0goKu5K4H7MKkCd6X0or31Layl39XZHPiIJ4FLtQOXb3eTQfpJ9HhFkZnbxFUBH1S68o+
	RxhZ8rzuynVDL9WWTn7WjtRcuA/eS9l9wXNy32VeE0gYNUd/I8IMipXRww3yrTTyQdVCpqp1f1b
	PR3ipinXLTWonyf7Ki5PqtPOkPRwcMY8E5PhiFkm1CGEO1UUsjb8kLQvOgBAZi9COkuahaqyr++
	SF2x/qR0RFMXrm3+bmBP8=
X-Google-Smtp-Source: AGHT+IEz91FCTl1nmoK5pFTyflSGIV86EIxriwQSn5dTyu41cWmq0H40aC2oqi7gM/aMoDsw0b0qeA==
X-Received: by 2002:a05:600c:49a2:b0:45b:92a6:63e3 with SMTP id 5b1f17b1804b1-45dfd5e3d5bmr99292885e9.9.1757934013500;
        Mon, 15 Sep 2025 04:00:13 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e014ac1f5sm90871305e9.0.2025.09.15.04.00.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 04:00:12 -0700 (PDT)
Message-ID: <e825b2f2-c54e-4189-9194-5604c08cca96@linaro.org>
Date: Mon, 15 Sep 2025 12:00:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 9/9] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 IRIS
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
 <20250915-x1e-iris-dt-v2-9-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-9-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> Enable IRIS to allow using the hardware-accelerated video codecs. The
> firmware is not upstream in linux-firmware yet, so users need to copy it
> from Windows to qcom/x1e80100/dell/xps13-9345/qcvss8380.mbn (just like
> GPU/ADSP/CDSP firmware).
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> index 19a2604038a88f37e6ab87129a6318db78345339..58f8caaa7258077d2c267048ca048279109ddb71 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> @@ -875,6 +875,11 @@ touchpad@2c {
>   	};
>   };
>   
> +&iris {
> +	firmware-name = "qcom/x1e80100/dell/xps13-9345/qcvss8380.mbn";
> +	status = "okay";
> +};
> +
>   &mdss {
>   	status = "okay";
>   };
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

