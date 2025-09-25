Return-Path: <devicetree+bounces-221226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6587CB9DD49
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:17:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2152A424796
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B4D2DE6FF;
	Thu, 25 Sep 2025 07:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lB0Jjmgo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94ABC49659
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758784662; cv=none; b=SHezuI1FfvEdTf3KktbpUlHjpYbmKlCetboWshaPzTMikVSrAQils4kVMAI60d6XSbhyKjSsm/PVlR4/XJgx6JcGaJ4snfJA3X8u3z0qqKZI4A1DgE9f0cZZZyksbQQVBUGOe9TswBEM+6Xlxd8UU0RW5EbXLhGjzFvSc1wJ+wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758784662; c=relaxed/simple;
	bh=CXRyNKP6B9Hs0iPs4O+nq6faZS2xwrDVFGArkTY3S/M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gr9FttGgOfdwKPPfzvoQVgCOang45nZP9QkHOYOXmtLip4sAXEDOD2fWlTkh8fsMLHEemnF4BcK9f+91JNwMvOTkRsoM1EawiQfkUlDx/iETxZHKlsGHSin1/86vIQtWFYK7H3ut8Efu8PL3eKugHwcBQuIeTOOkevGMdOg2sa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lB0Jjmgo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P11NU1024516
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:17:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MeIvpduIcfu5QlApNMAKw88URFM90jVyb69D62V3Fyk=; b=lB0JjmgoFkYHt+lZ
	LPHFrZkQABPjhqIEOEXCxHX8prP4S9x9P4jGrjscSFB7XgMraRQL3QHE8NxIEX/1
	NxwwrOLP+IVkwmnxOGRpkJJ9IZ2z1Db+FfTv0/4UaL+SRlE4artP9jgJMxH0sBen
	o5UaM/U0WPUh1gtycmSP3ccmxoneOeP10XI2qHJYhIhLYUnYwT5sUUIfSzVXwCgT
	Lqdgu3bNCuos+VjcTGZeDmNcTphlVFstrLErtKtfT4n5w35o1e62QN+Emc2MfBqB
	Hl0DJWN4b4e//ORWt99gNvXX/KmZV2JS3qmU+6EwZM1IscyyAf5PCrNLm/5Uu3i9
	B24n5Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0e6mv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:17:39 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26b7fc4b7e3so1889515ad.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758784658; x=1759389458;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MeIvpduIcfu5QlApNMAKw88URFM90jVyb69D62V3Fyk=;
        b=hykyuKAX+ovRy61QqSjQ1qFcjauU1yRgxHFaxb48Sxo3M7mEqs3l01DqFpnPEOoo2X
         5flPd9cwbgtXtIv4G4ukkUi9UQbo0MI3pERRTCPMmuektpZEt4KmP3sumyXZU7Yc2s0s
         4VIr6DZUT6hA3e7itJo2YLqCG2aCaWGPUaoxxwGinKrp7uYMkG9MKb+emEj2eWtQqlbi
         8xuxSxoI47aKstw82cG9OjVHubXL5UW0CG4FFyC1yhrOchHFV9GzoQYZ8qMzbPU6jB0n
         /lyETK/NjuxYZTMq62t8clYkGh901epw4U0LuyWEQ/zwTexfdpcaRO6QmFzpXRE9FJ/S
         4zGw==
X-Forwarded-Encrypted: i=1; AJvYcCVsgfuVGKS73+aOOx2TyBEOd2UvMcdtMQEoehEccj1JT6UHPtRak2lPFmmAQuAgDpiNdWAj6eV4gapx@vger.kernel.org
X-Gm-Message-State: AOJu0YyemHasXMDQVLi6pn1USs022EJCxvt2RiuJtq5Feji1rLuU4PSR
	p/yr8kmf4X3wVrUk2+BSSmgjgVSMt3+a3rfuDTsrOh9BH0Q1hQqV4V32AFVlTeGPvMgvAUkP5lL
	FaJbDNXOa/ZwEkfqa69APf4bS31T9+K1tkFsdSdxWufQTwppSj9uiTJZtQZbWyzIV
