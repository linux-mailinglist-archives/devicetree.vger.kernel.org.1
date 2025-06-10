Return-Path: <devicetree+bounces-184170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8980AAD32AA
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:51:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86DE13B4C14
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 09:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 678FC28CF68;
	Tue, 10 Jun 2025 09:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="scAx+Ssr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A5528C87F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749548898; cv=none; b=Ai5++Ax8coPBrQikKs/UhkjmXErMiuEbIu287yQIM09Pbq4Tlzyp3PjQf9rg/v9buxEwQfI3ufY/Ww0pnLeILUq2dbtmoqpYBfMzfdIXUWOKiGzcjRqf46PwiVggRNwJWkrj+1PJJA64rh3LaIwQJ+DUaTJN5yJbpp4CSkegACM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749548898; c=relaxed/simple;
	bh=drtc7gbE8EVnagG9aoANO0Qzm9NCLkeYbn19VDrN7lk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a0nJC4wQtpTEh7pbVuqnQGWMvh5q8RxqN3oL+wl3yqbGkEaRAlyFjHegK8iXde/D/S1JpTg22W4lTqO3TUaTIZLCBn8DL8HFJGqiWjSoLLM+WJygXNRhxZNsdslIYbGeBttCodnvPNMYab6BLhwjatRE6CmyIOEMn2kqPV/rpho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=scAx+Ssr; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-32a8bb1da33so1748831fa.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 02:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749548893; x=1750153693; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sgWX/fDU4kZifwwXOkRhcJUMm2OkuAYm3wpAj+nwwK8=;
        b=scAx+SsrlfVuPuqcaMtTXapNGGrTB5aQau5mq50//ivDM8yO1CJcmReZzhMlsMy6vK
         ftl3ZMclXD6FVwN2c2ZGJQsTnruNK4EW3kv/EpiG0zu1bkTqUlBS92VD/yNG41MXeWmz
         WX/UgUkfMjGMwI/kMWg4sGaKLlH3tdlhLGy1XoWAArjwUFiAkPFyHugg6xZJcVA+raPK
         W0Pa0P4WCdvQ9CIuj5B7RxYW0GLJ1Ahbz7SqMc7opdXZEp40LqCJ+sEkTyO/5jmLoOgp
         mr1xPKawAjKUcs0DoTFx+5W/JNP/2+wtBzbpydrdVTbfTDDx0qk3+vVf9QeCNXwmpWEi
         LP+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749548893; x=1750153693;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sgWX/fDU4kZifwwXOkRhcJUMm2OkuAYm3wpAj+nwwK8=;
        b=nfKnP4uPNo+AMWgin9Rjr2QlCG2bo4GYW5O12WW5cIt8zVyaKGYIDvnvGwVnXdmyqf
         Mhbm+OUKy7D/AKQ21gzXJHkuX31Cd0F72d8JpkBDUEDd6NOPrL6snjBdF2VloxnfTU6d
         kmnfdvbTLUkfpffash8lW2tDb0u2sJLBsKT+hKBMtgotsQbCLhF0o83/STvpsGVFDMMv
         TiXWItIaRFizsHcGf0QM1qls6JFbI6idqAW1FYfTRFvaiu2nPJ3eBdH3BFoc5XdbhUz2
         uFDIt7wDGMYzBSy6HX0uR92jRLDLKpegCT5D9CFMHLR+LX7ehTiYA3L0TKnFNtVAXh5z
         4z5g==
X-Forwarded-Encrypted: i=1; AJvYcCVA89YsTfWI/bYbxHJBRqbT63B8yR53mu6wkmxOQOjUDkzVwIl7+ziftlITTZgi0ZxYs0tsc38nuNbb@vger.kernel.org
X-Gm-Message-State: AOJu0YwCWJjoBIQtDLNcDPmIeqyeB3Tzq/wYz7W9Il4j9RXLLXh+ptxi
	/V/XOOp3KPIXeZ1ucdcY+i/FIXjCd+TlLmHDhECtTYK+A6y+P1C0eeZRX7qvvIJ8QTQ=
X-Gm-Gg: ASbGncvYgGZTLxBeXkybto2RdXP0ob/0iGcISK9UxYYBoz34CKNScggrYbHTpFSCXfI
	WG5vELcXwXBLlmUvJ+6WsBTvniXVjLCdMmGgbVBA0Ypp4YqVmbsLJ9VtXlkVWIgj2cTrVkzF23q
	GB2+RZ8nRDKTMen8m5M5Lt6ktBAnCFSED7WGa5r1mIQL7vcyz92VSqTJKyqIK+QzDbEcP7nSg0k
	xmTXVPF6ZZVVNa0iNqHDj2+4BEUdXlzdayT2JyNfL2Exv5LXsiM6rWqtjxP9GpkZliuBW+lSKwh
	QqBj4OQ4jJMhRuRDDNSNrekqSwOaDWVIFtZ+DFgjAgPyeGFWYH8yc4PugE3rdyUV5FOwvGH3GFL
	JkijgWyQI+ZgCmy/BUAKa7Syi9I/99/HziZjzqEgv
X-Google-Smtp-Source: AGHT+IGe42fvbz6UNMq3WeYyozKULgQbXzEyVJQNlI32jNbCy2BtIg4bwXtTOyqOT4GzCdoEQ38Mew==
X-Received: by 2002:a05:6512:3b96:b0:553:2e90:98c6 with SMTP id 2adb3069b0e04-553687982cemr1368395e87.11.1749548892235;
        Tue, 10 Jun 2025 02:48:12 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55367722392sm1471777e87.127.2025.06.10.02.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 02:48:11 -0700 (PDT)
Message-ID: <0367d5bd-a42e-4b6c-b841-ba20190b3127@linaro.org>
Date: Tue, 10 Jun 2025 12:48:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: sm8550: Add support for camss
Content-Language: ru-RU
To: Wenmeng Liu <quic_wenmliu@quicinc.com>, rfoss@kernel.org,
 bryan.odonoghue@linaro.org, todor.too@gmail.com, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 quic_depengs@quicinc.com
References: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Wenmeng.

On 5/16/25 10:27, Wenmeng Liu wrote:
> Add support for the camera subsystem on the SM8550 Qualcomm SoC. This
> includes bringing up the CSIPHY, CSID, VFE/RDI interfaces.
> 
> SM8550 provides
> - 3 x VFE, 3 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE
> - 3 x CSID
> - 2 x CSID Lite
> - 8 x CSI PHY
> 
> Co-developed-by: Depeng Shao <quic_depengs@quicinc.com>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 210 +++++++++++++++++++++++++++
>   1 file changed, 210 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e9bb077aa9f0..722521496a2d 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3326,6 +3326,216 @@ cci2_i2c1: i2c-bus@1 {
>   			};
>   		};
>   
> +		isp: isp@acb7000 {
> +			compatible = "qcom,sm8550-camss";
> +

This is the first time, when 'isp' label is used instead of 'camss', it might
be I missed the context, is there any particular reason to do such a change?

If the label name is changed to the regular 'camss', then

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

