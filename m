Return-Path: <devicetree+bounces-221901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AF0BA3EED
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:47:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B69637B66E4
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4A81991B6;
	Fri, 26 Sep 2025 13:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DUJaz2/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8118F1946DF
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894422; cv=none; b=iTv7+d3D7jvQavGm8T45ggHi/YlpCMsyaGUuaG0JAY3Snzk8XUe2ix2eblzDbZtRFXDHfyTNEMm1mkf/KYKZ8FSR+jsDuy8RBwU7qlZyYDJ0P3rHlkEGgNQ9139o4mjUC0DoHSlbAV1x+T7BVQB6m9tk15LigWNwZ9nNoZN1pAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894422; c=relaxed/simple;
	bh=aBFFYUPfC1VbKQE1JBC50s2T3I1/bqs0tYQQd5BNEuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yiq3iADt0EyZYy2oLHQ9F+Dsl/K1qi7gNsPFAqB+icn9BRdz/MnRJOWPtUPIFkt2jP6sfDP9HR4+FY1jbdPOLn9iuznHODX5FOjHtFdyDrYLDzKfzS1T2x7zN0vyIAr8OS/8ItRpoVLfWtSXU0krVVQDgUSgY4r554ixSaht39s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DUJaz2/G; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vwfQ003037
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:46:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fBPPqyIhYVrf4TXpIWvVvJCP
	+mPfq0dKR0wYVfEnFfI=; b=DUJaz2/GwPsGNd2speBWtjpXKQs578FAI0Vmt1GC
	9F4BiV0kpIvpRdbxDIAybUeIVvyYjZ2o3pcCmMwVE93wg917o6DrBMtzj6S+C97z
	s0V064dvfr/FAWjflKKSoAN0iDaKXmzkaSj/lTL/hDopIywRcWpTeVLR9eYvQaY8
	CgNm9SGvvTmiLIWS3oGQt86phUNcPjze03vUh4iH9acxAXE1iQIZXXYaDPwH3X3x
	RaO1Yt3t5W90SJT1NNMUL9Cv8kS/RDX0i/jv4w88TWwSt+5sH2OJkc3yuX0GofqB
	SNEtwllVljkHy52ll9zg3YRaiK2qYcs9Cww7aNn4Ucos8A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u30xb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:46:59 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d8b8c3591fso60821231cf.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894418; x=1759499218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBPPqyIhYVrf4TXpIWvVvJCP+mPfq0dKR0wYVfEnFfI=;
        b=Rknw9kaL3YdoGvqXJxNTsNxzPOSOKTMBYz5aBEuFfNSOSgHkr/hlNWBe896xKXlRCc
         dZzFfe5DtLEoN46GAnpCRbAWP7MJxWv+i+VQtUTJg8TgN6rF/+JIW4HC0QynpoO0XduU
         RYXHnKCtwXkiSGCsuCy4zSVdFuQG1OQHjM9vaZaLD3WXgmLwacCeEnx6Bw4+ykIa7kPE
         kSTzJ7Fa7NR5BJs60ijwkEqw4zgcCU7eZ/rsdJBaniX2B9Hg03IdjFbO49fj+louMobj
         Bilmai9ylBCgEZuB1vU9+5ngtSNx4Xh9nahxVQxzWuPxC5bb22KH2fLu6ZxtEWijMoXy
         xwZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmPcFV+0IRNOGtXEX6JDcvSLOXEYw5VSQjljDeqiQuVV8f8OmKz2r2wVeLYLuEMTTNQFHBVycgTA4I@vger.kernel.org
X-Gm-Message-State: AOJu0YyCKo1rV2hXP8iq+E7id3gX4dym/Bhk/zBkk5qm6HpVuRWp3FdO
	YcHZjZF2kVcZZ8t3Vch9rwmmV83IM9MM7PDJD2Au/BqaBuUq5Zf5y5r35g3NN0z8ZYMVPHD6JAb
	qSYPGw4LQJyqMRxQia4KYBaISByeBNVWl8i02Rxs3kwy+Wh3e+z1r4OYD4cOEpxB4
