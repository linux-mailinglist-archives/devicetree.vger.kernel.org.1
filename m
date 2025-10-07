Return-Path: <devicetree+bounces-223984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B36BBFF28
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 03:24:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EAA754F1486
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 01:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE9311FF1BF;
	Tue,  7 Oct 2025 01:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QjyGWNAp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FFC1E5B7B
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 01:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759800259; cv=none; b=kEsRJ+cu4qx8EeuuI5spRzmzZBOspamNEOvGthbtkFpYgQ/CwEFEeHWSEIOARLw4YGiOQJfKAqJXjSQfi6MwR7POb6Wms7Td461/OdpIPoD+Vc4d1uxKKvJzYK08cmx2jGeFWri6cm3gZBbBiqWBqjL5PpIP5VR5P76Y54JTlI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759800259; c=relaxed/simple;
	bh=K8Ito6N/92UmC74Spy9HYuGQHrNOoq6p4xRrDPVTJ+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IVKTsq96EMbjxOfKp84DgxQlusKal8lJj9OFBDeV5uy1pCCJcW4aInIWGdQg9XzWzTzVR8mlNO94pLNJMrhQoGWf0aFFd+tDotqwPxAMM0MwyO3gIY03LKrYSUtbfEpwxoUpdU7vCMxHVTerV3JPpfm+YTA8eQAWQbGmK632Wjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QjyGWNAp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FeKOQ004643
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 01:24:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=66P1iIdEuvGo5diDEZmJaYVv
	t9N9VnWj2nfgQmKd5qw=; b=QjyGWNApzIqB97CD1aJHkp4L1wPftj+T2iyf2kX8
	Y5N67B/2481e1p1wyz6XjJtaXpoK6MiO6G1LV7E+dVnre5e1QLfQ6dDTws/OSxaR
	VP5NiXYEkJwIVKrcMQqUt55/0Dxyic6N51zUUuwBtDVfPA7t1y5LiBeCNf4HLTy4
	OO6+i4epvCyjn1wGNC84PshJR5gT0eWb89Tof/4pQjV2RuRYYZJZgBDBdizC7udw
	jiYqU4UpLlpO5I/K+bMiREmq6ElmOiFQyDdjo8yzj8KLump2pBt/Q+wGY9s6sAQW
	vJj75CjdTuB/JX2vzCbKmB1+nBM1AV3uPgiofSZ34zyNhg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxn5x93-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:24:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-86b8db0e70dso141065496d6.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 18:24:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759800252; x=1760405052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=66P1iIdEuvGo5diDEZmJaYVvt9N9VnWj2nfgQmKd5qw=;
        b=aWHrT28heSzTqHWCIJmGJLQBi3asJW4GUqws1UbiLLgZaEwq+cnOix+Z1vFO7Kz9rc
         UhltQ2nPzW72eG5cY0XIhxf77HXABLXy2YlozD+KDq3eOWOZx5c6gg0i0w61zhr98Bd8
         e8dQUhSme3aYVqj3Q86Nwv623gxw0PWHqeRZicfTNMRi1bAKA0VT7RnI1xZHLpayCqz9
         FGzkLiv9qMUfQgAmQ6Z47OBZznp7z6tmb4ZSZeJn9E10pfIaGn27VIN+2DPE3y9I3GJs
         3WjSzNpJjFHNI154mpIEWGz+xBMnR+DfUxw8GfL3+EX8TSM9ZT1B/soj/p9s+vVL3hkV
         sCdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMV/h30l53Na9vGYrSTxu6SV33nkTVGFgUHW/xu8iV6kxRXoK/hzJw8WVLDCI/ab5nxvkjulbH49JX@vger.kernel.org
X-Gm-Message-State: AOJu0YwK+fP357BMogHgX9dMAY9r1x+1nBqnxY1HnoshaeAsT/9UOxkA
	Dn1LeSHnUFSF+3KT4ZhfC1UIPxes7K2vXegXJig4Zc8DWPjD49pp5oWSdNk3xUhf9EoMWpRZ46l
	MonmL5q3GjK61G0psngg8y85vALoCzRWIgGeEouajIEEiqQPI2qQaaK0tlWB9U4tO
