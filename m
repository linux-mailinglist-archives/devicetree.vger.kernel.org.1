Return-Path: <devicetree+bounces-217821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D83B594AF
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:03:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA3674868EA
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169192C0F90;
	Tue, 16 Sep 2025 11:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CpKidFal"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C242C158F
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020587; cv=none; b=uj8r14we9yZ01wZl+qEVM5QW3yf4LBeI4XbwBuHpFBko91JMkAlYoqhpSk7lF6S194jfv0s37P0BpdkP1PUg+OVnFa602aHVm++ZMcbIaALVqp/B0X3juAcqhGq1Nn0S0Ij0lQ/Lsu3y/vsX8+Ynnh6mzgY1TZeIWpy8ujcocB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020587; c=relaxed/simple;
	bh=jCWoiLmYKgtosl3zfnsSg6IJaEKb9HxfTKRf3FW2tfM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IM6iyZNiS+LceYsHnTduzWBz0/2uZO0tNkk4IZV86GGgcfesRxvyY9PmCJcT9xe15wWRUR5YvSLxoVxJ943z66nKbn/pjJdEpHZXMFwjFlVrIfCk3Djsp72wjHeQlBs6PKiqQe7nlkaqsImg6KLpfZVr3gs0WYSTBXGsAs1zkgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CpKidFal; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAGHWa005684
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:03:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aGWDhUBbPiv5SXm2JrRwK9rd
	9d5oa/pXGFvpbeXT4NQ=; b=CpKidFal8r8YMEiczKohQ78k+JXRhS+yUuEIbXS1
	g6MGu9diITl0kVe1nGEnCZSzRwAuokwfR5z4b0zj31Q0ofgXf948B4wKaX9ai/FX
	pkK8DL1A0hCfXSdRGahYBnsgBAF09ooRnAYUuV6ewg6imY9qn2aIVtn05jeanzMi
	wRJ8zmGPXMbJ9CdK4hr76v0Mo4Zxx1j2TSsZmL+MIFPI0wL/btDt0lGGIl0rlVf3
	khiY+vyNb9Pd4VLsqUBherw2zb9usklcJYxRONlTBs7zSROcQ2CI6EO4J03+fq28
	L39NP8ukiqo1PCmCImYkLxj0Ii6ZlfjixaZt7+lJRlBa+A==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u58hs5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:03:04 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-544cb3e19b8so7473373e0c.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020583; x=1758625383;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aGWDhUBbPiv5SXm2JrRwK9rd9d5oa/pXGFvpbeXT4NQ=;
        b=TTacAy6mhkcdbT6+WkhV7dxOZoirdJHzQrN3OCQWRvz/c8XGZY7VWqpCUGatwB1QR5
         9l6N9dJFQUDbyKJzeoXRek2yQiswahNmgbdNf42P0Vbj8cSm7hcisfrgktaZ45q3CmMb
         Yz4wcq0kcYf9kdM1kgHGJ3Tr50ke0IHpr8ThTpmPiIZxocYqW3D21+xu0McxorCsY0os
         ZPnRpKHMCLgpB/lyz+21ZhHq0SE5hE/yasl/ByZqN70yaWsNmFOg0Nig33UreYnPEq2T
         jU+elRwjv0tFwjFUvkTuqyJHLZiYKTuYcbH9cinIVb2UjLKqKCgrlj+HHziB8f9qrvd+
         NITg==
X-Forwarded-Encrypted: i=1; AJvYcCXDseJ5mYhhIMKMs0m2exB8/krD088/Pocxsk0nhLSNvIa+J/9jl0LAIEgRXpvPPogUwJrjuqOyZMU3@vger.kernel.org
X-Gm-Message-State: AOJu0YyQSZ13pyJtu/rDXmnqqBshNxK7yYv5jLD1GWxruD9iN/9VoUTK
	uUZrDoinz0L9jGMXODn495Cr3VI+i/04RXDN9fx1d4KfP+ltU6pFx6OEm5tKZQoQPRoE15Qu+rD
	9/OOUoUYFuxZ7FrUi1+Oyuv6rMNBwqoyEM2bdlwwIJDh/OdLxedwTLMcr0IAVQ9Zi
