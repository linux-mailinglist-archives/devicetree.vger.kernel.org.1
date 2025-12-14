Return-Path: <devicetree+bounces-246286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E19ECBB5F0
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 03:08:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CEF93009553
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 02:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AC0227F727;
	Sun, 14 Dec 2025 02:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hjhsmviw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GAm1iCWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03052AD2C
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 02:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765678126; cv=none; b=gC+R6GWV/hnoDrNs67qHAz1tIZvtlOVjDRz6UvbUekVV1sYrOxRQw9LjEyWkMlVhbGsAVpl0gDic52CNHl8vsrIpTEr0yqJW4oHKmkLtbkEV/7wfEhywePtK797aes3MjegeP2PnrWElqQUI3+Kn9J4jx8rNbO7Do6+T5x8YcOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765678126; c=relaxed/simple;
	bh=OAdqQz7ypcVTD0k6RkiJI+vt7QzaLwSBJbY8qto+MS4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y2dnIGZTGMk0w52Ol+hneJVyDJy5L83lCKc4prLwUXmCdrfDRdM4dsXHS7dJWI/PAtsOwPki0sASpFymT8F2ri/8MxiqGo7s+/3H2OsL/2yqUn/huDZXBvGIFK0Jna/Z1nviIec0SPq8nI2xK9YjjFFKbQZbjCquGD5ZbsmEV6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hjhsmviw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GAm1iCWI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BE1JRbX264539
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 02:08:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eV2vPS9sJMuGPlbnmOOt4y+RfDf9VGDtbZyjFlLVeeY=; b=hjhsmviw+OH0xEWv
	1DpBs6tGffgn3qzOPshYifYliafhPcx8zqqOYgOOUyWPzF+8u/L8JVFIC3qHQ9J5
	Kjs72sheEQaaKwJW1QxNAfvOzDyw9jciQcDYZKHAohW+H6dx2ByFDe9SEYi9lZcB
	s5HscBxhZJ/NIWdYAd+TAJ7CzCqC2vq/Do1Yu4eTu6lBxBIaKYHDppqmDp46QeSU
	fcBIAXbELp/ft9FSAvSIVlef1d292K58AKVla+KpADovxCVUmL1SgWoWdwkz6ZGQ
	/Rd6wIU2hqrUzYg0ofI42oVb3lNuFV6KfBub4h4B7I6txdQLwKSUNUu+qiIRBsNn
	PNmVRg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b119t1b9m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 02:08:43 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c314a062aso2186594a91.2
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 18:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765678123; x=1766282923; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eV2vPS9sJMuGPlbnmOOt4y+RfDf9VGDtbZyjFlLVeeY=;
        b=GAm1iCWIXpsZjywarQE+eFgnntKT5jIjADk+TJTTGgl6GrcmeBCU3R/XGqgyW+vbuI
         ZHJbmcurkkKZloD01u8pkTZ6PM3P54RoK66nK1Qby7voyXsYb9ttND+jFMtzAlMfFZsj
         +EHfNGUjL6depBLvvYx9CK1HZnslWNzXCnC3FLEnrwjbLc9C+iwM7I7YFK/l/p/LJYsu
         4dW4Oi6qAim8nPYXxwDY1mSj/ND6b/rsKauAOSMQhQefrCCtDRJpOyOm37QIOKWfB7F7
         q63JqC+wQLqtuaHsDaz7mUhzhwgBmWjOa+ZJhvjr9XQqQdyYSet99T85zil1bUqIIRX7
         mEBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765678123; x=1766282923;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eV2vPS9sJMuGPlbnmOOt4y+RfDf9VGDtbZyjFlLVeeY=;
        b=S5d/UEuPK1ahle7U0xopc/m3q0No+DvCP6m/gL8K2jJYrMVqTD1yHAtFLTGxsqfMrm
         zqe9uyhDel8LJrHejWlAP1uO5kC2QCsVdMamEICMuP+bZ9XYkJi1D1GY/FCRdNliqlGB
         QwyKY7/6cqIKW3l7OdpVw3A/ip1pPnZFsRl1ibREWx1RYbKqGO4/Fnmm1sSWjwk9Mvcz
         NU2thHPu3W7giZkkMHSXdWO5sB8fwgMueE+kOnVrFzwBdpeTNVYiEi5h0UrzUI7eoW01
         C4kDFQbNDqCeF9hJGwS+kHTve/M/yUFbdB+MuHUZQJYmdFA6UI3ymf0e8INaoJBqrwSd
         183Q==
X-Forwarded-Encrypted: i=1; AJvYcCVAgOaK2laIblRu/S5ekmTBJGhVdexUheUj6dDCLwLxL98/IQJo07udRmw0b8x4rOI06zIVaEWXz5XC@vger.kernel.org
X-Gm-Message-State: AOJu0YzuT+ZTNEVoorZpZ48GdrP9zQrRWpNaBAN4PYMcBjG5viAEDhsK
	flCSG9G30lXbvLMUbR5Jo0aTQJQxUyrOsZMbFxHDvFAvzXwK/B2u43ylxr2FpMml+34eVm69bhU
	/PL4ZzsqS2e63faVZk40aknK154uLhyb9fO1gIqFIJ948Fa9Ftbok0PwvciP2rVmU
