Return-Path: <devicetree+bounces-256605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 640B9D39BFD
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:34:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 484643009806
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 01:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 329621E531;
	Mon, 19 Jan 2026 01:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="myYNhLUS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TXJGqus7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6973E1DF273
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768786468; cv=none; b=oOwCb5CusgoShRlRmNE9qzo4uhgGaFARb2NuKiB8o+m4dI9SQ58QP8a9mu5r1VDHp+8KIHDC0mHamiD3bwgFtUG+jPLAJgdz2TNUSEIo41wBomSv8ElsuSPRih8NsjLJNNh20lhEJK15S4L7x6PABUjGux3nvxrsad2xokpwKUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768786468; c=relaxed/simple;
	bh=N5uHfs6ZcdF+4EryWWhcGuHg+C+sHxM9bRx58GDOBw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=inc5eS3RjbmCkayg5LJCUZzMWOcrAIvsVUXnDOaKQ8z1xcyQRwc2ynkLY5TExKvlFdPpNmxxj0nsq2LNKquJ9Sb7LHE04wH9er8LuDyKmunotcHGMwZg5piwG3SEc9E56cet0zEZxl4/0BMtN3BbDodtea5/E5IqRDP8DSJ+Erg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=myYNhLUS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TXJGqus7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60HJtU6K658786
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:34:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hOvdQBWjYZXhCIlZ66x3GrM29+gZ2gMcRylv0MRQCG8=; b=myYNhLUSWKWQV6iq
	XUr3MoXG3IAjYcV666prFefSHXzxLoxVClBTwY9osmYFrba6o2pjD/4qytYKH7qT
	UKeNMl0bjCT+OhVgx20eS0dauXbx1rReNJf6lVLXqkJofovAe1x5jYqZvde+dEtq
	ufeLvGWCyCPsWpuWUikbU/WQ1dc7UYuj7gg0bjt2VXhqUuRxfRZRHurdsjghKnGN
	j3qKa9Hc5mPa7H/x+rYBvifzQjQjWayC2kaRzJ3g37mJ956cXn6diL8Cgh8w0Iub
	JHsRPr4hkLJT6O6z6dvkYNRV2VL+XF+h2EELno3m0QNSM/opLNsALo4G77q02z2G
	J4txag==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2ke36yp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:34:25 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81e6ec1da28so2888676b3a.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 17:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768786464; x=1769391264; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hOvdQBWjYZXhCIlZ66x3GrM29+gZ2gMcRylv0MRQCG8=;
        b=TXJGqus7UOX5lF4D9Bmwuv63TGkMFBvC6CZgjegh7hNz8hoHkAWdKpuGRMePe/bIcZ
         21H6Dq6Rs4UW9d7qbCqwnBOXsJzpb8ErEHHFz4YBaXJU6fSOKFF8AaLPqOoOeUJ2W+sp
         nk5a0iWZIDxGKBDOYmGJF5otKavVBtzqoPF/+2jT6A6PWKhYof9UezSbYRWJ3PeldQrx
         /Kp2b78EmDdnrXYZPqJMs9BvceA+LXaaZRJreAMfVH59Q0AphGC3MX8Cv5M7fA3pGW3Y
         zytGYwjfCVY3DQmnrYW79hcU/7C0dGNHMDBrmUxRldwnGhMoz3nbNrHV5goTrCtg7Rvm
         8/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768786464; x=1769391264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hOvdQBWjYZXhCIlZ66x3GrM29+gZ2gMcRylv0MRQCG8=;
        b=gR4iKXs9skT+WCLa7ySOqhiHlfbSCxQ+726ati/qtaa1hBaZBNRu1Ya8ozxHSfWAax
         Ny7RXpugjE2BrwcJ2A/jvxCWGj/pToWk3n8hgrJubdEZwIu9Rxmi8pS5kuSaWc76PbP4
         AnlCEJ4rdN1+xD/yVo+6MQr44HvfucKAfgiCw94t9cKY/1/fvfSRbuR6ZNb4SZ9ORBCX
         CUxu2Qzx+W3kWFl7jPnGNObj9y5OLWZ8jQ88SAehQ0wtMI01si5gnMHzAfvUJKBaT8va
         t7Q/8qNGrI/9DhIsb6OCIq0fFz0MIbrzOefF/YLo66VsnG59psXxBdWDtCoXe+QU6cum
         TUIQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4pqrMkkM5QlsSwjkB1t+GvamZRRULwp8hgtx7v4msnaYHvdiNtVMY4RiXlAI1g/Ci355vmmdD+JCA@vger.kernel.org
