Return-Path: <devicetree+bounces-169931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67646A98B8A
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9FC5C173E60
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2351C1BCA1C;
	Wed, 23 Apr 2025 13:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d3/qI/lp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7421B4241
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745415607; cv=none; b=megWBqAQIV5UN0qd5r74ujRlieF3a45o6aOeAGI2kfVvfFEogQIO14Nx8Ns/J0okoXEYOztkJHkCVJT5tf7TUJrocW/9fiPukgkrwEEyo9/HXlXsEtByfkq6wUoV6H6PDR6nKFAAV43q14NXOKh6wSoea8rgl1uKOFTpj7uTbfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745415607; c=relaxed/simple;
	bh=rJwd76XakKbW6cxRp8U5C3y66nF4fzEk7nsIfRq8GqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GQQVpmoMOoP79av23XbDgEoKjP6rRapvkj2iExMq+20nL2ew0/vErDGGVx34QxlOZfRJp1gqOnuqta7TStmFUYPkwqgvQsrcqiU7ZSs6j9Afvp24dSvPwfzmeZq+mJqAQr4ou789K3guqeq/pPXXvFGGp6gdnHuSu/i0KMxpWaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d3/qI/lp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NApPtj020408
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:40:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MzGZGH78O/v7VDsO0hbF+sd8
	L3WE1LofXSiV/zXbbD4=; b=d3/qI/lpCL5OMx0yWudKghR5Ka1Om5c0Zomxf3dU
	V615Uvp11b6aR0VNPvCfbVGDyrzoj2VGeg6LlCg1/Tj4JWxpgjdxwxNZR2iyQPCF
	4KWsRP1VyGNDDvU+knRPnTmDm235qSfanwbC+C89naB2pizHreeEsm1/sfecsm4/
	JeO+cK8W7kvuplzdnDLxCRKCfwq+A0FQZV2o5sb/gqa4WqUP5Dn7HwJBYs6G2Y9C
	9kdf9iRn59ls8JDeC1w/ilmyrOsAeW761JLPs38rd+3otMYucsAjxNNXvgrJxzss
	B58J6sk4sm5HBsCkfyvhFG5XjaYp4I0ukHWipHXkwmHb3w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh229mt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:40:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c793d573b2so1172178485a.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:40:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415603; x=1746020403;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MzGZGH78O/v7VDsO0hbF+sd8L3WE1LofXSiV/zXbbD4=;
        b=S1V6lofVg2hGtXJvQI8uirFvZeoH2H7+gwTkBbY9gZmznP4o59Y6Xw+pUCu9Tjf2QI
         GFluwYrS7DXQTd32rZOLK0BrW60K8mlnM1XFbZPIwWYenDqssa8OTmzWtzoTeEwEStVp
         E7jAxVt9LCyRos4/6P0dLcN2e+YVQhWl4SoDPPk8y1sGTwPn15FU0R/Nw4TWc4cmt/Ht
         wUwhINX9I+KlmQtCjeuonO1CvF61r7qZB/dlSpZSW4c9DVhVq0OL/sJH9t4rNM5kl6Q9
         t6Wdfy56jE6uHurhsWXFrgCRFW/07ohKZJcynVqMr3V6nn13ABDAw0CYv6iLrc20YEJR
         DmOg==
X-Forwarded-Encrypted: i=1; AJvYcCX3iJgX4jF+xdeGX++x9sJWto521mEISHyJWKNR+nM+gbtdc5cpn3naX/UcS/Q1MRdrgoVwP1EzDq/y@vger.kernel.org
X-Gm-Message-State: AOJu0Ywqk4HzjnaBw3mT7AZphrAdMx1VOugmfymTPh0rUafHU5vaE0vz
	AxE1kAneRXH7vNfRqj5lzvw7ANJ9rtlUb1Gq9nLGqJEkuOpl4OjvW9nv0/zf/XKGOsj8zumu/qr
	5LiUr3mK9pnok7Z6V606eJqhu1xUHEvOED016+LV+ypdDrcUak8NPwUCtar6z
