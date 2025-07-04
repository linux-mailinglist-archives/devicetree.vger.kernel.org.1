Return-Path: <devicetree+bounces-193173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BC0AF9991
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 19:20:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAECC4A020E
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 17:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F54150997;
	Fri,  4 Jul 2025 17:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y8Lixg3w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920C12E3707
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 17:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751649615; cv=none; b=VTbj9+WkouEYvIdEe+O67o7n8ciVWnTFph/FYTbMP2obH7tskL6VPT5BK8FUGvR2JExY+bvVx+ktAVF3O0jtO4fICZJHKHg5VIX48PiYzjvTqws0y8Vaqu+N9a+GVNxTbIUZ9CApQQ2VXr7LCalQYw/Rwm1axrLpZYxuDjQa4tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751649615; c=relaxed/simple;
	bh=Y+afNfEnr7ionJG6zDs8nJQjqBSEAWpeDKXJjf/L870=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p3SOvQF8Kz5VWWuhqFznlqFWCCs+VMTJTDFvXgzXn7/ym3t77hCFQ8Xf2S6SrL0PF64SyiOp4Gi8XKuHqgqMiUrVPdvVkmwoWQKvR/b42RZQt9ERxzwakt4TknyxQmY+8asGhUSfKroklezHsz+8Tbfrltox/azE1I2iAva/ssQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y8Lixg3w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5649DUA8016525
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 17:20:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=K6S1+P0U6oPDZ1RZYx8X/1jb
	24SS1+osCF5MwjAfyHU=; b=Y8Lixg3w1CDKjxNMA/MgzrwXdW5HrWLeWAsbYsO9
	zQtdH9+ueb7JE8jCTTW1uA40jsbWnSK1jY9B0wVnauar+b9cfqJ3NA4ZhnHE2I9H
	69k9m7ykwed/WWc4m5G1uM5SymKIpsav+65DjNnWJf4Sakb279K57vurjJslmKDi
	I9K4rq47y7VMKN5ra6MyoSiuesh1YRggXa4BIqYv9acVT1Vf6Xly91WnRTRoKtHO
	5QnHCh0F25FEiMSKXx+nfcMBq6URkRmjQH7K/DGSL+UNi2q/PXLn3yaSB95MDdcm
	zrri+QL8ajsVBy7XrQz8BUw1D1T8mRG/oTHkv9ER6iDN/g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47nh9s6108-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 17:20:12 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0aa9cdecdso83289885a.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 10:20:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751649611; x=1752254411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6S1+P0U6oPDZ1RZYx8X/1jb24SS1+osCF5MwjAfyHU=;
        b=vzyRG1GchVh8JZX4rod+sXPKo3eyIyOxg30QP1LvCcUYNBgW3ElqIcQI6279V0NJr6
         x7UUR8U4HCxAy0ogDeNFeuC+0E3hfu3ZxIqki+dz3Ikt34dn+fDSFQH3JpnKsX4b6U1/
         92QtPLuf5BtNOL4SsiwJRrY75mDCvxU6qM4hoi/h+5sU3fIzPvYD7kgwHaAzUG+S3JBx
         Y9PE8Prtkm7iTzJOrP3VXqrZRpnqiT1q1qG+rVYNmg1+oxtFJaoOI4sD6n51vdsfgM+h
         leeXIoU/CkJurjsLzsXZRfo7rWIrwHzsGdFO/gvcSkhTRh+EtFGuwx+PyWsRBVWXvvG0
         YULg==
X-Forwarded-Encrypted: i=1; AJvYcCWvtOIW4bQA3/pTZQ9K4wZ/u/RCpNyhLO74nwLtVW9PRO00+LQr0S3Hqv09pQtHgJJxhDE9uY6+zfU9@vger.kernel.org
X-Gm-Message-State: AOJu0YwM4NVE4SePkb2JCLTAQnxcKtbtrRS3ffjVm516WaPeRIdjwtrO
	AIxyf1nLg+2QTholb/C2kdnAObK1kfvwhap9DeixQOieFASzqmRflmj80QQ6QZmJfAM1zfc/j3I
	XrS+Za4MHNdZgW9XM+WjJe4Qb2ZHp89yJUyJdIfI7ROnKlbN/HSk2j/I1m6SLhSE7
