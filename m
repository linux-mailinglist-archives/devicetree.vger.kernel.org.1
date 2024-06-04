Return-Path: <devicetree+bounces-72199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFCD8FB1C2
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:04:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD9F01C223AA
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DA6E145B2B;
	Tue,  4 Jun 2024 12:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zFpEbdUe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D92143C6B
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717502691; cv=none; b=HW62JmUiH5FkRjlT1apugKENahVsGHDsVkTAlEvSQCR7qDgHPp1EchKpa0q5xl60sNN/l+FsZO7Kyw1vbya7GZAOMR2GKO5pu0TrAEW/Gzs1ia6Er5c9CFp5R4HcsEgbqcrZyvAJhj6P5KIWbXKjY/oiVM8T/enFuAU2c6rHFQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717502691; c=relaxed/simple;
	bh=1WuOXyN04TmrM9nXNwktOy5RmEz+O/pTCDm+1/r+JDY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=hE81Kk21jh/kIVBQBC72iyvvTJzEleuKqoEMNOTDkM8Mfyxo3FROzkLQt4HYM5nXHwpPaxrv8YOT290FCL/wazOUQ7HRZgNqKWA1l3V6qmeZ9iIKpb0GTHUZK+cI30CPXC/qZkvxtAC+hRgHbqYw65EgynHTofL6c2tBSX7eyA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zFpEbdUe; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2eaafda3b90so26510231fa.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717502686; x=1718107486; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CyJclPiQLaozaD/+DIwrfcdPK1SOrSCe1W6tT7ctbPg=;
        b=zFpEbdUeasyUVQe9XVE2/x3uBvybSGHu0cHDB6n+yPeTuAGWLG7akhDhHh7d8gSrU4
         kXuurVsls4OfmNeILAIMeu+O6xsliIduSpYWvbNxASHSXMWmQKFUczMpxNS15Kx9CwRq
         32IRPy3lURAX8nAnxXb5Lg+b/cGASYq30IIA0VhnlOCxqFBv5bPwcSiKugrvAnNmIs+s
         e29NTx0RlFvaB7KWnr3uEgjE6BR4hSn9V4Rc5c04BrjCkK3yvv9jfr+cNcX8ge92EtcM
         iU8uhQKHsz6a/sguTZIOs6NfWVnlxmAC1V1klR+p1vbA7PO9BG64GhB2UpCbIGxk6d8w
         D3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717502686; x=1718107486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CyJclPiQLaozaD/+DIwrfcdPK1SOrSCe1W6tT7ctbPg=;
        b=mW8ui7eAbscTqaSjL5Swzk5E5zXhm8EhR8FLCkAybsHkyC8dTaaKld8uPa6GJ8A6wI
         1aP1u9TSlI2zs4yP1dMXByRY0xoBZt0LZSbKLCqlysWc0WN14683oM19HSqvYq3Bk7la
         Okb1mB1d18YNB9qujgjucYuXDIEg265owBY4ctfZg3a5sg/EWz2CSNB2S99NnWU/fNI1
         veE/JZqS+EfyPL9yNoMYrOm0BUOC264YQRv7/XNmbN8xW6IRKiCflHW4mCVQcMRXozu8
         XyV4oyzFOcll/xxheC2CVX720Fd65aKdT/dGrzzinRv9vYjYKl3x8TVCL2Nvwm0RvfsU
         mUWg==
X-Forwarded-Encrypted: i=1; AJvYcCUZd4EwLI7RJ0h8toI7702GecnhTG7bSbi1hsqKl32hYjX0PpLnrL3Fsy7509ok6R+fAAEGCuRpPLKtpgwBVbA4F+g7dczvwGmnoQ==
X-Gm-Message-State: AOJu0Yxp2r/MRIs6APRW82WVTFjfqxSB7MxGqyTxzljbqgIWyJ+jSdvT
	21aT5dyIiT+vX4Lc9MvltTkfLKisebRAZohM+XtXCIJBlf64as6Oxtvlxb8sHExHVoBbc2n5VEX
	fJsA=
X-Google-Smtp-Source: AGHT+IHRrHR81EbSwVu82msyFqCaDZc5ExfKcdZ51K44mip9EtBf+A2UiJq9mUoQdSdaLWzzLrIlVA==
X-Received: by 2002:a05:6512:7b:b0:51d:a1ca:5f26 with SMTP id 2adb3069b0e04-52b89573c20mr7977735e87.20.1717502686433;
        Tue, 04 Jun 2024 05:04:46 -0700 (PDT)
Received: from ?IPV6:2a00:f41:909a:a11e:a035:2af2:8d85:1f72? ([2a00:f41:909a:a11e:a035:2af2:8d85:1f72])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a7debbeacsm1553479a12.64.2024.06.04.05.04.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 05:04:46 -0700 (PDT)
Message-ID: <68b61899-3d60-4fb1-8170-4d59d6edf56f@linaro.org>
Date: Tue, 4 Jun 2024 14:04:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-crd: add USB DisplayPort audio
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240604094947.98191-1-krzysztof.kozlowski@linaro.org>
 <c3a922e4-0b34-4b53-bdbd-a62817a68db2@linaro.org>
 <a0051325-02ef-48e6-ac7e-57c18c8abead@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <a0051325-02ef-48e6-ac7e-57c18c8abead@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/4/24 13:59, Krzysztof Kozlowski wrote:
> On 04/06/2024 13:56, Konrad Dybcio wrote:
>>
>>
>> On 6/4/24 11:49, Krzysztof Kozlowski wrote:
>>> Add support for playing audio over USB DisplayPort (the two left USB-C
>>> ports on the CRD device).
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>
>> Looks sane. Are any UCM changes necessary?
> 
> Yes. I already sent topology pull request. For UCM I will send something
> soon.

Great, thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

