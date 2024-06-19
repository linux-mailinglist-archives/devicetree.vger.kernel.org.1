Return-Path: <devicetree+bounces-77366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE7B90E645
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 10:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 280EC1F22227
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 08:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 274807E774;
	Wed, 19 Jun 2024 08:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vgXGH7rX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766DA7E0E8
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 08:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718787055; cv=none; b=p3TfeJfFJNY7aF8K27yq2Ovdr2v72OoSQWDkG1I1tT0mEPonUJVIF0DsJmDiqgwFjgkuYYojbaPnNvUDqjmsY+bmztfsQiaNHUIG8VrHtk1WKh3FKMszV5xnXDnfMfMwIAO5Bwh0gU5/5cCIG2uaU41UQGPASNaI4k+5H0OdCs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718787055; c=relaxed/simple;
	bh=X7o1c3TYSuCq5q1DybWKWIIdcYoHty2phjo0Ie4qcPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bivuBou7xy8RSKM+oTh49fp0cm8zrrbQebdO/IZdB66GzaSqVTGtLsrxy6Wf0QmPsvhzqXNlzQgfiHmFFpYYOvVX1WFeYziPGkVyr8rcJGSSMZ4CqKM+R7+Lj8uGSSVglJ5Pt3EUeuHW32CXO65CsV6JjKSOQozaug3wUzRIR2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vgXGH7rX; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-421eab59723so45813015e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 01:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718787052; x=1719391852; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XUIWJ32palMvTkwp4Jjn7mptyEJf6J1bH4hKXBn11CE=;
        b=vgXGH7rXWK4PDuHcAmvJoZ5tPZ84sXWKZhhElXM/tR1+LKZmcjH9gg8ujnrqjNxhlz
         MXQU0wNKB/n6iVCi8IOPaFDZi7HULdPWzkaIlB7DQbZCqYaG1yISW/7f8wCGmX3uCHea
         xuOIcFcg+2rymAUuGsUTSFvsXLjYbl5jf7YGPCYjfOA7hzGaZGPfbVExCe5sw7GTGzEc
         VhQgRkTwcu6cOy4JFavQWKGdeU46P/p3+N7lCnAlGHjQXzeV2/TXM/9xrjhCMQt5IIVv
         57Utr8eF7ihpuU5+Y7C9EMe8Ft0xqwaGciE62oR70hOvp4WH4JzMDrtZx5WBJWZZoLUC
         0IHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718787052; x=1719391852;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XUIWJ32palMvTkwp4Jjn7mptyEJf6J1bH4hKXBn11CE=;
        b=DWpBEQLg6R4rMv45WbbPeR9oaN6EzinQM5+QQ8qlaiOpMX3VOh1kkDpjDTafgo0OJn
         wqWjqRUthSeoOEZjmL6OZ7XNyefO/fBjFXSUTaSTGoKQPvLUwmybxCsH/NrHAezcTV6G
         uRrukn57N5BSq4MJz9R/9F03DLxriMk5GjpGWY4mfOrpWmbDsmJhVcGMKCu4LM2RvRF9
         Ci9J0xe54ipdm7aVLnRLT/vdbIAEUBbLgEY+aF3LKz+vi1Ot5l/Sb1GokDyZ8tZKuHdw
         p7NBPlWuAMCaU/5zOLRBYMk3yMN2c44PzGriAzKVYv02MwygmX/6QMlTDnynyiUstdKC
         ySxg==
X-Forwarded-Encrypted: i=1; AJvYcCXXZSlZuCkjB0G7VffQkQIEiqhgSOQp1DPjn9VaccMichQsI5EZBKmlmyJS9UyvqIm+sr7YP6T0iGgz5Q2cV0EdoYWljJ/Td8Rb5Q==
X-Gm-Message-State: AOJu0YzUfEr3mgkw/aGMwl5BJQ2MWbttcRglE6cp5mAvzpVlRMQjquz/
	DwtQ92BWG90hoMO8XdQSHuhSUEuy+aSwayAasyutazgFc9e12tDLvA5oe8ndTZo=
X-Google-Smtp-Source: AGHT+IHhHXRoQELw3jalDwH9FjoJBhvyyyppYgi8JksmI+OWBoElE4LAnzmAImeHTX1iy3NE4ZdZFw==
X-Received: by 2002:a05:600c:2ed2:b0:424:78c7:b4e0 with SMTP id 5b1f17b1804b1-42478c7b551mr5145295e9.8.1718787051662;
        Wed, 19 Jun 2024 01:50:51 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:ea6c:d102:5e8f:d5a9? ([2a00:f41:9028:9df3:ea6c:d102:5e8f:d5a9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f641a6c1sm221661225e9.40.2024.06.19.01.50.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 01:50:51 -0700 (PDT)
Message-ID: <81ec895c-b0c7-4cd6-a1eb-ee3172ca5e2a@linaro.org>
Date: Wed, 19 Jun 2024 10:50:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: qdu1000: Fix LLCC reg property
To: Komal Bajaj <quic_kbajaj@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mukesh Ojha <quic_mojha@quicinc.com>
References: <20240619061641.5261-1-quic_kbajaj@quicinc.com>
 <20240619061641.5261-2-quic_kbajaj@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240619061641.5261-2-quic_kbajaj@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/19/24 08:16, Komal Bajaj wrote:
> The LLCC binding and driver was corrected to handle the stride
> varying between platforms. Switch to the new format to ensure
> accesses are done in the right place.
> 
> Fixes: b0e0290bc47d ("arm64: dts: qcom: qdu1000: correct LLCC reg entries")
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> Reviewed-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

