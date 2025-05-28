Return-Path: <devicetree+bounces-181164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3274DAC6802
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:03:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5183A7B2224
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9254A5A79B;
	Wed, 28 May 2025 11:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SWTS5g1/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBB427700B
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748430207; cv=none; b=ewwwtxY/Qr/OLj4A3GLX4CcMlvWjRO3FjZMFGr5BA0drMXxjdGfK70Y1QkZgpUmn+byvHDGqH0/DjwuSA83EK8lqk2CuHvJ8rbp7zWfdrIrocvAOhihf99Rr0SBwkmoJTeyJrlQwOhPw0iizl3sMpAXkMshpiKYRudC62UE+PXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748430207; c=relaxed/simple;
	bh=7AD6vqWhqJX0O2x4ThO5Pg+jVQYeZPQYDx4U83BlAh0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GDe1zQBmndFtCJZ8MngiMUXlergMiAlLn7vzyEczsaZW656hfm/GPlvqEWZGGuTbN7TpK51KjtTUAfW5siATgm24EiD/WwZg2lNMAJGVFfT5OLlmULfY/vRp/Ennw/yZLqAp1UobMoaEXwMiWDjqdcAMhR27cRXSwMtfaJeHxPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SWTS5g1/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S05hpa022698
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=O3hxnjE8R2mMI7zZXd74HKiJ
	V55TvIlcyaFBEmbsVko=; b=SWTS5g1/WnnFFprrY0D8j3/H98v3Bi3eAeo5qIm9
	6Y3h/VGX8lhbOTgrePAIp6Wej6ZqKB/y7eIe9FWJPnwuCme3sMLi0po/JRuNe/FQ
	cVLAzkIT+0yHrrL/l2T4IxXm/fTrR2rhcycH/2/lRVy6G905zvOka3zGCQkQTGx8
	vVF6mFAZPrk6K1/2QTCgLd/7W0t8uxaqOhEkcsum53vfy5Q2SttoRKnWHkVqxBjH
	xGqFNw9yh9tJr3dBD1aylKAuaB8NiHvgm6L/kM80umsQdltFco7pRkuZZE4PKZ0/
	Vd5S1wHIAUvzY0E3rFiKYFKdd3BOAjWYRzMvLMJGrJ5HzA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjt0vq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7cabd21579eso701514285a.3
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:03:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748430203; x=1749035003;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3hxnjE8R2mMI7zZXd74HKiJV55TvIlcyaFBEmbsVko=;
        b=v4tgJVPYTXXKBKwXIh8cTrNa6TywfziRkNZVRU5bccQyVbzsiGQaCTB/bnIAvY2g2U
         yYYnDzO7cxT/S1L/R2LMNhxQxihmDmbD3EQFcTFeoLTlm88PUG4aqX+Rm6Xi8stHkF2p
         VLvz661dPrRkC6wseCUjhOmKFNfyhTmSZ/glKJJBAJtG7HaKK+Qb8kdW7SpmyPf061k+
         h1IVx1X5FvbG54Z8XchtTUZ1Kd16ivQW7t/safZGT0ryPHIAMzKmWZkcgJRTcIz38BPj
         1ikDR0IuRH9lBvf+R5TzcmIVI5vv3OgBrSThwcZpxihTnNjtZP23cicuMJYeze9Vc3QM
         6iNw==
X-Forwarded-Encrypted: i=1; AJvYcCVo7Fe6WubddEzY0ZqWrTCzPUgSf99h8EbLYaNSTzkokedbkFXvN2mQ40PW1gjjj/nk3R0LUo0uy5Gn@vger.kernel.org
X-Gm-Message-State: AOJu0YwIZDlPlbyg20P8QjAtOjPhiHhB/xooiCGgl216zhA9OtANI6rS
	gYC5VG2OHuFyknXhdrUQ0fHFiECla1MRsYva2t8Zh4OAibTAwhYnlJQnXF+XIAYVMt9XykUJCNp
	iiaOjkG3/t7bsS1DH5exePutdRkzHRKY1cxaZ6BDtWDYPHiGmK/IJDuSNUr1GV04R