X-Gm-Gg: ASbGncsu7DXktzuFJBy7ubRf25Zn4joF+6lYOE/f04988qIhzrb3Nlz9AnGZGPpuKSc
	xDonwHiIcxWSha/gSOl7lIx6CNf1OUN3/yw83Tjqb5RlyeXdT/NBXxUmGbT82v1Frd4poDnJvNg
	nWBYg56xIRdOTI+mcqRkEZemJNFLpxWD0N6prFYA5gWblB0/7cVSW/5at0wwoCgQ4fucRr1Etwj
	5nqEPyk1B5borodwa6gMJJIdRzl5oZX1G9CbW1ZZkWN/tRl5JW6K87blXXdV1iwpARWMsAiyCO+
	XHkmKz3gaQYOF92IKINq9i7n44WKONIsGJXAZuvtLCQHnLzmZNMAyIUmvuAHNazNvKmNyYzMSyP
	+rFf7il8XluCkAHWZYjMFJtJ01B8pau0=
X-Received: by 2002:a17:902:db11:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27ed49df69fmr17433645ad.5.1758784657939;
        Thu, 25 Sep 2025 00:17:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHUr4mt9IG3Sd+jOvGuI5XW5KsNRIWQZv0nF/6TvnWeA5GnWV8PrZpn5dWXV+d7VRH4k52EQ==
X-Received: by 2002:a17:902:db11:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27ed49df69fmr17433475ad.5.1758784657410;
        Thu, 25 Sep 2025 00:17:37 -0700 (PDT)
Received: from [10.133.33.140] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ab6547sm14838015ad.129.2025.09.25.00.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 00:17:36 -0700 (PDT)
Message-ID: <66f85b3a-7aee-4a61-a817-3715ca23cdcc@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:17:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/20] arm64: dts: qcom: kaanapali: Add base MTP board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-3-3fdbc4b9e1b1@oss.qualcomm.com>
 <cifdab3i36xlb3xspyoqbq6o2nz2fvmuo4p6pz57bff3hakz3m@lylbyqavrcvh>
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <cifdab3i36xlb3xspyoqbq6o2nz2fvmuo4p6pz57bff3hakz3m@lylbyqavrcvh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d4ec93 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=hhnAJiO_VNtvmY0_vagA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 4OKGk01aTtMUM5cGyNlfOvXsIXKoyVt5
X-Proofpoint-ORIG-GUID: 4OKGk01aTtMUM5cGyNlfOvXsIXKoyVt5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX0uOcPmVgGBEl
 b/OAownbi80e3WQ0dF2f9FmNson3dRm2HF74JV4g+7+xmwA8b1pl081cWzj8l6QDEAaC4CufwfW
 vDsPYnIwi/1j5nji39seVcX6HptQra97ssPjGf/nUX5I7+HEG6v7iAnh2WGu5v4oCk7ZlN81NyQ
 M3PYHZey8//KoQERcPlU85jP5dpEiQyHAfli4MNJhE06QBGLRo7Ecx48TGzBiWmMkItsdtngP77
 8CxTieb8zt1FWtArIPEpwMVseom+0PzB0AiZFHtyxTZOc0+AUYVcDeaZljnxe06/BTP4yY+k6eA
 lFc75saMiaDw1/IdI4n99Qwv91ydfG2vFoIXbNSwhOMVwNzHOo27aKGe96Ir98fZPD70Fl9+4uo
 wWUR0cEi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1011 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

On 9/25/2025 11:18 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:17:20PM -0700, Jingyi Wang wrote:
>> Add initial support for Qualcomm Kaanapali MTP board which enables DSPs,
> 
> It doesn't

Thanks for pointing that out.
We had originally squashed a more complete set of features into the base
SoC patch. However, after an offline review with Bjorn, we decided to
split it into smaller patches to make the review process easier from
Bjorn’s perspective. Unfortunately, we missed addressing this part of
the comments during that split.

-- 
Thx and BRs,
Aiqun(Maria) Yu

