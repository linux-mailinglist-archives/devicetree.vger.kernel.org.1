Return-Path: <devicetree+bounces-235529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D5087C39A03
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 09:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E67054EB317
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 08:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B1D3009C1;
	Thu,  6 Nov 2025 08:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wLbTyywC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9359821255E
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 08:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762418768; cv=none; b=uKbBxMfzxvJmAbjN7/vfyq52G4Socr2JhTowj4sFUYC3YJrp+vlXUsCLboMqdKO0NvhoN6rAAJyFeRrA7dIM+lD2AeUQhhZ8VgLGLZL4J7TK6IjGh+qcvPDRGYgcxTKzJlu8iiMqgu3jZThroKMkI8EDQluozdDKVdFA5C7ON3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762418768; c=relaxed/simple;
	bh=kAZXwDplWfYOyaaONvDtrPWU/0/gLJGZ/FYvRKERuQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZX/CLLIliCnmeBgQOl0E2usqUcqi4OowZVMgBV3DqsFaJXkjYU/krStnEMSXAqGIiZ8JXMLhKVceEmWMkvHsbjF+hx74YjfXjgGP2mXjz3b5gYHPajiLPc8HVsHRJFY7vOxomSm3BJ55T90HSU+8qSnPrADii3glYeZskJ9+3BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wLbTyywC; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so3652235e9.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 00:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762418765; x=1763023565; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S4GLlYfHZwuNWxVa94Xp1O9jDlukJQh5B00DffiN/3k=;
        b=wLbTyywCyIQ3qgIdjo0K4heVXVSncAPE3Fusu2dWCB2oYxNV9M2pGP0aKuZHOusLVW
         DkgtFbt9ISQRPU9fskiDBi3UOVULMWx31AEyK6xCqhF7cZX70J+DiFDcaSpgtQaPzt0B
         8kb/hEcUqsqix0Zvdt7pHYVjW6zAxeAmiAVDSi2UkiCsY1ok45SRQZJYZnDL4mVttAjQ
         YFVySXzDR1s23fbvsWAJk9L2K0jL8dUNYEExOceT0IpmR5uUmObKAXukjgB0gj93K3cm
         HmBR4irqgf1HGuJjOuVI5Qg68yVjj37TNX6KnGGfKJhA0Oj3q0//NRjr5SzP+MQpF+MK
         3T8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762418765; x=1763023565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S4GLlYfHZwuNWxVa94Xp1O9jDlukJQh5B00DffiN/3k=;
        b=A3Hq8iyxNJNYA1jlT/pIOi7W1D1R4oG/H9IQ8+F+1PuH8vmZ8mMrv+O4C0WRewmxCL
         7dReuEu95tPTG74sDtmzP5e9EkzSx1NL1wRa8XTqh4EjxWxISFBnagx/lIOW6o4Q6YAh
         YHRqvXHllr8qaMTXEC1i7vJCCI2G/eUiO+PstTHy/7wVGSvV41Dp5qWPpuGq3pppLCEC
         HW5laafWC+Zm4AF62vLgYtjVP6M7yNTF98slN4J/c0Vx3W84AqDEqdxd+3ix7svOMufR
         LdCzbnPhvOjKyWRt26EVN3ufPhG26lzHO8RSJ/dZ0U2AEc4U299HoLDcrUFnf+Qv12Bz
         2syA==
X-Forwarded-Encrypted: i=1; AJvYcCV0wAdV+F08TpkUxa0d3RDuooQINE0J8nk5Nlu238YutLwYXdne79bLbP7uoc+EHkFqZLrLG+osSo7/@vger.kernel.org
X-Gm-Message-State: AOJu0YzqI8f1Q65B8Bx3mdgUqtK2+GZxaEaF4Fu+d3CYMRfdnbduwrAh
	xYdOyDqze0o0mScJKFjdqCaz1RmMWORSY0Jj2jd9cditVtOiOuQ1JVyWBt38MxHqXMo=
X-Gm-Gg: ASbGncv/t3EX3cHT96cPotHaYE3YSBTiolKIGebooO4DtIk1+3PTCRZXR+9ytVG4W42
	kCZrOxFFdZaL99vR34WMuj1o5OviHSvmnu4BmEJdnjDyMlvNy2E6oBATW2hUqq6pUNNx6afAqYx
	7mIakwu8OhZNJrYdP1lfugaS4ueT67E6ccdSg6bCaPUDw6q7cDyAQ9RRca0WnHX3OFdNafEkysD
	mpBtnmTXSEvrbvuvxmAN3HbPGjhMtAP1XuIhBTZDZPZ1qySE+72mEq/9VkJ30EVQOgREhAY77tI
	3R0iwQbXZA8icQgltY+yt1dmib2o5XGHNy64rf9/Aoh+CreoXM7AwwkTinxF7/VekBEKpp/J1aB
	OST2L7VQd3XAD3DH1G+ERZssfeNff1px6D4uyHB6NyMBPCyaGc6y5PbzNllfRQX/us9QNiXg8df
	we7Sdds80=
X-Google-Smtp-Source: AGHT+IGg0bzpltSE5ccYQx/GMTS9rG2hOLendCmRdXe+0MP8d5pGmnwtwR+LGD1g/IMFzEfZg1oASQ==
X-Received: by 2002:a05:600c:c4a4:b0:46f:aac5:daf with SMTP id 5b1f17b1804b1-4775ce2309fmr63450655e9.35.1762418764756;
        Thu, 06 Nov 2025 00:46:04 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477640fb723sm10590405e9.10.2025.11.06.00.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 00:46:03 -0800 (PST)
Date: Thu, 6 Nov 2025 10:46:01 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Xueyao An <xueyao.an@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: qcom: HAMOA-IOT-SOM: Unreserve GPIOs
 blocking SPI11 access
Message-ID: <7loumd2npp2tihe2jwvmgs7nh7iuunwahuww7kpwz7w5e54jwp@hrkhobo4fqhn>
References: <20251105054548.2347569-1-xueyao.an@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105054548.2347569-1-xueyao.an@oss.qualcomm.com>

On 25-11-05 13:45:47, Xueyao An wrote:
> GPIOs 44-47 were previously reserved, preventing Linux from accessing
> SPI11 (qupv1_se3). Since there is no TZ use case for these pins on Linux,
> they can be safely unreserved. Removing them from the reserved list
> resolves the SPI11 access issue for Linux.
> 
> Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>

Lowercase the hamoa-iot-som in subject line.

With that fixed:

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> index 1aead50b8920..107ea8045f55 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> @@ -451,8 +451,7 @@ &remoteproc_cdsp {
>  };
>  
>  &tlmm {
> -	gpio-reserved-ranges = <34 2>, /* TPM LP & INT */
> -			       <44 4>; /* SPI (TPM) */
> +	gpio-reserved-ranges = <34 2>; /* TPM LP & INT */
>  
>  	pcie4_default: pcie4-default-state {
>  		clkreq-n-pins {
> -- 
> 2.43.0
> 

