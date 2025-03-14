Return-Path: <devicetree+bounces-157614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B2EA61662
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 17:37:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDBCD462C7B
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 16:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 448C720468F;
	Fri, 14 Mar 2025 16:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dlt1JDhL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDD32045A2
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 16:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741970188; cv=none; b=pLK5ZxBHXiNbLAFVoFsoJ1baBJloVobYREYERCbnDa2Fm06yPdQuyi8lQ35hItIEtGC/JpkvlVKdyFE2fd6ct22QbHuCYnrxxrGqy/szml2Wzajn3BVqvFUW4tmwifajPJYrvVBOlPTiLaX6AbWxnYc8Aat8atiojq79Gko8XYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741970188; c=relaxed/simple;
	bh=HL2qrnqP6m2SJjIgrryOgrdGWPC/DqOKAlmK3yLxVLI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S2mSMqbsKGx9bj6sRyETvnwjy3T343Uk1qzmhOJOO5iBSiG5YrRa+IXSKQN49e95FmpVIugjiBqUe5eQe37QXdW/d6tT7VN77yYeBv7xOPJCf2APXDafiK0xw1ZOJ4JzDQWP7xLS1PooFQ6uM4wtlnGNvaAK9yl8knOe+NeE1HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dlt1JDhL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52EC0bK9008924
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 16:36:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dwRYAMlQoWB7Kdu76G96hqJd
	qDT3vaRt4pY8/dRjDDw=; b=dlt1JDhLB3SF5k1enjXmPQ+CY5/Jc0SXLOy8zj/j
	uDBrJIPmf0wDjctB15xSX7YkTsOAEhjm0YhizvjywwKAs4AeMsK1gMAyCkdz/hmv
	7Gx8Jjj/I1GpU+piLuO5mmC/PhDsKVo+aOXmNgMUIiMTxkaAvlxPrVUuKeCUlotS
	9ZgUHJFml/qIAql8oo2MoFD6bI5mJnbPgvqUKja4pggtsfo90ih0h7d7my/1gt7/
	BLU1b+Gnq7pHHvjpPloiDRspdQGFhl7IcE+odoH3OogqNSLq4x2aCNz4sgz/qo2W
	1q28TTeMZ3aVBxfgQoZZqrCr+2PYYNSohu9ghO3HSf4RdA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2rhsrs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 16:36:25 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e1b8065ed4so51207016d6.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 09:36:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741970184; x=1742574984;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dwRYAMlQoWB7Kdu76G96hqJdqDT3vaRt4pY8/dRjDDw=;
        b=C17orYrzja10qFu2ySI8ES1NfwKVaSyF5lGQSwJ+mBr0HOAMCV5M63LnfZPCwwoE+2
         ED2A38OnWHx+EhKnckdCKmmTGskfcTaR5HzGqc8NUPzb4Cx/0+V+4RKJfiF4yaoQapC1
         vBpxEsEL9js3003RMzzqb7JcgURvaBpe70WvCQUU3bzUyPcM0tjPQoBrEDDVcbn+Q74U
         +rZyMWZAKmeT3bZoMutmBH14KuvDl3MF/eEAsbnZHX+hSNy6GZDxQMvgEIEh7X9JTvyH
         Y+2yqyIFmEPjV1+kI9eHuGggj2Lj7OUJIE/5fc4UNqA6mq5WV8KWzpFAV/DXOtDL0QBX
         vjDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYtULVFCNzF8oYhoEXbwAUbaXrHeOCyBmn17yYx1gwIAZx5jl/PvVWBthkns1/R4gwdLmEBWFn9EIF@vger.kernel.org
X-Gm-Message-State: AOJu0YzUU/f/4w2VwunurXLW2398ca7dcfSpr52tDhX6R0d79Q2fwYVY
	sjyH4Du86688uJ3RsEy/gqPDy8nbEoae6zCJEKs1tAFJouubchArKCyJkyKVYmutgQ+Cgmg6d5H
	YhpwYmXSqh5qIFgA06OeRg5/9VGD3JRUD8vPV68cb+LP1pwbS/d3eyhc9NcOX
X-Gm-Gg: ASbGncsIU5vtXialgnkR78J5Dzxx2XlPFR2QVpYaEjmDwEjQdc4kmgjRD9JTcRC4xzv
	Mzee5UR9Pqi87vRot4tiJeEg7dRBtS4bU3EJ97sUKQh4WkBH/j/BENPMBUPfTWDTbd5bYA6SWMD
	DReL0HEXYflTDmNHDL5xA9wYy1JiskqPQH8aWrxSnoVeymlEDH7Xs9ZIdG8lnFEwEFCpdkmdS2P
	C9HlGrB7ajt3G+XL4qXu98icB8h33uENKxcsx5vG29Ar8f45KaS0oVWw3k+IuTOqiQ20Xr1s57M
	E0RWXf4KYA1zg4IV7Q0PmqHyaFYBcYeLHQ+yQSiWBhsVzGUrMY6wX1torsxqQ/ie4FdUklL/iPt
	sxkA=
X-Received: by 2002:a05:6214:5097:b0:6e8:ddaf:6422 with SMTP id 6a1803df08f44-6eaeab00312mr28706656d6.43.1741970184411;
        Fri, 14 Mar 2025 09:36:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJb4x2fMIyGfk5ixR2DwoFRga6e8xcjQATKUUg0Rfaz32txxfwF6NxY3A0ZD5xbJ0//+/kjw==
X-Received: by 2002:a05:6214:5097:b0:6e8:ddaf:6422 with SMTP id 6a1803df08f44-6eaeab00312mr28706456d6.43.1741970184127;
        Fri, 14 Mar 2025 09:36:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba88598dsm562471e87.188.2025.03.14.09.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 09:36:22 -0700 (PDT)
Date: Fri, 14 Mar 2025 18:36:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/8] arm64: dts: qcom: x1e80100-crd: mark l12b and
 l15b always-on
Message-ID: <zhiunl3doj3d5rc2m3w2isnwloyyvtbbgiiuzbg3dxy342vnhy@n27ioyo2mhvm>
References: <20250314145440.11371-1-johan+linaro@kernel.org>
 <20250314145440.11371-2-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250314145440.11371-2-johan+linaro@kernel.org>
X-Authority-Analysis: v=2.4 cv=D6NHKuRj c=1 sm=1 tr=0 ts=67d45b09 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=z4ldfGPc2qRxCRB1vwoA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 70e4d1JU-VFlUfIg4fzfs9bq9rLkVBi7
X-Proofpoint-ORIG-GUID: 70e4d1JU-VFlUfIg4fzfs9bq9rLkVBi7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_06,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 adultscore=0 malwarescore=0 mlxlogscore=491 clxscore=1015 impostorscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140130

On Fri, Mar 14, 2025 at 03:54:33PM +0100, Johan Hovold wrote:
> The l12b and l15b supplies are used by components that are not (fully)
> described (and some never will be) and must never be disabled.

Which components?

> 
> Mark the regulators as always-on to prevent them from being disabled,
> for example, when consumers probe defer or suspend.
> 
> Fixes: bd50b1f5b6f3 ("arm64: dts: qcom: x1e80100: Add Compute Reference Device")
> Cc: stable@vger.kernel.org	# 6.8
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Cc: Rajendra Nayak <quic_rjendra@quicinc.com>
> Cc: Sibi Sankar <quic_sibis@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 

-- 
With best wishes
Dmitry

