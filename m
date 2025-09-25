Return-Path: <devicetree+bounces-221394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D83FB9F41F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:32:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CCB23A4F75
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414B9D531;
	Thu, 25 Sep 2025 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LXBOKK4l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A301C30274A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758803423; cv=none; b=c80TAVCCzqb/IDwNq1UUMjJwoBed9owbe1x29amG6quHHg7YV8F0b59RS0X8oVnrzQDDpGQ2/ky5IcGjy2vJJCW26m07+nVw/FSPTS397VMxdOqqv5Lqd/nAWDS4lnZ9b24zHeuZBwRblsGZA/B2MA+RHUewk470A1bAdaQYjzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758803423; c=relaxed/simple;
	bh=R4M5M2ZmY8QaDCzPxbnLSp+trikKIHyJO3YsILvnS0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WNAYuZnh2A3RI466CCSapJiNGdu4QYw+5Ob8U8NuNdwwBGsnYHBpLtifVqpgoDWeHzv75gC+CSbjiuldvY4R2siqvkUqrhu9glH/oGP/7QhFfqONE4bYbY6IJcQEGUrZi4K5hVf88lMqVqVEXqXZjKvf0pHCcOzTOxVKEwaTCd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LXBOKK4l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4a7rR026648
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	amZgcpccGdLC5wwiHqTQ+/EdBT17Aozy3dL4P9t6E1g=; b=LXBOKK4lW71Ysdnz
	q69RaiLAMMEVeCay1OW3BYJO9kK62CVPaheOhHIDrba7zJ6CZD1G4YHVueUuSuB3
	mBn1w4Rp46hd2I+dV7n5du4OnicpKJaUpOCySM5VZKqy/xIL74tTdHHNkPvOFy27
	5PzgubvvYI1YfxwfpiBAqfh1dxR90bmeWEwBkWda7dakCEWcPioH2sPgaC5Vkls1
	oFbkcPCd0QptKNhkQXWzceiId1Br2Cs88QORTpNjA2axVhg+eZPZWj1pCBA3beG1
	MHkXX0h01MiCdOEOCByUVy9fbRDsaP/zz8joXeYL2bVYsIPO7116bnXkLnJ9Vo3o
	/LtSTA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup19cy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:30:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4c39b8cb20fso3188171cf.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758803419; x=1759408219;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=amZgcpccGdLC5wwiHqTQ+/EdBT17Aozy3dL4P9t6E1g=;
        b=tZLaTCuOl8nnYNZu1NUFQGJDhl3A2+oaO6uz3UOHVQhqs0PZtbcPCHqq8dVpR58sVh
         Wa7HheFl76pVRLsNIKaaCxAfNEZqziCzvEv4Nf87WKwhaR0ULXsiPgoHjHemsGNkce+S
         meH38mEF3GiVn8rAU5lqDuEJKVuBpBkzqbgATdDtXdAnMB91qj6uNI/CiXcVjK/OV88c
         2tiEHfixWhFl4eHphxCYTn/LtRyiPCkQIecIvB2EqrDLLPyG749uxaTT1hCNNAjfEzaX
         x1ksFSgeY4vtHbSmOwOdyK7yb8+WL3S4wgWuRJOGaE2Gr/6q3bHJjNNW68Qq8iywrREa
         tfgg==
X-Forwarded-Encrypted: i=1; AJvYcCV/mh0RP7Y/J+bw4Z0K8p3FS2DmgOCZyNWwigvUk+5lNOAacXe51Y7zwJaTSTit7ck+HUbHPnc4KYgs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7r5bEZIEtqbx2FYAJOJ50Q4U1PlKycn8kJDTxYjPHpIdhBGeF
	EYXrKylxGTfkxJkDXVIBNJdTBMwOJ1RgY8LOPIoN2yT84Yt6PY2ujP+FvBnk1WvaNnufbievRFv
	QGrcDLxCcXQIKuHIGDVnKPzIQJspIMOGupJjZqMqRurPkYFMaO7xij3f7g2lVclRa
X-Gm-Gg: ASbGncsDBw7Gia80eCqh83/SK/zO3YlFzxiz4VMWt/zLoOeNdUCM3Cj2Jv56eU9u1xi
	vgfA7jJ/M/159stZZqlLOZk/dh5YIFe4PY3wvKn2WUkMFM32ZH8wgGAHtSKQzB7FtUHwLPxyG9a
	ALmC2Uibt4YTmmuKtsJaZW860aYAd8yg85GklGV0EN+jq2QxweFaUC1wFeYO7172BiGHA3MLzQA
	QkT/ApDf/xPPwQRVp4J6+HGQ6YUTLZmBuLJA/curt90+wDvQML5NMCPIF4aQjiH1ziSGMXAII7N
	dLz0jEP3w5Zdx1pG6hTAi6EgUeK77czleTa/ntEUMxsgvwnpIY/tZSVEWQlh6QyC+7ZVTC3euLV
	0/G5RZSNF+g3AyfdrEGScuw==
X-Received: by 2002:ac8:5f0a:0:b0:4d8:2245:e23f with SMTP id d75a77b69052e-4da4b61615dmr29844541cf.10.1758803419257;
        Thu, 25 Sep 2025 05:30:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6euFUgVfoOSGViTvXNdmeEkohF6qNoOdRCv/QUVcIdRorA7aKF9PTXogf6x9XlmUrcxL0YQ==
X-Received: by 2002:ac8:5f0a:0:b0:4d8:2245:e23f with SMTP id d75a77b69052e-4da4b61615dmr29843321cf.10.1758803417562;
        Thu, 25 Sep 2025 05:30:17 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3629a29sm1149714a12.7.2025.09.25.05.30.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:30:17 -0700 (PDT)
Message-ID: <bff00962-f417-4e6e-8c59-614870bd3a7d@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:30:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/20] arm64: dts: qcom: kaanapali: Add support for audio
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-17-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-17-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d535dc cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_ouoMj-Ftme1J9xZixYA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX08nBsJXR0RNc
 suvlbrhz/hnsz5Mua0TGY6rXlmK/cnkXeQrWBiglhgU2HKhLNSXAttEEGD852pz5WRbOmyTKWUF
 JDUG8yAd/0O9ga1MYTFkL3fHyiHGJq3J22WQvvDz7Icled/HELD+UwMFOqrMKx8hbAROtDCC9mI
 nCIzYnOAUGpFIYyxmpSQIu0n3uN6l7xC2S6UUVHHiVAb3TR47NN+vfRCRGvGrdITQcQep47krFT
 j9xwlfD03bG6+Xuyh+b/QZUzZZXUdBXgm6SBnBSxDN9O3teBRr9ENMvvja8p+UFBTib0DeVsRmd
 Wsu2xwNbNviil5uo8dEknKGymq8vK3/CVYOTeH8+jfPV1w2jHUYdWWiwmcxcttHWNDBeSneE7Xu
 mg1l7sUm
X-Proofpoint-GUID: P2WtvDSUIz8KeomaO7_oY07N3j7tyyeA
X-Proofpoint-ORIG-GUID: P2WtvDSUIz8KeomaO7_oY07N3j7tyyeA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

On 9/25/25 2:17 AM, Jingyi Wang wrote:
> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> 
> Introduce audio support for Kaanapali SoC by adding LPASS macro codecs,
> TLMM pin controller and SoundWire controller with similar hardware
> implementation to SM8750 platform. Also add GPR (Generic Pack Router) node
> along with support for APM (Audio Process Manager) and PRM
> (Proxy Resource Manager) audio services.
> 
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

