Return-Path: <devicetree+bounces-178826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E51F7ABD591
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 12:52:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E93C21893CE2
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 10:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E6C270EB7;
	Tue, 20 May 2025 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G2kGfE39"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D2326FA7D
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 10:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747738342; cv=none; b=sYH7d3Y0I2eNp1UyL3hV6xTqgT084g8R+lMoP4FE4sjl1n7en16oE9h+2oeMGXZac8xGHGd97zTLfIvVvc2fYR/lJN3vk7h15dPcj3Ri+LkrH8eRhTTygaRtliVz9xbERbu1ykpfzN+9VJvX32I18T0+3bjOXA8UrpAqXYWap4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747738342; c=relaxed/simple;
	bh=Oa9k0noCv5pfsZvbyv4j1AKu0STBRVDPhxiDXfVsT8s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YsEDBzj6JCE7bLQO6bsdHM1H9z/8fkcupn8cwX7S+rJx59/oGeY2y8nZ2xoHAvoS/Hgz7H55v0uNH1QhM3Ho3dY8EvjHbr/5CGx6xTaKA0ChYKmgSc32gVafptDoUDM0JtSoUHbfLuJ/94FL7Q8o+Z6n2cpyg9rmfDI8ftrLFOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G2kGfE39; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K8LggG011043
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 10:52:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iu6hQ3FOP9u9YuNt9OId1rpc
	oHm2k7ZRa3DQfZxPW7A=; b=G2kGfE39xHXtJo3JfPN9p5Gbsjy6vaDU78zvVggd
	AjNF77Cj64hMIZVcIkerHarinstxprWv0Up9BBc9pUu+TLfRGRs4PnUH8D1NvdDc
	VHu+S+9PzQoCoryGCTmWAgf/iT7AMy4iL91HZALsh3BcUoDbOGErbnnmFGFvptxB
	3B5wdgF8rxl76WznhcKzJKWhTFDVg7kNrMkT37VLPmDY9J2mBj2dbt9n5CODS6nm
	/C2V946jtTtjlSYNn8C8XR6WSYG1zZ6WDwODyiA3niI9heI6SdvSLLa8vX6AcstA
	d4xMglzrhiwYUmZYn7GX5+TZAF78n0Q4XYFZ0XD15gqeWQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rbt21vmp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 10:52:20 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-52dbce1a18dso4773593e0c.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 03:52:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747738336; x=1748343136;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iu6hQ3FOP9u9YuNt9OId1rpcoHm2k7ZRa3DQfZxPW7A=;
        b=wDCRsblFeeEAvJfATPE9cs3o1TXaNcZOC5hmuoBBJ6GQ7jVzy9RyAs8K27pEfpMkwd
         irj8m3AiwelnGy2KosArJWQkTkghz3/Y/eg7iwWh2o6TD9ErsUevtPMGgn7J+B/y5lWO
         iVpA7cixfa2bWNewxyQ2O9NOO46XZ6WYq4AqzcnHDtfdPiZtdkd7treXsHRdkqcDZUFj
         Nk1MxHOXhGWiDe/qcN18YXbrUGl+tJCh/clg3hnTKpyi803RCx9DA9jTZBGSdKi95tnh
         dMLnYDOXYVLkMAj8F2+HNOD/3V49Fok7L/kYksyQjR+QbjYWniMFPUbagGWs3LOvrUgm
         Pu1A==
X-Forwarded-Encrypted: i=1; AJvYcCWqOg1UEOPI2ra8Oi1HVPp53WccWf3AHjlmBdKaJ9pHzSXshF71F57ak82A8f0E2hylPfuXVOMbHNyP@vger.kernel.org
X-Gm-Message-State: AOJu0YzEDHWK7tHttZ4wcAlfQ5g9Xc9pCGVcNQiwGDvCuwSwACqX3q7D
	cfNMzXpVxLeslSD5o3P9VvDnQLLmyyadIWwTFUYuWRtpRWPvty1jdwgg6G61zvjCuSFGtuvmdZD
	Nzn5Kr1p53TQRADVme/ZVXRXJl/0hlaDJVFt6eGjUKmZf+9zAVbGFrpAVDJBAGJBTl1LJeeNU
