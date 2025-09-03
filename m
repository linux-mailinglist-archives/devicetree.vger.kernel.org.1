Return-Path: <devicetree+bounces-212333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63703B42664
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 18:14:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A3D0175686
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 150B02BEFF9;
	Wed,  3 Sep 2025 16:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m8G4ebPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042442BEC21
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 16:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756916089; cv=none; b=CZvQkR0knS9h4FvhCJDqC+oRAEoNBCBPVL9KWxvrEbJ8wyWTXH1IODpn8pN2FSscVJO3OOu2nIJ/USxWETqYH7AO5tDWdxANRFFgAVgWOAeu7yvfV2539EoGuTExyvbabs17RMvcMPatc+B+2+CN8OKla3qwYGCt1J/vVGK5c+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756916089; c=relaxed/simple;
	bh=15e4KV2uKHJPOVsBfG9vaA4N6uUsqxcFksJxJYT4tQo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nFXwAzEhcg827O7iQy7E9K83T+GSoqQeltXmWh9ZmRMcuWkf5p31gY5YYR3NtsODE7mTvMzd7Gn1QiPE0nqGp5UIREyzf8jxWLAiqu0XO9GvZIC5+rarF6BdotDXzFdjKfcw++wdEDqF+co1BO0R7DxDCuHB8CQGTPaTEX/bDrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m8G4ebPH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DwrgZ029008
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 16:14:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=p7A2A36WC5hNzLUFGe9+5GUr
	6YgZGXzB2kAzl3I+Zec=; b=m8G4ebPHfdBWbfEBqrnyIXVeXIkMcLttOwjhy+p9
	aESVUv+N3OBwniKB9YFGpLkV2PwYTywpf7MyIj71SeDf3kj8yNPBkT00pc41zXhU
	VCxJqpHjxIe/P3S2LmI+Xm1C6x7EZlQoftYl1Q2w1FFFdoW3u6q3B9kVBcvBjrS4
	mPTc7QQYjlIyTRZdDOa61TLUg8zSnmEQFHoBfrDMDT9NQZ4r+xxFwkIVZMKWuFT/
	gZeukkl6iEqfIKHBriMW4REe5Xn0OFVvAU9d3lXy8Dnb7VF1VbUY42CAUYWAoPHy
	QVbC8Idg5WMreuITfpxMbiLE/FldfFDY06dtJyktrAQrLQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw04dgk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 16:14:45 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77288e1ce43so70119b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:14:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756916085; x=1757520885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7A2A36WC5hNzLUFGe9+5GUr6YgZGXzB2kAzl3I+Zec=;
        b=Gq1v1eG8pj1V/lGxfRXLV03Ld1FHVtekm2HxkRA/kaJEc8NK99PMTh86VLLUJk3qyP
         NYHtbGFQZvk0Is7q0jchXiNAz5ZVUP8kcCsxZECr9BNsO1tsVguUC9MBFDzfa1coCnDJ
         w4G0xl6p2uEKWht5eNBX90gYI/HQrXtxbQC+ooK1VKu9t3Tflh4su5qgAfQ8z8xKZPSS
         e5oMmUu8umnG7bvQWt0755L96hN2niCkkYhIwgBN+oa9EK+ZtHv8ryasKSP3M5orAW87
         6zdFbZzz5UxiPASTE8fuw/pQ10kr3DVOTWBSaWpyeYs2eJBuMwUVfP/J11bsgiyV10WR
         xnCg==
X-Forwarded-Encrypted: i=1; AJvYcCU9UaLpFfrDaKDaU3LsKQ68yXhMccVE//99uAI4UFqAtTvwYfnSB34zTdqTGiyxNyBLYCk2L6C1owA5@vger.kernel.org
X-Gm-Message-State: AOJu0YxJHI/rk6cT2I1jT6i8iIxxxXjC0UtmSZhQY6g+pTmm3iIr9QJC
	PBrx2wEdJHKY+PSeYaA48iOQCDqdt+Whoc/W9GoCxYAvgL7lSFUJszSftVj5gui3qotVBjXtcqb
	yn/dOaiCRJbPN+R6/Rr2G5//wPpH+RD3UAm7C3LB8lMp9eQfJ6s3QfAbjNDFcSjVh
