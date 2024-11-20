Return-Path: <devicetree+bounces-123162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 346BA9D3925
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 12:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFBB928675B
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1868819F464;
	Wed, 20 Nov 2024 11:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rDK8OpDm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A88146D53
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732100818; cv=none; b=sNbqcqA8VMU+wowW//8AFm868InW7ywIlg8ghW53gf8YlBQRA0i4Wl0dOhTYJ+C0a4MVmTC/dPKAJYmTV3DVB7vF0AmcgMGHp/g95U9SYRHOwucRMGyjggxPF0HJHllzOLSOnVjokpevW3CLWYeCjUlEjJp+N2ku4q1m37ccKBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732100818; c=relaxed/simple;
	bh=Opw++HCPzuvISj9795BFVznYxd3dwYjAw4EH26M6vSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HwgskeLtgPQezXMMZq8kj0WYe6US74poN6DFPBTNzmF8ybeof2zJUe4EvQ2Xjtyq/YSjxIBy3VBXL60a8GUWJhAfBYfhLpBepWU927kLjdeer0AzmD2MyZBs3chXbfXW5U9kT/9qvckYYTWaUMj2KW4wvwFG9quISqDe0iWhxPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rDK8OpDm; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53da5511f3cso6623135e87.3
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 03:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732100814; x=1732705614; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qhI9rDcFFsjnQk9S43iaxw5ytZ2AHt2y8QIidlXD0lA=;
        b=rDK8OpDmTqDbBAeTIVurN4+bYqreffeHZeho0VUIKvF/hoUO9H4SkvMq60199XaoC3
         0mYMqu1XF5EaSXpdPr1gGynVvETquouXVnrMxQosFD1MO3iX+fNgop91yzIHge5Xkk8b
         VyOAFs8StnfJH5AEdnOrLfK7zVrAVSXQ6ZPw7vdckklpGP7OXwaAAC1G7wYn1yHXVjQI
         exFRmfRV0qE+gFZvInYbwamEZd2NDGTbSvbNgeWHfFWidufrhknM2oENXnBMdOdaLcIv
         HjlvFuxtT4iPjLH0IY7ivxcVyJ2To4ZrwC0D7kdvcQUve/Df702khUizZfamEn6quZr2
         EfnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732100814; x=1732705614;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qhI9rDcFFsjnQk9S43iaxw5ytZ2AHt2y8QIidlXD0lA=;
        b=t01TsS7zHLM+mWVhWQMDtIhCrif2Y2O8ozHienvEh0/q3c8DTs2TRaimLFrdeI4xMl
         2qIUBn9llOE88uiizzkSWZjsEgdMRwRyDm3ItDthKlbQXwiCgtzk/1Lj2m4fl7QXBFkm
         9Bk0KSwR5MKLoH2Xm2uE3e+xAhARI0LEKo+Ct+1WJSSsV36LKe7w0X/yO9gaEuI6er+v
         7btbiZzZ/KlS8vz8h24qh8nZLqTPq2SoisZ/9C98aqotiYK394uKb6OdkeyudhViM+Iv
         wqdEvxg62zarBhr1KVR0h9xDmkIrisArZhEddp2vkDEKIcXhMuE2vVqsSv/Ji0c8lD1a
         D9XQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6pPPHnCstl3ZiqN3fg0AnDp906Efnffxoh3gv43IfeuCgVIVfINKWJwy9VIDsMaeGwptKi2TEhz9a@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0QjFCnTreWjjp/ThbsH5c7Bzd0QijeeWBxUIjY+m4qgkFOo0Q
	E71FVC6MZfRSaNwpZReEiEXVoI/IA7xz1k4ZYrn4B5eAtE16BKhEKo5BCgAFAwPl3t/O7tE+cOw
	o
X-Google-Smtp-Source: AGHT+IFLYKw16+LDmrFlZjXXDXMHzk0CaMxx322Elr/lTZUAtJXwcvx8rBLt4IaAsdsomBMIPcfNyw==
X-Received: by 2002:a05:6512:3ba0:b0:539:f8cb:f5e3 with SMTP id 2adb3069b0e04-53dc1373ea4mr854241e87.48.1732100814272;
        Wed, 20 Nov 2024 03:06:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd3fcae6sm605075e87.102.2024.11.20.03.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 03:06:53 -0800 (PST)
Date: Wed, 20 Nov 2024 13:06:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
Subject: Re: [PATCH v4 0/2] Enable Display Port for Qualcomm SA8775P-ride
 platform
Message-ID: <kh75vjlfxiglbwmbbu7l77baboe773n2tpmw3urn7yuf6srdep@rp657fnrjgnu>
References: <20241120105954.9665-1-quic_mukhopad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120105954.9665-1-quic_mukhopad@quicinc.com>

On Wed, Nov 20, 2024 at 04:29:52PM +0530, Soutrik Mukhopadhyay wrote:
> This series adds the DPTX0 and DPTX1 nodes, as a part of mdss0
> on Qualcomm SA8775P SoC. It also enables Display Port on Qualcomm
> SA8775P-ride platform.
> 
> ---
> This patch depends on following series:
> https://lore.kernel.org/all/20240816-sa8775p-mm-v3-v1-0-77d53c3c0cef@quicinc.com/
> https://lore.kernel.org/all/20241019-patchv3_1-v5-0-d2fb72c9a845@quicinc.com/
> https://lore.kernel.org/all/20241018070706.28980-1-quic_mukhopad@quicinc.com/
> 
> v2: Fixed review comments from Dmitry, Konrad and Bjorn
> 	- Added a new patchset to separate out the soc and board parts.[Konrad]
> 	- Patchset 1 now comprises of the soc parts and patchset 2 includes board specific changes.[Bjorn]
> 	- Patchset 2 enables all the DP ports validated on the sa8775p-ride platform.[Bjorn]
> 	- Fixed indentation errors in the dtsi file containing the soc information.[Dmitry][Konrad]
> 	- Updated clocks to be used by respective PHYs.[Dmitry]
> 	- Added mdss0_dp1 device node.[Dmitry]
> 	- Updated the names of PHYs using label prefix "mdssM_dpN" for clarity.[Bjorn]
> 	- Avoided use of referring any label in the board(dts) file in the dtsi(platform) file.[Bjorn]
> 
> v3: Fixed review comments from Dmitry and other minor changes to prevent warnings and maintain alignment
> 	- Added specific DP connector node for each DP port validated in patchset 2.[Dmitry]
> 	- Updated the reg value to 1 for port 1 under mdss_mdp in patchset 1.
> 	- Fixed the register address space for mdss0_dp1 and mdss0_dp1_phy in alignment to the 
> 	  register address space for mdss0_dp0 and mdss0_dp0_phy, in patchset 1.
> 
> v4: Fixed review comments from Dmitry
> 	- Added p1 region to the register set of both mdss_dp0 and mdss_dp1
> 	  alongside validation of devicetree against DT schema.[Dmitry]

NIT: Please describe changes in the logical order: newer aka interesting
items in the top, historical changes at the bottom. The "b4" tool would
have handled it for you.

> 
> ---
> 
> Soutrik Mukhopadhyay (2):
>   arm64: dts: qcom: sa8775p: add DisplayPort device nodes
>   arm64: dts: qcom: sa8775p-ride: Enable Display Port
> 
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi |  80 ++++++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi      | 218 ++++++++++++++++++++-
>  2 files changed, 297 insertions(+), 1 deletion(-)
> 
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