X-Gm-Gg: ASbGncvFzLaSVt7LtflDacg1yhmjbwk0ds9//NxtVbgboq81uGF81zV4xivsXIBeKLf
	2ycoAKyVyzw928eRiJd4ylSep5cIiqIKsOh+JNmm+olta3Fh/VpoOAFjuFtrbVmBtcmKXVujOR3
	L2LdQB5oRzssaK++usJmJCconXfa0HAMk4mrjaohx6v4RLNfPf6M8Yt91UngbWOWGtMbyDhFMcc
	FNMi59GXWhuVz1/wMPYUOWqlsjvaRZ5K5CYzIhU2aMJBmx5aGMQuBy+cD9cLisNpIBAW5Ya1tXA
	LZxEoN+n+lisQ4jeiYbT7u4xP5JFHu82u25YDII3rpMRnn0zIHN8W4Jg03t0ZLCGNPyRLsRjRZc
	B3s2jIqz6E1DLa50eqirzbbR8htb7W5LtfOprGMBRVjAZtyWkxJrVyQ1vEw==
X-Received: by 2002:a05:622a:50d:b0:4b4:95ec:c830 with SMTP id d75a77b69052e-4e6de93596cmr23862201cf.42.1759800252481;
        Mon, 06 Oct 2025 18:24:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEikV73yqB+TdwAmKQ1pcop3SJZ414TP6d8b9XiKWBJUcVMyY265dINYELgJj65zxVKuqbsgw==
X-Received: by 2002:a05:622a:50d:b0:4b4:95ec:c830 with SMTP id d75a77b69052e-4e6de93596cmr23861911cf.42.1759800252004;
        Mon, 06 Oct 2025 18:24:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0113491asm5543464e87.36.2025.10.06.18.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:24:11 -0700 (PDT)
Date: Tue, 7 Oct 2025 04:24:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 04/20] arm64: dts: qcom: kaanapali: Add support for PCIe0
 on Kaanapali
Message-ID: <noonr5lrw3ig373pi4c7efakil34vsaej6cshs52us35n2bbmd@7xmq35w6wetc>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-4-3fdbc4b9e1b1@oss.qualcomm.com>
 <68fbfa0a-605c-4b6f-8ef6-33ebeea8909a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68fbfa0a-605c-4b6f-8ef6-33ebeea8909a@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfXxdWi2EGd4Z0+
 eVMtiF09+GTUjk1kyTAXblRSBfwPgC7W/+MAq/uiddqV4jO5cdalpKePTDQQktPzvv1s1zR73mL
 ahoSWyr4Qy9E/TZgB1fUK1o532e+blud3BNNGY8qDjgCTkLzo5nJQNmy2OLmRgYLVs/ppqMpgJi
 Kv03IhGEi/KWDUVyftu+JD1iRq4nA+FTbExEsQggVMeS8TlwrRjJgVvGmmp9jznOguoKs7zztuH
 /WFAPnX/xIL67NC8CmxtjB15wzwScRiIiLfqyIFETNLzZp/AJPU98ynG0fXhk8w7aOToYW2PP2V
 CEBq7YKbAHFjreayJYuW0xFKNeP6TyErIrf+fKLzW0Ljrqh3HR9kLhxgRBEQHpWQYpV3uqvbFqy
 9Flh2j6rS7GM7HBcrGAyjYQjvAr04Q==
X-Proofpoint-GUID: 45YDPH9quMV6F-rLUUvQmqoTzfKSgH9T
X-Proofpoint-ORIG-GUID: 45YDPH9quMV6F-rLUUvQmqoTzfKSgH9T
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e46bbd cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=pzI5C_7f7Ztj6dnNTwcA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001

On Mon, Oct 06, 2025 at 11:23:23PM +0900, Krzysztof Kozlowski wrote:
> On 25/09/2025 09:17, Jingyi Wang wrote:
> > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > 
> > Describe PCIe0 controller and PHY. Also add required system resources like
> > regulators, clocks, interrupts and registers configuration for PCIe0.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 182 +++++++++++++++++++++++++++++++-
> >  1 file changed, 181 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> > index b385b4642883..07dc112065d1 100644
> > --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> > @@ -452,7 +452,7 @@ gcc: clock-controller@100000 {
> >  			clocks = <&bi_tcxo_div2>,
> >  				 <0>,
> >  				 <&sleep_clk>,
> > -				 <0>,
> 
> 
> Why are you removing lines which you just added? What sort of buggy
> patch was before?

Weirdly enough, it's correct: this patch adds clock provider, which gets
used by the GCC. You might argue about the split, but there is no bug
here.

> 
> > +				 <&pcie0_phy>,
> >  				 <0>,
> >  				 <0>,
> >  				 <0>,
> 
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

