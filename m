Return-Path: <devicetree+bounces-44322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D8F85D806
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D32B1C22802
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 12:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86FE86930C;
	Wed, 21 Feb 2024 12:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hhaOD5eV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D6F69947
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 12:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708519179; cv=none; b=OvSZb+05d8lEPOmP2csBuGhRuB0fIJzauYbT32ARqnxqE7iPcRfyBwznoXDAI8gC+RDH2kVTyDnEhSMaWE2Grw9wOraU+MEFARn3HbsRI8CCWVPS/ySgWB559wdU+IvGzYPDmkRdZRQwr3go5/Jnx1u5PiMDkRgLtgmquRydiy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708519179; c=relaxed/simple;
	bh=psNgy/7CLFbBBXucyeGU6eGkGdSOPkR41zts8T1DVwc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XxrwbTnOPOgX2xwWG3QUVb2FSvVV+YkqhMsF2nWVwoZxGHAaJ9H5vH7EuB4qTeCw8oqQnI+7cOqY2cUzO99xcOYP0OjXymDOg+Ly3yzjEo9r5CfEI91XXnlMdiOSLR+LVll/jT01bWDf/K2Yvcj2rK8O3ijz6IZAp/DIh4vICH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hhaOD5eV; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-512bb2ed1f7so3983039e87.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 04:39:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708519176; x=1709123976; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zqzWKvPBdSm0fX0bVTZjqYYQBdyO4P54OQm+21chzZs=;
        b=hhaOD5eVk15OhdKaLFfiQcbkpFGkHpU9yb1N7DXK1t0wzzvioxqOG5QSFWhRldZeGQ
         EX4S0024Uls0kknd+9LatCpkOgWkX4V8Ju0Qc3hRZJ5wtig4g84INzTjah2rC7Q4kGS8
         gmz9hmYPKA7Kpq9M6ZKvKhIAxz4LEWZ+gFM4yOycyq7qeHDEGseb4aEV3lw7bAdq2l8D
         T/ksLpZ2MH9smWBajfe8uyGgykDRDig5P/oiw3IDQ0yyyNO9MTEeREQA6jiD/SxTE2O/
         s/w8rNKeMJ5z7GnyjSOzwd1k6g4OG3YyNcfEwE49Ek3gB3Yq6eNPL2BU77DQ/nFs3uBh
         XD6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708519176; x=1709123976;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zqzWKvPBdSm0fX0bVTZjqYYQBdyO4P54OQm+21chzZs=;
        b=UXfjP4V8Or4Zhw2h5mcfJUdrhYwmNy17Lae8LgN/y7o+6RUcY55xg2CRreBzIG0Qyq
         E5X1JT7jm5Ss76ntIN5VNlWlNdVe0C94GfJobqOnnwzjxJc1j06AOdjVQbd8wU2mH0NS
         XRzfo9+h2ipY0rHpqsfuT2RaRIUTL2qlWgX21MStRSz2aixl89R0kyEP4b26as+4CECP
         vMOA6byNR2ME2pqYoli4J1v28ngVV8+X+SKcTdPl7yx19HEXZ9adGaPHlR2liQ0dgGgz
         yqJKUKEXItvphL3ct7I50MOwAFYzR6XKEV06QciWuR9rlteC1RfSAOWOoReI42Gtf6Sn
         KMyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWKFdDusnPBXtTH/4Ex3pmGnNVLuzs5SDLPNBBbKBK3O+BpBui/l5kwc8ibWs/A07nBVuQAFX7XrVVJP2R0YZwHat4ZXzmwDxM+Q==
X-Gm-Message-State: AOJu0YzlsbYPTiKBbF9Pfeh8XiGvUHcTjhhPAzlghZ6vDdGRTYGP115v
	cGmOcnfQ4pnvPH3fzYI7CdX8lz/FspaKK78z1ZrJuN1cYCnl85HQ9U7QHOrK/aJjeTuhqlnb59V
	Q
X-Google-Smtp-Source: AGHT+IFqHfOa5dAsPRtL5v9Nkouj+lXmHQgWqmDhClXmymlshTKSzB9FTS6V64HI1VEn6T8+LSky1w==
X-Received: by 2002:ac2:4eca:0:b0:512:be76:ad37 with SMTP id p10-20020ac24eca000000b00512be76ad37mr4131922lfr.32.1708519175703;
        Wed, 21 Feb 2024 04:39:35 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id bp25-20020a056512159900b0051148f220ccsm1631678lfb.285.2024.02.21.04.39.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 04:39:35 -0800 (PST)
Message-ID: <e1cd36da-7656-4f9e-9206-f831eb91dc65@linaro.org>
Date: Wed, 21 Feb 2024 13:39:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/21] arm64: dts: qcom: sm8650: Use "pcie" as the node
 name instead of "pci"
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
 <20240221-pcie-qcom-bridge-dts-v1-21-6c6df0f9450d@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240221-pcie-qcom-bridge-dts-v1-21-6c6df0f9450d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.02.2024 04:42, Manivannan Sadhasivam wrote:
> Qcom SoCs doesn't support legacy PCI, but only PCIe. So use the correct
> node name for the controller instances.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

