Return-Path: <devicetree+bounces-209469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE806B37755
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 03:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 791333614B8
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 01:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EDC1191F98;
	Wed, 27 Aug 2025 01:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pZ+DF7r7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BEA1E0E1F
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756259124; cv=none; b=CQcxdlydxfwU+sbgFF8wfeABlZC+SGljqEsxMZVwGEQ/uUqzqUzZKLQjgz9pHcWbMu1DP55xcaywuWkHip8CEMKJkd+eOwjCU1PhW8A4XycOGF1YR163yNSp95KQmAorYzdfcl3HYR16d1gMHL9wgJKfDtmqV8ACLNw43iphw9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756259124; c=relaxed/simple;
	bh=UVq8ijWoKWzpnf583jQxQdol3ylcdfNbLdYgB0k/HBM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=diDiUrcYH4LahG1i7y2pt2Vv1J0VOiFKK2QKkGjuGnlBlUVkS4pXuSRYHj/ybYvfAPgGKTPIvg8YO/XO3IWKWyJYBqBVKXMairMYE180Q7kbwM7dPGa1Dd09JOr3jf1OHORWg8PFFj6U7EhEVtY8TaJAILHzwz+glvjtF+GCU/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pZ+DF7r7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QHMNbi030753
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:45:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EVlyCX7UKqENRSV/+Uoj7vIb
	5mLKB73LY5H1x9aorkk=; b=pZ+DF7r7qRDjmqTBosQWZiu9zsBENsqiqQt2sQ/f
	BfJJM5SsYqKmZ87W25aEyzHNfaPHvAZJWmGwcMd21B2LDUUUlqiNg1xzShyxzVZA
	e4ngydvxpMGLSvzL57bqjAbHpXbEASgkvap2wVmeo2wrMZmQyvb+ePstkXGG4PuL
	6X/UZk5QT5i+NPxKUq2Go8m0O7kQQahk+bNfQeoS5ykwmbYReSRdGoM6t6v+3FnV
	qvpXihvZT6e0V6CzhXJTi61wYcE8d4IBEb+6GDfYnM4R2u8w8i3Gvz/eQBc0wiyr
	vIxmmNc8LljAm88TorEzLDZ51NdMoiu07bCNqklT3RcnjA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48sh8ah66j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:45:19 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70ba7aa13c3so221905116d6.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756259118; x=1756863918;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EVlyCX7UKqENRSV/+Uoj7vIb5mLKB73LY5H1x9aorkk=;
        b=WmX2+pRDMiFBtSTrLMKj5E1sqdv8FGFO2BKA6u1qBOuxm4gD00SXq3aNIIsW3jFdk3
         JVFLpsSE+N0k1GAOGdjn4UUGuhEUMZ225Dll9MfgmmiZ8VydL0RKaw9EnPiaqK0HlUXL
         8RUj1KxjrVrN3kH0eH9cPS+qgc4bDdDzzBGbMUQXha3bAzECxJQq8dt+ikGUueLChA1w
         dnFn1ORbFhFrUu5vK2mq1T88JyzOXORy72W7Vl1enCSHHrxA+GDe/7kk37ctvO7VDkZn
         ua6nqgdDS2Iw8dbajfr6spfE1zwuOZraQ0HPvhAdkmaz+Qj03ZRLJ8t74U4q8R7Sg14/
         DYTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrubRLAcuwcGn6RMy9NCW5+t7znxOqn2U8dtP5QQE1EQa7vH8pF2q28s5PXPvF1XZk4mS2sE95uKgY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7GxYXthJz01aklIOdK4B3x1aqRquTPGioFqL/8fNjAR1U9T7f
	7YpOLeloeNkKzSQr/LC8i/uRd4lyMsAYEBRIFf7M+dIi6PPUjIxyIGkF5VdGlneyB6XjKahNkkb
	Pdcdw2KcHcm1eVieIFjatmHdXKmDybp1x43yzEma/I+HriWOhmZ64oM+6/rKLKtGc
X-Gm-Gg: ASbGncvOlMgWhW1LHIcY+j2ST7NQ3WeRFoFJ58dead92NIemL1KC4wve/oQYonaPYrR
	i1k6E5kJ+MNGThZ7aMWKM2HQ/DEmrEPcHzyDs81zMwfVPsyPq06FkURGGjHQ4Ou8DgJswx+J6LC
	GvgJ/9QTCaMOQzAe12pkRC7EikgEBIa5i5GsKKE/XLXttYZb6V18mMhb1Oc8i1Fzps7T0Gf4RFj
	p4RaDUh+L5qSlzWORySABqQi/qI/Yc9wPKpgvHm89n8fmwLbeEguwazsKfj7WDLChGfXWBbS6wn
	dw/bIzPMXN4Vo/WMsVmLPyLk1Jnzyis+K0WXruyxdEx5Ls3HiW/wzb/BrULTRsOD0PEHzkFAxUY
	o5WBLZUqPwO2VtmLpWWsfkP9f2QvhWmXXefQnhGDAzFTunPUooRZ1
X-Received: by 2002:a05:6214:468b:b0:70d:9bd5:5652 with SMTP id 6a1803df08f44-70d9bd55f6emr220290246d6.21.1756259118051;
        Tue, 26 Aug 2025 18:45:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWdYPt9kh8RJ2zFRkhVPn7Ohu0C4BSckH/umAugKFEf5MEL8zGfbaIQZmlbtg8WiX75govqA==
X-Received: by 2002:a05:6214:468b:b0:70d:9bd5:5652 with SMTP id 6a1803df08f44-70d9bd55f6emr220289936d6.21.1756259117532;
        Tue, 26 Aug 2025 18:45:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e2363dasm24546091fa.17.2025.08.26.18.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 18:45:15 -0700 (PDT)
Date: Wed, 27 Aug 2025 04:45:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v3 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Message-ID: <ohzgigqvqdgaee27fdozzpt67i5cpp53jkj2rh226kf6sgr6d4@jsgqpno52x5z>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
 <20250825-glymur_pcie5-v3-4-5c1d1730c16f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250825-glymur_pcie5-v3-4-5c1d1730c16f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cLDgskeN c=1 sm=1 tr=0 ts=68ae632f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=RFEw3ZXBErJeItyUBPQA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDE1MyBTYWx0ZWRfX/Xmc6zvReiOm
 U62nLhwt6KWc0Q76AsOgAkh8YKl4k1grQnSk429QUpJasnev+1lTYxg2jE/3q+0IwH4yWAuOZb8
 mCENq+bi4dDu2StL9CUUMkmJhJav8i6FQ1BS9Z9Hw8QSqFyAsH8tI06vSfsUEcQC0hq1T6R1R/s
 pbDAvSpNt7GamM8sz+5lPDCpTb+HaNm7KRGGpn8vlF3ORSsM05EL+oP6AblDh9q9WvWODPaXdWm
 6ENvds2LyejiwThT/zvQSaBE96mf8PXTreQtcWXN/ZbUb/hOCSFp1S7EV8MOHQsD7bl8VYHk0sU
 9xobwQdc4WUb9pCMBscZND9eR4aQfKHJbEGBsU7Q2gR8aEKHmTNNDh7IiiVULOk6a65k1eJsaIf
 GBFyoBr6
X-Proofpoint-GUID: XE1IVZkm7lcWi5SVWJBx858JWrB8tJYn
X-Proofpoint-ORIG-GUID: XE1IVZkm7lcWi5SVWJBx858JWrB8tJYn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508260153

On Mon, Aug 25, 2025 at 11:01:50PM -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

