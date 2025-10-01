Return-Path: <devicetree+bounces-222937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 109EABAF9C1
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:26:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5E3C165750
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAAF728000B;
	Wed,  1 Oct 2025 08:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cPeC22l3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABD0275AF5
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307205; cv=none; b=Dj0eZtkkiEvWa4r1NIFwyqMo16rtHjfsx+fQoNjKfdznDvvsJZhc2p7Eh3ytLdUjwAEEoYmA+3jwYTmTnAZKe/evOA+HWNpQd7lgbM6ZAbjPlnVUQjbpzIDha5+R7/hLj0c/fdDmJjl4vtaDDvwEbxpEtv5tc4wJ+nk8eHhPbuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307205; c=relaxed/simple;
	bh=YO6u26nFzlPOkPOOXGthr8BF1ZfQylY9VojhkWegnB8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P1WNJpRZClstmiiHi+YjOZEUH/OS+zOLWfre+XIKWb/9KAJ6QEQrw6PC6eEbkCN7v9w+qbIFhBMGLhLL2PdOtOpGGVuYzNWtPvqdtUgs5LN5Yqc0vEnbnP/GnRK0kAlpYo+wL4Lar+haQMHz9h6x/ZWozOVaLEIHzwlVsHCIgHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cPeC22l3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UM3Jti031467
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:26:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mlCMGBeTBT6Wlu0Hvmm3aAKB1BK/Vj2tfJ0fRSaoa2U=; b=cPeC22l37gZgPeGa
	oPnbj1Yq4shDQsFs+3DjmuycIEK94gGCXqcYbBluNgA/dyKETdYShxoWUoxbpNSF
	3zO9XsXzrWaaqF0l/kn/7ppPuwOmT4r2OCHXPr/NyqIHhsReMbrAiaiY3ydKhv22
	/V4Wd99EEOBBf+bkXVyvVeIwBTa1PwXoSXFejBsLfjVvWwGDfnsK0rVAPxmB80lK
	SCaMhFzhuDKtL6PLr2D2DusSi91vTIVwQU581Tf2R39h5QdDqBg8EUjzA/szmxFa
	dG1yl7jxnGQNyfLFCAsldjaJ6FtVoEXV7px3yfdJYCaaDxyL33W4w0v/q7pWmVvo
	h41Vjg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdkkx2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:26:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dee3f74920so14237981cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:26:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759307202; x=1759912002;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mlCMGBeTBT6Wlu0Hvmm3aAKB1BK/Vj2tfJ0fRSaoa2U=;
        b=JIPQ3Z6dUnyR+utOlI57ejtJFDTvZeR1JWI0v9ScOR3RUm6qMtJ4zPNJ7WgyOnRRrY
         1JWSomLN2N2o9do5YKDvNe3v6A7TNRlsJlnWklKcmSmJFG+Qej2Xawc4tg7cT8JojVzC
         Xh3n6DQAmziSIc58Gcn+lVXtJ/PoxrpYz5+0w3ZEoi6VGFxZ2mIgoMdD+kfi889Ls1Jh
         PnctHhUdrPcy8dHCZ+HWALUqD+iWf3obb5dO8bsz2ozyFwPIDAKjnA6Bk7CiVR6ESIjl
         iWiHM3VzptjyImQKFIgVVcWmriNt9JF747gLao2Cq/obQxXqwzCmVQ9NzqxR1qjiVxYv
         rIog==
X-Forwarded-Encrypted: i=1; AJvYcCXNrmH126bT4idsm8L1+zXlAcmEoc2h3sn6dL69l8Oku7OuRQR8BjpA9f052/VgjFc2NA2HpTDPM/B7@vger.kernel.org
X-Gm-Message-State: AOJu0YwjDUohEIUDpY8j0OQNW18REXKS53RAoeSDGX/vO2TvS5TIHsRM
	acBx3tWCzjs11TT+XtJn1SJ3Cgubs2DIxXSTXUvnWm/MA4ibcDXt/oTlK6gKiSq/hjdr/F7wSuY
	mv38ZoCbStIjujh6TsFwEbfj5orZ3FBMARjMqaq1YwPRwgZ6PhYNgiaVTUr6d9+mf
