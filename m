Return-Path: <devicetree+bounces-229903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4E5BFD6CB
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:00:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D4FC1894869
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA6D2594B9;
	Wed, 22 Oct 2025 17:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="obU51Yg0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAD225A2C9
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761152413; cv=none; b=aJTI21Agqcm39g4/peZ3MVQTBwI1yjwyroCnS57TJTh82J4oTN9cAsU5kDLyARkPypa0Rb4bxER4ZM+dgJg8erHMBaAT/9PwEGSFRu/aHKh/bglSh6rwUfRJeqT+DHJ/QKRzRDV7eie67YQB5ubkwbX6mXEggF36dRZDfJ4aoHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761152413; c=relaxed/simple;
	bh=d0FaEugcyz+mcWUvpZbnDCiAz5LX94+BqS7F+b67vYM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FcXYbCVHhY0SRCb+a+bt0ZDD6PVjXcVvSGmsNgt0Ot17Li5HTiHPQtSrNknXTImd9raC2UooHXfldxS7YoxeTBV7GN93JO7FUuI53OKrPwgkeeAkaoackcfRKcJ2dyx/QYI9Fjb3aFoiIqHGUrHdZ1dIYz/MME8xHif1xa8eNkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=obU51Yg0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MAVVvW024521
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:00:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZrnnrZ55Fby43d0eVBtuLjCArdYalb05Hj84nL88vGA=; b=obU51Yg00K2aEXnl
	p09wDX5p1u/ITgB0b+RUbklyfcC8WbxvM0vVBIJUTDtERKDgjfcCqdf+PosOumkE
	47KBTMbVibalqqmyJeG9Cxu8XiOCplIiZXg1+xOGGKliRf4oYIjDVarj0gZ5QNf8
	0g1jKJQL6Mmg9LrPEvdQb95YOH5KzI1aVssPWpap+8u0+54k3UIO5rqQQ0f4f0F7
	X81B/gF4Lq+dLILVxE1OnuAtA3cs8uT9z462hARIgCr6VUYselAwH/oN4L61mP7f
	2gaqxVx4gas9r+UZScw1kmx86hno0QIzybdapm9KnJxFPjl7ogEfCPeioBlzS0vn
	TrPDSg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49wsws7t6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:00:10 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e887bef16aso4342911cf.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:00:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761152410; x=1761757210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrnnrZ55Fby43d0eVBtuLjCArdYalb05Hj84nL88vGA=;
        b=XIqusZgMa1IwGCKJrzYIBck5XLOR+W8BvW/61mcPoIPkmufxdjyS1hn4VPNTN21rWA
         7hjH+CqvwCGw8WGEjL8Sftw+20WYhYgYvPGbOt/Lot+7CFaiMXoUdxRa1z7Z1TtuZ9c/
         atIfyABHZyxqgr4ii9/verLfyQ0gFX3JPTG6VSe/k24lAn7xgk8qFIBamgH0hyMfxKFt
         TnYBUhwoNgyBi1OqeNcL+7OdOZ8FVFwrjmzVFRVbvqRyVlnOPibvKRAE6X85YZyX0GbP
         CGaMlH6VAJElQTGany5DSs6AZ/mjrUZMtccFhIC6eNZhm/L+vPxWO8TIzTsGZHNgCMFm
         j4Jg==
X-Forwarded-Encrypted: i=1; AJvYcCXrVx4aQyA0dv4cOQpfGAMhwoXUxCaqYT/4gPX1e2Kf2Z+uBxpGpT91vvi1Qoqeje0Acz6YxvVqdG0Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9zvLi2uc4a91E5an5HzsgElhBtiDKrk3WE+2jf3gZKssQWdBY
	18KBC0rYK2CE8xujm2aVMLIxScH50sgJUgXQIEQNVz+vmHbf4HrnF2f+wui7HMPWT7dXSTM62hk
	BzVlrXSabXmmRa0V11rcqN1LbXXOBBSgtBF5+kkKzifSfO1nZeRE4Is30U2VJ8CiN
X-Gm-Gg: ASbGncsd2pEXPaI/n5w5o463HQ/ssHWCbCTZBS9mlcCCKOM4nap50sH/BzU5j0WFo2S
	h6OOaQuKHY4XkF1i6TwgF5SpkUpp/i0bEPpONaj0kggR7JM5+2A27C4hSC5UBvaqQHAmE3uhiP3
	8rCOoBiXkd9oA9/521u0tqKIgoWwLs8d6z0ETMLjjz/cjibdZOK1OdduoG5ovMrrbaObAUd9154
	WJUqPDbHuyVv51rXvBXpK/AwOV9krsR1V8QTlRWxvcZLSzumjEa1FR6QXBgDOtHyG5CXjxTB7cC
	Q8lZsKjOF4Rg1c0G5BK+KOhAi/2SXvv2Ux6pe1OjSCo7JU40O1+JhelMGdHxelZVUz196JBMTBQ
	w2WvX/7mxcaxiRayqkcndlEnO7jB4rtcWkb3vNCleRLRKY2+AcoN0Y+6P
