Return-Path: <devicetree+bounces-135794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6382CA02375
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 11:50:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44F95163772
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 10:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27D51DC720;
	Mon,  6 Jan 2025 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="3AaR3hKq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9C51DC197;
	Mon,  6 Jan 2025 10:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736160634; cv=none; b=eUa4wVB2z3RTn+95gKS3MyC1kVH+mQT3WsCkrwSDPI/8nN4SablGk+z+a17lGSeA3hprmrgIF9jCJR3VIrhmfzA3eh5MDqYknQd2dTo8J49JPTpYCCbRNzrFkUfrI0JYm4oN5IYoyWLQYlAVFeFdGABHlBliMoJAL7FnHmPGEl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736160634; c=relaxed/simple;
	bh=IZpUDhJ7q415j23lSCEE9Yr7WyUQnIa2jZ0pSwj74R0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=PpnmLRKeyJRE6iv7Jx+9mZy9bvUrHCgkOshML2vyCv4NWsXBwWpoCd+0QUstvflSK+DxOtxynnviZJVXoxITPZRvcOzYkFevgOrhQd5EIqiIwdGCPHODozM3i+Y9/A/DW7CfkXfA5DcBSaJEH3+wxXT02gC2rlaBskc/8Pyq3qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=3AaR3hKq; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5063qXc9004692;
	Mon, 6 Jan 2025 11:50:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	Y33tiExBlwDEn8mFRQKrikauQkd7GqHJ6b8DdCrX10c=; b=3AaR3hKqYSQuzj/l
	w3mE0WivaZBjUvTH/hzSnqda0W03W/82+RdH66suEIjYOhiPwZq67u6MwHP7tMgu
	Kz6huLA1i+htrTcTQc/yOrg4yXfA45zJ3Tqc+xn9i/Eoy0Ryi5kFNB+71lEmBL+6
	85WDWATAGOar0UmFGPswKtzti0l+g2xZZHBYBc1rL93YHLDDH8snF2d5dZN8LvUm
	LX9st5YZcr0tSKf8XwdiaHLhyiAplKNvyt+IbwhRTOGApiLdy11+Izk+hVQOofiV
	xW4g6iD9H8kakSGEXzH3Nmj3Va6tqTkkaYLBXm80/n7uGqVNWFXEDNKRhuouVjXF
	HLjRfQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 4407n9hbgv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Jan 2025 11:50:14 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id F39F34005A;
	Mon,  6 Jan 2025 11:48:50 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B948D26E53D;
	Mon,  6 Jan 2025 11:47:09 +0100 (CET)
Received: from [10.48.87.62] (10.48.87.62) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 6 Jan
 2025 11:47:08 +0100
Message-ID: <d844f8f2-b5fd-460f-b31b-644bab871238@foss.st.com>
Date: Mon, 6 Jan 2025 11:47:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: gpu: mali-utgard: Add st,stih410-mali
 compatible
To: Alain Volmat <avolmat@me.com>, David Airlie <airlied@gmail.com>,
        Daniel
 Vetter <daniel@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20241006-sti-gpu-v2-0-c6bb408d6903@me.com>
 <20241006-sti-gpu-v2-1-c6bb408d6903@me.com>
Content-Language: en-US
From: Patrice CHOTARD <patrice.chotard@foss.st.com>
In-Reply-To: <20241006-sti-gpu-v2-1-c6bb408d6903@me.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01



On 10/6/24 22:42, Alain Volmat wrote:
> ST STiH410 SoC has a Mali400. Add a compatible for it.
> 
> Signed-off-by: Alain Volmat <avolmat@me.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
> index abd4aa335fbcebafc9164bd4963f9db60f0450c4..9318817ea1357d4d66db951513d9bc033b222190 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
> @@ -33,6 +33,7 @@ properties:
>                - rockchip,rk3188-mali
>                - rockchip,rk3228-mali
>                - samsung,exynos4210-mali
> +              - st,stih410-mali
>                - stericsson,db8500-mali
>                - xlnx,zynqmp-mali
>            - const: arm,mali-400
> 

Hi Alain

Reviewed-by: Patrice Chotard <patrice.chotard@foss.st.com>

Thanks

