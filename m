Return-Path: <devicetree+bounces-263409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CM7JnoUhmk1JgQAu9opvQ
	(envelope-from <devicetree+bounces-263409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 17:19:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B94B100299
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 17:19:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 786A53046524
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 16:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D913315772;
	Fri,  6 Feb 2026 16:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GrrhMFas";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N0UhHRLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6A6314B63
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 16:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770394504; cv=none; b=EccIAxMK0dN1S+zzE3+GM1E4qZ4Tf26smWQM3kqN5s9t4wbRwEckN3+1YuKNg/fJ423BSSVE7wEIz+8E3WQzXBpIP6ReovaCa/6kSCO2uoLLm1AdVkJdQSt5pUCrx7n3SBaYj1GqOutU57QkOHrWbWFWcM3uS9Sy9ViAErg6tJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770394504; c=relaxed/simple;
	bh=P0NIqZQz1ZuPN1WOQdcydyvKFlAz4sQwOlQIHQk4RKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hYLxzvy0AzWTfzu8Hq9bneCc/UoMOHbkXxTHCKYj/EfQ+8bTp2KdevbFlNEaYhbm/pd68SRPMly2KJD0acdBFA6XnGU7DbfdxqyqpybnRoZHKoo/zz6eILto9o2lKcjtXa1N/S4IzvIMMUOuvYsbAqKuNvcBpcR5vSuuh74S9ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GrrhMFas; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N0UhHRLg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616FShqt4041993
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 16:15:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dG7rCBLmsllqxE3JifHOxAivjsQ6xAQSOGv64Hb83b4=; b=GrrhMFasrk2T0PLz
	WhbebKjpO0TpwmZNRQ/9wQBGpJQawTwTk9On3yDfH2jyidNcPPssOMuO4mSiKphr
	nmTtC7SG5jg0w9dW4x6CGdugilScZcLIzQXgzcN2gI5z7rANrp5ybvN1UDesuSL0
	h5tEtkn4PJm1CAa3Ra7rkZWCCha2IIQVs2G4vktexlMnbJ2DZnFavPD1OHYvWfdq
	sgKE+rR2q13mGhvIO/INlrRoz2DGHTszdGujoyeyVxT0xiCTieCEf+EybwILTn88
	DgUCYiro4FUvREi0L3TujhVQ2qD7XH33EEGJOhchCPqUlQJg5PmSn+cxae49NJwC
	5VRG8A==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w1j83-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 16:15:02 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c56848e6f53so1365537a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 08:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770394502; x=1770999302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dG7rCBLmsllqxE3JifHOxAivjsQ6xAQSOGv64Hb83b4=;
        b=N0UhHRLgeA7+oXD0MIWiaNG3C5GxBLQzfqEk1zkzZ0tS6OJxWOYQBcJadg8qYaADVJ
         GplMf5zNuF8mKjR+xahujt+DxfX77jIjuEz/1mZQpejxKjEePZvvzXhbHoNktKc1Mo4n
         M+yVQ2+Yq0q5sHJ4YCT7PYxsbwoSgnMve/TNrOKu9+D/6uSChpmoxVDLA3H2aPVLh30X
         nabteSwGv52MSbbb6iuMwFdNqc5CehxYcqqFYSdUS2E5CQsScIaL8rCBnvToAXu9LL6O
         cHTIsJyZKW0mNfYy0ucU9QGUjdbLsuXjwSsUdCDj9vBrQzgKubskl0P4ycVSk3FwmbML
         4Z6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770394502; x=1770999302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dG7rCBLmsllqxE3JifHOxAivjsQ6xAQSOGv64Hb83b4=;
        b=ECgWezNnkj4lBU4p7l6LxNM5Ebu7xNiHVjuO5kMucf4emcw4ETNUUxn/MfRd6RPDQR
         eQ6AHjrZ6R+sdN8y1veoeD6086fFg6h/0yPo9Mb5vg2tb9f+ElIMQezX4OOV7qcfbRo9
         Nb3byLKXXb18XL7jTDUhaZgLweETTHfTqgEM/SDgU3vfajHXthieDGmWc71ngyY6xpDR
         u2NonkqQ3PMsKNC6Ez85lcq29DjIeVBxlSesX423oktESBBVYkipqmoGuGDZm3lZsRsH
         tTpADUHeFI4HEcMlZfn2gx42c374VzFYbsGGnsaOuX01EFCVHXUVws40wOWhauYiIZPe
         k82w==
X-Forwarded-Encrypted: i=1; AJvYcCVae9gPDn1KPxnmdXdNU7FO1m+tfOntPN6/n2Q57HWLnXiGNM8hnEkOwOeDtUIVjrN7fKmZd//sFyhr@vger.kernel.org
X-Gm-Message-State: AOJu0YxpjKdc4OgAnWl6bSSOtTBD7NHSuas8j4r3/7g4ny9PJroOqCRZ
	/JYY1E3vQ1X5FVqVxtdbAfG/ziwyJBiAv9KkhYGfymEX1rKsEaEO0Y4KC7vtWXbXLTYk5fvOXg2
	mS2gHcJAewQ6f6iuDNvnS1msXkBiokesZeAmYcHGpW4BNRruU9PAmIwv1hQ8FSizdFTJRf/V5
X-Gm-Gg: AZuq6aK9Zp7m65DPjoBtWzr3snsmoyzeqCP6S4f35gZRS3u3wdHAWkhqfNvMSTD2KfO
	SoYDG2W7tM0l25hueLO45lgsR6XaA8VJNOO4irgu7mhDzM5n9WoYJLANE9RTrWGUJnswhu5f9rT
	9Cz1YuUP1rnc94VV5hLNQaeCrkNwxOr5a1zi9gV+XOF7u7VecptCEzyb2662ICOPq86lMULoGlI
	zKNM9EEbdzuCxdb/av9Wlb1jx8ggeh2/IXnnLpL3eIYUqU2IwKG1OriShzy1juqq7ZE0rYb4EUo
	5hHckJlpTxZB0ybaUehbfGv7Ee9S0dr77sGIyRgyD0NhRk2LeQ+2B7OBmmH7QirHhOfn4SZNMWw
	BsZh5i+g8A3ZcyvqkrHxvrYPWmT71XdiDAqcsezJtiKgekC6RYWSpKrCBXS0ylRk6sRYGdHdQdX
	Zsj5edAovfEKrOtpK/5yAawkfRTA==
X-Received: by 2002:a05:6a00:328f:b0:81f:37b2:5657 with SMTP id d2e1a72fcca58-82441623056mr2988945b3a.17.1770394501927;
        Fri, 06 Feb 2026 08:15:01 -0800 (PST)
X-Received: by 2002:a05:6a00:328f:b0:81f:37b2:5657 with SMTP id d2e1a72fcca58-82441623056mr2988919b3a.17.1770394501445;
        Fri, 06 Feb 2026 08:15:01 -0800 (PST)
Received: from [10.50.45.102] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824418e0234sm3321026b3a.60.2026.02.06.08.14.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 08:15:00 -0800 (PST)
Message-ID: <269e511f-4e8b-4eff-b51c-6ef2ad5180fc@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 21:44:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/4] arm64: defconfig: Enable Glymur configs for boot
 to shell
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260205-upstream_v3_glymur_introduction-v7-0-849e7a9e6888@oss.qualcomm.com>
 <20260205-upstream_v3_glymur_introduction-v7-2-849e7a9e6888@oss.qualcomm.com>
 <hegsqmdmf6yey2ubcsyx7i2l77vplwzmthmyrpvmvu2nrpiag7@gxg7bdk7or2o>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <hegsqmdmf6yey2ubcsyx7i2l77vplwzmthmyrpvmvu2nrpiag7@gxg7bdk7or2o>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDExOCBTYWx0ZWRfX/njoEjmDM54g
 dRirRjVYM7SzAhPI19UlLaG42EpAibKe/DBycJXO59EkmYTi6YVCCl0y19xzv+lbb6P5FvN7Cpc
 rwHMmHQF+lElp9/7TDFs0z1b6pLSoMeltcwLtHPeiM7h1YKbRlZNuXHGq/6NDJHDQip+EFXLXfg
 hS88GmI9iTlPCuXJl6L3jWKlfBc7ycD2aTvJ+n7XKYe4oYR2dNhGNsu1WNFmzL1ua1aKfQDp+BJ
 pnUuaxIWAFcE2nMn49Ph9U6VyH5Hrx9r/ED5kk+Lg88JNpd8d0w/SfBQz4LbXTMI23fjcHFIYwD
 ExsflTLmUqNkaewP0gOAlvi9VMMTpJqrjhVlXIzDB5UdArj/Rj72ke9fC3eKlr2lIjjODIvvhOX
 IVzC91bjflKg251G5H9YT/JnmxwB9VRTAnHeLN1aaXbk/0OYTRej513yOdBQlRj8aIq+QuXF7Ux
 z5+BiVaeNuLfTX2hMHA==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=69861387 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=lhv8K5t9L7V_iG4xXbQA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: QWMVQrTS6Imm6Wlr0hkm9JbDmp4MUGPy