X-Gm-Gg: ASbGncuKj09X5FhG5RJH02uuWZ06bM9/lzRNlxm8Zustmxcn8PX98IVHJvh8xZqTS45
	t5CTJEuSIgWNzIdxQf5K/+APsy8U21eQoURtkDezeVk+zFGk2xfGkx+yZkZc5/ntFOGVLemLkwO
	kZR9nu8I23Q6y+FeUBGOq/0ShuQm3AG9Aa8SVL/9/VAS1P6Dw5YPAOK87iEL/VyZlMCIobDJQiP
	C62aBLwgMNnISx4wV4gIe4TG5/RNY9lu3cTjmqMRFu9vY5d80Set8sImuoSe2+cc831QcGww3HK
	0qp7KJppH/+rNH5/2RyjEHXilC2SGTuqm2rVbR1X6hWMqRprfE1FR92Pk39eMwxe7xAy5VPJF59
	yHbjUe8vr4XpYTBN1CNZ455zBUdDIxW5j/X05q1059+tJc15HlOhF
X-Received: by 2002:a05:622a:1f09:b0:4b7:9f68:52cb with SMTP id d75a77b69052e-4da4bbe54e6mr107537021cf.54.1758894418357;
        Fri, 26 Sep 2025 06:46:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgMHv4hlXwVECvlZwSLsQCs3yZNz5dZYBkviU6fW7qoQdMWI+9oVr9Ah5YxWdPj6tHgyDbsA==
X-Received: by 2002:a05:622a:1f09:b0:4b7:9f68:52cb with SMTP id d75a77b69052e-4da4bbe54e6mr107536111cf.54.1758894417530;
        Fri, 26 Sep 2025 06:46:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316656453sm1831278e87.92.2025.09.26.06.46.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:46:56 -0700 (PDT)
Date: Fri, 26 Sep 2025 16:46:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 14/20] arm64: dts: qcom: kaanapali-mtp: Enable more
 features
Message-ID: <vftateior3shdrifao5ueh2pyjbuqbwb3sw3gywzghyhwkplfs@7tzocm576bin>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
 <ejcchgc3isc5f6tmiqbxqihmk5efmbcyhv3ehuoerb5ulkd5an@g7a2wc422l6n>
 <60c65d7c-1564-40a1-830b-1c9931776fb7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <60c65d7c-1564-40a1-830b-1c9931776fb7@oss.qualcomm.com>
X-Proofpoint-GUID: _ee7uiYHE6cYJz5qwd2fV_Hel5jzJ9Z8
X-Authority-Analysis: v=2.4 cv=PYXyRyhd c=1 sm=1 tr=0 ts=68d69953 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KfCWjoryZpLtWRJACwUA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX8ngQC/rxEdZm
 KMQ8tClDYEsh05d8NXchLzPCUHhu+dnK1xGTL9VEAsdywiQosSZjWjlLSOEyr0HGqbLa49Vogne
 HoO/AdC937TbPA3ydLdoAjcXCI2DtMioFODl+8EhbhbV9b2irNV5CpovdbCSYBE2nILfvqhXq2Q
 K0bwCZtGBx/qU3LzgIzLA1ybG/I4y9BwhxCnl1xEZRS1ISfox9DdCrQ8AIeqJy21dZV2IC4a0ev
 we5qDrfFzRyhi7AaJtpfV9bD4wRhrRIRUI3j200VNWHjtdND68sW5BJ/rGBfYKMEW40vXXU5Ous
 U9dvz7s9l2mkYGjWVcxWvT7yaGu+/yXoOz1+8nEGrH4pe/3KHtK7SkLWKM71/iOTgeT2rRmBO3I
 mKqq76nv4L+MoHkOa1M/gAj+4mJwRg==
X-Proofpoint-ORIG-GUID: _ee7uiYHE6cYJz5qwd2fV_Hel5jzJ9Z8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Fri, Sep 26, 2025 at 02:11:16AM -0700, Ronak Raheja wrote:
> 
> On 9/24/2025 7:09 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 24, 2025 at 05:17:31PM -0700, Jingyi Wang wrote:
> >> Enable more features on Kaanapali MTP boards including PMIC peripherals,
> >> bus, SDHCI, remoteprocs, USB, PCIE, WLAN and Bluetooth.
> >>
> >> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
> >> (added USB), Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC),
> >> Qiang Yu(added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
> >>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> ---
> 
> [...]
> 
> >> +&usb_1 {
> >> +	dr_mode = "peripheral";
> > 
> > Is it really peripheral-only?
> > 
> 
> For this initial submission, we haven't yet defined the USB role detection
> infrastructure, so it didn't make sense to include dual-role now. The
> controller supports it, but without the connector bindings and role switch
> implementation, it would be non-functional.

It would be nice to explain this in the commit message.

> 
> Thanks,
> Ronak

-- 
With best wishes
Dmitry

