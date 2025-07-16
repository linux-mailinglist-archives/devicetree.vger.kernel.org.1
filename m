Return-Path: <devicetree+bounces-196833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB89AB07403
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 12:53:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28CFE4A307E
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 10:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD332F3634;
	Wed, 16 Jul 2025 10:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S9zpFARf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776EB2F2C5E
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 10:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752663200; cv=none; b=SRlNsC7KrCtedsF2NS1Mf3ArGTKLQBwSL7MGeRq7uy8ALvLytf1Fu3YnM9cbtbS5bjD7GNoX9lNC6w8h6D2ShheirAkDBxuv2LuSfeCW9Hn3OWUdPq4t8X8DzwAjD8QxblQaI+zQsFNdy03hE+eVYuPkDfpKdTmOJDUcypRiRz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752663200; c=relaxed/simple;
	bh=uXkQwXePVkjKmDB6B3sdrREQ8QLpKEcUmjYTykYPIl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q8GT2vPSaVivdMJH3G1x5VX5EqG9cS80PxCIozc6KD1c/KAPFDEDdoJBQiMEE8lW+AN7DLc7YyETc0S5kFZYaqKfnhLEHGGc54FfCIDtCqHLmX060YOoI8Uu6TeP8ONXXCfjnAUIrlixY3FwTPUvOChP9god5G/imvh0ODs33EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S9zpFARf; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4560cdf235cso22052955e9.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 03:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752663197; x=1753267997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8CW2/O0TzBqschJZP93TpDVHYIZvXtSrznuz3Stcnpw=;
        b=S9zpFARf5kagB7hbUoIGHG6WPHLiDLA1UTGYVWEaIJ/6GPEEHNjc9ApxHhX9BVVmro
         nspEE61Sa0YaF4OtBDAVBd3kISi+8FAMUOrPx8m7lu3NX8LgXQ8dkzvI8kutnvdUpoS2
         b4pTDxSOsvoD7k6vgq3UNP/WoXcACH4NOEsCIK0okDEJt0iohwK5QWQZAKnG5OUxCJ0O
         danbwAadC26xPonWZ8DU3eUqIoT4jggPUHo1vP7+CzahAIH5DrfoEp2u1zHyUQJbd/um
         fX5cxyqHWrJP050ruBwUxdJiooPQATQpzCrEPmg4w82sZa4Q1RkZQhEwp+dI+mfZRWTM
         dm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752663197; x=1753267997;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8CW2/O0TzBqschJZP93TpDVHYIZvXtSrznuz3Stcnpw=;
        b=Pkgw+tUwZI5NdZ0IbF+XAFLV9Y8IYwec1BVd1EIbwTNV8Er4/vqXf+6egPw0gumwzw
         3Q1Ojr/ZkDqEyIfpjBsWF/PYGsc3opZF3lOt7rIVppALKZSK+2Eq4SAuHuXwpf/vO4PO
         wlIMnW53uxFKbLsLZs6mMm4sS7SQIl9O+ClysB2DFf5LHKtSR8dhm7pVH4rkuoeJerGF
         aspxvpocAoCRA+OL6EUBHdoaZEV+olm/cYfbniyiush3DFY1cSZImj5e26+maRwptAHI
         Dzkp8it1Mr1GRBVg9MDB3XolgdkH+k1VAm+5is8EpkPVQ2kfBSPRUvIXDR/wqQHwwJwM
         sxkg==
X-Forwarded-Encrypted: i=1; AJvYcCX+PepSVEtJ7rLzUveXucQsOnPSvg9QROZXNqXbh3hPk9by/8VoyMevJacasWJ8yzmgPUT4RuXQhrlX@vger.kernel.org
X-Gm-Message-State: AOJu0YzabMh+TXhQJ/91B/QC8e5OfONbb/eRnfFCQKmKflGhwHtbzgCy
	+DR0zDAPXvPA0JpfTQm32qyVkEKoHJYooKDEEYHfGYip3+pOR79DiMhYQRmY2Fl5c4k=
X-Gm-Gg: ASbGncvvbS7SDa9jRZ7caASCmkLYE7vZ4ESdHnBhVLzrBLP4kyItS0ENj0Wv+QGtFS7
	HyESl8Fjn4kC/Axzi4ZSTSfbWGCX2A/2gfQW87E7SiBsKHGOY+uI05s6Gl1Izw4kwOwWWClcq8c
	r5Wvqo5d0S3n4eyepPjM1dPiDcg+jM+FV2KzQ3WP2dzSP4PdWtny7imkRKzHTczU2pJQTG5/UVO
	jPwWNbABBcCsd3zW/D0KGcHwVpaIS/rbYcAly43LKSMmXSupVv+4adazjAwp7302B3TMiIvtps4
	lhPpw2/ukHSFvdMjzi7yirSTaBqZ9WWvvmxMc7a9SWAd8fxPONdr1j3OsgkigvYKKKZoBTUeU2L
	dZbjmSm8IUdt6TXwusV0Z6zBmN5bXBGCDge+rHi1Szw+wG8KBadfNsT1S0yIZfH8=
X-Google-Smtp-Source: AGHT+IEUeJJ3NfX00M2OD8gjxuXAAcmIdfAZqCKGjvqb2/EEjyffgUkLner7WOBZzioDHf2iP0fReA==
X-Received: by 2002:a05:600c:19c7:b0:450:d386:1afb with SMTP id 5b1f17b1804b1-4562dfe6e65mr24230655e9.9.1752663196643;
        Wed, 16 Jul 2025 03:53:16 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc21e7sm17523816f8f.36.2025.07.16.03.53.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 03:53:16 -0700 (PDT)
Message-ID: <a2681844-a96a-465a-a48d-49e1ede526c6@linaro.org>
Date: Wed, 16 Jul 2025 11:53:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Add Dell Inspiron 7441 / Latitude 7455
 (X1E-80-100)
To: Val Packett <val@packett.cool>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716003139.18543-1-val@packett.cool>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250716003139.18543-1-val@packett.cool>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/07/2025 01:26, Val Packett wrote:
> Since v3[1]:
> 
> - Applied R-b tags
> - Skipping the eDP panel ID patch now since it's been applied
> - Fixed the last remaining '-names before -0' order issue
> - Changed usb_mp: keep the unused PHYs enabled in the DT
>    (to let them go to sleep), like how it is done for the XPS
> 
> [1]: https://lore.kernel.org/all/20250706205723.9790-2-val@packett.cool/
> 
> Bryan O'Donoghue (2):
>    dt-bindings: arm: qcom: Add Dell Inspiron 14 Plus 7441
>    arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455
> 
> Val Packett (2):
>    dt-bindings: arm: qcom: Add Dell Latitude 7455
>    firmware: qcom: scm: Allow QSEECOM on Dell Inspiron 7441 / Latitude
>      7455
> 
>   .../devicetree/bindings/arm/qcom.yaml         |    2 +
>   arch/arm64/boot/dts/qcom/Makefile             |    4 +
>   arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi   | 1666 +++++++++++++++++
>   .../x1e80100-dell-inspiron-14-plus-7441.dts   |   52 +
>   .../dts/qcom/x1e80100-dell-latitude-7455.dts  |   53 +
>   drivers/firmware/qcom/qcom_scm.c              |    2 +
>   6 files changed, 1779 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
>   create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
>   create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts
> 

Just tested on the 14p this updated version seems to work just about 
fine - or no worse than previous.

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

