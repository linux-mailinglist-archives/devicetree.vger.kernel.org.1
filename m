Return-Path: <devicetree+bounces-217338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B953B575A9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:10:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5C0D34E12BC
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFA22FABE2;
	Mon, 15 Sep 2025 10:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bRi20XHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978E121E087
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757931007; cv=none; b=PBnNzIHY9sHG3IiZsTiPg630zB7KRqufFaSnOvZRL2JKoQwEd9HDX0RiZM5rQjBipCwS4QJq+ngZw4KD6q2UdHjEBnWp8wDEBtoFNPIekxnmj5DGXhYgFnowNC8m460Cviw/kAkoFogTv3G4HPZFA0O5qfWCO1du/NQZsLL9gBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757931007; c=relaxed/simple;
	bh=oJqDS6EtytX/4EwWe7RLhEzC5GGSyQ3r5FauvRmpSDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ankRHjmUNej5y7NiMftHpbLm9GXEN5fY2Dh/PhFTD4p89+CbUtbmQl3iyvDM7QrFwXtgaaXs8aVSSIHVEabUNkJvUVe7YYhneapG5m/xskEb3VcR4OsK2R7glsYjI+ALD4M2BkS3T8xKPrJxFG6ar5ha1fGBqQb2QTk5zsNr1NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bRi20XHi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8FfgR008239
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:10:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oJqDS6EtytX/4EwWe7RLhEzC5GGSyQ3r5FauvRmpSDM=; b=bRi20XHiacZCWbyD
	nnFhvTKCYKBcrF6pLVVEY/ILkKCb2u5bF6NaJll6ONizwWc5ANhK62NewCl44joo
	eajx0d9CD72YWNjWaTDFmScq8uDJY1Jps2ZCSkg87U0JNvta5DeJ4lPF+jnzPGVz
	KT2BtL2oLJJBlt7WyE7V0veIBLTpwQV2VRY3vsh6ZgU8PlaP5V2RTtmkTUOYpejL
	Jt5oYmVCftVRI1ConQJrqSposZdQ9caCDCpeguEuH5KeJg8B70aKv/y/5YsidhBH
	F1YN2ptpqvXsFzhMscvyrGoluMF7MRokDvrGpbfXl7YzixcZJajCETPRe6zwKB2T
	AgDvMA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpuc1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:10:04 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b522934761fso551609a12.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:10:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757931004; x=1758535804;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oJqDS6EtytX/4EwWe7RLhEzC5GGSyQ3r5FauvRmpSDM=;
        b=mhMJh11bYaGg1ErGkGYkWsKQXaDCUBWdwXsWtNfWcb/hDBtacoKdI4dUrpWkO2w7Nn
         ofkXFTuDHVTrq6JVyu9SYOXio0R60qUXpuUijHUlIIFyOd5TRyBykDq6+OT1vFj3MAc9
         cpaBLPdwpg9c6e7N4//gUeIf14RIEaWthkgJpHoX8Ll42wQ9rD7SC5mdba67iOpev4dI
         qSijeRh+s30po+JSK8hCpbLRNgY6qVxpE+jHtwMCyEAfBaUzcx+MeMI7IzAwt4/sbJcC
         auXqHjJkLjuvRBd87aXF7BAH0i8IYDCwtU7RXAuk9dWuGM3h/RJFeU4Fwk3jOYkRUy+1
         g0NA==
X-Forwarded-Encrypted: i=1; AJvYcCUuFq9BGejrKPdoRWjMc8mX2DCTSvRdauNwMKtrVXkO2rzqKW9SLq7AMM1u9ZuRv7HX3WPvhPs5Jj0O@vger.kernel.org
X-Gm-Message-State: AOJu0YyVTxjY42QeSGMdJylco01EviVp+siSZR2Ws6rNInhicyACYtrv
	v+CrxSJBR+UmNGe1O0U+hGxqvvd0EIp5dS3DzzgLe7LHlpr3oHW10ZjqO6n+iB7ejaj7X9OHj5B
	fgWzchpfSsANQJVLueklNocw8vkeYO+0H2+h/+sfydaSpatS8a6N5m9SDH22gcdjK
X-Gm-Gg: ASbGnctIRTmlh66kb1sac8rQJv3QfxFPRPbWnjav32Xv83cmX9ZIBJkZp5F6s3YIrm6
	P/Kr3kKPABdWoZvP2QBmanlwDhJHiEhlOqSh15UFC1NFiTlhKCNUVm+n4i5WldbNkjzwn5fhU9Q
	/w37I18n6qjtFOR0wFJZX6nrY3kZh2ONqhw0L9KFDCr/wFUczX6aPMD+CVfxJPnc3n69C8dcUfL
	e+ZKGoWbkPblnwC+Pug/6ri8OeruLZ09B7b1agbL4Dg7MRMburNLT4U0rDHPOFPA42zRAjXUJIv
	3yHnSoG5M4UCmIGau420Lutq4uu5BrpRQep6zQ8GwGOjgD5GlpZ/MG9Bvs8Byjp4CfxYWN11yop
	SL0sC1Ngn6XQppBpadc3H94fWSK4ijZ1wNcE=