X-Received: by 2002:ac8:5f92:0:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ea116854c9mr64095431cf.2.1761152409562;
        Wed, 22 Oct 2025 10:00:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQUFwRLBSU0Bj9Ad35drvIBT7nnB7O8zLCAvqfWRt+7y0Y2eQF1SsS1fQrrvvKF+FtFsKFpw==
X-Received: by 2002:ac8:5f92:0:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ea116854c9mr64094571cf.2.1761152408650;
        Wed, 22 Oct 2025 10:00:08 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb52621csm1379069566b.59.2025.10.22.10.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 10:00:08 -0700 (PDT)
Message-ID: <be816a6d-c4e6-4cf1-b5dd-fd59515a42ef@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 19:00:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: monaco-evk: Add firmware-name to
 QUPv3 nodes
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20250925042605.1388951-1-viken.dadhaniya@oss.qualcomm.com>
 <9b887bc5-eaa4-4271-8770-3458efb528bf@oss.qualcomm.com>
 <f016d47f-919c-2944-ab8f-68e450e5836a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f016d47f-919c-2944-ab8f-68e450e5836a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIwMDE0OCBTYWx0ZWRfXzKOJ7VCOHt8+
 l3uXlJYQImGmW5ci/3UAVKHYU/A9op3jEzFULVIsQbSGWAEvIrB2GNDWSIpR5f1Zmh9sXaaKUrp
 g73uOrbGk64jOIdJsBIGyCqjGG90y4PwBJA/E4uvUEs2M63EikPZN/HEpV7PL37I+JHcEI528na
 8uk5EwCBKNWZ7y5d2lm+dBkHgTPBTfpgnYs9RL5cKKeXXtz45zyDz08KhP+LYzBmYDsXZU7KWku
 fYyfEEUj6u4d0vukt9r3lvCtPKgXf5UPRH61Hw44Z+MIkVRpZWiIWWlgMlEhINo/h0UcNRMTRIG
 SbEmvDEXqnCSyPabau+vgHqi9YlnhegLdrG1+pZLSVkpwLz1/Z0f2E4IEkX3VfabdEv+fsJYmAM
 4kFbk8xmylyniy9etiALrgK7vml1PQ==
X-Proofpoint-GUID: 1HqWeIIMDfVTIMi4gk52EdXT8GZZEWK5
X-Proofpoint-ORIG-GUID: 1HqWeIIMDfVTIMi4gk52EdXT8GZZEWK5
X-Authority-Analysis: v=2.4 cv=a+E9NESF c=1 sm=1 tr=0 ts=68f90d9a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=jWXY1GJHB-k3Q3zv3vIA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510200148

On 9/26/25 8:43 AM, Viken Dadhaniya wrote:
> 
> 
> On 9/25/2025 2:22 PM, Konrad Dybcio wrote:
>> On 9/25/25 6:26 AM, Viken Dadhaniya wrote:
>>> Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
>>> of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
>>> ensures secure SE assignment and access control, it limits flexibility for
>>> developers who need to enable various protocols on different SEs.
>>>
>>> Add the firmware-name property to QUPv3 nodes in the device tree to enable
>>> firmware loading from the Linux environment. Handle SE assignments and
>>> access control permissions directly within Linux, removing the dependency
>>> on TrustZone.
>>>
>>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>>> ---
>>
>> Viken, you've posted a lot of patches like these lately for
>> specific boards.
>>
>> Should we instead push this to the SoC DTSI, to limit the boilerplate?
> 
> The firmware load from Linux feature is applicable only to devkit boards
> (RB3 Gen2 and EVK), and therefore, it is being added exclusively to the
> board-specific device tree files.

Do we expect GENI_SE_INVALID_PROTO to ever show up on hardware that
can't make use of fw loading though?

>> If I recall correctly, you said these ELFs are not vendor-signed, so
>> it should be OK to have them be assigned globally
>>
> 
> This feature is intended solely for use with the development kit and is not
> intended for commercialization. Therefore, vendor sign-off is currently not
> applicable.

Well you conveniently never really mentioned this in the driver patchset..

Konrad