X-Gm-Gg: ASbGnct4i62LsQHBj8fMLGnCHslvC1hHYyDcNnIoLEE3mwdirwWHq6RhDL2Vu0KRUSR
	ZtdLFsVPkfVh/OkurpE508PSllA3xPpolMqi5dYNaqdvundLZK2mF2yjNKJNm1BKtAHtkpri1tF
	fII6gR/agXIp3nyd3ABp8pkYmUWe7PpypGwTR3F28zrFT1S7GQlr3GEg+9NfBj4wzncwDMyaAsa
	bOqfkpLZYndx7X7NZrzN/V+3ISPQ9gwmjcBrM6/aG4Z+kTSh4/PsqWcxt6aJr8cmddU9aY1OBVi
	XxXG4P3eJ+L/ugbP54zqW83ohcRb7Imnz3+DIPt1PudLRpQV/5jzgRxJFS1TCz3bT3hCNY+ualM
	=
X-Received: by 2002:a05:620a:4001:b0:7c5:3d60:7f8f with SMTP id af79cd13be357-7c927f87cc8mr3328124685a.18.1745415603150;
        Wed, 23 Apr 2025 06:40:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXVhG8h0EHaKSHuLFmXYtc89YmYuzioiRWb4XkNp4qE+H/B1Jd7+nH84J5Bky5hsij5Y6aHQ==
X-Received: by 2002:a05:620a:4001:b0:7c5:3d60:7f8f with SMTP id af79cd13be357-7c927f87cc8mr3328121585a.18.1745415602827;
        Wed, 23 Apr 2025 06:40:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-310908270a7sm18290281fa.66.2025.04.23.06.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:40:01 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:40:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Lijuan Gao <quic_lijuang@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcs615-ride: enable remoteprocs
Message-ID: <n3o4a7jokelces4jioccoub26ikwpeyzuc4ac5uzvumqkilha6@gc7w3qpb23q4>
References: <20250423-add_qcs615_remoteproc_support-v1-0-a94fe8799f14@quicinc.com>
 <20250423-add_qcs615_remoteproc_support-v1-6-a94fe8799f14@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423-add_qcs615_remoteproc_support-v1-6-a94fe8799f14@quicinc.com>
X-Authority-Analysis: v=2.4 cv=EtLSrTcA c=1 sm=1 tr=0 ts=6808edb4 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=2fRsUtMu-athF6_tqjIA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: R_tP3ditG-lUgl-zaq_mCJf8Bd0dKMR0
X-Proofpoint-ORIG-GUID: R_tP3ditG-lUgl-zaq_mCJf8Bd0dKMR0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NSBTYWx0ZWRfX5+vXhOcAeg+q gBJe8cix32n+GHiVEaNJmvxya5ZmaxgsJoSryggHk4mMIgDMJjrO6P97Wu4xIccHljerdT8gedy +4c5476EkRZF2F7WXT4dVJznWz2cBp6Jaq6DUl8lr/ELmepXLiEtkK+IDX687UaOvOo3/Kh//Ti
 M36n7SBA4Vf1H8BjLrS2Gdg2zafxjnP+NXu5I+4B+7GdwfUbG1KlEA1ilj4BakqnWTeTZPmPzgS u1n9NgSc004ep9UEHP1vEkYxCXyrDEjbAb1NVo5M9IBdkmneBigvAEgKh0ZcBi2u0tD2V5SeyWu oRXoatuCo+XsjbO2uzCuJiLLadzLZIg/Ofv143EhPXc3ZwNU2oHNYPu4jlqr+n6lJg5Asn0ZXIx
 mdcDtRw9EhbbzaEJTAYGean+UpSyb95pE4QMo17j7TcseZituUdqlpkuiS3Logz9U6w7YTfG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 spamscore=0 mlxlogscore=818
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230095

On Wed, Apr 23, 2025 at 05:17:42PM +0800, Lijuan Gao wrote:
> Enable all remoteproc nodes on the qcs615-ride board and point to the
> appropriate firmware files to allow proper functioning of the remote
> processors.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index 2b5aa3c66867..b0db2c3ad409 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -240,6 +240,16 @@ &qupv3_id_0 {
>  	status = "okay";
>  };
>  
> +&remoteproc_adsp {
> +	firmware-name = "qcom/qcs615/adsp.mbn";
> +	status = "okay";

Empty line before status properties.

> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/qcs615/cdsp.mbn";
> +	status = "okay";
> +};
> +
>  &rpmhcc {
>  	clocks = <&xo_board_clk>;
>  };
> 
> -- 
> 2.46.0
> 

-- 
With best wishes
Dmitry