X-Received: by 2002:a05:6a00:7608:b0:776:165d:e0df with SMTP id d2e1a72fcca58-776165de1e8mr5272833b3a.0.1757931003939;
        Mon, 15 Sep 2025 03:10:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHL+aEaZbmtt8mkehB/0dhBi1/0r9uuMfBdz44WzDP2mKLR/7wRH7bmQR6ne33XUYpBhPwb1w==
X-Received: by 2002:a05:6a00:7608:b0:776:165d:e0df with SMTP id d2e1a72fcca58-776165de1e8mr5272797b3a.0.1757931003421;
        Mon, 15 Sep 2025 03:10:03 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7760793b5fasm13129962b3a.16.2025.09.15.03.09.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 03:10:03 -0700 (PDT)
Message-ID: <4dd37b1f-2175-4759-a250-fee4ed2bd39c@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 18:09:56 +0800
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
 <6bb0cbd0-d3b2-4359-a2d0-6b757f66d0e0@oss.qualcomm.com>
 <v3vuphn3n4w6ynpaqeosechjdcelomn53atwfotka7izqvjuid@nnvdwxqlelrp>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <v3vuphn3n4w6ynpaqeosechjdcelomn53atwfotka7izqvjuid@nnvdwxqlelrp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: uPnhySNzI7J3gjCcLUtOO-hoRnM9T57d
X-Proofpoint-ORIG-GUID: uPnhySNzI7J3gjCcLUtOO-hoRnM9T57d
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c7e5fc cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=3s9BUBv2AkJYRnd1iEsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX/fChyKLpsbEX
 GmIKWDLzbf54rUO4hb3x+A/6rfrvxDsHADALJlo4k78tAQ9vOfPTQh3XD3zfinbMYDwqyu2SIxp
 RRNHVZpsdaWdbumEpcQKcw0md5sHTDNfTuiZ7WLrhpfv0gxCmOcul6+AqppV8/kBzN7plKSeUXW
 P4jTtZMJDTLZ64XjtqzN4BOyrnaD+13gsTyKP9K/Ny0vtsfReu8p+o1yAwQgRcL5CCcUVXQU39I
 ag5r8G0QcoVqyJCyeHTwFI+xLYy3Avsfc2u0l5yjsN/RSLq+6SCXxgo0Rdt7PXsGfyORy9GgrGl
 RKNyyj+ik6H6ygWfPmBub5WtTyXDsUSbiTs1D58k+F4QXXvzS8Xl1DqY91OLVut9al18ILApbat
 14msXPND
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186


On 9/15/2025 6:03 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 15, 2025 at 02:26:12PM +0800, Xiangxu Yin wrote:
>> On 9/12/2025 8:10 PM, Dmitry Baryshkov wrote:
>>> On Fri, Sep 12, 2025 at 07:54:31PM +0800, Xiangxu Yin wrote:
>>>> On 9/12/2025 7:46 PM, Dmitry Baryshkov wrote:
>>>>> On Fri, Sep 12, 2025 at 07:39:16PM +0800, Xiangxu Yin wrote:
>>>>>> Add DisplayPort controller for Qualcomm SM6150 SoC.
>>>>>> SM6150 shares the same configuration as SM8350, its hardware capabilities
>>>>>> differ about HBR3. Explicitly listing it ensures clarity and avoids
>>>>>> potential issues if SM8350 support evolves in the future.
>>>>> The controller is exactly the same as the one present on SM8150. HBR3 is
>>>>> a property of the PHY.
>>>> Ok, will update commit msg.
>>> Please red my response again. What does it says to you wrt bindings?
>>>
>> Yes, SM6150 uses the same DisplayPort controller IP as SM8150. I wasn’t
>> previously familiar with how fallback compatibility is defined in the
>> bindings. Since SM6150 will be declared as a fallback to sm8350-dp, is it
>> fine to drop the driver patch ([2/2])?
> Yes
>
>> Here’s the updated commit message for [1/2], does it match your expectation?
>> 'SM6150 uses the same controller IP as SM8150. Declare SM6150 as a fallback
>> compatible to sm8350-dp for consistency with existing bindings and to ensure
>> correct matching and future clarity.'
> I'd prefer if we have "qcom,sm6150-dp", "qcom-sm8150-dp",
> "qcom-sm8350-dp".


Ok. will update next patch.
'qcom,sm6150-dp' uses the same controller IP as 'qcom,sm8150-dp' ...
fallback compatible to 'qcom-sm8350-dp' ...



