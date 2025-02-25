Return-Path: <devicetree+bounces-151218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAA0A44E5C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 22:06:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A44E23A1EE0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 21:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE39E1DD889;
	Tue, 25 Feb 2025 21:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oQxVhYtA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AE940C03
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 21:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740517591; cv=none; b=gj1pKZKbxrIX4SPTd4rXGbxc1dvfRi89tVbt6L0BGkBy06pvUa0dz64CEHexx1qQUm/leFM4A+EUjxqqvP4z+9X+zk4uzV++m/FrfeFknF6lFiOpJ/0Bi5jsWT2STD3zjEga6/M2rZOB2T9/fbk9jS9j92kxq5GyJxRP26BgkkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740517591; c=relaxed/simple;
	bh=WmGJxpRtCAtAMLQXKUCjzBB1xFWO+4jFrTVLTJKp0yQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CX8C07A1G1vYyjEhBvj6BI05oQT0PnsF8Maw+sZ+UrYisypLDDN9obinTlBQ8UHM5ggU0R28Mp+Ye2YauNAwdJKmghSwMr6hYCHjNWWJC4/4SskFgSUlVHbHDk3sThWbUSZvEIuH6kLNpLjBzWd6bZ46SXhnViPJHNYK+wfd7Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oQxVhYtA; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5485646441cso1111589e87.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740517587; x=1741122387; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4ccj8mQiqVZD3kd0H/8TemcjtwIEI2BuIPjkRPoWw6Q=;
        b=oQxVhYtApH8KpEn7K1SORifN3X32IQF61N1XRLW7Lbcr6gWIOW5+mzomUxNL4SVOOv
         SM3rCSqvlcnyVww3o5ip31wUKvXfgBDkbi50BL1COYNj/bhseqDJnpn/IJk8D6wMmP/3
         eo8x9P1HbRiZUEAJsZHd/Ktb7lsI/8roeF8dNO45CM7s0Pc//rOmFn5xvnXZNGPdQF01
         enpK2uaak9gUVdw2spnLNKN/rVO/anh8BeEWiG/C6KzIZR433xrlR25k622ujk7Sjj5L
         qQAXwYk1dITAHmqUi0yLoraylUDl+TBR2KvKPyO0teyLxN4nqgEFK56hQD2uTbqUkvq2
         l6UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740517587; x=1741122387;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ccj8mQiqVZD3kd0H/8TemcjtwIEI2BuIPjkRPoWw6Q=;
        b=SpM+rRLfCK3zGzS400kmTsGq+qSUKPQNiyjRRcZyVe/eSbLWZmY6GGuKVeYeQK+aNV
         o7DyQ/h3C+sOw1Rhs5peVnKjySSXiM+WjdF1VUDFkLQ1TCBnFSxOGh5pIU2xzG83CMMd
         gJOllNF2h3golbZd1GGzD8eOBtjNjWQPbaWGneEAcmdLajHB6OUs8/oR4uC+d9k0FrgD
         WhgRwizPfLvzP764X2aYcm7eDPLn2Yv4W2tSPBPyBkJeioFF3LMz7EpoF9usrhsDpumv
         D9LVf2o9a/gC1OYx8VvrLT6rUjIEFq7dnWqSfiyM0wpXwbiY52cwG5KuPtdSZeTToC02
         hYtA==
X-Forwarded-Encrypted: i=1; AJvYcCWbnJQnJzMijGNi6bh2Uo86AHLuST8PXSmrh3B2M4ScxZj/uzbZ3Louu2Ho3dCmwex5HGIHD78zrd6p@vger.kernel.org
X-Gm-Message-State: AOJu0YyCqDkHOwcjnQeRmb4/UAWJxE3XJ4f0E10F180dLMj45Tz2k+3D
	NeJjgXHNP4L+JUN0niBu+n+AoUd56zwgsvtQqPaFH6FViSg6jGlxSpb4YEkxvpo=
X-Gm-Gg: ASbGncunawNCIcS0Nl9kS0ADlJRgNtmLxdR6sCFYkwiKbrHZeKH3V3CKoH9bg8vkYDh
	9F7e1zTTmfp5A0+rdF2mS/3Wa1Z8vnGQE3im4TxJ24favl51e2eNbKaOqvMDBJ4N6HYt9j3TVlU
	CNk9FBJs8KGz6JjfX/CpsqBQqOsY58WhXakIDDzwLVI9QDamrcXtQKSx9R7kha7h+WliNYF160p
	XhCWBaN0TB0W4e4KCMvZ4NbA/i+BJJnCfgMbrd9LylJstXaEz7z2MEk/u+i6nWYlhQPTfJyFaYN
	21MUi25JhgRiKqS1swt2j4EWAUJZ6WvQMKP+QyRof5bD6cTI2o0RTqhgCihQ4PJ0MFHD63rfJhx
	j8HIjcg==
X-Google-Smtp-Source: AGHT+IHHsK+fxV7rGxHgqaCajsxqWGESnNX/hIrjllNl78iTD1Ai8xp/XSeeAKtHfF2+7lOR6sFvcQ==
X-Received: by 2002:a05:6512:e83:b0:545:2776:8529 with SMTP id 2adb3069b0e04-548510ce6e2mr3332428e87.5.1740517586807;
        Tue, 25 Feb 2025 13:06:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514efaccsm266286e87.155.2025.02.25.13.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 13:06:25 -0800 (PST)
Date: Tue, 25 Feb 2025 23:06:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <quic_kdybcio@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] Revert "arm64: dts: qcom: sdm845: Affirm IDR0.CCTW on
 apps_smmu"
Message-ID: <bwj3a7cbxqh2eeglvx6vh7bmjonbfufup4clgdogoub77mkjfo@wa4jmtvwnrvx>
References: <20250225-topic-845_smmu_not_coherent-v1-1-98ca9d17471c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225-topic-845_smmu_not_coherent-v1-1-98ca9d17471c@oss.qualcomm.com>

On Tue, Feb 25, 2025 at 02:44:40PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There are reports that the pagetable walker cache coherency is not a
> given across the spectrum of SDM845/850 devices, leading to lock-ups
> and resets. It works fine on some devices (like the Dragonboard 845c,
> but not so much on the Lenovo Yoga C630).
> 
> This unfortunately looks like a fluke in firmware development, where
> likely somewhere in the vast hypervisor stack, a change to accommodate
> for this was only introduced after the initial software release (which
> often serves as a baseline for products).
> 
> Revert the change to avoid additional guesswork around crashes.
> 
> This reverts commit 6b31a9744b8726c69bb0af290f8475a368a4b805.
> 
> Reported-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Closes: https://lore.kernel.org/linux-arm-msm/20250215-yoga-dma-coherent-v1-1-2419ee184a81@linaro.org/
> Fixes: 6b31a9744b87 ("arm64: dts: qcom: sdm845: Affirm IDR0.CCTW on apps_smmu")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Should we enable dma-coherent for RB3 only then?


-- 
With best wishes
Dmitry

