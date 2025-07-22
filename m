Return-Path: <devicetree+bounces-198564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADFAB0D618
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 11:39:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F0A8188E2C0
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3E521922ED;
	Tue, 22 Jul 2025 09:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Opxcb8ln"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748522DA765
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 09:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753177156; cv=none; b=NwdyaD4ZTtEIzhNVhJL97Fd0JmmkgOlpdlW0HJyqDpVklWZMA9+m91/3xpHzAW3GnhkYzPOyJHhiKeLEOcj/obDCUJTr9aVcStut5ZkS0hznUOQ7tDy4YPPGg+aCHAYjBW1iWjeGjVnat6+AsrZr0qSY102kYKEmCIbWTv6uZE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753177156; c=relaxed/simple;
	bh=0X7mSZFr4n9kIrvMvdwIufpEltafXbdIueSaAC9+zUs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LmFKyolBkZEwTJWFDKgX1/ToP0zJa1HCw4u8dtdvGJ1F3r4IpUswkG/bM3MPtzAUx51vT6YfCwT0fe93aLUEgPuij9Z5qijJ6A54R9cpq+BJI+gxPWzzgod7ILzzVDKgwkmW91bpWT72Y4RRV/5jW8PyTuaYVfczASNPoPP+wtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Opxcb8ln; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7YWj5013238
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 09:39:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0X7mSZFr4n9kIrvMvdwIufpEltafXbdIueSaAC9+zUs=; b=Opxcb8lnO+OHyYKw
	mKisAnKlEieMkvCV1KmS3sb+j40YB1jFd0xVbgNTNxJE3ea+w7MGqzjeuiBp8Bm5
	ZMQYzsHiFUFGJeu9YXwDg+6dO9VAhXOwYhyRRQk4gxo13NVmvp2WaXm+Jr4dKUF9
	TCQVzB82HcYF9aQOT9JHfyCs9XX78EDiJRSB1fv6etQD6GXCp53XQsFYpjewHnmD
	wtNhNOCdHJU5PGTC3HtyWYvLTOHNSqZeAb8mtxjH8yzt9zCTcx0Oc+/uSH3CAf7i
	lADDMuUk2aP+vamD51ur0AZrRl/kplc7OzlKh8SyWNfZlNQYmANmRiNsrMtYi/+o
	Ff3IiQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481g3ekrgs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 09:39:14 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-749294392e4so203058b3a.2
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 02:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753177154; x=1753781954;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0X7mSZFr4n9kIrvMvdwIufpEltafXbdIueSaAC9+zUs=;
        b=fRQtQIdquFLheFNjTrxz1ZC3watLr+aQHpAeIrXaFDSXgeFdgc+FMXnfkwfhx7+XNg
         Gh8lpOu/DdSaMHfea7HXSW0EaUR5Q3MKpXcZE6e7I5x/+eAyJBf9VHFNmTRjsGlxj2EM
         mZmXjiK3o1sPid2LQMlxKmOjR3BJq7a2/KQ4rHPWsMegLrLyrtG5MjZ35X4jKT1pt9km
         nmV7uYaYPf9W0JuABJJVkixwzxAKIkimDKBv2iFqKKzOf2wSd/zf57C7s9omqhE+mZKA
         RArKVfrp21Q3jkCZf6vZ6kNl7qp71hR+F9PQ8gnK04m7DNs8VB1rYtpsBS0v3O2g5KNR
         rM1w==
X-Forwarded-Encrypted: i=1; AJvYcCWpuoG7fwZTP44aC5j1BlMPY4ZOFwHdrvOuI7Yk22c5SyDU9LvGlZDUQET5Fg8CdaXqshLR4dj0C1K3@vger.kernel.org
X-Gm-Message-State: AOJu0YxQQvxAvKPvO4z9GaFZqiRcVcD23sArfQ5iN5Gjti6rXf9O7oLj
	I8vFkyTzi64LhGLgYymB67eOzBccKdH4HGKMnhEtJbuci3fZuU6DE000qoXwSPpHnDvX0xBqTm6
	f1KkgOmRbrL0L26lXzDUXOgHnIAnoAieONylA52k7KQtHJungV9Sm5Ca/LAn75xPL
X-Gm-Gg: ASbGncviAlGmGJSLTW/SGIUS3VE32/JZslwMbxh8IL7vFrel+QnWYMikBkwWmkJ4BZH
	p3N1Zq537FoXD5bYJcmZ8Uq05Dj5IGt1lKUoB04dKck8fe2suYSzGn1aMNmDVcnPkrf5HuokYcb
	AFZudQZeQViTaIhgGIWjq/UglhkWO/DBMqg+uga7/l8sKnL1ssyOUGueMp6yKqzAjVBC2CfP1P2
	bL77PehcmA8ysNsRaB46ItfulYOxcABj34fC7whQHhOy0uscgLqLmyyuP2U94w6hR5MmuLasD55
	T301Z7RVmVT8DjtByX6HIS5XtwlrKRUhFR0+pKi+IX4d5PKPQR1En0dr8W038X5lc1v2jYPPSc9
	26yLDMJNTLj9sf0HsnLZbgqquz7Sx
