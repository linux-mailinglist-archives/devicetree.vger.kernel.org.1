Return-Path: <devicetree+bounces-223525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F357BB68E4
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 13:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 500644E618D
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 11:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9DC27A127;
	Fri,  3 Oct 2025 11:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="abSHRRWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EA6226CF6
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 11:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759491981; cv=none; b=QDDIRbeHqBK+a5kwEDuUKz84z/guvh2siQPqFqJrMfRrdhnYj5+1uLMNeXfEkIf+auc8Jd3gtZKqm0rP6fLQ1309gWl2AnESy/zI0ep29w6TsIHCGn+sUJsdJJJKUuzYc09YZMnjaAf2HpReFEcRk2PEtXcO7jr5oRzzZtKqsL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759491981; c=relaxed/simple;
	bh=pyZ3TAOi0U4n2XzT9dIn2NH1hBOe2oL0LlEkuEzKqmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tkVKhd9Enj9tzMRHlsvktpdDeGQSG/f9IMb3jmhv+Rx+k7MZ3WbAytbn+iZhDuPGd2DCiwLt7aqNpkKcaKjLY4ozWwnvAN1BnKW0TBHEHsQRn/lz+NjGxcghl4h7cHV3jtj/+2khh4O5s9BCTdoISGH2I4Z7G8Ztu5WPIAXtVM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=abSHRRWI; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-46e42deffa8so22461475e9.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 04:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759491976; x=1760096776; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MXPI8JPSlSxfXU3oIGiKhsz+rY4EG6yV9MAy6evg5c0=;
        b=abSHRRWIjw99uqxDq9VAZ49WsCDXQAVamhm+MAc+8d514KSru2cX9L3ZSucNk5qRnM
         gXu72uNawMrP2cKIr9bENS5d/Gdb5Pj5kWA9h2462N2d3XvFPDTZBMy+8ut0YWIQXzQl
         i8Fy5awrBKH0g1sqi5TyJt7TFrZfGBD8ALOJg9yX3hV0ai1QVS1G4riRW2GeNu5oDETx
         cWB/q3lRcHOC+4RbTaWrhK8/zk2MJiza8EkF7M+ZQVs7OodNOYqHbGfF5EjDxg/1/XUg
         BqiLjoWbSfM2b5LgFtLEj+U7F7cZVStTQWjoGEEOwYezcIrSNGQNTIhbWNAV8uNsaCxv
         e9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759491976; x=1760096776;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MXPI8JPSlSxfXU3oIGiKhsz+rY4EG6yV9MAy6evg5c0=;
        b=a2W8aGcEhudusG1z2aID9It0IzVP9Fzto5D4YrHN2lMeCUNolIYHG3jucp2IyCy7Ew
         NkWRbZZ4qQZ/5yOL+FQKccM+hIRf1XUXsi7gM0n90V4vuZYUjDgR+rsG17wnIR06Br39
         cwwCva4VNVAgeaGR/QvJzn5fi9PhSPQGBm08XRR27nGVllI7CipjwlGqsr06VTmRVC8A
         V4qu2bJ3/FBgsUdxizriRbqqgdm2GYoi8/90KLFq7DSHaO8JD8I4wq36lT77Q+CHZIFf
         ii1WnDcSnl1PwuVGsPpQQBfZAuo6UsGn+ljMR82bjtyeFs3OK+L+jSA0EcclIZ0DV7oS
         lWTg==
X-Forwarded-Encrypted: i=1; AJvYcCVw8z0VI8Xo/3mVmmNbYjTcsVOM9yV7krZq5BqQ6Sig0uvp013Qshvi/kEfwGWyiQKpx3wLYe2x5YB1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/E/tef4Rj74CpRhMgGpxbSb4ltgmP6rf53z/SbL6S/TV4f2wN
	jUr8BmmZMrR3KVnfT7dPc9GGL0wBXDyrqC7CopRVNHklopuc2Ax9IYS015zAXsViWO8=
X-Gm-Gg: ASbGncsxApG6iuOQq5P8BednaEOc2CeFa4p0XMJ1m3qdXE4P3Vb9+3ujqllr3CjdI0W
	IFbA8sfPaP2lNSP4zhpbK4AVNbN72g5wKTYoBS1ZxCLJyOoK8GzRgrNBR/tx+9n/qa+RxLVZygI
	lq3xvCQNWbsnM6gd27IGozhRAHBtxjWQpDHtVTlpA5EybMFJ17v31a6hHAgDx4rywC1TJBl42f8
	2dxNvWkMZboKGjyCFGPMBRC+RRnQqvFZvU2XwuwAa1FmUBj7TAcRWn6vBUYYxij/6N2hjr2OiUA
	hSMz0ApwWP8GANR/qJVkP4VQFR3PTuZSkyOHhzDdT3w9pPgADA1CF+OMuGUgMacoDb9DOIuVzwq
	Vm8JsBgO0L8dxh2gtuf9Xv3g9FW1Ymdz0+PVkzj9IrSM/T5fIo3Y2qyzehQ==
X-Google-Smtp-Source: AGHT+IFbWMEm1USYX7Rq9NUIjPZY/j0rB2JHjRl6Tdj4Ye/pg2AbJ5imxLC5UbzbWi6GsAHZYHcJ9A==
X-Received: by 2002:a05:600c:1f96:b0:45f:2ed1:d1c5 with SMTP id 5b1f17b1804b1-46e7115cba1mr21953415e9.36.1759491976464;
        Fri, 03 Oct 2025 04:46:16 -0700 (PDT)
Received: from [192.168.0.25] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e723593d8sm31826055e9.11.2025.10.03.04.46.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 04:46:15 -0700 (PDT)
Message-ID: <385818b4-72bd-465d-89f8-774a76102506@linaro.org>
Date: Fri, 3 Oct 2025 14:46:14 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: soc: qcom: add qcom,kaanapali-imem
 compatible
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Robert Marko <robimarko@gmail.com>,
 Das Srinagesh <quic_gurus@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com
References: <20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com>
 <20250924-knp-soc-binding-v1-1-93a072e174f9@oss.qualcomm.com>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <20250924-knp-soc-binding-v1-1-93a072e174f9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/25/25 02:31, Jingyi Wang wrote:
> Document qcom,kaanapali-imem compatible. It has child node for debug
> purpose.

Nitpick : subject should start with a capital letter,
also, I do not think the sentence about the child node makes sense, as
the binding already explains what it does.

Otherwise,

Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>

> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> index 6a627c57ae2f..1e29a8ff287f 100644
> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> @@ -19,6 +19,7 @@ properties:
>        - enum:
>            - qcom,apq8064-imem
>            - qcom,ipq5424-imem
> +          - qcom,kaanapali-imem
>            - qcom,msm8226-imem
>            - qcom,msm8974-imem
>            - qcom,msm8976-imem
> 


