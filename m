Return-Path: <devicetree+bounces-252598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E8152D014AF
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 884193046F95
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D4E33F388;
	Thu,  8 Jan 2026 06:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ihmqdx+F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UIj6n0ke"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3560B3A0B34
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 06:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767854722; cv=none; b=QqDmIkcFRQl4usesNUhK8zohCqIhvwwaGqWyZi1G1mu6Bk3ZYv1H7zL/9Fazg23Tt5e4N6P7SaogipIpxqAohrWz3422HGrWv/3bR0/1cGp4xujwiTsVqLeAiDUt0NF3zmHEX3yxmrT3X6GUa3pO8K4mXQ3od1vTUOgkryjpVJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767854722; c=relaxed/simple;
	bh=8mhtDiuZc8kM2RHFC1fq3u1yNjEwHEEcblcHbGTdrig=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tEEws1Wzse4jOPDXc3C2KbMSU3kX4LN+7eyOZkffcR4f8s86Ch1VdOVDam4th7Zl6l93Qys+6D6KJnbOUqLrXQUIVNk/KeazxDxQbhgaVKUFU2J4Hgl9g9Y7r6wZJoNQdhLY+iPJ9v/ah8RTiKtHbdRluO8khra+zW9skE+q/TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ihmqdx+F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UIj6n0ke; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6081x8qw126181
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 06:45:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qI4X4Fz0IWfzeVDHsXkYugKzEMIhmXgQFmOXIrCoYh8=; b=ihmqdx+FMqmpzMy3
	yjx2yFueDJN4mKfvjOHZjiLlOI8DYbJNy8CQbf3Rq1mB75LRz+9WqgARgKj4GuTR
	5UoyGKdAeCT7EfKCAtg2/g4+8LLGzMXg5EL9KyD0JW9Dx4vMAo4cghFdNlhIISe6
	pSVsLm8KxYvyKia43NXZeoRsD8PIxNPZAHczpXv1NfNkiB4FfqMzU8HRRxqI4QhD
	mRQP1405a1MsxnFW+Zq9mQhPC6ikOK2wqhkIl848zScoSZ4LsG0ojyNlr5fNgzxL
	r5HSI1EEsqYiu5UHNyVho/PUgDrbQwB8wl4WizCRcyEqmVRCS3F2Mk1pMq6X94O8
	/qTZ7Q==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj3d68rwj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:45:16 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b04f8c5e84so2347874eec.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 22:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767854716; x=1768459516; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qI4X4Fz0IWfzeVDHsXkYugKzEMIhmXgQFmOXIrCoYh8=;
        b=UIj6n0kepiqr1HyZ1hsa968jPX4NuQZG+p25gszwKmQDrhTWu4aukDMmj2/thy6gcC
         hgKqEbBAEmXo5TTnmpoe+xCVBkN15hHwcugaTNjNi/A7nvCw5NH/S4gOUgUuUs+sQL4+
         oKWgV6ofDTFQiXggOE3RGAOLBW9wPtbnbkBwvudajTMyVDS7QXWaZtfrIjlfUER7T3NW
         PhcAu26XN7CDklJdMTTZ50TYTqC2NNXDN4LQwT8bWSp+keHazZQgd034fG8E6+aF/lY/
         MZF8TmaLpqnslJGCB8/tOuWLjIe+lLTkst6Ovn7HMOSgnJ1QM8CcGviW9iSLXrYz+s9P
         +tAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767854716; x=1768459516;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qI4X4Fz0IWfzeVDHsXkYugKzEMIhmXgQFmOXIrCoYh8=;
        b=b/K7rPq43glT7frC9NOonooqSO8SNNUXePxzHWX2aw52Z+TDmPaFsTAlNIZNIAY7RM
         +bgI1oGSSECrFLMwcTH1Hnc5l9d57EO51UZJeIzGduPv90EfcR6pqgEQp3WL6iEdzJiQ
         VzAIxtvPS4yLwC/G81mYkg+Mnu152AHErryXHlgWsyRJNUU36aFrbXQkBJPVGoLDrag3
         IxfuzB/puiyLzSr+3NiEYjB45e9XV87MZ/lT98p/cRcejeEGz1PhLOnZoOlVji79xanB
         1Jt+apTFlpojzVTJU1WPdvnDh4E56TXciZ29VAKJggWsH6QE70WWdhM6gtfzSTrH7uLx
         eLzg==
X-Forwarded-Encrypted: i=1; AJvYcCXtupJZTUbzIPq8kGiaeGS6+DpRYSzwVJ9mrj187xovjm8exG1PGzVjYoKZb9FOkgHfeGwVGG4mDrdk@vger.kernel.org
X-Gm-Message-State: AOJu0YyPVuEpM5Wr9Wh/W3owUcWaGkEA/ZwpqUrCYvUraHt6O46S3YD9
	HOgOuOf/qR8O+FJ8A11tYvQChXIJAMbvZpThEBYjl8NP0IArz5PWswVCUP27KYjNoG5mHjJETsK
	TP5XEo6Vs8qlFduZE/iA8wnIJLsGowqMmUK6g+45JlxQuksIw2t84EnGYK2uib1qJ
