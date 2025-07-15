Return-Path: <devicetree+bounces-196460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D42B05779
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 12:07:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E20FB561641
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 10:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84262D6606;
	Tue, 15 Jul 2025 10:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fmSNQqW9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F222D641C
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752574046; cv=none; b=Si9ilxyqUvCqhrLoqqGtX5pEQyvb5o4vlsB1jmP3haJCNgNpHzJVKC4+iTqCFFucxk4halLmBEqLeNrlH3Aws3z5zOvij626YRsEc7sj7MXOGquThyDvs8tC1ymf75BB2z65ZcZ3VEtJhvaBycM8pJ3jM0JUqEXlM1HNBg+pzmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752574046; c=relaxed/simple;
	bh=pmPuCTA9fVFmN/p93tytYkq21QsJABQLVSLv5iDrJTw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=VSRq9AGXT6KZAphLeeJ9pn+NZw/t43eynTuOrWzELv6P8wK/bFtf+bQ6BtulcfSBQK+VEIAlgjdMOosvmpntCqhQpN0X7XSy18JHJ9lo/AB5z9+ehoKEcCoWF1tavc8mwHWdKxr7u6QHwwxIw7HGn7N83wHKjSVcLsTT4u42ijg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fmSNQqW9; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-455f151fe61so1455445e9.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 03:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752574043; x=1753178843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JCtkP+NXfcKNSawUwyCjFILTjiTFxq5oHCDPWfXdrKE=;
        b=fmSNQqW9MlQM7HLprsjmORvnVrnLtalD62L1wMDi8wsoxq4Xo7QbOrqMM+NfrYonOe
         aNykvdO/tGI/1RwyKpAu8oQHeMiBmLBcMEzn5RXdXhOAGjI/mhX7Ra1FOhFxiQpHN8s9
         le3OLxeZfbhH6nFtXayV3RWADarY0SfcjL522Kan4t98PFscRaPFYRA2dw1UEYKF69xz
         Vpw1fzjrufuAK81GNUr6XKUomA/enCp3h+ZZi3unPfXkS6F+6OPbcP0OqIUVjt36GEyD
         pTIhq200pybtM6RIeiW2IagTI2DPjBnD7JAec7/GmWqt4sDtvWc7m7aOZepf7EOHgSKJ
         ea4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752574043; x=1753178843;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JCtkP+NXfcKNSawUwyCjFILTjiTFxq5oHCDPWfXdrKE=;
        b=Z/JFTWh5lyzN5AD8JgfuQCjxGaFK0uSpwnDNiuGRSExiVVMqqEWlSayCvBvcvufhdr
         M0RixoEa5qf4W2Zi6w5j5tSIhl3bI14OJEq8pqWycnhL/y/4T5euuxFCIkVKYzWoJa1W
         KvPkTCFGzL8ZKMB4+RfTdAxXm4nDuyeYtCkKdT/o5Vf6eBhH/87evi3Qdsv0DzbY5Dgk
         AZ/kZOOCM/Tt2KHQipUsRg2cGxFdbAK+OsBliiV7d+9a4+hiv5OxRmDenq8rkVSeXoQ1
         qz96OkugacFl4QzK9rZsO/nYxQyfIfqgPF+NrSMv5EN7ktRd84FnFOTGdvtFq+Vm7ZJa
         HQ5g==
X-Forwarded-Encrypted: i=1; AJvYcCXrjTItEK+vBJ8OzbcPtR1uWYnr848tPnZzlLefVGm8tAYAI85KRCMedk6i1IvcZg1JM5ayXuZy8p4B@vger.kernel.org
X-Gm-Message-State: AOJu0YzvyCKNAbHQe/avtGoAYJmHqeJLYwgi3b6ahRh9nfYs4ViLUk+E
	Euye0x/Rr59nLeN76YluNabedzg3iEcUnoF2e9ex/sardcUXnZkuXCvpeYYmVvpdJI4=
X-Gm-Gg: ASbGncvN/bFmJq23TAc4ibDgZBMkvnwuUzIy9g5W8u/yrY8gezRi2uOVz6+QcSzFRAV
	liiYD3N7Gr6KTtrdhxQkdCKEQV/bYRcU/XuuyXbpelT3UzkXSdCRGmnPkjqpr+QmN0fY1QSWe8n
	HnAvaVrOy0ZNlQFOyqSZw/ShtbI7WOTx19Nj2QPm1ndSkEPuQ1yn2rxxI0OTbZnFbPi2cc3dgjy
	sLxCeHI00gM+EBq85pXcEelaRUPGCqFG39VMi1z90efzL3923A4H4isa7Z9/4NPQFS3cZVTg0Gp
	kGTpvgBkwuaVswDFBPSctbNGVsCUCyPWeGAtCFCB5UsmWsf516LZV9zJnXPD2gCiTTPJHK2LTp7
	RBpcSiukWydLgfHBw+AlZA4awe7GIAS1ftdnlKied5w==
X-Google-Smtp-Source: AGHT+IEBK7rL82+z+EqTMAv+P8qH3uhUe5ILnSQYCt183pJkP24KWEVUloTLtKnkZtVFrRhcu3Rp5A==
X-Received: by 2002:a05:600c:3512:b0:453:c39:d0b1 with SMTP id 5b1f17b1804b1-45629123a98mr4641245e9.2.1752574043065;
        Tue, 15 Jul 2025 03:07:23 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-456172f3ec6sm68071085e9.22.2025.07.15.03.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 03:07:22 -0700 (PDT)
Message-ID: <15b8b9e0-a211-4102-9b68-994c8ab50a7a@linaro.org>
Date: Tue, 15 Jul 2025 12:07:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250714-b4-sm8750-iris-dts-v1-0-93629b246d2e@linaro.org>
 <20250714-b4-sm8750-iris-dts-v1-1-93629b246d2e@linaro.org>
 <5dd36649-821c-450e-bdcc-871735d10059@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <5dd36649-821c-450e-bdcc-871735d10059@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/07/2025 11:32, Krzysztof Kozlowski wrote:
> On 14/07/2025 15:55, Krzysztof Kozlowski wrote:
>> +
>> +		videocc: clock-controller@aaf0000 {
>> +			compatible = "qcom,sm8750-videocc";
>> +			reg = <0x0 0x0aaf0000 0x0 0x10000>;
>> +			clocks = <&bi_tcxo_div2>,
>> +				 <&gcc GCC_VIDEO_AHB_CLK>;
>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
> 
> This is incomplete, need second power domain and I did not check against
> qcom,sm8750-videocc schema before sending. I will send a v2 a bit later
> (maybe some reviews pop up).

Heh, no. The DTS here is correct. The videocc bindings are not correct
(and that's not my patch).

Best regards,
Krzysztof