X-Proofpoint-ORIG-GUID: QWMVQrTS6Imm6Wlr0hkm9JbDmp4MUGPy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060118
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263409-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B94B100299
X-Rspamd-Action: no action

On 2/5/2026 9:46 PM, Bjorn Andersson wrote:
> On Thu, Feb 05, 2026 at 05:50:42PM +0530, Pankaj Patil wrote:
>> The serial engine must be properly setup before kernel reaches
>> "init", so UART driver and its dependencies needs to be built in.
>> Enable its dependency clocks,interconnect and pinctrl as built-in
>> to boot Qualcomm's dev platform - Glymur CRD board to UART console with
>> rootfs on nvme storage.
>> DISPCC enabled as module, used for display.
>>
> 
> I'm sorry I missed this earlier, but what are you actually saying in
> this commit message?
> 
> Subject is lacking "Qualcomm" and "boot to shell" doesn't mean anything.
> 
> You're talking about serial engine and init, and how that relates to
> UART needs to be built in. So this must be the most important part of
> your patch? No, those drivers where enabled in November 2018...
> 
> Then follows a problem statement (problem statements are good!), saying
> that we're enabling the dependencies of the UART. This is good as it
> allow us to reach "init" with a working /dev/console (the reason for
> =y).
> 
> But your mixing this up with "rootfs on NVMe storage", which might
> follow from being able to reach "init" with working UART, but it's not
> the same "problem". What I do believe relates to "rootfs on NVMe
> storage" is the inclusion of GLYMUR_TCSRCC=m though?
> 
> Surely there must be a better way to write "Qualcomm's dev platform -
> Glymur CRD board"?
> 
> DISPCC is used for display, but should your statement be read to imply
> that we now have all drivers enabled for "boot to shell" on the display?
> Or did you include it just because it was adjacent?
> 
> 
> The content of the patch looks good, but the commit message is
> incoherent and lacks answers to someone who doesn't already know why the
> options are enabled in the way they are.
> 
> 
> For comparison look at Jingyi's patch here:
> https://lore.kernel.org/all/20251215-knp-dts-v4-2-1541bebeb89f@oss.qualcomm.com/
> 
> Regards,
> Bjorn
> 

