Return-Path: <devicetree+bounces-211173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15726B3DCE7
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:46:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 339197A1F65
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD2AB2FF174;
	Mon,  1 Sep 2025 08:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H4D6D3UK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CEA2FE57C
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 08:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756716388; cv=none; b=E9qG6WbT0F/y3K661fSEBAYftLtpAFVgODbDGJ2p8Lyugk09XXg4R+VYUxo9MEShJoBCd/de1jn2Lp7elKw3JhmeqDbE9TOivQ8NcaeFNaxxfJMajFn2/BCE9bPaQUWzSyUviM+xwrjNSvKBAhQRqM5OWsTjTL2w5/juYkgnBX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756716388; c=relaxed/simple;
	bh=iflz5Nt461X1bRlMAcJS6icPWKPS3TA+XUoGxapPj3Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u58g67RgRZ1RdFpDRMJ5ztEMPJuExDUZo+NytX8e3yx0miEhnS+ieN2y48c3ddeZuIqz4XtycMOpnP7NcAXz75lqyOMM/FKiRlj+v3ZRUp0OZD6XNi+EpJsO2Pdb7vkggWs65bF9FUNIPJu87TCwJ0P37CZD/laEUsREgwr0xOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H4D6D3UK; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b042cc3954fso110974966b.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 01:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756716385; x=1757321185; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G2sT5xK9I1G5rI22V3pZH7RFm4MZzhppyHAkAzi7QT0=;
        b=H4D6D3UK+OsbzeSzDoqaN1ek5jX4lekmMLB7kB9FDHuy2fOoem6um4XjArE7TjGgft
         bk6Ox1SDRKXx20Bi8sjgPeX4Jt3JMRRBI3PVRMEmZjHCh2EpIh0O9cxUxBmFJrU85q79
         v85nN5XlWGeDqrLjMgaNiUunW4qOV24PO1RIBrEevV0Kitp4sjYpKIVqEK8pP2noBY5D
         UjIHg4FhHiu4n5dZ7k96Am55kytA9qGraU5/dHmPVrRq2bDPyIGsQOlW0uNpJ/q/n+Ps
         i4Ag0pd7rNvS+ZniE2YnE+Ac1IOFQxwIcHNiC1bYu5ESxl+ymQzNyEqQfMKVi6GaRnna
         Eo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756716385; x=1757321185;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G2sT5xK9I1G5rI22V3pZH7RFm4MZzhppyHAkAzi7QT0=;
        b=KtbFaYduicsRxao7SAnDoaWhD+6f+5wZ1yoyCB8yiSEY0pz/Bxuy1ij/fiiV+B9YZ8
         28QYDT875hX5VFrqpqHsOp7V4/VQ4hs1lwX1DhkbFCK4q0mTA7T9MuCnAofYTCKvWFbL
         Tf5aSWDm4TkAHY3lzwD2K6OHxnr90kjHwdtlvK8c+TYijURFSP0ujDxCVW2hctZgJwyr
         V5PWZG1EtxnGN960Vs+QuP9ktiI3ii2PUHs36ecVEYii7TgzrJYFFSdW2yDPCohLRs3O
         QsCdsVFAstya73ERA/SL+ouZnBW5oncOmAl1hJwxxjn7bWov+4MCMElJK3oyFTzbOuQ3
         IJqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpEvT1qA4Ubt3s78TKc68qog+7bmtf1Sh8pWKJvSgg/XIFFKqzr9tItRklwCn1pOo0NV+1+DZ8IWQL@vger.kernel.org
X-Gm-Message-State: AOJu0YzjhL9dRIWsGylEFwlCn5ChfDHfRSP/eY+39JUirec7/a7Nlx5x
	vhx0QGahEtBRtK20AAKTk8EsZoxKRBZM8I6ixKUxVgza6/Aj59RIVRJZu95dZtP+5i8=
X-Gm-Gg: ASbGncsEpsbZUubylgOksYhLH7PZGMJeRxeIznTg5LNABPnQIExOtSC7nV4FrHOYNyX
	kBj6I4XBNQvaOxO9FXWwx94GdJzg6HMjM7cZhTJ84H9QN4ajpIInOe5nNCLfQ90P93117F0VrT7
	aoCNiwVLNYkEToiQYeIBP0TLbXz2k+Z03Tajq1VqZPfDI3x6klOP08Vzlw/oQ2H+A1GeJBDoVmD
	uxAgHNNZPI1U9yoqHc45qnsOztbMC3APRx9feu7X5DMB952SIEQ+ITXC3YJfWnV0R98Skx3ddZh
	FJwXUbYiGMEwmsL3Eq61/IQ051uq+6MB3wooTBmF+wn0IRMDOo3mz4ScDSrbTsKAg4BywAAKz70
	g7hywDsREZoHOQHo0VoyIpzWtJ8PxCAoGRhksLLSeR2IVubStNYNuJMYHTa3wX/yrILZK5FldyW
	85YazgV8joqIBKHw3M72rcwHanHWdPnw==
X-Google-Smtp-Source: AGHT+IEjci4SG+urOJ3OKy5HCPXFmJGLZVHBKnf2mE109Xz+m/ZM7BpLkpOAiXXp+R++EbZpUDHjyw==
X-Received: by 2002:a17:907:a07:b0:afe:dd76:7cd7 with SMTP id a640c23a62f3a-b01d8a266c2mr751367566b.4.1756716385331;
        Mon, 01 Sep 2025 01:46:25 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm219333966b.60.2025.09.01.01.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 01:46:24 -0700 (PDT)
Message-ID: <d32a9e2c-5dc9-461a-b22e-65fddfbf600a@linaro.org>
Date: Mon, 1 Sep 2025 09:46:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] Documentation: media: update Dikshita Agarwal's email
 address
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250901-update-email-v1-0-8fd49d58c0e5@oss.qualcomm.com>
 <20250901-update-email-v1-2-8fd49d58c0e5@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250901-update-email-v1-2-8fd49d58c0e5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2025 08:33, Dikshita Agarwal wrote:
> Replace quic_dikshita@quicinc.com by dikshita.agarwal@oss.qualcomm.com.
> 
> Signed-off-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> index c79bf2101812d83b99704f38b7348a9f728dff44..0d630e620b097d01001fa866b6a4a3c6328e89ca 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> @@ -8,7 +8,7 @@ title: Qualcomm iris video encode and decode accelerators
>   
>   maintainers:
>     - Vikash Garodia <quic_vgarodia@quicinc.com>
> -  - Dikshita Agarwal <quic_dikshita@quicinc.com>
> +  - Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
>   
>   description:
>     The iris video processing unit is a video encode and decode accelerator
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

