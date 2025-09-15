Return-Path: <devicetree+bounces-217387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D673B57792
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 622AB3BD102
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5C472FF14A;
	Mon, 15 Sep 2025 11:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RLL7CAKH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56E32FD7DD
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934105; cv=none; b=idkAdkp5iQrOfPTvP2JY6S4E8XZEY8FMRRKlJjIKIruQKMT4I9IsB1+T85FXHxq9AtU01F+bvnaCQqd1UXdTrYqCWkM9kJc57ITu5hsAADDL3h9haKhpbKI9DtFObFa3MuOPPG42wE/OHz9mJl9HB17Q12/mo9mWJVUrH+HB6Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934105; c=relaxed/simple;
	bh=/Qc9d9aZzIeejKzsoFImNVQNyJaCsuJtl9kVd1OJcbI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uMcxjsO/fFX0NCKnKkVZz3LnW3Mx6Kq2zRsCKq0GJCC41646BgpVCX7LxwOjM0y6osne6ck6SS28RYuva/LmeZmVGLrqz3aO5yrqvPdKneD0km+OHwr3Yji5oHMyzRlNMC8/A3ZG3DxRvgVgOc8cogYErKv8A3ha9jp8D8U7aLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RLL7CAKH; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3e957ca53d1so1176915f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757934102; x=1758538902; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NZDo3HJj+JKsYYxffoSm3zbBIPvQZvsDjUn20WFmAPw=;
        b=RLL7CAKHMBAaXQsRfYz7qejDG4+TbJZUUBEMM4GU3VTTewmOi0JAZr6od0AMGqvFzo
         aKTK7W3sPX2h62D298fAbgKqwHdN6ZtenCRxZKIcUBnm/MZxGjv35hZs6I2eOxH/Dhmp
         VvydyViRmn562Vn8zLyojP6J0IcX2njUXZ4EdwlSXp7E6Fc673sBe+Yl9QfOtF8nDIp9
         DKePDd8HGvSI36JxGbXwmlJGq2J4JPS+iXuByejXlcTi6xPTE9J8tNXFaGhCnybBo9U4
         A28ogoCn6vTzjyqLC63QzR6gy1OUzknMNbS4W+Oy+cQ4NCT66Kg0aJjSHjx58DCIpu+T
         QFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934102; x=1758538902;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NZDo3HJj+JKsYYxffoSm3zbBIPvQZvsDjUn20WFmAPw=;
        b=KolC/zJunMzjdpv+h9u4H4wYWytAVPZs/M4Y20T6bUiaAtGxLz8/y19PtSIWek1kB7
         5qEoI/mWAssX93rXLdNSzwF/gn2tSFRSISRxVMu8VTGXM09k2t6j0kcaQLxA4z2rVwu8
         cPdIbPNb1R+PV1/1nq1hmNxNtcPZ9stbzHO8EmWfNUeAaCvh1ZTcRYi3z9J+kGpHf2uv
         DU+A8DRrjOfR89E/rD7iKoQqQoIMkNxyncnGpQTg+yOaBl1d1fhP075qaTX9mZFCV0NA
         hfrPCvVCjT30KNWoUPgHtj8LFqz53lGHGbHgKan2fB84InPlKF0ScbfYboA4QPq2oRvV
         wQKA==
X-Forwarded-Encrypted: i=1; AJvYcCUlRiuXYh3gnnTKl9008r+2MH+16Ux6L+4fp1PGeXv3DG9PjwAIFUfDi8VDI/fFevReSVoGfl9RNwMS@vger.kernel.org
X-Gm-Message-State: AOJu0YzChgcRqPNlRLxTIDvZJXSe1Biltid9b00xkhjEG3getFEcfoYq
	vkCfjyOO6DmMskr5DMYXBn6fDCiDKEv2gqVfgrySVv4H2/5BXe/4xbOTJ6vNTelzTQY=
X-Gm-Gg: ASbGncvvGU7qFPVF7e8p5W95UtVby8t/pM9T3p8S3ISxu21efNReZXf5GneP00Ph55A
	HWnG3WUfQwNynDzYfugGWLsMpMghzoThw3CFii7xqohdl51btSOwYwgdNhOO7TvZWKTPQEG4t67
	Og0bFKWnUgjMQZVEVp9Co2bHsCuXAdPcVJtscahAvm1Iw97n5GrMXg7SXZfzFPJIsVhAQr2yp6Q
	rC6Z9exUtl+ZE3lN8HLXJe7xqHNi8oML+pab+iGvpOq/kLFkcdYsovaqcTHbkgMDFdTrrDtnOWX
	io1Vq74iKUw813TtDbYvHD34RSv30eKXErfwE2EW5OCOW3oswcrLQkx34kcWIjjpbZ764RoXJWQ
	X39wtARTYwpDBAacGp+s8/x1rmenynIVr6vE/BpnRwSMJRIYiOt60hGMFbSF3Ni7SkVvxJ/1qNC
	4Mcn5KgEDQXhoYhu0RF1M=
X-Google-Smtp-Source: AGHT+IHEbWM22bIRf2y6UTpO/R5u8kTDR+0OddRsCBt1HZIW8yyIVi08dQKVxGLboPuRerqVIo9Bmg==
X-Received: by 2002:a05:6000:26cc:b0:3e0:34f4:3225 with SMTP id ffacd0b85a97d-3e765a09238mr13094569f8f.45.1757934102095;
        Mon, 15 Sep 2025 04:01:42 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e81dbf9acdsm10439024f8f.55.2025.09.15.04.01.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 04:01:40 -0700 (PDT)
Message-ID: <77cfc92b-5ec6-477d-a92a-123b17dd1c60@linaro.org>
Date: Mon, 15 Sep 2025 12:01:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] arm64: dts: qcom:
 x1e80100-dell-inspiron-14-plus-7441: Enable IRIS
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
 <20250915-x1e-iris-dt-v2-7-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-7-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> Enable IRIS to allow using the hardware-accelerated video codecs. The
> firmware is not upstream in linux-firmware yet, so users need to copy it
> from Windows to qcom/x1e80100/dell/inspiron-14-plus-7441/qcvss8380.mbn
> (just like GPU/ADSP/CDSP firmware).
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
> index f728d298c72f4bf2ee151698e36108fdd7a8e5a5..cf2a7c2628881e44f093d73e6496462c22326d9a 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
> @@ -37,6 +37,11 @@ touchscreen@10 {
>   	};
>   };
>   
> +&iris {
> +	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-7441/qcvss8380.mbn";
> +	status = "okay";
> +};
> +
>   &remoteproc_adsp {
>   	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-7441/qcadsp8380.mbn",
>   			"qcom/x1e80100/dell/inspiron-14-plus-7441/adsp_dtbs.elf";
> 
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