X-Gm-Gg: ASbGncukKOjLFmUg9OELSRBI66SI8uh/1EFAKQaOamvZIuiJLdPaUr3Y4f+fmpkoZ+4
	AYjdH9U2FEntbBv2h41cjGCs/z9kCJ3vmV0wSrNoG+oMVQAp+An3I5wAPpyXYpwcM6pXztn2rtF
	rtPbQSwx0dGfPG8dGlwUlLtfp4p8NFFOEPdqQGqQj/IcEPM6ktaSoh1DlAJMqN8jbRqaJesAXn5
	xaz6Jq3g6WVhtkEAhgv35kTfc+6yt8OeRR0/ZaHLVyHih9duMx4lDHXnWS8Z/d4vCmbxhKjvYyS
	umNTga6hL6bOVkkPPlZHXOYSmWYL6h4bj7zQtaUVMwg7yDmEZ0yhmrAicJfvMwHt3ExhqaX8Bva
	W2+fUhJr3MeORjzmvpljQMkYmfdnffggk+h8=
X-Received: by 2002:a05:620a:1a9e:b0:7d5:c2ba:bd4c with SMTP id af79cd13be357-7d5df16189cmr323256285a.27.1751649610673;
        Fri, 04 Jul 2025 10:20:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFo/MlCYNc+2uOnhzse2QKjigyvirO7UV8XPRf1Nz4++jIkIKFLOYbvO9lLcaeerpkVmk5Ukw==
X-Received: by 2002:a05:620a:1a9e:b0:7d5:c2ba:bd4c with SMTP id af79cd13be357-7d5df16189cmr323253185a.27.1751649610205;
        Fri, 04 Jul 2025 10:20:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556383bb3fdsm307083e87.44.2025.07.04.10.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 10:20:09 -0700 (PDT)
Date: Fri, 4 Jul 2025 20:20:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: amitk@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: qcs615: Enable TSENS support
 for QCS615 SoC
Message-ID: <zuczd27utiu562fexg2oemgydcbe3fs22mjeb26xiocreqlncy@5nqhixgcdhdm>
References: <20250702082311.4123461-1-quic_gkohli@quicinc.com>
 <20250702082311.4123461-3-quic_gkohli@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250702082311.4123461-3-quic_gkohli@quicinc.com>
X-Authority-Analysis: v=2.4 cv=frrcZE4f c=1 sm=1 tr=0 ts=68680d4c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=GSS0VzHe2Y3C4L18hMQA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDEzMCBTYWx0ZWRfX6vGiG0prWQMX
 09KIblpOm/WQjNOYnXefSrOzkmfv/6Ny0+MHZnNcVz4MqXhfRZTK2cdUlhkvg838if4LApXuUMU
 PyN7QrI3uRh4PQBEkqziCc00FeinvobgtTCO8UaPr4KQJwRlWb9+fRECNzyZoH1Ij1nfXrYooO+
 pIy059bZwn1QYpeOkGoLxq/Rj+sdCmLd5PrwObLN7Lq03jZnLsPtEYRZFLpYWmmX3St7Bnp79at
 tauM0l6fECll6/PntJ9Et6EWKFr7A3702DdWtLd7crf8v6c3plUDJmoe0VVCmzawSbJe591Yh/9
 NMmqa7vZMW2e/gIlBmHRFkcIY1w6IjkZ/DEqrqMTt0NAfDOfH5jcjrTwGbWGE84yk9SXMutSnYp
 rvCulXdaTaq0d/RGnMfGqh/QLstYV4hNFfM3LxnT68ocvbvVvqm8p1+BFTkbDbucyoocAAEM
X-Proofpoint-GUID: iTEpXrzUtRtLXqNluz-L0CW70A9_jvBi
X-Proofpoint-ORIG-GUID: iTEpXrzUtRtLXqNluz-L0CW70A9_jvBi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_06,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=691 bulkscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040130

On Wed, Jul 02, 2025 at 01:53:11PM +0530, Gaurav Kohli wrote:
> Add TSENS and thermal devicetree node for QCS615 SoC.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 205 +++++++++++++++++++++++++++
>  1 file changed, 205 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