X-Received: by 2002:a05:6a00:4c18:b0:730:8526:5db2 with SMTP id d2e1a72fcca58-756e9fe71a8mr12334488b3a.5.1753177153662;
        Tue, 22 Jul 2025 02:39:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG309WOl0f0xT5Osz89iIc9rjwEya2Gw7AuRefQ4nhG1+/3l19kPlLrow82m3GRjOtFkvaFmw==
X-Received: by 2002:a05:6a00:4c18:b0:730:8526:5db2 with SMTP id d2e1a72fcca58-756e9fe71a8mr12334474b3a.5.1753177153138;
        Tue, 22 Jul 2025 02:39:13 -0700 (PDT)
Received: from [10.133.33.17] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb67901csm7313456b3a.100.2025.07.22.02.39.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 02:39:12 -0700 (PDT)
Message-ID: <66634041-0e31-4a1d-9f1c-920ba583430e@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 17:39:06 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] dt-bindings: display/msm: Document DP on QCS615
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-1-42b4037171f8@oss.qualcomm.com>
 <e15df8ba-f058-4eb2-919c-bc327290e66a@kernel.org>
 <5ec480ac-ee60-473d-83e6-c2f25d3d30d8@oss.qualcomm.com>
 <b810f0d9-b1e8-4182-9551-601b248d572d@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <b810f0d9-b1e8-4182-9551-601b248d572d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: CEKG50lN9t2US7e6d0NydMa5VnjIoot3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA3OSBTYWx0ZWRfXyMGiwc1oVqqt
 JX+J0cUHLevVJlxC816zX7cWMxUuKM1yOyBl7EKYdzPBM6h2Md+BGvXq9SA5KSCBi6K/XHSl90c
 /gpZu3SHJzeL0y5AJCNYupTRXhG8f0wGi/VfKOKes5xtLn4jKGOZ/1+GkUw1pFmWXL4XNZLT9cX
 bwBkEu0k3piaYTkk2ZwNaLCNZhNf0AoPt+CbUCQwuaGxkEsKp3D+8fiw+iJ0o5I+Nlh8jhvjMOB
 hlpwVDZhYsSc4rzaBYj3DPHWrG8PRh7kvUehQqkle37MZD9ncBRphz46w50tFpg9FaNnB4bwpBu
 tVIshEMWLG2L1SiJ0sYqE2VOCzcHfeWziVL0FzFdXZa2FUuMQhHafh12RsTbcMm1Jft5PN8mFCS
 NyI0Mige/ua8zi/73Fz7jY44nlkiMl2py0e6O3shhSJ+zK9KholkELtbIsq5SQBxcE1VIihm
X-Authority-Analysis: v=2.4 cv=Q+fS452a c=1 sm=1 tr=0 ts=687f5c42 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=YuxCsFRrSdhSRJBAAjcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: CEKG50lN9t2US7e6d0NydMa5VnjIoot3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=899 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220079


On 7/22/2025 5:23 PM, Krzysztof Kozlowski wrote:
> On 22/07/2025 11:16, Dmitry Baryshkov wrote:
>> On 22/07/2025 12:13, Krzysztof Kozlowski wrote:
>>> On 22/07/2025 09:22, Xiangxu Yin wrote:
>>>> The QCS615 platform is based on the SM6150 SoC. Since the DP hardware is
>>>> shared with SM6150, the compatible string qcom,sm6150-dp is used to
>>>> represent the DP controller on QCS615.
>>>
>>> No, you cannot use other SoC compatible for different one. Look at
>>> qcs615.dtsi and board DTS - there is nothing saying that this is the
>>> same die.
>> Please take another look, we even have renamed qcs615.dtsi to sm6150.dtsi
> I checked on recent next, although not latest next-20250716. Commit msg
> should explain that. Any qcs615 feel then inappropriate here.
>
> Subject says clearly "on QCS615". Patch does something completely else!
>
> For gods sake how anyone can understand this?
Sorry，I’ve verified full functionality with the DTSI on the 7/15 linux-next version, and also checked patch conflicts and checkpatch issues against the 7/22 version.

Based on your comments, I noticed that the DTSI rename from qcs615.dtsi to sm6150.dtsi was already merged on 7/16:
https://lore.kernel.org/all/20250604-qcs615-sm6150-v1-0-2f01fd46c365@oss.qualcomm.com/

I’ll update all related descriptions for qcs615 and sm6150 in the next patch version, and reverify full functionality with the latest linux-next image.

Thanks again for pointing this out.
> Best regards,
> Krzysztof