X-Gm-Message-State: AOJu0YwPKPaiThgkcx1ghoEahdYtfGiU01E1d8+OFFilzWr+j0yZPG4n
	TymRQ26LQoU14MvFQPDvyu85ecg84tclQO90omBzGVDZPqslg2tJqWfHc5wFiR3tVdHxxyG+7vb
	PPwdVd7LAxuNUgtLixFFbMxqGHyPnO70MmCF19kxonWII/xMM2hDJlTo3alpfAbnr
X-Gm-Gg: AY/fxX7saHm0HoIb0XtGmlotyZJOEOG3y4ezDYyQNQ5Ninhv36FZ64W+agCJp8hjzEp
	A7FxfapC3Mxf1TwfCWwovEnUdp+nCRhQdtCNa72AE8E37Qm1JLm0XbLsuoTl5T9fx+RbwchFeMf
	60pw6ErnpdLOBiDnlO+E565gaRi1CUVXuiIKyAXvA/MZbIEk9uqcbS7++9CMUh2X4GnnG6QpuYu
	JcK7ob0FxsaOUqZsqYBNKQGykxCiMi/YtB+otNFDaBM10I43N3PPLcXjjQXRu2K0clvOwuIMQyW
	SBKAZqr2UFlhpY7gcFP7++USpsVaDDjfqtVAZKrCHHbv++GWzIY3359w0iRFD+iXJTjxRLsfLl1
	qu91StvnBGCvHDzKE1giLDx2ZVUP+VlRrDPF0e4e/PwvZ2Mj7mJ9mtT+6jYtfs9EkZASPZFxEDk
	kQzCol
X-Received: by 2002:a05:6a00:1407:b0:81e:81fb:b391 with SMTP id d2e1a72fcca58-81fa181fee4mr8040795b3a.45.1768786464096;
        Sun, 18 Jan 2026 17:34:24 -0800 (PST)
X-Received: by 2002:a05:6a00:1407:b0:81e:81fb:b391 with SMTP id d2e1a72fcca58-81fa181fee4mr8040784b3a.45.1768786463569;
        Sun, 18 Jan 2026 17:34:23 -0800 (PST)
Received: from [10.133.33.36] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1277a15sm7499351b3a.42.2026.01.18.17.34.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jan 2026 17:34:23 -0800 (PST)
Message-ID: <4562bdbc-9811-4f73-bc4b-f5a62ba1c965@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 09:34:17 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 ath-current 2/2] dt-bindings: net: wireless:
 ath11k-pci: remove obsolete firmware-name property
To: Krzysztof Kozlowski <krzk@kernel.org>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251214025230.716387-1-miaoqing.pan@oss.qualcomm.com>
 <20251214025230.716387-3-miaoqing.pan@oss.qualcomm.com>
 <fa997674-402a-41cf-9334-f7fc89ae5ebc@kernel.org>
