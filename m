Return-Path: <devicetree+bounces-34710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A7883AAD8
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 14:23:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69A56284B50
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E0377F0B;
	Wed, 24 Jan 2024 13:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uD0zyZ3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FF4199D9
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 13:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706102583; cv=none; b=QY1HPppsOan/xPLH9vhBPu0TrjM8Y9KyuNr1XerTEJ2ZZuIkLmC2i2a5hRuniF5IvTM3rQw14l6Q3hkkCSBQpQJ4+qn2TvKilwPNn0L8WQGexk7rrAogLT0RP2YrsdXuINszcwT38NRLafGi+eHZdOB2a11AQJdW1UvIk8S//5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706102583; c=relaxed/simple;
	bh=T4RmIf7VkFcj8d4ZpyZYR6aCfDUYT5c7VXzocciPTWw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nlU0CW+SjFSmBEPGTY7XQaS8NMh+rQoo9yi3bWhye9XeI8/bkuPi3k/EUT7Fg9COp8+RDdRs6kD6ix+LGCq+ckT5oB36LcbNE3K7W5RdQ3id7Yy+vJxO4612X9d8V77O9MoLEcjnVhy6MWrSZggs9sAAEUqfBXR4O3aTTu+6N3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uD0zyZ3W; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-50eac018059so7609968e87.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 05:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706102579; x=1706707379; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=11kgJruv5+K6DtBwAzB0hg6cqT5dVQUnLRiLI1MHmYk=;
        b=uD0zyZ3W418Hxi0Js3RwCmxwiRCtoGnjxb0h0/tQysBALQdB2/OWkRmEsDP2gBSNw4
         kaN/W34x9citNgxI9wqsLmvQnVKUdluigoZhVN5uRf/mGO8kIZirN2s/O7F1FwA5TJq4
         VnVUhdyFE8T8bDyd2Gi9kYOIAgkTSXyUvEZOb9LyDwLd2vPZhgaapsEW5rnzneRnX8bK
         CR2zMjEhL5ypjwWUc6q5b3G3G3reCCEDS+uqQSUq7CSdV9G5i9XFvL2DCRA7uXwET6tF
         mAMvnDM9BcVqjVjU8lIjya4EZQKKgAerx3BnqsjHpzJOcqLIIRKQpJlZtSAkClixNDm8
         3gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706102579; x=1706707379;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=11kgJruv5+K6DtBwAzB0hg6cqT5dVQUnLRiLI1MHmYk=;
        b=oO8aEvRLIUv9wo1T+RCz99gkYRCnVwXhtr2aOnCp+0Qx7npJB82cjfUJZu0RQBvjgt
         6UydKSs21Js++nt3Wx03YxIC1tzpNbiyV2Ild6ly+78qMcCB9qIr1t5eWYZzO7HgNNU+
         fkI3NsXLFaWWLW/DfjazjlB/YQZWlthAc+6FjA36rdnyWK0hNG+NCgDe9fQl6FxhxiKz
         3a+FQjEBdhIDV9ux6uR+gwiFNBtsl3C4uSUcjGX2ciD2QVqM7l8Xf3Iy/+Ho3YH0H47m
         7ECCnSUK/Ze4qy+V40ZQQOnESQcymYFU4HpToK/sTHGFti83AmCxeWfy9eJ1KAKhLSZK
         J8WQ==
X-Gm-Message-State: AOJu0YxiPbr2AZQmhcFStwtulGdBUICu6uog4IAR33IF6G6z99m/+Ua2
	EQTzNtndbKCKycBvV2kGeb/zoEeGpdnvsE3rLuS04ekaaeXTGqpBENky1M4228M=
X-Google-Smtp-Source: AGHT+IGCJx8XZDV9wXehwa6+blBx6gU7Yw+6Pl2WRXQb/rId7vUfO2+yja1A4V5G91EOYOUuQjTl2g==
X-Received: by 2002:a19:4305:0:b0:50e:6909:7f68 with SMTP id q5-20020a194305000000b0050e69097f68mr3327351lfa.117.1706102579410;
        Wed, 24 Jan 2024 05:22:59 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u6-20020ac25186000000b0050e70a5b804sm2589732lfi.302.2024.01.24.05.22.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 05:22:59 -0800 (PST)
Message-ID: <9feae876-5170-4b57-8cd4-dbf35dddbefc@linaro.org>
Date: Wed, 24 Jan 2024 14:22:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/14] arm64: dts: qcom: sc8280xp: Drop PCIE_AUX_CLK from
 pcie_phy nodes
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
 <20240124-pcie-aux-clk-fix-v1-9-d8a4852b6ba6@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-9-d8a4852b6ba6@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/24/24 08:36, Manivannan Sadhasivam wrote:
> PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
> only required by the PCIe controller. Hence drop it from pcie_phy nodes.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

So, I have a small phytest module that basically does this:

phy_get
phy_init
phy_set_mode_ext(PCIE_RC)
phy_power_on

To load it, I skip PCIe init (comment out the node), then wait for clk
and pmdomain unused cleanup, then load the phytest module to ensure that
I'm not piggybacking off of the RC's resources.

I tried it out on the CRD, on PCIE2A (NVMe)

Without this patch, the PHY seems to init fine

With this patch, I get:

(1) qcom-qmp-pcie-phy 1c24000.phy: phy initialization timed-out


Kicking the PCIe GDSC from the PHY, I additionally get:

(2) gcc_pcie_2a_cfg_ahb_clk status stuck at 'off'


I think we expected (2), but is (1) okay?

Konrad