X-Gm-Gg: AY/fxX5Zb/IvtZjk2Yg9J9LJOGBbIM5jlvzNPB3kYh1wzesUO/fB/hGzA/MX0JTJ5vJ
	n5e1Nf1FSnsrLEGJL87IJ2m2ByZdvJSX0n713u4bKWKYjr4R5CBgv80slxkkQsZMMkVS8fr3ytQ
	p38YW6bKsj7V6lJLy/TefdXG8eUedEtmCGQvIv81/laNNbDrkhd5W4a/O34Xbx24EFVXhXvHvs4
	xcfPVkQcYb8z9IytbWm8CF/QwLDefzBkp8dJA99I5IIu3EElLwldf0wyRop8FP2KUpXfHdSasLQ
	6jDkYpD7ttH0VP4WM+LSbcxVxb4IR/Sq7T7rA5zS6YfLS7SXcI63dw/3tkjY2dvf3EszrkvTwyA
	MkO6O2nq8Q2eutg63JHajMadWGwFGumHy8tg5IE3SxWdVCf7uTD5saIk678pjuXJ88CxEh2ZIom
	0wwPvv
X-Received: by 2002:a17:90b:2fc8:b0:34a:b8e0:dd64 with SMTP id 98e67ed59e1d1-34abd6c0333mr5843217a91.1.1765678123093;
        Sat, 13 Dec 2025 18:08:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsOx1VFhUEUQ3J0tBD6Ayef24cfl+ErdI1iQ5B8GJP/1C8VdE0n4fCXQfatWXFaprUhwWxzg==
X-Received: by 2002:a17:90b:2fc8:b0:34a:b8e0:dd64 with SMTP id 98e67ed59e1d1-34abd6c0333mr5843197a91.1.1765678122575;
        Sat, 13 Dec 2025 18:08:42 -0800 (PST)
Received: from [10.133.33.35] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c26515d4bsm8486500a12.9.2025.12.13.18.08.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Dec 2025 18:08:42 -0800 (PST)
Message-ID: <271b1c1e-1273-4900-a427-370a94c9688b@oss.qualcomm.com>
Date: Sun, 14 Dec 2025 10:08:35 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH ath-current 2/2] dt-bindings: net: wireless: ath11k-pci:
 deprecate 'firmware-name' property
To: Jeff Johnson <jeff.johnson@oss.qualcomm.com>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251204071100.970518-1-miaoqing.pan@oss.qualcomm.com>
 <20251204071100.970518-3-miaoqing.pan@oss.qualcomm.com>
 <f60bc80d-a947-4083-9e14-000a937de412@oss.qualcomm.com>
Content-Language: en-US
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
In-Reply-To: <f60bc80d-a947-4083-9e14-000a937de412@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE0MDAxNyBTYWx0ZWRfX5VN2tJHB3gke
 WNl+L9iZMaIotQiOY4WsmbVSp47QJYwHs9OqPffdkcYXSxldCTbRsTvd1oEfZb5O+Afo3pyPFfr
 o9+EcvH5dsvX3eQAsruBO9GxBZb9sbU/XrP3RIITLWB+UBF5rKGnmKOYgp6FevbmMBIwW4oQRFW
 RVVYgJ5SS4YDESzuUADbp8bonib2+IDOiLaknh6cMkXe5rfcOSvPlaJzOTbY0r1b1pzPkOtmS/f
 fnfXPm+/7a2eO4kb6gI1MR8nf/U1ddNl+feZp/rkSaTi/BXvO+4GunWyMoPwHxUg5BiQ0A33CP7
 pKA60wvnDVMXGv1q4kwa/V6q6UmKPJEcDC4Ex1FWC9t+yi4rJTaoYheVFDgM1BjjQvN3nzXXw0g
 lGRMpejIIWncQJAhtv8FONlaN8hxmQ==
X-Proofpoint-GUID: bBQZehVBqyaYn_gdB5Hq6DS9K0mYxH1U
X-Authority-Analysis: v=2.4 cv=E6nAZKdl c=1 sm=1 tr=0 ts=693e1c2b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8gi6obPNpri618rnpZYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: bBQZehVBqyaYn_gdB5Hq6DS9K0mYxH1U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-14_01,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512140017



On 12/12/2025 12:44 AM, Jeff Johnson wrote:
> On 12/3/2025 11:11 PM, Miaoqing Pan wrote:
>> The firmware-name property was introduced to allow end-users and
>> integrators to select usecase specific firmware for the WCN6855.
>> However, specifying firmware for an M.2 WLAN module in the Device
>> Tree is not appropriate. Instead, this functionality will be handled
>> within the ath11k driver.
>>
>> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml        | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>> index e34d42a30192..0162e365798b 100644
>> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
>> @@ -37,6 +37,7 @@ properties:
>>   
>>     firmware-name:
>>       maxItems: 1
>> +    deprecated: true
>>       description:
>>         If present, a board or platform specific string used to lookup
>>         usecase-specific firmware files for the device.
> 
> The driver patch completely removes support for this, so is this really
> considered deprecated? Or should this actually be considered obsolete and
> completely removed?
> 
> Do any DTS files actually reference this?
> 
> /jeff

You are correct — since the driver has already removed all support for
`firmware-name`, marking it as `deprecated` is misleading. The proper
status should be `obsolete`, and the binding should reflect that this
property is no longer supported. Regarding DTS usage: no upstream Device 
Tree files currently reference `firmware-name`.

