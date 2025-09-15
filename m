Return-Path: <devicetree+bounces-217204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D6AB57032
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DAE73BA0E1
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 06:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F988281368;
	Mon, 15 Sep 2025 06:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aSQ7m4bJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE88280A29
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757917586; cv=none; b=LcKYuNJTfduwnq9Yig4C29jTmw4hYsDSzVOhKUPxnaA1kqZ81h5w2sAnWLYRb22SrDsUhEiqUK2e9pDkIeEptX/lesEmMgjhKfgc9KAkvT5bTC4iClXRKSLjoHYL3Hv2FIlgHBaLYjt+rOEy2DZWX+qIOJUIlXBZH/Pu63p7nUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757917586; c=relaxed/simple;
	bh=p3cqF/An1AZjw8JVOz9xUECjqoR0vI9WU1IXWZyL7Ro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZDai6AqWTeWgPTYRGoMBkp7g3biWPi3XXZ31hR+uFmh2vGKKoPNcE6+cit8RQ8JWrRxHQsRfCHcYJrhv9pGYfcsXRgelRbIpdmdDwGoRgZHnUpO1Dn8OPSmWi84ZFjZ4NuSfG14Vu1kJaq5Zt72BbJHstK/kdMlVybDJ4WnKgxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aSQ7m4bJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EJKQGh024332
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:26:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p3cqF/An1AZjw8JVOz9xUECjqoR0vI9WU1IXWZyL7Ro=; b=aSQ7m4bJjFzNFsE9
	VSYPcz4xcmtaJlDYhC2EqGRUm5ndV0GtZ5ZBeFj1LG8f21dM4HFUVcP/Qazs4L45
	XQxVIPundh+0tP7/APebYUPMFWTcQxN9OVcP1byjVF1P5Uh8pRvGWO7EUqQxkE0N
	pT/lfc/eZPD91lpJhu5PqogW9Ekn8y2aszHjn8LEVB1C4Xf8eGX1j4d6LCX9fDty
	NFDaIUaSlsixlxtqVNaCN/c0k4rS9pH6tcKJgMdDT/49vF7p/a+BvSarI08jOi/O
	2mww+i6wAEfLN9bvaRDrLHZG/EhSq/ICZPPgbGmCXUhw/pgg1rA35kABR+uRmVN3
	M75Hjw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chbmtx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:26:24 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b4fb9dfc94cso959831a12.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 23:26:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757917583; x=1758522383;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p3cqF/An1AZjw8JVOz9xUECjqoR0vI9WU1IXWZyL7Ro=;
        b=gDTBebS9aO9UwknZqivuwfD4oZfNi5iRiicpxG58nVzfvm7iV8sNeZHTlAKPXyhK2Q
         MxN8uQ3wevCFKPGr8b5Y5XQHVGcYS9NNl0VJeHk6w7b+QqveryMXG/uAA64sa0yslW3Z
         edlsQvaddh2Al2ARBdkOR337Wz8fCj69VxTmPbQIzi3adxyKCwOtHqEx+wMatSbR7ufr
         LrZ0BIcE+V9WpRv7ZR6dsXzVWjuJspITsJnfDwMj3duHdyNGsXS+H5FRI6KOyCDL1tS1
         qP9BmSkFEHwRuGIPZ4Fk3/Lyq2vx2Gqp3sAblL1VbVihKmGPN33M7l4NZhWeZq3o9273
         kjjA==
X-Forwarded-Encrypted: i=1; AJvYcCUqGh4j0Uq/6+RKPkVwMq1XVUPqn0yzaVR8x+NBp7peDYC6DMdYUySHTIQkPsHsWL6sT6FnCuuHP7BP@vger.kernel.org
X-Gm-Message-State: AOJu0YyBCiI2Tj4lIayWzmvexzu0mIalHWjL3ZcWF+o9cEhFeY6WLkJC
	Lq7bQlV61KCb/8bWiMECW2xfKX35vqrtHzFA6PaKJ7HBwtmxUJe73jWdAqcK5DghaHryosoaAwW
	uyqnruU03NMsWkG/IzlNezkJs6yUJTiVLJgKOcADZznexdAfgvbEyVUQopdpF8MMP
