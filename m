Return-Path: <devicetree+bounces-171643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CFEA9F84D
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 20:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57F615A4E81
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 18:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7171B3934;
	Mon, 28 Apr 2025 18:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U+dlezha"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF61635280
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 18:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745864190; cv=none; b=sPwU9L+tfBYQqjugyfopMJIcWWJ3Tx/VM/ngcLACfuEEBJZprKnHZopw4O4AEZfwGmqu14ma2Zavn1YIwfq8f2CiYFTRwzfMqf8/OyF60/W1ol+NgkIAXxt7ECuv+QpUA57fxLhvcShuVzx61a9UNcD8UZ78dFvj7lhUk+fui+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745864190; c=relaxed/simple;
	bh=J2NjDwqxbCREVF7cYbxWhVeVD5IjGCL+8llBMNF4IB0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NsvALyJeJlQhUnVer5IWxFtcRQaAzADMKlBSfio3NEj4bs6zQY89D6lbVnQ9bSMi9PgpAxM/cmLEayj8d6LkLtx5DwIhp61gYX2qHf0VZbwv902TNtvfD7inkUVjCq2/AtzJ2yJYlx8zlfcyZS5pK7RLzoa3SIDANUBPRJO7Tuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U+dlezha; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SE9q5d013726
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 18:16:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pyzYPzNdKJ5hQ6D4PSTvT03qdPB40WqZn1pcHvBuv1I=; b=U+dlezhaBSxpQQJ1
	hbS01xOAyQrW/KVOqtyup9H//GPuLtniOmmFvSGngRTTUkDSFpxwTO8AuErYjhKf
	PatmdMrXCAfq796TA7HUFXXGDw1FRpFyJnIkyf6WZ50dSNWk6c5mOxB1tCKbSfw0
	KHVquU6LRrvwJ9BRZUeUQh/ZM/ps0Pu1VpORuRMYtAhi0bq3vOJ8tC6yOHINJ0RW
	DOUFNBypgdE0aMT1+ZvpE6czD2SvcPQxRgWIe0l/fL5/1EzHVWXT7ZLNQjkeWCwA
	sCqeIc2J45eoPa/6wx9incf5JhFD4HuqI710wfbDZkqaSMzy8hZ+tlmF/5xgIQR3
	HrEJRA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468r8hrytn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 18:16:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4792d998b21so7363571cf.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 11:16:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745864186; x=1746468986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pyzYPzNdKJ5hQ6D4PSTvT03qdPB40WqZn1pcHvBuv1I=;
        b=cjHRmGKuSEZFjvr2ScCKixentRNLQd/XvnUfNJF2BDEKLbg8QH9spnuPByPZGQe1CM
         2bjGRWFk8DO6T2V1d9fUWWaEDp3GRuYxK3pYXnp9giYZtmLwBhz8RN998qfBwXx1S9Fp
         FHKhxDGtUoos186GJqJ4v8qaankPiDZ4sR3t9QZpc+e+bSZZNYNDIANH7qyT/HgqNkol
         qYG0q8nW4xB8WiOXmsoeq2DyuP/4fnZeOlxXDK8inhsrYpof4xPyZnkPgaI4OhRvXq8u
         9GM9honj8/7BG85rUiSCb9LaYpY0ASGaoBYfeNZ/tpMhOw4oNaWP2mQ0ReGqX5/zV/xr
         wD8A==
X-Forwarded-Encrypted: i=1; AJvYcCWLg7paU5qyE6dX9WIEtXe+h7mgXHFiWwIGQnHZeXHmSA8quFoZUByY+N3ckuIQA6odyeKXd4nL/3p+@vger.kernel.org
X-Gm-Message-State: AOJu0YzDG/hjVrT9+rvl2PCWbb0knt8rDxAMJrnTnUlxK1ayqQZxC0QF
	ql7JrgElrU2a35f0stX7tCkW8evFvwQAW/JKxHQccDv+hAUtarVjv8tLhVoMCqP4lCYbo044ljv
	LeOKrEksOTWGH2d9+EPe4oLEPUwWnfwna9fnfDTEUt4NCBxhHnIH3vtO8ffqu
