Return-Path: <devicetree+bounces-44391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E64485E007
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:41:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9996289B09
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963118002B;
	Wed, 21 Feb 2024 14:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="laAOUXuz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81947EF05
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 14:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708526465; cv=none; b=guHY9c3eXTZXkOuiAB5d0Aclh7FrtI3NUpmRePH47nmel9Ve+ON5SdUchUizvTCgcQfHuAd21AxvK2IXFwPlQzgJu7ELssOcZ5ARspcMHbN6HmML0Pkt/vECOvJceJfHGErAyuq26uICD9v2+2/abg0+AoYdEzPCFb1cQjwVJAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708526465; c=relaxed/simple;
	bh=S6nm4J/iIO20CQQJ+w482B78cj5XAGSVz0jCHJ3Sk3w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QlbEYb3A/1xRsogmvE+b27UH+dmT/faYA76FUVXNfGX0lunMvjqGreBeUILtaZPLs5CdDiAP6NFOtZ1ZSgSqwxqxUs+7pnNO0d60j2NV7CFYTMAiMEtqM8E/aJUXJm+pfH0qR5Y7PGatF5H0v3XXvcwMEUB+DZZO4lFdxfCEMqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=laAOUXuz; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a3e8c1e4aa7so86909666b.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 06:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708526462; x=1709131262; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s9cvhtOEKq3nvnaTfiknEoqjamenBncI3FAL04nqXzU=;
        b=laAOUXuzTpzCXKD7WLsM2mk6oldHVnz/TUO85fqfI+Ttei6xR6+jRo4Y8ecZkmajw5
         WIdP+V/z5GqFZtbd3gJauExZMC2as2v0zSB0bAtXzJPwjMCgoRSWNAT1w5O/IytzNDpp
         ncSM3+8wuJ2ER4nDvoqowROx5ruiqpjwHGOQh9/YmzzQKhcL9jcoBVDxEX+rK+QnF7ry
         MSlg7aeqUwaM+t9BxtCLejOWVfjFV8BlTz6pzckH+Pht+s+KAGZU/a2ThRSxg9VW+m3k
         86S7/G8I9xq749pYVCtLlMkxDyvYf+VjIvmYIgAfbkVkz3gecrvKqlyWRJSXD067hq6O
         B0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708526462; x=1709131262;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s9cvhtOEKq3nvnaTfiknEoqjamenBncI3FAL04nqXzU=;
        b=Ge/QmluDDbeWDVyzrfLMaL88sOzS8dKbj1h6kzkBvATXU2OT8geHwfvdWcutjhxjb0
         0yecZCslnr9LvvkZW/3ywzdiTf8QbKXabinZj/2WUMLdIcUMLIg2rJsnevkWepMlhhU7
         55mXbZsBs8krcPV8bBK3zks8qlMTe7ij1B2lxv8nt5lB2nztn9ilm29vsW2Ud6VsCEkg
         DcKORz5knZJP29sd2ddx1dqfL8zFHWsy6wXIefy+dRX7QM4i0+b+eaBNvS1P06CXArYL
         tCtei6TQF1ZkYmbETGleEUn3S/ymW0/+8iZpxqwGEIy931NRLuDxhxfl2Blfp8ept00d
         yLDA==
X-Forwarded-Encrypted: i=1; AJvYcCV41ketAr86V6GkbqZNzdmsEwBtqYNefL/i4n5cPWkejPTzeTA4x8qGWKJmd/WxgXWy/UU1flytfM+VpL6/7dr4qmqOfAnT/L2t/A==
X-Gm-Message-State: AOJu0YxWn4sqteI5grbgk7kOVLUE+YRWR3NKG+67kvRqU30+DSlnHJf1
	Agj5iEi97rT+7aVrNJK9cmKM8wFwTiG2TY9BxvTFcXRDpOHEhlzaGfun2Tb8kCw=
X-Google-Smtp-Source: AGHT+IG7JDwxCKfEBhl1raGPEU2mDPixiXPSQ0zjmztlVzxIhLeHa8fyKJykPCBEd3bDMxlQziIhfQ==
X-Received: by 2002:a17:906:a881:b0:a3d:6a42:a5a8 with SMTP id ha1-20020a170906a88100b00a3d6a42a5a8mr12785095ejb.73.1708526462235;
        Wed, 21 Feb 2024 06:41:02 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id r22-20020a170906281600b00a3d777aa8fesm4983128ejc.69.2024.02.21.06.41.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 06:41:01 -0800 (PST)
Message-ID: <ca9a3213-36c3-459a-8da4-d442592e62a4@linaro.org>
Date: Wed, 21 Feb 2024 15:41:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: x1e80100-qcp: Add repeater nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240221-x1e80100-dts-smb2360-v2-0-037d183cc021@linaro.org>
 <20240221-x1e80100-dts-smb2360-v2-4-037d183cc021@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240221-x1e80100-dts-smb2360-v2-4-037d183cc021@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.02.2024 15:38, Abel Vesa wrote:
> Include the SMB2360 and add regulators to each one of those 3 eUSB2
> repeaters. Tie up the repeaters to their corresponding USB HS PHY.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