X-Gm-Gg: ASbGncvM0DDHigdpmTYDrTWkgx5XYdwct1M9K7iqg6TvzeoSMpHy5lrMV2uhsBs/xTq
	ENkAogwnN4dGydrgQQynjc7xsprEiXVEI64xcwcc2+MCJ9iyDsP+q7+I0Rma4M1wBO5Uqt+I9e3
	KIer+NxqMcHLrJK76yZ73PZUDzXS1HjRxLTweOtW5csMjla4BdpKRVCiXpndBA+D1RVwQ9B0Qmt
	jOapag9cRpI9jf6qeQh9/ahiGKnpmGJLd0cnD8l0WyjtnfVtWqEskbLSswu8kD/ggD65l1r58+G
	BW/i6aB47d2Vz5SsHR5FBXOlixxnvcF6zjW9Y5fBRZAebuM/Rep/XY2YzfzeT4xKpD/74ZLKtm8
	=
X-Received: by 2002:a05:620a:2987:b0:7ca:f65c:2032 with SMTP id af79cd13be357-7ceecb6fb2fmr2461804085a.5.1748430203410;
        Wed, 28 May 2025 04:03:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvMnEOEZ4WQNoRontgIBRNZol/vl733lzBBoIgKYQnnSwGg5aPaK0yeBDFlXxZZsjumy13Hw==
X-Received: by 2002:a05:620a:2987:b0:7ca:f65c:2032 with SMTP id af79cd13be357-7ceecb6fb2fmr2461799285a.5.1748430202950;
        Wed, 28 May 2025 04:03:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532f69a997sm234879e87.142.2025.05.28.04.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 04:03:22 -0700 (PDT)
Date: Wed, 28 May 2025 14:03:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: Add QMP handle for qcom_stats
Message-ID: <y6ciwgsseaasx7ob5ygihysrt77pnfsttsrbtijhakawfe6w6r@x6mzgmi4bwgc>
References: <20250528-ddr_stats_-v4-0-b4b7dae072dc@oss.qualcomm.com>
 <20250528-ddr_stats_-v4-3-b4b7dae072dc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250528-ddr_stats_-v4-3-b4b7dae072dc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=6836ed7c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=fX9Ow7R_rwjDEiK7aGMA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: -P7btukdZaDPb6hisYaxk2cxN0hvyBNS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5NSBTYWx0ZWRfXym1PXcHEB5/r
 dh7fkXEsNTkV/+FdoY4IxOpGoMMzvSuM9kxS0z98cfquuwv2bC055Vv1Sjd7ZjuG1mMDzwv63na
 1qR/dgJKqN9y3P65Mvjj3XoH7tZSm8D5OtQNQJvKmA6OB9Ek/6+bviii7sPxZuTubCOQDnFg2Fn
 4Pdz0NCYfX3sR8WABUXl4ALgL7+yxMS81ajlBSnE1nru/B7FKezBKdVeEfekCGZ2AKDhFF+E5iA
 y+jCtjOVax/HFj7d4PaOjCkGJWRxGlOqRv6y09cvG1RS6TbAk0Bhx4zszoGNh5hjMUG/X/C3bQj
 F1ywUmkm90HFrgArlpVcQPlaJvSEIih1UmRRuLn8c21I/dIK5DImqFmiyldsfrc25Ey85Nr2ACn
 5aWNLVHdNvQOIBzeO9AKODG/+Sr7/l5vnGBo+vgaMDq098/lLidUuKtAy70m83H4rhjoLIpc
X-Proofpoint-GUID: -P7btukdZaDPb6hisYaxk2cxN0hvyBNS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=670 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505280095

On Wed, May 28, 2025 at 02:51:33PM +0530, Maulik Shah wrote:
> Add QMP handle which is used to send QMP command to always on processor
> to populate DDR stats. Add QMP handle for SM8450/SM8550/SM8650/SM8750.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 1 +
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 +
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 1 +
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 1 +
>  4 files changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