X-Gm-Gg: ASbGnctcpXsd85Kmro9btVIiCoSZ4vWjhc9RANbfuQc4x9XHeDjmbOQvwHDSI9zUsQ0
	y4W+9JMf1RuH4/4FoXgNNDtIKMtdY5y+v45su1mVSWtKKeG4CmVKgzEz2QdMItU/1ubHp//pkHh
	PaYiqbEXL3O6DQakZ/oO0Nam7MGSIRzCdpPX94NBEp089ku7Zz9/8vzNNWowxkPB5apumwVQ5Oi
	JTZx1LvvHTxlrtCMe/V4SYbBHO9GGI/274ODsG3TYDw/COd4Rx5nxpheA5Br2PadskxgKmApKf5
	QlOx89eyq+2LLnx6b8dp8H8OSbbmnassHDUHHHl8dzScAlFFdNW0746nn/TnDKTL5g==
X-Received: by 2002:ac8:5709:0:b0:476:add4:d2b5 with SMTP id d75a77b69052e-48864dc24aemr677511cf.2.1745864186511;
        Mon, 28 Apr 2025 11:16:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiBHTGPzXdz71tkCZQWognqMTsRKpmoKTruiCpJpeGT+JHe1UiZNWbwkpyFf9Bf70YBU8p6w==
X-Received: by 2002:ac8:5709:0:b0:476:add4:d2b5 with SMTP id d75a77b69052e-48864dc24aemr677331cf.2.1745864186191;
        Mon, 28 Apr 2025 11:16:26 -0700 (PDT)
Received: from [192.168.65.47] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecfb339sm658100166b.115.2025.04.28.11.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 11:16:25 -0700 (PDT)
Message-ID: <4b467493-5ea1-48d9-b4c0-56f05b7edb46@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 20:16:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: msm8998-lenovo-miix-630: add Venus
 node
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250425-miix-630-venus-v2-1-cdfca385a0c8@oss.qualcomm.com>
 <CAOCk7NrcpwAnUKcVsc5D03Aazt=qWLZB034xa2FH2PF9LuL6ZA@mail.gmail.com>
 <vxwbzzds4lkixt2zsvjwnmfk22u3mmvp3cqk36aak2thomyagu@znr6b7gcue6w>
 <CAOCk7NqLQdpbvdknEHEB0NNU7OPhmmHkH3Q4PCYiOzf2fBQBkw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAOCk7NqLQdpbvdknEHEB0NNU7OPhmmHkH3Q4PCYiOzf2fBQBkw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: pArPdWV48THp8uR4nI8eXmn--ukzwC3W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDE0NyBTYWx0ZWRfXzD3tfjMAP6Nm GBG0u5uLH1AD62vwhopnNHl+hKPQeaIopvoRtF5G1aK7Tg43uAGDNBUn5o0saOrSCBtvj9N8CNf Qmw8EW/IKGlHYLENFEer/2oNi0tlNnhVUcgfND7qc6WN5NJSQu+jVk99Zex+fDIAP+s6MEyii0S
 4nOv/kkqxlvVRWVetjIj3YniMj3l/a3BG5VumqlWGy4Qn/OdAPsbXiFCU60dS+aSYunCcQBtGyq Gwvpa7KYyictUYAw5AGuafKU5y8Vew1COj9w0YW9ygE6vVffVvxp9yxzO9h/BQkKsxbUu8HlTYP 6QHdvRJn3WU8ABO0FOLXjkFy2QuHQzPNBhyEve22D71+qnfXnVrF3/8RNDI7bsJU1CoAyA56qdI
 ZXQCbka6bWlEFLRXiInsZG+Ble6EmhRqhjfH15P6/coFOBUP817rC915cLRTx5JtqIN+I1Nu
X-Authority-Analysis: v=2.4 cv=cfzSrmDM c=1 sm=1 tr=0 ts=680fc5fb cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=VeHn5rkiVmJbRrHcbRoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: pArPdWV48THp8uR4nI8eXmn--ukzwC3W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_07,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999 adultscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280147

On 4/28/25 7:48 PM, Jeffrey Hugo wrote:
> On Mon, Apr 28, 2025 at 10:21 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>
>> On Mon, Apr 28, 2025 at 09:40:52AM -0600, Jeffrey Hugo wrote:
>>> On Fri, Apr 25, 2025 at 12:28 PM Dmitry Baryshkov
>>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>>
>>>> Enable Venus on Lenovo Miix 630 and specify corresponding firmware file.
>>>
>>> I'm curious, how did this get validated?  I didn't think there was
>>> enough infrastructure enabled on this platform to check that the
>>> lights were even on on in Venus.
>>
>> I must admit, I basically checked that the firmware starts up. Marc
>> Gonzalez worked on enablement of Venus on MSM8998 (on the freebox), so I
>> didn't perform a thorough check.
> 
> If you got the FW starting up, that is farther than I expected.  I
> must be wrong about the capabilities then.
> The DT node looks right to me.

If PIL accepts it, it's basically good to go

Konrad