X-Gm-Gg: ASbGnctVBNTqHrd4J0ode8q6SL/zekxC3928TasdOttO08PufykimiXgr8sFH5UlFBf
	X5m3Gyn+fvjl5kJzBSAN5VYL5Ju7b1RaPIqLZEt32r3btqLh/AIwHfyUKNir7z8kzztepabDjo/
	iZzN16McZKfs/GouRSGUVuHQxDUkaHOcND3LcKBxAff5rvwpeDGlaDlvbTVITC+xq1uBrGvL0ZG
	27GEaVuRylGJFuQ4hpQdmcDnUBRgYIN3cuToqTty4LzLt52z1aaqrgGqgZpA9ggKo1Vm/ZOLG/U
	oORuTzzJdnfpdA6hLBOWuTBLJ7NeDNIvho7g091gMXlvIeG3difVgKYuiQRN5jcukpUEZp/3pFs
	0/vAqi1589HYuGbAXSb4JAnmSURE=
X-Received: by 2002:ac8:5842:0:b0:4b7:aa56:c0f8 with SMTP id d75a77b69052e-4e41c5460bemr23012151cf.4.1759307202269;
        Wed, 01 Oct 2025 01:26:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqJd90oNLdMpoZhb4jGAg5bwDcTi/Jv7Qcxlk9kT5t8J+o925AOCw315gte5BBxsiD/DLshA==
X-Received: by 2002:ac8:5842:0:b0:4b7:aa56:c0f8 with SMTP id d75a77b69052e-4e41c5460bemr23011991cf.4.1759307201702;
        Wed, 01 Oct 2025 01:26:41 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3df8c7aef1sm652456866b.11.2025.10.01.01.26.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:26:41 -0700 (PDT)
Message-ID: <687b4b99-287f-46f3-af07-76b49cf573c9@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:26:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: qcm6490-shift-otter: Remove thermal
 zone polling delays
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
 <20250930-otter-further-bringup-v1-2-7fe66f653900@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-otter-further-bringup-v1-2-7fe66f653900@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3pSR_0-acvIUDVTLSasuzN1GFc0BsRhB
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dce5c3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=7Ovdx5uLAAAA:8 a=Q9X1YL7jsAXwpJAzmCoA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TQZWkJv5rNK5-PaLMsrg:22
X-Proofpoint-ORIG-GUID: 3pSR_0-acvIUDVTLSasuzN1GFc0BsRhB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX9ftzfs4G3BmR
 FbgDAuXx0yh6VJ3vHGNE7Ze/5xD0N7EySrnZ4L2qg3VgOo0NRyWPThLKXJEWA9BpQwLHlDLRP+2
 26Ok/vwoW8JF+MXgaE2rsCvdZDlzLV/5hw27neTTlKia2DcTUVW7YmaZP5eCTh67ZLr5mWqjEnr
 sc4ffneziIA/fHE/FIUs6EpMy9+9Kg8IjLKOPt1ifwY4RJHRTMd4tRP3dgxygFunBaNLzAadzPV
 MXoq+a6X/vxisOzj0IPJ8smmq+rB5mG52jk+u3g3Et5KcpSrv4dJZ2w22fdPlQWFOS5JTu523V6
 fOyTz7Umx3qoKhZyNVu/cJRazSV6kZcY3iBVrdfgTnayZskY+GbJZ8zlA5siXLFSsKpmNfDpX1E
 zPO72VUj6X8qTM2SKOblqMvxNVWT5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On 9/30/25 4:32 PM, Luca Weiss wrote:
> From: Alexander Martinz <amartinz@shiftphones.com>
> 
> As with all other devices in commit 7747a49db7e5 ("arm64: dts: qcom:
> sc7280-*: Remove thermal zone polling delays"), apply the same change to
> this device.

Your passive delays are <0> too (which has been the default value if
absent for a while) - IIRC you don't need either if you just want
userland temperature reporting, but you may need/want it if you hook
up any cooling devices

Konrad