X-Gm-Gg: ASbGncscRtZ6WnhNjZNLyd1vc4TbN/LQigcYyg2fffSU2DRjejN823jICHuTsqomTW1
	ZywvV+jkfV0IkAja6LoRwmEFaxQFur4zHuLEvLS0AeL6l0b033I2KuvSIL2jf90/O4Yr3o827ZZ
	E6vcStvXzrSobTC/npGsq4SYycr7fnqSHSylFxAmzxxTXorkQp1jBG/PAHXlF8bA+MjedkM/HkN
	gLt5Meh0GxMhi1QO5dbbjxZYSNPhys0+touVWxhmkdGvbQXOWN36cF2li7IFoAdxOi6i55L94Kt
	Gtlq5Us1CiDGFPzxaViTmXNSLOnj+aMzSByxW2/dxw9/ttdJ5DH2IF24MVxcl+bGhs/GatDKiaY
	r1UW1MbouUbkyAxo8SRMl52qw0zyeHGwTvDM=
X-Received: by 2002:a05:6a00:a96:b0:774:2286:361 with SMTP id d2e1a72fcca58-77612060f79mr6738239b3a.1.1757917583121;
        Sun, 14 Sep 2025 23:26:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnsuQAVbn2atzfG9WWx0sSeaLKGnzB1+E9spf7myo63WZ+ZUpm7ftykU++CRXawOnpXfnInw==
X-Received: by 2002:a05:6a00:a96:b0:774:2286:361 with SMTP id d2e1a72fcca58-77612060f79mr6738214b3a.1.1757917582644;
        Sun, 14 Sep 2025 23:26:22 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b347f8sm12075678b3a.82.2025.09.14.23.26.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 23:26:22 -0700 (PDT)
Message-ID: <6bb0cbd0-d3b2-4359-a2d0-6b757f66d0e0@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 14:26:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: display/msm: dp-controller: Add SM6150
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
 <20250912-add-dp-controller-support-for-sm6150-v1-1-02b34b7b719d@oss.qualcomm.com>
 <sx64y6vfov4yag46erckpbl7avwmqlsqt3siebckn76m6jqxjh@f5lueyih6n3q>
 <d3743c52-4e84-4729-9f64-af856419d504@oss.qualcomm.com>
 <droyp5atpjauyttqkwqzk64kkghg6jkkubvfz3zlbrodyzlvoe@fbns762o6vcq>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <droyp5atpjauyttqkwqzk64kkghg6jkkubvfz3zlbrodyzlvoe@fbns762o6vcq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c7b190 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=olEU9l-643s81VMgE3sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: mljRrscCkzuJ0Ub0o-x1M_2SkwtN26nt
X-Proofpoint-GUID: mljRrscCkzuJ0Ub0o-x1M_2SkwtN26nt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX8AbHq+qJ9E4M
 achHc1MAAOhLxuaG12lgzlRytoeIXbprbswUx8jY3XR0VBKLj7ON3mlpojnkvGJSWwvJntnfoLL
 gIop5rnmQi4B1shMzd/4zZ2fk8aLewdrBD4AbjKjFfT86+s1eR+IXXHrGVgFQgiYUOD61Ly8+ag
 wn32Of245AzRpRwHCCVi0ok0ApkVKfEDlWHeTVSLfplc0SotjpFaFgGrS6JwV8a4rHZ5cUKWlGQ
 QpXAL3GcqTHr7EychY3JVu9oWT4OUGWfeGk/jnWoBY1OuxZP+IcVZSFJripdcTP9kW7CtllgMYK
 PcpAx8hnILJbZ57nXr4yc+nIXa8D8F84K9ex/rnLrysDJkSW7ylE+6MGMG+oohWmqeKFe+Z9+pX
 2J0m9gDP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036


On 9/12/2025 8:10 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 12, 2025 at 07:54:31PM +0800, Xiangxu Yin wrote:
>> On 9/12/2025 7:46 PM, Dmitry Baryshkov wrote:
>>> On Fri, Sep 12, 2025 at 07:39:16PM +0800, Xiangxu Yin wrote:
>>>> Add DisplayPort controller for Qualcomm SM6150 SoC.
>>>> SM6150 shares the same configuration as SM8350, its hardware capabilities
>>>> differ about HBR3. Explicitly listing it ensures clarity and avoids
>>>> potential issues if SM8350 support evolves in the future.
>>> The controller is exactly the same as the one present on SM8150. HBR3 is
>>> a property of the PHY.
>>
>> Ok, will update commit msg.
> Please red my response again. What does it says to you wrt bindings?
>

Yes, SM6150 uses the same DisplayPort controller IP as SM8150. I wasn’t
previously familiar with how fallback compatibility is defined in the
bindings. Since SM6150 will be declared as a fallback to sm8350-dp, is it
fine to drop the driver patch ([2/2])?

Here’s the updated commit message for [1/2], does it match your expectation?
'SM6150 uses the same controller IP as SM8150. Declare SM6150 as a fallback
compatible to sm8350-dp for consistency with existing bindings and to ensure
correct matching and future clarity.'

Thanks again for your guidance.


