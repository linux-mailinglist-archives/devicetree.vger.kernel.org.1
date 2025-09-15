Return-Path: <devicetree+bounces-217381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2C8B57765
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:00:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 928F9188D90C
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2D632FE57F;
	Mon, 15 Sep 2025 11:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YdD0Ed3X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F552FD7D3
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934004; cv=none; b=ESZS/XeSrHmByCjPM0auWGddiDIbERoiS7GRl3IFo0U5rzMZ0uO9Nc5wsfwFZElvMF0NfCZwfxhOHh9kes+IE+mSQq68I/jTKTHkxXgRKkyR4V8aUk7gqs4mGlZYI34MTSHn8NN3vG1cQKJ5opWD0ztb17LGw+XHphlUT6bRg7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934004; c=relaxed/simple;
	bh=p2/ZPKgcStHycFEf+Ant3HyIhob+pL98PMAiJ6xa878=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JX0n/H3Mq6h/uZOuDFR0Jqu5mZm9u88tPcWzqo86OwMBefrMQhU+PE0VqjRaVFI0ISdJuc8msh01L7EptCDeulAGBpjlxjRp0lkCgoLApZ840sxznAMSSj146ygCHUCiQKuIVDXiBDxuI2iqy297nDfrpRS4hFq32b2pnwMi/5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YdD0Ed3X; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45dcff2f313so25375355e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757934001; x=1758538801; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O0o3IPn9M5Wlzy4ZImaO9t62aQnz+OKdCohSLnutdNc=;
        b=YdD0Ed3XUrX4TUOikbc9/BwqSOqpypZ9g5RBOhB/j8Ez2BL86LzxXgQv2CWBz9y7Gy
         dERReEqK3NkuNg3TIcH5aZ1oiMVgjKVcWAUBQqeCdwFp/T5+PCEExIrLSJN2MTDOliGj
         22RjVgdzcAu82moJ3nIrf0RvszmmDiHBT67o7TFrTphTM72PygNfTc6t+xjoGijmIlVf
         m3grXCH98uWIdmnBTVINfXnDuMzLyAOS2D0dFWF3bqEDVSn/T8XMYheOkapLwzFdWStD
         K2WOYhsY/QIyTc+pKNtmRiafU0wVeT9IURn22bdrRMK2ndCiWNkYHCCssZijxlrTVsTV
         rw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934001; x=1758538801;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O0o3IPn9M5Wlzy4ZImaO9t62aQnz+OKdCohSLnutdNc=;
        b=Q9TM07sRjiG9FeFUWRMp8pqzBLT5AKfVla429vYkp0YvFc1h4TJoI2ELdJeJV6dALU
         KTRskg+FYlM5aYsSWA/WSOds0U22+7AXIwa2YSGF+Xct68sVNaoeS3DcPY+cHVtv6x+p
         les/IC7GQeoPLBE8ds/kX3tlbSTIKkPHVt/O0LVNK1qRgENkuUZHWW5JkK0f76LEiiLC
         UA3kaIGr+AXkId7wAE+9PbBNN6PFvAiU7DfMa5nLZN2r4B4eWzkInB15a/hc0nKKTZfs
         zaaust6Bp4JqaYASLuStjJYW/QnrClZesTpoaYyhh5I7yXFJvM70w54BXxt5TuCpOg6+
         q92g==
X-Forwarded-Encrypted: i=1; AJvYcCUvIz6O5nFBPJtcxKv/zx98dgdoJrvke57cNingNisUCLBGY/5JvvhnFPWn4jrmFh/cvVxW3QnC1QHi@vger.kernel.org
X-Gm-Message-State: AOJu0YyJyswKoWTV7CtkoBHv51qgUvv98Stcm8A9UADNpnJUgvej7Emj
	pkBkcyjuj70jxgPV2gHUkusM1iZ3GnMuXKpDqX3YLzRu0st9Iemq3WKGT1alU/nuxJ8=
X-Gm-Gg: ASbGncumxY8CBwEpDtVym6vHzVqTcBN37TTy+F7vnTOTfc0U119zS2RsdCxi8bMTHJN
	Kf2p80BSIlLUPshYribfvUlkg86yOBgPx/KzUNv/OOQNfIgLUtyr++mmMWRKBr5zYhlAt8gATjv
	hV4Nm51Eix8ahZYMomek8f8xT6EMrtbrSpx+2Y8J5nSyuMr1oOKyko3yEcLK5EE7bQyUMHsI5b7
	0REJ+DFieIi9hB7s0KTqXDjK+MFgvXAnLQZD66eONrfVL4GMMi7tjkiZauoP1hA8WK6w05G53zg
	TFhcO91WXp6mPcj52VgPEMSYlurxBXQqHrIM7SKcqutSlmjt2yVjhBEuTO8g70cLk/zhJrvrZiH
	P78Dme0UiGqyS+Y4kVbHooHk3TQ/ZResVuyIsLTIfBVsE/9QqnHLf5+A7UG3+5i1B1FftprzNi4
	uUdSilFHex1LTZ8nwNNX4=
X-Google-Smtp-Source: AGHT+IF7I4hHNfu991VPRyMDMxfa7LI4rWf+MOpyFvwb/HmEQhJI0mbx4eiQS7LrjFmOi7A2pB86wg==
X-Received: by 2002:a05:6000:2087:b0:3ea:b91f:8f4b with SMTP id ffacd0b85a97d-3eab91f94acmr1414030f8f.4.1757934001081;
        Mon, 15 Sep 2025 04:00:01 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e037c3ce5sm172289455e9.16.2025.09.15.03.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 04:00:00 -0700 (PDT)
Message-ID: <4bca13c2-0bdc-4709-a502-805f2b842846@linaro.org>
Date: Mon, 15 Sep 2025 11:59:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: x1e80100-dell-latitude-7455:
 Enable IRIS
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
 <20250915-x1e-iris-dt-v2-8-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-8-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> Enable IRIS to allow using the hardware-accelerated video codecs. The
> firmware is not upstream in linux-firmware yet, so users need to copy it
> from Windows to qcom/x1e80100/dell/latitude-7455/qcvss8380.mbn (just like
> GPU/ADSP/CDSP firmware).
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts
> index ace2a905e4430d6cd1db59e9a9fb7441f7fe0aa9..32ad9679550efce1fda1182bd874d6a3c53d8f03 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts
> @@ -38,6 +38,11 @@ touchscreen@9 {
>   	};
>   };
>   
> +&iris {
> +	firmware-name = "qcom/x1e80100/dell/latitude-7455/qcvss8380.mbn";
> +	status = "okay";
> +};
> +
>   &remoteproc_adsp {
>   	firmware-name = "qcom/x1e80100/dell/latitude-7455/qcadsp8380.mbn",
>   			"qcom/x1e80100/dell/latitude-7455/adsp_dtbs.elf";
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

