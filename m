Return-Path: <devicetree+bounces-153688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE85A4D8AD
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E127E178316
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9AD31FE456;
	Tue,  4 Mar 2025 09:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iq5OVPHh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA1C201022
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 09:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741080694; cv=none; b=B4PFItuHiuL1T2ibUd5beuT1vSGwuwLPrby1KSnJp9bN2vSwm6tthvqVzP4+RKyz6K0eGi6AJVzwxlX7KiND2s3IAL5wx6Byvcdgpz5VycKAjhGqZADbiUxSaCkzSmJ7Hg6NhcPlMIe6wo8SAq2gu0nKk9kzajpjzkIbS/hKflA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741080694; c=relaxed/simple;
	bh=f0m1CDKNfTuQsPCxO4ffsoS1wvQEZPAKQ0P61rR00WI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nYJXOIkx+PBV1SBJ8B/FTfhJwPXrbbLmk9lNFSeZi9eOAsAEMDT6ZojDN4Iat4BcYQ9A+MwYZBTaNuiLaH12XANAbhqOKtg+6cyMsweGPtXryL+bxTVDE1soEYDXjS2faUaT5kp1Fldg1HKMGKe1h+T81r1p9hH1lijMZpX1H4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iq5OVPHh; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43bc38bb6baso11241895e9.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 01:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741080690; x=1741685490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FjiqFuGa9IcB3oeyaig5ZQnZ00t+YOxd30bANitLrmQ=;
        b=iq5OVPHheceJRwXMmBBkWDDIXePY4+nTw1w9RIzOx0lk0PlDX+s4ip4ggj//wjfVSq
         YxCToq93c18sH85js9pNLENi1Iq5eHYsdJTgm2EA6y2sote/PwTqx3r6oBgtl9V9Emro
         KmNMeZRf/L6qby8ICBoYQ8IONQy3fgwc1g06elkAPlbi2QSPv8Yijy1rPtarygNbZ2yy
         adGNCVVTFpRLPlIm2xWrqHZHnFv106L4ji4dlH8Ssc0XJbW/bQZpnmDfgHkE4gVLNR24
         Xt+JG2q48PpEddvFvGmTh4RLaJtbcmTeN3yW3QUP9MrlXlIFb9aSUgFIh2/sepMt2jm2
         8qiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741080690; x=1741685490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FjiqFuGa9IcB3oeyaig5ZQnZ00t+YOxd30bANitLrmQ=;
        b=sBGSkEd4WAsrsbVd4YzdBHnR815Xlk5nMJURKtU8G1xyDDFs1HJMpCrkHSORzetRl+
         XPdPGIElESs5vp2YLUbPR9KE5kws1zzgBU3c6LlanfXbNZPrgCeFyS7enaYNpa70JIlc
         RXDl7PqY/ob6XYwmXvCJkp/x8P7dXTHf8597FICIeNLG3KwsCvprfrVs2qT8mTQZw8Y2
         vmFmhZSLFZ2dIE3PURsMLByhUxmxmZpbCBBNfFxrAdctk9HQbzGBKdeOQAr8+HfYMv1i
         54sNeGjpOekrvjyqtDSta3FgJyR3UuIZznGAXrqaUSR/3SwK0ZyEU1wiZb9e3WQ+dJE8
         H8uA==
X-Forwarded-Encrypted: i=1; AJvYcCVV1ZMZFKKet3OgNVCcR6ZNXeuhg0TmONlB/JXv6nErc9llpyEHqiMozdlrFOXk96ViXZU7ypyaffS8@vger.kernel.org
X-Gm-Message-State: AOJu0YxaDVm+CH8NBti4qE4Kqo5l1fOOYjsBAHmo8I9+NDYrRXM4ahWS
	+qCmIx3SxXFNQ6+D03Y7Ls2X3PrKixC8kMyxKCrNlP87F03T1B8F38/MrdUEi2Y=
X-Gm-Gg: ASbGncslJqBmaLb31+l90ZiQVk+L1ZwqtpUqBT+Kbqqbigq5HpEjVKyaSHCCZzvfm86
	7IA9prRF3R8SzBEhQLO5XnufMPUxoJmdf01x5p6g7uTtxE5NHnqIvCcKFo9u+DK0lQMCJlkUKa9
	xirQ9Tgp4oDBoREJGuzTFaZH7JcQCikCzfc9/wwgs19iZQlrNF4qQ0Ajv8dTXE85/sPGvwmRDmU
	WyqXjN9eZZxdSew5gazJ0fRNieMh0r9iKW1a6kyxC7guCHJ/+6S7nKurYCYy83bWQe3KHNsxBYf
	IgHCVDmjFoK3T5m6gBi0auJV5a0VSG33r6hItNo/eJyS5gemlk7cyNqZ2r1walET4JL7za7H+4q
	J52BkUVxZHA==
X-Google-Smtp-Source: AGHT+IG2b8tLFvBTyW6XgxUEsNgYn+1nm37EUJ3QIriKIIZDPawo7iAw5RKC6G9gHRH1sm2cXjjVyg==
X-Received: by 2002:a05:600c:3c9c:b0:439:89e9:4eff with SMTP id 5b1f17b1804b1-43ba66e6b5dmr142345715e9.10.1741080689654;
        Tue, 04 Mar 2025 01:31:29 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bc447a0b3sm57631335e9.3.2025.03.04.01.31.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 01:31:29 -0800 (PST)
Message-ID: <e66acb3a-7805-47f5-9179-1fab95754727@linaro.org>
Date: Tue, 4 Mar 2025 09:31:27 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: clock: qcom: sm8450-camcc: Remove
 qcom,x1e80100-camcc leftover
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20250303223936.1780441-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250303223936.1780441-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2025 22:39, Vladimir Zapolskiy wrote:
> Qualcomm x1e80100-camcc was moved to its own dt bindings description
> file, however a small leftover was left, remove it.
> 
> Fixes: 7ec95ff9abf4 ("dt-bindings: clock: move qcom,x1e80100-camcc to its own file")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> index b88b6c9b399a..9e79f8fec437 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> @@ -64,7 +64,6 @@ allOf:
>                 - qcom,sc8280xp-camcc
>                 - qcom,sm8450-camcc
>                 - qcom,sm8550-camcc
> -              - qcom,x1e80100-camcc
>       then:
>         required:
>           - required-opps
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