X-Gm-Gg: ASbGnctaIhMkj5X7O2IZm8ni+/WdiT7BF+Nve4SRkaTlqFg8XA2woIRTow5eXuJxUMt
	iwkjNNbb9dx1YnqYoJp+4fNaVpa3kcnSLN8yHQDvDJ3d7s7MyC9RK8/8zpA6XpbAeAHo0og1Q40
	CBXvtTKjFobj7n+m7SUBViaUNBwYWBazpHaW+Rzv5LbdfTES9UiIL2WDIzz0lesfvmmBZYXNJ7R
	fMj2keCAOIYioV6O6nxKijE3wo0p8T5Z9AJ9SyO8I57asw/bhvoC8Yum+CNeDPgq+83dLJD3HZg
	e/zUQjENZSLtvjaqis2GfdZY7pdlUeOwTO6y1zfKFx8Uip2Tj2QTwikeoUb+I67R96bP7hBxpcg
	j4NhqQb49OLYK26CwQYu1yWs163GGN3WtiIylkri8CI0I96C/owbV
X-Received: by 2002:a05:6122:896:b0:53c:6d68:1d31 with SMTP id 71dfb90a1353d-54a16d07e94mr6109254e0c.15.1758020583417;
        Tue, 16 Sep 2025 04:03:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8pmwdL5aKOwSmINEgbn2GiMkviQ7ZG666F4+/PsdQLZAgj5aiT/QrcYUMkStouRwCE6p+sQ==
X-Received: by 2002:a05:6122:896:b0:53c:6d68:1d31 with SMTP id 71dfb90a1353d-54a16d07e94mr6109209e0c.15.1758020582881;
        Tue, 16 Sep 2025 04:03:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b6167sm4429373e87.25.2025.09.16.04.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 04:03:01 -0700 (PDT)
Date: Tue, 16 Sep 2025 14:03:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 09/10] arm64: dts: qcom: lemans-evk: Enable SDHCI for
 SD Card
Message-ID: <zw3efwluvdru4dyf5ijwmsewemlth3dj5oo6gcpkve254myrpw@bfuziw3jfber>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v5-9-53d7d206669d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-lemans-evk-bu-v5-9-53d7d206669d@oss.qualcomm.com>
X-Proofpoint-GUID: bFUj76Cn5bd6WCA2npg1gLJ63zEUpzSK
X-Proofpoint-ORIG-GUID: bFUj76Cn5bd6WCA2npg1gLJ63zEUpzSK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfX6/VR2hcvk1M/
 Lb0t36nQ7eI3XfC8DmIzp/24KO4S29I/4qBV6kqkab3CZk/atklQW9UPRYVkE318BRJv5vgb51s
 7eFew1bF+KSrKGqiniINhiZtCKfj9cLa5X5AxCgOR7kGsdGOZx3cjZXaJ+qTjiKJDyD3alg6d6g
 /UlzhnAfTADUA2CfgX5ABN/uDG2VVj7Tb4JwksYcIGVXqIVzGWQJV6+7C8IZ45ofR1rW/HxroXp
 bnFQveVFcqhvWRTQIgfCN/JP66ivIcobEau9+Ai2cUbsTt65RaOpUTc3eWpPMMmn8YXB5UlKUMU
 jZBejLBKhtsjQfRh37bwrkyDuz8fcTreAFHnIGZv/Dy4m77tcdNWBUJmUIJrw9p8/hHK0UWhudp
 h6gfet1H
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c943e8 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=3hZAb_iNorm4NPqi49MA:9
 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10 a=tNoRWFLymzeba-QzToBc:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

On Tue, Sep 16, 2025 at 04:16:57PM +0530, Wasim Nazir wrote:
> From: Monish Chunara <quic_mchunara@quicinc.com>
> 
> Enable the SD Host Controller Interface (SDHCI) on the lemans EVK board
> to support SD card for storage. Also add the corresponding regulators.
> 
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 45 +++++++++++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

