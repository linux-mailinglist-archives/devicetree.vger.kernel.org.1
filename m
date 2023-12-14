Return-Path: <devicetree+bounces-25442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D6F813417
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:09:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AB68B2189B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B225C070;
	Thu, 14 Dec 2023 15:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="Z0RV6CEf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867D8120;
	Thu, 14 Dec 2023 07:09:31 -0800 (PST)
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BE9eYHh016118;
	Thu, 14 Dec 2023 16:09:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=//aHt+UwHuR+VliPjKOydyJZ/EL+SaXc+DQNt7bW2G8=; b=Z0
	RV6CEfWhLkCrORbG9O+PR1YfqTVnDSBaRm0q0LOCggOYcZqT2u6U1l/vRQkDlWra
	BVOlEA4iPH+2TpEs+iTa2naW3oXnpJew4zWyzLNEFqVDti6Llg2Fsb6MBOxprdcC
	edBaHWvuyd82AfU8i1hvMwZ+Bp2zFcwfFmzZ7ptOYEWn0ampQAGrYTpDVgXV+pmQ
	NFtNV1wC+e+wCVbq4CtZkcm94stBKh/yAX3GewZ2O/j9XmisXcElK8JfiEaL9ufX
	rT38lNnEoeNEckX69y3N4V/DubLVPLW3Xv9R70X2wOO9fVtmXXYub4MdxLJUoY1J
	/FQSQJ1gBU+Fkx0Ku19g==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uw42nueqh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 16:09:12 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 359B7100053;
	Thu, 14 Dec 2023 16:09:11 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2DBB7265997;
	Thu, 14 Dec 2023 16:09:11 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 14 Dec
 2023 16:09:10 +0100
Message-ID: <e0d83b7f-509e-4d9b-8ad8-7baa2889e484@foss.st.com>
Date: Thu, 14 Dec 2023 16:09:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: stm32: minor whitespace cleanup around '='
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20231127093420.20473-1-krzysztof.kozlowski@linaro.org>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20231127093420.20473-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-14_10,2023-12-14_01,2023-05-22_02



On 11/27/23 10:34, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before and after '='
> sign.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. Split previous commit touching entire 'st' directory.

Thanks Krzysztof,

Applied on stm32-next.

Alex

...