X-Gm-Gg: ASbGncvPR0dXFfhbKhbhKEuec8MewRtFAeg2gpj6XAOcjUDc9Vw4I5M7Bd1UH0itZ0I
	36olRMSqZqYq5xSFzXQBs2rPi2DtE8Ry7rX+qSX+glll3gkBV65NUtxq9eVRjFANW7UsCivUg8p
	zU5qf38JzrEcqeyeD17gV/fNOuReaE9sub3m8ya1OKEfFvFWB87Q5cO9xqge4vr1OKouApl8DKq
	niap+8UdkdVhjvzIcVDRI2IvSTgFGH64I0usD+0qYEfIBH9Qte90Xpx7gS/5V8FTAhmEK3hZO+X
	yoUR8E9GZ3RQor7gTt+n83O3S/8K0jBRQ3dFyWQjMJZ/q0vVR/97gefmkOOVzdQpCy/F
X-Received: by 2002:a05:6a00:80b:b0:772:50c6:47d6 with SMTP id d2e1a72fcca58-77250c660aamr16685498b3a.2.1756916084628;
        Wed, 03 Sep 2025 09:14:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFN8Fk9FYilCvfsVTUpXK3eaQZpWzMaZJtyrt/idToT1wN7680TzLMcXUUYYpYB/Pxpe/CGg==
X-Received: by 2002:a05:6a00:80b:b0:772:50c6:47d6 with SMTP id d2e1a72fcca58-77250c660aamr16685461b3a.2.1756916084165;
        Wed, 03 Sep 2025 09:14:44 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77285bb2614sm1757820b3a.58.2025.09.03.09.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 09:14:43 -0700 (PDT)
Date: Wed, 3 Sep 2025 21:44:37 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Subject: Re: [PATCH v2 06/13] arm64: dts: qcom: lemans-evk: Enable PCIe
 support
Message-ID: <aLhpbRL/mNfIMg/P@hu-wasimn-hyd.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-6-bfa381bf8ba2@oss.qualcomm.com>
 <facc2270-e700-49e4-a7ab-3b473e343ccb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <facc2270-e700-49e4-a7ab-3b473e343ccb@oss.qualcomm.com>
X-Proofpoint-GUID: Scah7C7xOEAklfrgX9aDt5K2fJgTH7-W
X-Proofpoint-ORIG-GUID: Scah7C7xOEAklfrgX9aDt5K2fJgTH7-W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX2fil+GAagyUj
 7j8XyOmGPQPmP5tLhk2IJiUb0AHjeoaDCl6toEAlmXAbDnxxKI/j4QEZ8XhTPO+v21mKKeJPj8H
 +NgzrqqTjSYsb+Rj6tFWCiLVtpjgpP2x0FRSDC1vx7+5wW5JkFhhg3Fr+7G7NfndMta/MUE0Ara
 BVtgEAXLmrUerZB8e/egdB70UxUx+qosuW3xpGo2KC5VQR9V3IL6gp+okADwHuxqCrrnNs1RjlE
 AdmK64I95pYJaycR2w/dghQm+STLU1i0hf2kB+04APRHqDAa8zPsLZUNU050D1Q2k5VgsuvcPoO
 wjk0w1XrHfaIA/c7NK7cob9EehUxRdzQkD/JY7HOuIEcWqUpaEMgN4RoHzlDELDT9gLPYXu1jr5
 CJkCuFmJ
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b86975 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=5vNF0T9NdgVroHtUm1oA:9 a=CjuIK1q_8ugA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

On Wed, Sep 03, 2025 at 05:50:00PM +0200, Konrad Dybcio wrote:
> On 9/3/25 1:47 PM, Wasim Nazir wrote:
> > From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > 
> > Enable PCIe0 and PCIe1 along with the respective phy-nodes.
> > 
> > PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
> > attaches while PCIe1 routes to a standard PCIe x4 expansion slot.
> > 
> > Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 82 +++++++++++++++++++++++++++++++++
> >  1 file changed, 82 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > index 196c5ee0dd34..7528fa1c661a 100644
> > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > @@ -379,6 +379,40 @@ &mdss0_dp1_phy {
> >  	status = "okay";
> >  };
> >  
> > +&pcie0 {
> > +	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > +	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> > +
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_default_state>;
> 
> property-n
> property-names
> 
> in this order, please

Ack.

> 
> Konrad

-- 
Regards,
Wasim