X-Gm-Gg: ASbGnctvr78sXd+zvPeEpPHPGEU53oNxhRz9r2KzkIdHCqOWy8aZWd7TiZaWOyEnK8r
	j+3tELI8XhzspSy7ry+vUq0VBzZ6+anTyGS+KwG3HUCIjRDmJhiO+XxlOigXLXZf4TCOzSpk+DN
	Jp6Urwlbx1QUiOFTyoq2f3tWnmPsSk+wjxhMRbH7tKgShjilF4UqX3+gfwWlrYfSvNbawtaxm/e
	dzF8AERQiqSiXr0fikRrgRwdLMtshzoLNiRL76MW7HaSK/U/qFays/jhfQQTwO6UlgkyQz59new
	YDu6SHz5tMyFgjop83do//0Kf/0ekxT9KyCMx7MPJscwcxqvyLfWDUmb9hgwTM8/lp6aMrzImgk
	=
X-Received: by 2002:a05:6122:1d48:b0:526:2210:5b68 with SMTP id 71dfb90a1353d-52dba80aa18mr15638372e0c.4.1747738336231;
        Tue, 20 May 2025 03:52:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKLSIG2Onln6gXMObDRG2o81ByYnYJZsZgsh86zfCf5MH9TVDxED5HmWvf5vBdtOWBgkCTTg==
X-Received: by 2002:a05:620a:44cf:b0:7c5:95e6:ce1d with SMTP id af79cd13be357-7cd4608ea23mr2402476385a.0.1747738324922;
        Tue, 20 May 2025 03:52:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e703f47csm2282736e87.237.2025.05.20.03.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 03:52:04 -0700 (PDT)
Date: Tue, 20 May 2025 13:52:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <quic_wenmliu@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, bryan.odonoghue@linaro.org,
        todor.too@gmail.com, rfoss@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcs615: Add support for camss
Message-ID: <gsj7aya7lr3quuw56n6p3utvz27qaqn5rxoihkvecsgfy4itu3@zoekpc7fyabs>
References: <20250520-qcs615-adp-air-camss-v1-0-ac25ca137d34@quicinc.com>
 <20250520-qcs615-adp-air-camss-v1-1-ac25ca137d34@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520-qcs615-adp-air-camss-v1-1-ac25ca137d34@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDA4OCBTYWx0ZWRfX4nnk+FNX+dP/
 g6f0/37MkSvImg49BUDHxc0j7Bj4xHR3N0T/Tqt79fFQYoy5B+8a9EjpJTF+c6lj56qsPSt3xQC
 ucuaPlCwe8ze813QGkjfkTTByurvpb4zO6pJ2Q+hbfziG6EpfR5+VGc1NDWWfcsIdwj2xlPHwKg
 Haudh4n/YS5s+sLWiwae5V1jWPX5iFDryS6hP7um/2wL+RgbfQcVwbDTTS+M/By/AGq4lKVfb/1
 ZkMdX3w3PI0obGphFiaYEYOL0iWwETAVRCdIlfw+FYBoCNjpb3W2uUQYdQ67QBBgnJDMowDJlr3
 yzg4QKBkyq2VKwAt3ji2Y7RMFEQkbdCvA5v9I3eXY8gC+8IvSsQ9d/kC6BHs7sgCWekAk/kPM/Q
 S5OZ2UQB4Vj+AyRFJWGlw4xc/wWfBPabRKpWHIkXYUuEpo0DznEW7mL/EzLbek/LZHXmQ8VB
X-Proofpoint-GUID: L7y5FIUYDT8db49uECesUMMGC0lVgt2V
X-Proofpoint-ORIG-GUID: L7y5FIUYDT8db49uECesUMMGC0lVgt2V
X-Authority-Analysis: v=2.4 cv=dISmmPZb c=1 sm=1 tr=0 ts=682c5ee4 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=Sj07yxY_p6yHqL6ZhSQA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 mlxscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=744
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505200088

On Tue, May 20, 2025 at 04:56:51PM +0800, Wenmeng Liu wrote:
> Add support for the camera subsystem on the QCS615 Qualcomm SoC. This
> includes bringing up the CSIPHY, CSID, VFE/RDI interfaces.
> 
> QCS615 provides
> - 2 x VFE, 3 RDI per VFE
> - 1 x VFE Lite, 4 RDI per VFE
> - 2 x CSID
> - 1 x CSID Lite
> - 3 x CSI PHY
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 133 +++++++++++++++++++++++++++++++++++
>  1 file changed, 133 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 47e350f175860e7b06f7b2c13fed75a65e489c8a..535251efc6b559447482b9ecc67ca26e7efbbb8c 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -3242,6 +3242,139 @@ videocc: clock-controller@ab00000 {
>                          #power-domain-cells = <1>;
>                  };
>  
> +		camss: camss@acb3000 {

camss: isp@acb3000 {}


-- 
With best wishes
Dmitry