Content-Language: en-US
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
In-Reply-To: <fa997674-402a-41cf-9334-f7fc89ae5ebc@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDAxMSBTYWx0ZWRfXy3F0bdBetVP5
 ammI6GtnRPPOcWG+NWBfOXYRcEB4b8DLRIy6JP6Q+/IOHv+y71IWmxZ1kvnmNFrDF+XtP98VhbX
 dlp8R6AQ6m2yhjh8zxkWRKqhXetJgOUi8gXYaFyQJvypXMpxfnYPdDLErYI4S5yGvgQmhD6Oxjh
 6hMGZF599AFYCyiZmDCzpBc2L+fkq67mVXr8jyhHhYJ+sSyx3beGRyiA4UXctdghx1nbEDeTBDn
 gQ3A/iVRKSb4jTNauZm3viPrgZYzE7kVmN81Ocy++uwnI4abykLMJ4xk/wpSCEqMaWMZUjxbJtb
 1SaCSlCY3UlC+02y0XnP6LE5pk3ePb8EgU2qR38MeQmNSQGfg9Nbm5E7vRNSZQHw4rBdBn8Ghqb
 rZOyjr3yLvEDForZTPpIrA3Hw236FcT5FVxJvXXAPge/lrUGP6k+8ejF901MyOqRtaCz7faJzcK
 y9VEq07cweHaomc86ZA==
X-Proofpoint-GUID: okmakTBH_b2zjBJwlLPEwyy7VoGNArbM
X-Authority-Analysis: v=2.4 cv=EJgLElZC c=1 sm=1 tr=0 ts=696d8a21 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=a9Ey2deuWmHcFssUcOUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: okmakTBH_b2zjBJwlLPEwyy7VoGNArbM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190011



On 1/13/2026 3:28 PM, Krzysztof Kozlowski wrote:
> On 14/12/2025 03:52, Miaoqing Pan wrote:
>> The firmware-name property was introduced to allow end-users and
>> integrators to select usecase specific firmware for the WCN6855.
>> However, specifying firmware for an M.2 WLAN module in the Device
>> Tree is not appropriate. Instead, this functionality will be handled
>> within the ath11k driver.
>>
>> The driver has removed all support for firmware-name, and no upstream
>> Device Tree files reference this property. Therefore, this patch
>> removes the property from the binding and marks it as obsolete.
> 
> No, it does not mark it obsolete. Point me to the place.
> 
>>
>> This is a DT ABI-breaking change, but safe since there are no in-tree
>> users.
> 
> It's not safe. What about my board using this WiFi? Or Mr. foo's board?
> 
> Still NAK, you did not improve it.
> 
> 

I think it’s necessary to clarify the background here. As you can see 
from the git log, all changes related to ath11k firmware-name were 
submitted by me, and the intention was to allow the lemans-evk, 
monaco-evk, and hamoa-iot-evk boards to specify dedicated firmware for 
the WCN6855 Wi-Fi chip. However, the Wi-Fi‑related DTS nodes for these 
boards have never been submitted upstream, because adding a 
firmware-name property for an M.2 device is not appropriate and would be 
difficult for the community to accept. Therefore, the original approach 
was abandoned.

The alternative solution is to propose a static lookup table that maps 
device compatibles to firmware names. As a result, we have not submitted 
any DTS patches adding firmware-name for those boards to date. This is 
why I believe that removing firmware-name from the bindings is safe.

If this explanation is still not sufficient, please let me know what 
additional steps are required for accepting these two patches. Thank you.

>>
>> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> 
> And that's a fake tag.
> 
> Rob never acked such patch! Adding tags for something completely
> different is not acceptable.
> 
> 
> Nacked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
>> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml   | 6 ------
>>   1 file changed, 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>> index e34d42a30192..653b319fee88 100644
>> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>> @@ -35,12 +35,6 @@ properties:
>>         string to uniquely identify variant of the calibration data for designs
>>         with colliding bus and device ids
>>   
>> -  firmware-name:
>> -    maxItems: 1
>> -    description:
>> -      If present, a board or platform specific string used to lookup
>> -      usecase-specific firmware files for the device.
>> -
>>     vddrfacmn-supply:
>>       description: VDD_RFA_CMN supply regulator handle
>>   
> 
> 
> Best regards,
> Krzysztof