X-Gm-Gg: AY/fxX4Cw4ZNHCd6b0lehzvL9XvJmq831sstq7rHVKQP8uchyNPQ7yGiTYzXe9szvkA
	SXlYBjxDb014FtD9Cv9sdphB549SzfBa78Xuie0mB1f2XeT6BAjHxvXVB5E1cw4m7whfKh3Bu6r
	cBK0TWvWgOIK4hAUVMU2etP8jO8AKuTT15QsDaGD9xaZoMXBhQk4pCK72KMX0KxkckVeIJtFZH9
	XycqKiK/X1ZDFv80LRDsmlAFlxf7dnJCXgPH17v+8W5PpeQCqCQ2JiEKmJ9R2ee9cexJYmax4Gh
	SFLKcL9TIqvTlg7rwZyICcRaoVjyVNebNWlGutWtiGFIxBblgj0FV7w+hzz8JKkdu5dfHY6jurS
	om/qlaHCel14QertWLjj0OCJ1KGUWakiegrMnl9ll4sp80g==
X-Received: by 2002:a05:7300:7484:b0:2a4:3593:ddd9 with SMTP id 5a478bee46e88-2b17d2399a9mr4736121eec.6.1767854715475;
        Wed, 07 Jan 2026 22:45:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb+uJqipRaJjezuNpgsY1sxftQfnkFmrWhq/6n3UtyU75dFyipzFeiJd9694PVeVeOrzH2wA==
X-Received: by 2002:a05:7300:7484:b0:2a4:3593:ddd9 with SMTP id 5a478bee46e88-2b17d2399a9mr4736073eec.6.1767854714858;
        Wed, 07 Jan 2026 22:45:14 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707b0b2bsm8172700eec.23.2026.01.07.22.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 22:45:14 -0800 (PST)
Message-ID: <93c61eea-9d9b-4e29-9710-89ed3f945071@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 12:15:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
 <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
 <d3757e4f-ac9f-40e8-94f1-a8ed68a6d2c1@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <d3757e4f-ac9f-40e8-94f1-a8ed68a6d2c1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mxGj3fjeZJ3wb7wrhmNVf85F00kTl35G
X-Authority-Analysis: v=2.4 cv=APfYzRIR c=1 sm=1 tr=0 ts=695f527c cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ocyYg2yDLqSr0WdFaBIA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA0MiBTYWx0ZWRfX0O4LZg371l+E
 zG93PAQNQ+UOhDgFXo8KkzHylKlyRBsHxVA4MvKSie7DWeSwy00083Ns6od74d85rw3PGFXS8fy
 48wsNDMES+fVdQi5Ipjkx08IvNshaotIW9gopLQYKdo/oObgmVwOialAeTTkccRlu4AIfgle5tG
 U4sFohmXzmvBTRWaqWp88SPmYK45MG1mrFdIx+wRMMYOC9dBqZg01yYVI64wC9DZQfS5/jbD4j+
 7LPLWN5bdzEnD3UgzsaFnY+KWOw3w9oS3HluDzCn9ZFJBoPT4xz0lkCxZu7it+LaNOSfWfuTSkV
 M2aBqpdaL8Tqeso3udh0fF2o4kmbhJ2yvQO45WUeN5uq9bcHj/CXV+b0LaCd18+EAub8/YjEV/4
 prTuWFW31Vi6B7faBEMRLruRG03m26dCQtZvJb3RtgsoEjTRG4gAgvhpGFJRefVXnlVr8CKJLKz
 gpr2KczfFGWsrc4K6rQ==
X-Proofpoint-ORIG-GUID: mxGj3fjeZJ3wb7wrhmNVf85F00kTl35G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080042



On 1/8/2026 11:17 AM, Jingyi Wang wrote:
> 
> 
> On 1/8/2026 1:24 PM, Krishna Kurapati wrote:
>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>
>> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
>> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
>> Kaanapali with that on the SM8750.
>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> index 409803874c97..cd6b84213a7c 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> @@ -19,6 +19,7 @@ properties:
>>         - items:
>>             - enum:
>>                 - qcom,glymur-m31-eusb2-phy
>> +              - qcom,kaanapali-m31-eusb2-phy
>>             - const: qcom,sm8750-m31-eusb2-phy
>>         - const: qcom,sm8750-m31-eusb2-phy
>>   
> 
> I think the reviewed-by tag should be reserved as this is patch rebase.
> 

Hi Jingyi,

  I mentioned in cover letter why I didn't add received tag:

"Removed RB tag of Krzysztof on M31 Phy bindings since the changes now 
expand compatibles list that use sm8750 as fallback instead of 
implementing the fallback."

  I can send v4 if the RB tag can be retained. Apologies if I made a 
mistake removing the RB tag.

Regards,
Krishna,

