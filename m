Return-Path: <devicetree+bounces-32301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E17C82EE92
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 12:59:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8488B1C232E3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 11:59:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21761B949;
	Tue, 16 Jan 2024 11:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vk0PhE8L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B281B955
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 11:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50e759ece35so11474833e87.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 03:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705406353; x=1706011153; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wjoS+jEPIwKkJhEpZr3ojbVQp7LSl4o83U4xS7GmZh0=;
        b=vk0PhE8LRH/zKVKx5PQ4KRveSA4VOqyHII9Bodwim3AhCcQvgt/a6U1BZ98oejlR1d
         SeaRuhcouShwYP/+5ZXV2uhAVw0OmeraiKZYMVLmqyP/ssY2pQoaD2izEt/lSBjdKNR3
         MKuQ0NcJ4Pe4owJP/AgzYhPfr4duZTIPZ2dgOt2ba8MeuouZlbwZxB9JSiyrCvD7aa0E
         095kOT/z3mfB8njZtrA/zYpf+Aqs/weZdmUbU+W8HBUkNf7OgLCxAQpVwR6MXmOvL0N5
         JhjFGulHU+XT+/kav3139+XIrVXBVPqwqr60roVd4dbDuXyj+DamxnH+hQMMGCb5lGoe
         Khng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705406353; x=1706011153;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wjoS+jEPIwKkJhEpZr3ojbVQp7LSl4o83U4xS7GmZh0=;
        b=IR7/L0sE2Gugws1UveGmnb4AWfpVpqHyTK7r2B0/wSLia7HfjllFh/hfIsthZ0Wvk2
         IIx4pl0/PdV1VjA59DE1L8cIwUBrKSoxXOG3jPkNN7oflfxFR3CyagONRuzqNyiwMuRy
         +X88i82B0QfOuTG8DHQdzQOMiGiXpUGHUgT/SyapLW2Xql4MXWmCAJP0R1WuBvqFjF3A
         VB/k7/0NoJzhj4aoyUNEn0yptrQerW0nYUL4Gg33ZIeYQHxE8hjIy61YhgJD5n9jev+R
         Oq8IsCSPe3Z7H3ihQE8/oO3RcvrjYfH6cI+6yAO5BdibkT7AWRA+0nwQirwy02oUDnUD
         tkIA==
X-Gm-Message-State: AOJu0Yygdg6mrYVlaFqWIsOkk2KdDvtSHEax3G0luLW6OK1WExA8un0b
	g5nN+Vw70/tywJura0VEsvyuu8s73oyOuw==
X-Google-Smtp-Source: AGHT+IEd84FtFwC1Jk5X6Lp3Z7fYVFQ+KCbh9VJGDlRMwoWNGqxysvDmhMPiNPL4KWnty5c2sZjMEA==
X-Received: by 2002:a19:641c:0:b0:50e:6ac4:f1e3 with SMTP id y28-20020a19641c000000b0050e6ac4f1e3mr3121487lfb.114.1705406353043;
        Tue, 16 Jan 2024 03:59:13 -0800 (PST)
Received: from [172.30.204.234] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f3-20020a056512092300b0050e7a2be0f8sm1724362lft.191.2024.01.16.03.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 03:59:12 -0800 (PST)
Message-ID: <b2fbb8e2-e4aa-44f5-9c57-7bcb8adcfa8e@linaro.org>
Date: Tue, 16 Jan 2024 12:59:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] phy: qcom: qmp-usbc: handle CLAMP register in a
 correct way
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
 <20240116-usbc-phy-vls-clamp-v1-3-73b2da7691c5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-3-73b2da7691c5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/16/24 02:08, Dmitry Baryshkov wrote:
> The QMP USB PHYs on msm8998, qcm2290 and some other platforms don't have
> the PCS_MISC_CLAMP_ENABLE register. Instead they need to toggle the
> register in the TCSR space. Make the new phy-qcom-qmp-usbc driver
> correctly handle the clamp register.
> 
> Fixes: a51969fafc82 ("phy: qcom-qmp: Add QMP V3 USB3 PHY support for msm8998")
> Fixes: 8abe5e778b2c ("phy: qcom-qmp: Add QCM2290 USB3 PHY support")
> Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

> +
> +	/*  for backwards compatibility ignore if there is no property */

Double space

Looks good otherwise, I think!

Konrad