Sure, I'll update the commit subject and text to:

arm64: defconfig: Enable configs for Qualcomm Glymur SoC

Enable pinctrl, clocks and interconnect drivers as built-in
in order for serial console to be available before kernel 
reaches "init" on Qualcomm Glymur CRD.
Additionally, booting rootfs from NVMe requires TCSRCC to
be enabled as module
Enable dispcc as module which is a dependency for display enablement

>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  arch/arm64/configs/defconfig | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index b67d5b1fc45b..d3ed35d3e6a4 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -647,6 +647,7 @@ CONFIG_PINCTRL_IMX91=y
>>  CONFIG_PINCTRL_IMX93=y
>>  CONFIG_PINCTRL_IMX_SCMI=y
>>  CONFIG_PINCTRL_MSM=y
>> +CONFIG_PINCTRL_GLYMUR=y
>>  CONFIG_PINCTRL_IPQ5018=y
>>  CONFIG_PINCTRL_IPQ5332=y
>>  CONFIG_PINCTRL_IPQ5424=y
>> @@ -1454,6 +1455,9 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
>>  CONFIG_COMMON_CLK_MT8192_VDECSYS=y
>>  CONFIG_COMMON_CLK_MT8192_VENCSYS=y
>>  CONFIG_COMMON_CLK_QCOM=y
>> +CONFIG_CLK_GLYMUR_DISPCC=m
>> +CONFIG_CLK_GLYMUR_GCC=y
>> +CONFIG_CLK_GLYMUR_TCSRCC=m
>>  CONFIG_CLK_KAANAPALI_GCC=y
>>  CONFIG_CLK_KAANAPALI_TCSRCC=m
>>  CONFIG_CLK_X1E80100_CAMCC=m
>> @@ -1846,6 +1850,7 @@ CONFIG_INTERCONNECT_IMX8MN=m
>>  CONFIG_INTERCONNECT_IMX8MQ=m
>>  CONFIG_INTERCONNECT_IMX8MP=y
>>  CONFIG_INTERCONNECT_QCOM=y
>> +CONFIG_INTERCONNECT_QCOM_GLYMUR=y
>>  CONFIG_INTERCONNECT_QCOM_KAANAPALI=y
>>  CONFIG_INTERCONNECT_QCOM_MSM8916=m
>>  CONFIG_INTERCONNECT_QCOM_MSM8953=y
>>
>> -- 
>> 2.34.1
>>


