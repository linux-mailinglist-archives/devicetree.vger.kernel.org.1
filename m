Return-Path: <devicetree+bounces-159469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 814C3A6B045
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 23:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDDA6483C7B
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C927D22A4E5;
	Thu, 20 Mar 2025 22:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VFEcz5p5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E26227E90
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742508396; cv=none; b=EM7nGl5SKbghPP71mwDBNYkmBz+xo2Y+rxUdmVUyy53ZRRSfdUZU2fD7BbNqRigzi8aGXpFEIbCYDYq3P05VMbaqIJdbmNPEJEDd6PO1vYwxDxUG6+Zu9KE71i3oLaXjcb54X38NeYiexb3d4bxDodi3GCmuR9WJk4PBtuthveg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742508396; c=relaxed/simple;
	bh=wVNswW8rL4OetwqeJVEiR14YDddt4iIFHENN5BwD65c=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=a6YEJMkIWvpm5xEdxlupUqygcNoVfFY/6A/gt48nmbGgtl+0ICpJZtGJBISN+JpR4PDYRsROvE+oTtYpdBECm32zDQEfGhUf7cw5O/Cnik3QXMRh+Mj0yEuYEumIP5870caVXEw8+3anwMUVZAC6iDYOY3POEW6t/grHvTgtdpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VFEcz5p5; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4393dc02b78so9043075e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 15:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742508393; x=1743113193; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S+DKgKKe0d2S0aLSGa2DZ5AxLYPiZ/5bN97M2PhD9xQ=;
        b=VFEcz5p5PxWd8KE8AHf+jggrtqzwlB6lwxj5zzG3vL5xcaCcDITZdhKZtDetK3//j3
         eX9s+1QTYJp6MbncUPplXY7t4h2kmKo+AJQ2at43n7B6qUTr4v3rLpBGVc8ZvjrretAa
         ApziytqIYQR/gAmUS5c/DYYh3KQn7gFsHtFMb4gDiY4WgD9JD00OYMHSTiVbpz6OHXrs
         bQ8H1Rxc0EGieHZiXyNkN9pHjnQqApZBDTsvrdLW+aIlTIa1jrsaedhh7WBjVc7YMTOS
         tIhTLUwuNlZdoW3F7x8coZ5tRCjDUaMGqp3eWbshyLThFNAG7pInnaZBJKe/lkt0vWRK
         UP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742508393; x=1743113193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S+DKgKKe0d2S0aLSGa2DZ5AxLYPiZ/5bN97M2PhD9xQ=;
        b=pDmPnZm7ke+Dm61XnlNnZsu2TjflgfX+w853wJyvaNqRMEdYbL1/9qebYvTEDIVUeM
         zSg7TFJHKGVMHz5H70d5i6mYcpbTPJ2O35qusrsjdtwTd2pt2kEw/jYhasOYhJwt+7Wl
         nRvMEdVTLAtFXiBnc5M7ovpZY5CYNnXtNEnCOhzRfChDhQrR7YFery/8qsD2vLoSgrU+
         XAYWRW02jLFLOa3wQsg3qfjEbiqqSZNNSigIOWlHlcyPqEb5Ea/AkzrUfj5LP0nyHwY2
         oL8s8j/OqkKQ/U3JDmXvQB7V5fEC/64+oVftZAIvFFd/WYldf0DtMMbMM7AzGr08fxV5
         3wTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW2VaI7d7gMM0fhuzjRZeXV7ZVxztWUwAZXn8eCnKaQfMKughXRyqPuMsTMphTR+DGnGXzL877hChP@vger.kernel.org
X-Gm-Message-State: AOJu0YzCgkiSV8sDAOsblEhNO8HUeZ3VjGbaQ1f9Ja5ezB5oPBCqZtsQ
	vY7zBN2LnOyVV1uOQ2zMVewlnw0+cK6BLf6xkMgOYsL44IkVVlQKt7vWbNofWyg=
X-Gm-Gg: ASbGnct4WbFykWAoy+y/anPcSpNU7FoNB75gfGqp/B9/rEaFXqWpFZXRLC+RCvwRz6k
	qYZHi1Vnru7so9pYQn/JoUJK2Aov0s5i4KDGuFhtCvl51xSmpZ0LW0rl990zR8Emv7/1zkFOKay
	7tGl7IEtK9fM8cz0AiQYTGixH0vUiF7MEzkAZALaBu/LFcvHwikK7qdfijx1+m0Wt1WIukqxtH7
	7zsNTbHLIIUP+NnW6PR1cxZhOafJRedpFYPJksRsR94X2Gdq6i1IfBF05HB0r9/onuLqVRtkf2M
	1EIe+AmR7DFpNDWO9kyRhSbrc2eY795c5IUqliPG+oIiakQSjTT9u0tH5o5aRMY4L2QlJj8Nx1q
	od4phbbYNZA==
X-Google-Smtp-Source: AGHT+IF666w+fhi7xMb+8oGJRC8UIY8sQphK9beWqbHC+xtVyIDPE6027D6kLOQ0WtAFbDSaxhPr2Q==
X-Received: by 2002:a05:600c:4584:b0:43b:cc42:c54f with SMTP id 5b1f17b1804b1-43d509f433amr7194745e9.14.1742508392863;
        Thu, 20 Mar 2025 15:06:32 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9e64casm662410f8f.73.2025.03.20.15.06.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 15:06:32 -0700 (PDT)
Message-ID: <7dc8700f-0d53-45f5-bfff-2bec71c7053e@linaro.org>
Date: Thu, 20 Mar 2025 22:06:31 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] arm64: dts: qcom: x1e80100: add bus topology for
 PCIe domain 3
To: Wenbin Yao <quic_wenbyao@quicinc.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org, quic_qianyu@quicinc.com,
 sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
References: <20250320055502.274849-1-quic_wenbyao@quicinc.com>
 <U9NTFHDe_r-uUozJFJGmc7VpxMDx39onKby4M3B_sy0jJ2fr7-iXkS801m2slu8PXanf7Y7faBxuZ8fzWiKxTg==@protonmail.internalid>
 <20250320055502.274849-3-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250320055502.274849-3-quic_wenbyao@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/03/2025 05:55, Wenbin Yao wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Add pcie3port node to represent the PCIe bridge of PCIe3 so that PCI slot
> voltage rails can be described under this node in the board's dts.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 46b79fce9..32e8d400a 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3287,6 +3287,16 @@ opp-128000000 {
>   					opp-peak-kBps = <15753000 1>;
>   				};
>   			};
> +			pcie3port: pcie@0 { 

Missing newline, please check your dtb checks.


> +				device_type = "pci";
> +				compatible = "pciclass,0604";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range = <0x01 0xff>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;
> +			};
>   		};

Why is pice3port the only port to be enabled ?

What about the other ports ?
>   		pcie3_phy: phy@1be0000 {
> --
> 2.34.1
> 
> 

---
bod

