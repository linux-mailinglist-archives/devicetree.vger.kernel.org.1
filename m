Return-Path: <devicetree+bounces-158551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BD4A6739B
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E47EA171AA8
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E89020B818;
	Tue, 18 Mar 2025 12:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fZBJi8cT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B2020ADDC
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742300130; cv=none; b=eZYhp5QgHhgf8zXuwONRkDHgZ2AAsUyED8GIsc8dHuhHBFIiNv/IWOqnbdz27CR1yLs9UHe1gKAtxodmgrsYJnF3Oh9BQZtergpa+uVtphYY+G4THyZwwNWRbPWQZduLU7szn+G6DQZQV3z3Fn5H5dhJVT3EfK81XsDwCKOfOa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742300130; c=relaxed/simple;
	bh=0cw4qmMWZKecqMSUyhCOFmD3ZvLD+iGM8R9TO33AIjI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IOW5fPEwPc4q5I42TGsxvOXGmwBpF7mQHHc2kfvDs0ZANAJio7nng/4cLXzMW6BjSEUIjmyxOoBSXp+TBrhB86XXDKYvyFqjLlEsDuivEaFJGTNznfpDW6fQTjl67IbzaIHANtPC+M/dlizKVZXh62UwUzHUWwfTDByJJVTQA8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fZBJi8cT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IBRBuO022098
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:15:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kBlzBdfbGBXQZj0t5rIkzUhCArX3NpjNQoG/8nV0x44=; b=fZBJi8cTewc/hnHh
	XlCpzNGxV2zM+UyAEaj1hwbgD0b6O0kw9E0ymVXaPwJ2qYYjwabCx6svQ3eytUjW
	2zAqHgRbx5DQu7cd1sBM+maB8OwWD86BI9DxQA3Z8gefFhMsJbiiSODv5fhEiUtx
	WbSN4ZzyNfndiEatnAWVG3rJbJU5k4oR7R13W/NrLZcH2UeKFAcQSgLzoW5n+YpS
	vvKNViR6JLGyGNsi6VN+RMPt+RGzShbvZdBDBNbe5dDDid8AY08JfimOYtoE4DaP
	GFDmqw1hQo9jjdHr9pCQPxvKMTHRG3Wh2vn4jt2MjbazsD10FdKo8XvpqirrI6qb
	bkl1mg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwx1q8s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:15:24 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6ead1d6fd54so12175066d6.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:15:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742300123; x=1742904923;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kBlzBdfbGBXQZj0t5rIkzUhCArX3NpjNQoG/8nV0x44=;
        b=AD4RE4Br7OOSMhbZuuCtAdyppXLeS38d7Ebi5ThKkB98Qm9IzXBy+e3bkZZTO3xl6T
         wA2AO2RDdS7zoqpNVoX1ULyNx6LPLK/23oO6J7aTohldZ/WnYp62fIXyxPXxhMVQSSD3
         WB659hiDONlBhiTDZptTTTYEZ9jvJYuTFSE+Q5elem1V0xEYzlhOPkDhvP/ix9fnnXPz
         GuWe/y3GtvHYOIQu12a27G0Jr8JtH3RC/nzlU40mRXnjPnxzboYMaSLfU5MewYyA/jr5
         O2kc/2OVh7hqrQ9tSAzOpxtubC6qWsBYqe7wwoGLp+sBkmpYYWJ44/dtTeo8vMy7H6Ld
         HCmg==
X-Forwarded-Encrypted: i=1; AJvYcCURipyBmGECdwo0bwybgNhqHoh++6MAW8TpXOodEj7c86xz3kvNBLnpMs4PdHpVLrjpp/s1rPl5/Sra@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6Cwbr7dd+A+0Wg0qb88CDmQsml2/35JHrkMgUeKk7MbJwNMbV
	cUEOsm+hVqqrJyeMbtVDPcMJyYjrruXd1+Ue5dStuVsNkBWOsABLgayHeacKymdq6C/sVYfMCZq
	QpwLLg8eHtqg0Wxi58pOCPRN8exp4HXIID9Ncd9RMuxSDd162PaQ4Q6BoLXsV
X-Gm-Gg: ASbGncsNrCeeqkauVDrrmkklbTnvKPezDGPaBmwb0gqUc3+qbJT/BCM0i/ULAPdz27J
	eGTZpiB0yBCOFa4lFGQ9X/A1xrFZWyj1MkjrLPfG04NNzNcS5sJUW+a7V5cVkMzhxbHyDxRObis
	RikrnxQuiXAS9mBoODSjQEMnoICKJKCDxSCvAXkyYSdcbTkJW56eXoegV118YgnPxrOrzeivtC4
	c27BsKNc1mT9KFM5Ewo1ydwxO5KrpdQI2Rx3U8AjF1usF03RAttb4gNTv38I2XCzBc1Yxxhrv40
	Bnb8KdW4FUGNIyABUgf6UoH2n0UipCNts/gZwhxocPMJVra6sr4hjUa4UW1lUlyMfvMt9A==
X-Received: by 2002:a05:622a:5b8a:b0:474:e4bd:834 with SMTP id d75a77b69052e-476c812bcc7mr89745211cf.2.1742300123021;
        Tue, 18 Mar 2025 05:15:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFY6u8VngElRtMZG5ciHl9cEYAqvDvzQnu/JRBYF2zIHLFOqy1SOhpbhhUVqwSAHmZkXc07xw==
X-Received: by 2002:a05:622a:5b8a:b0:474:e4bd:834 with SMTP id d75a77b69052e-476c812bcc7mr89744801cf.2.1742300122546;
        Tue, 18 Mar 2025 05:15:22 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149cf133sm843129366b.106.2025.03.18.05.15.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 05:15:22 -0700 (PDT)
Message-ID: <d0c03e76-8b61-4cc6-8839-448fbb64d4e9@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 13:15:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] ARM: dts: qcom: apq8064: move replicator out of soc
 node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross
 <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
 <20250317-fix-nexus-4-v1-9-655c52e2ad97@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-9-655c52e2ad97@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 3R0uEen29gDidVaczsYWw8MmfgkU1xOH
X-Authority-Analysis: v=2.4 cv=INICChvG c=1 sm=1 tr=0 ts=67d963dc cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=DN3WPcqzEyWCdw6-I6oA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 3R0uEen29gDidVaczsYWw8MmfgkU1xOH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=986 impostorscore=0 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180090

On 3/17/25 6:44 PM, Dmitry Baryshkov wrote:
> The CoreSight replicator device isn't a part of the system MMIO bus, as

the static kind, anyway - the dynamic ones are

> such it should not be a part of the soc node. Follow the example of
> other platforms and move it out of the soc bus to the top-level.
> 
> Fixes: 7a5c275fd821 ("ARM: dts: qcom: Add apq8064 CoreSight components")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 66 ++++++++++++++++----------------
>  1 file changed, 33 insertions(+), 33 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> index a106f9f984fcb51dea1fff1515e6f290b36ccf99..acd94f3ba0350c5dcdd8f80885ee643d8cbddac7 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> @@ -278,6 +278,39 @@ scm {
>  		};
>  	};
>  
> +	replicator {
> +		compatible = "arm,coresight-static-replicator";
> +
> +		clocks = <&rpmcc RPM_QDSS_CLK>;
> +		clock-names = "apb_pclk";
> +
> +		out-ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				replicator_out0: endpoint {

Please take the artistic liberty to add a newline before subnodes and re-sort
the in/out-ports to make them alphabetical

Konrad

