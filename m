Return-Path: <devicetree+bounces-245563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D13CB26A3
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 09:31:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D2E730463A3
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 08:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43C52D3A94;
	Wed, 10 Dec 2025 08:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OEsdP+jE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P1Twapvg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A2819D081
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 08:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765355446; cv=none; b=H3IHEbZb6sywRXUw07kN1ef4pGCsamdXwh36ci/oHLHrc+LGw8hKMgWmMv3RDQ63JFPGkPgEJNQfIbIpAwkJSBKvTNatH2Oj2AaTtYrX7ZuDcpfEBkx3aXPhB2TDYhg9AI00JZsHmoId3GhTPThOCvsnGYVSH3yczqsUZtXyt7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765355446; c=relaxed/simple;
	bh=XKrfeJIFVVOYf3N80h3s/vQUVmhL6FOdxFJRJEuUWq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OFCBGqKcBGmk1dKDtPkhbvQLqOTPuRa3jYeOqU/qouQurCAkbZwi/upFEIc6fkyQdHzLZnmPSWb2VGoUgY4/fa/HNQ1c3F/c966C49PXBuBzG2eyOhwdM7QGOAkDP3tVCT6yacBF4PwQPmo4agZB+EFL+iUOaFFtkAs2TZumW8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OEsdP+jE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P1Twapvg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA6Dv3L1779495
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 08:30:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BaVrsxaWW/xE3ijm84e8O1hc
	kueX7M+RVS9RTEowbKE=; b=OEsdP+jEmVLOtgYQJdWiV0cdwhOLghB6WILlPtow
	iz9n9w35272+wXQpuGJ3cTvvnf+04iCTYno6/qbGTynUKrc5AAAOcWbDe8w08Qmb
	Xak+veMGTdahnIprG7Nsa2E7paaOw/SzkbTrykCbWQGBImrXFXiGHbtlBylT4aNK
	AbKg7auT7DV0tEigcaABid1or0GK82GYwcn+ZJwW5zkbeJoU1hox8r2P6tQSiK3u
	JMju5s8IWO7fWZIPBO2ON0lzwEh1q/8FfSyWWAIg9acjTrBS+vady3NjVlKcrB9U
	MG1MN/rsxDKgymkJwQHJbPgRQwZlw8VukXHUm9USYcTdmg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axrhmaf18-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 08:30:43 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88239fa9ec9so170636426d6.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765355443; x=1765960243; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BaVrsxaWW/xE3ijm84e8O1hckueX7M+RVS9RTEowbKE=;
        b=P1TwapvgJ04OYjdRhuCyoExmElYdc4KT2U5+xhPGfaIYo9wNQ9r9ZrlLgYZIDA9u6I
         zS/cmHlU+WcY/o2ARVTmpQWgLHFj9QmVJmYkiHwQ8Efp91JsHGDxaaTPXjGXJVGzylz7
         EHtBcZNVJMBqMyR3BHDVCLAlkjOItPSECk322c2dtXbs4A6pmgQfFez82JuJM0+AWi9d
         uJYsT7+cjMHrUm0kDcTiqoMsJWYC5yoSGTCPUbDimartqWgbQxJR1a8JjtH1smky3+7C
         HvJokzmBvLVUxIdeP380JZkMWNB/hELK8E/zpbo7bQCaFzib4V2rdNr7D+rjBuG7goJK
         gw5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765355443; x=1765960243;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BaVrsxaWW/xE3ijm84e8O1hckueX7M+RVS9RTEowbKE=;
        b=pjjQngGEADMd8CLj2YR/5Orec0aS+9cmki2J3yCsBcChDfRoZGQa2oJSRaWbEqKhfe
         YeoPholPH5qGduj6rx87LYttyKHRb56kbJ9IDPr03O6boJFnefWvxPaLON/lqVUNhTlv
         avyAI8hTNy+jXSwtavAXDGxGeteNjxGn/ZRlyovNzTKEFk+osCwXqTQ8CmvsaHagd/bz
         KHN3A+p/9MLQmC1oPWXQ9UdZhKlsh4XS2Ud1WEXIPuPmA2jQKha1mM9g+JNww3MvDwRz
         QvaykiwXXr4vPKHFPLutY6iOsIvO8P6+N15G61Hc3Ae8yXQZ7Vq5BCRiKis8JNjdPai+
         AsFw==
X-Forwarded-Encrypted: i=1; AJvYcCVzB5PY19WFno2dbmTVxSFy+IKSxwIIT+NXoCaPb/edIS3lsXaWtayxDCVQSmgi+M2mF43/I6gxgJyV@vger.kernel.org
X-Gm-Message-State: AOJu0YxKBiXcUAM0xbiFP9VYOzp4YuDrCGk8cIwrlPLyuhOqqNGgRWTF
	y8uepWQDedYcYsMeIi0/eeUpHE3IAj1kIEGN8h/TJm4pPadzDwN4kTDx+CBwZwVuk0F4D7eYuSE
	Ir/4PTSnCNx+iUddwJQ1uW8SyFQM3sms9X/qZ/KpyVsNzEBpoAl5QAr0mXBDYY6JP
X-Gm-Gg: ASbGncvCmLXzlijXJdjT2xZIIHZJ9hQBPVpFHtU3MIT6JEbmCaJLkADZWhWd4oaPNb1
	4r4XsW0DQibl1ARrBHJQVZ0pKJYb07wEG/iGvt6eFTAuvop+Zz089ZLvBiAtOtNaOLl99mkMJe4
	LSOEM5wfkXBibh5YY+rS5uCMdLd7pSVEnwMgdVVA6Hs3VnkSBBdWRZ0+ZEeTBcTYM19RagTSwmK
	/oJr1SKjbe+qvHgHuiBGjhpCG0oYC88stDYFVItVezifD3JL5yZjvumugJNh4nkaZ4+gXQs20dD
	ubf1PH8Dc8UHGGfcc6xZ9CZTXPr3rcj8nrpjaQlwl3QEeT0dHWwweXjldBJCTuCwHxq2VlqJWqZ
	n2PyKUeJ8SefWcrSpexwu2PU6lKpCu9Gf9KxDpe8DPn+/6iiuskCoQoZUbfobQgFCFS56PZIQMs
	W9DWYM622+sa9MbBwZMSuCajs=
X-Received: by 2002:a05:622a:a30a:b0:4ee:1806:97f7 with SMTP id d75a77b69052e-4f1b1a7db1dmr15168771cf.47.1765355442547;
        Wed, 10 Dec 2025 00:30:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtqikgbD78OR/TCirFrEnhCsQjS6VLCnfWR6a+KQxIbEmUhDluyiIUFEvvL7QnBCmP9kh7zQ==
X-Received: by 2002:a05:622a:a30a:b0:4ee:1806:97f7 with SMTP id d75a77b69052e-4f1b1a7db1dmr15168321cf.47.1765355441988;
        Wed, 10 Dec 2025 00:30:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e2acsm6186915e87.61.2025.12.10.00.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 00:30:41 -0800 (PST)
Date: Wed, 10 Dec 2025 10:30:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
Cc: marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicinc.com, quic_amitsi@quicinc.com,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: lemans: add mdss1 display
 device nodes
Message-ID: <cndguco6ijb666ugbqpbffyhbbgs2nyno3qujuevz5dnpegir3@ygkh7vctnzuj>
References: <20251125105622.1755651-1-quic_mkuntuma@quicinc.com>
 <20251125105622.1755651-3-quic_mkuntuma@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251125105622.1755651-3-quic_mkuntuma@quicinc.com>
X-Authority-Analysis: v=2.4 cv=d7X4CBjE c=1 sm=1 tr=0 ts=69392fb4 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=Dm6QUQfMve3NhQMXUkAA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA3MyBTYWx0ZWRfX4NiGzYuwqDl9
 Gl5g78+qrvT5UtJGY05n1kEcCL6mE42/4h/5AOza34lNem7CXm0wOzR8WaBUp3iQCz6GJFILo49
 nVfVqWtA6RO3C9xx9XNGb+FDYzLdwbzt3JG/rTCgs+UYOwrQqLRIrK8alUPfBDzzCs9J4YL4LJs
 w5GuQ+TcyUQ97lbggofmfzJguDynQXT8OkE6hV596sI2es+d03D9np7n0b5oU0OLcvyykNkZwrj
 xDzqvFS8NUvgVpXgNWQfTqqyU1NgpwiNYnX9NzJGO17gSnEEs1FQgckqQc2skF/o0lZGx/RqiAO
 oVhufqrfIhBzvj8PFqjl2ishUwixKP0MqgIqjULnct669XDrfQuVdmGKOTH1cQ3I5c37RIx+CXY
 gr2M7QYGRQM+g5Y0yZIL98hMu+lOSA==
X-Proofpoint-GUID: 6kVa2I3Rpmnj0ImxV9j0p9Hkuk07_GJD
X-Proofpoint-ORIG-GUID: 6kVa2I3Rpmnj0ImxV9j0p9Hkuk07_GJD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100073

On Tue, Nov 25, 2025 at 04:26:21PM +0530, Mani Chandana Ballary Kuntumalla wrote:
> Add devicetree changes to enable second Mobile Display Subsystem (mdss1),
> Display Processing Unit(DPU), Display Port(DP) controllers and eDP PHYs
> on the Qualcomm Lemans platform.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 338 ++++++++++++++++++++++++++-
>  1 file changed, 336 insertions(+), 2 deletions(-)
> 
> +
> +				mdss1_dp_opp_table: opp-table {

Why do we need two instances of the table?

> +					compatible = "operating-points-v2";
> +
> +					opp-160000000 {
> +						opp-hz = /bits/ 64 <160000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-270000000 {
> +						opp-hz = /bits/ 64 <270000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-540000000 {
> +						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-810000000 {
> +						opp-hz = /bits/ 64 <810000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +				};
> +			};
> +
> +				mdss1_dp1_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-160000000 {
> +						opp-hz = /bits/ 64 <160000000>;
> +						required-opps = <&rpmhpd_opp_low_svs>;
> +					};
> +
> +					opp-270000000 {
> +						opp-hz = /bits/ 64 <270000000>;
> +						required-opps = <&rpmhpd_opp_svs>;
> +					};
> +
> +					opp-540000000 {
> +						opp-hz = /bits/ 64 <540000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-810000000 {
> +						opp-hz = /bits/ 64 <810000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +				};
> +			};
> +		};
> +

-- 
With best wishes
Dmitry

