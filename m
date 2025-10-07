Return-Path: <devicetree+bounces-224199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B4CBC194A
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:53:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 398CF3AC3FD
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B656A2D97B8;
	Tue,  7 Oct 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZJJLtJ4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2D22DAFA4
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845233; cv=none; b=d8+PVzcEgoEBZ2pRwFWApu4wXERQ1OFdUUPrSSEr5TTLhuykJPqIIU77K9L5DyofYlya4n+v/Osz771KQaDdHucvyKVFKD45LVEeNJFn1zqBz90/SyUC2PnKonUW3jKAWtIf7QnXUh8uooo4pHaMto0Psyb1af2oXLw9sIloSxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845233; c=relaxed/simple;
	bh=cdt+xIUTUY+JbHEpPzEj8o59T1ECMCeqF+g9xZCYiJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jefcwTgMK7mYCvQVqNES3uAioSNX+VvpaxXuQ66gM/DfAlMMq5bUlF+6mmiXYeh/9RTwisliSLvGmYqeC4+zy3/5rHgeSEs5p0jkU8fnxH1rPB0WhdprrjcqTo6JaVGl9BQAo/p5KT7cYXVriVPGQTEipNHGLWk7j472aMlrA1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZJJLtJ4S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597CiS2s016653
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:53:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fiNc/ZDld9lHBOfROmDO6f0b35mQryE6GaNus4HaVTU=; b=ZJJLtJ4Sa6IzdQP5
	iOCwOhtwN/oa6v65lFuwMLp6viOO2qJQCR1u9n4wsFGej5IO66wSfYpLEIvDU3x9
	sfEFpIzL9WlAgKKFx1p/YNpZjGplIHMmklsCIFa/A/gnxoPMNGdolZoG+bn6sf8W
	ukOH0mGEWNe+WD5K9qtQJU6Vm7XtP54CJjd5lgLGD4k9irY6rYGS89bTNwWrBr9D
	r70G1YpWIXf5Jh1l9DGm8owSPNqz7SM1hDANDMADWp7Bx5az9+uSRZWltKpFL1sl
	QXxNoLSNEVfIqQJ29d1tfkVaPm9Rp0wabvOXfA3uAJsJYOmKnzsSSV17uLmiQFZy
	Z8shlA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu7d03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:53:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d880ce17bbso6495041cf.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:53:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759845230; x=1760450030;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fiNc/ZDld9lHBOfROmDO6f0b35mQryE6GaNus4HaVTU=;
        b=kQ1fg+l2cV4MgvUy1kb8fKIcuzLiUsNWiwDnpsdxCWnz5QjEqlx147Aqhqqm3OUnC6
         nbPL3brIFwsOi4GSIPsH1Uz1F2VFPge+2sUNvgLN+i/y3hmf1lKPZTADXOn967MIveOD
         tEsrOGria8SOXC6cT3A/JmbEiLv6gSpTDvcBAhSlC+qPGQpls3qMsYEgnP7nNSsWPhCW
         7XUND6IKT4HkhaHwt85/R9S7rIBC7pbpqnQAVmdYF18UXhngZ9Wq3+WwsLQ23TBW6KMS
         topnmhfUf4KYnLXYFqW9Z6owFHZsEctJs8T/dkywpp5Wk9TZngICJM4B6KKJWFtdjWUF
         D6Ww==
X-Forwarded-Encrypted: i=1; AJvYcCWx2Zxs8lCXRVqI7SjfwHL7XlC4DcTstpQipiLMViBx1oELO+BJkrLZOG9Y4y4dr67CbwMvvwztADU7@vger.kernel.org
X-Gm-Message-State: AOJu0YxxrVbSeC+gj/5HU8UHoqamjdf4gmG5wHD/cirlzRSCiApX0JVo
	yYZR6CAAFjWOj7YnN48qR5LN61oubhqGQqDsBP1bCFDpEzGJr37KsdlhT+PjewtFxaPynHetoef
	9rYC5npYekP5kFLyMJHCa1F1sWNbrd5Jcz0EG/diiwjOvCI7+vy3V5SwDQkkNbe48
X-Gm-Gg: ASbGnctUz7YedDXZeLbqI7EH2RLYHU8T7+Yz2ndqQ4Opx5TcUCn7X+fNSRwkOaDAZyA
	4LtAsYP+4phb7paXMgJw6vXcDI1sgOKYyKdA1ZxiLblzdR6XGB/pzyG3MSKWz3BD1df5Bcjv9/W
	GMx4XLHfPQ64iF7SN8aV7n6zU6gHJTyHIrgdkH0T9jXi8nHYb/rH0RETKw0NE8STn/rrM90KZ/S
	b0lHKfLxgC7wywNvf35wXPLKuS1YNUQu0Z58S3RPCLKESbQc0U8q/c6zLfCeA0g2MrCu1AVrjmQ
	VPj9XpKMN0YYieTKLUw1go8wIkYYlb6DAJD567Q0j1OQ7wKPIdvB+kHLnezj/b513nlZe37ksHW
	WCMMJNl1Yxy9/g7g8CC610pfS5Zk=
X-Received: by 2002:ac8:7f87:0:b0:4dd:3948:3380 with SMTP id d75a77b69052e-4e576ac46b6mr127531711cf.11.1759845230228;
        Tue, 07 Oct 2025 06:53:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZXrDJuWwO6h54DXmE2fdQYzL8QfITc/WlKY36C1qhe93i2ttKGEhMEDPLcHC8FVYGtfGAqA==
X-Received: by 2002:ac8:7f87:0:b0:4dd:3948:3380 with SMTP id d75a77b69052e-4e576ac46b6mr127531481cf.11.1759845229682;
        Tue, 07 Oct 2025 06:53:49 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9f50sm1393040366b.9.2025.10.07.06.53.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:53:49 -0700 (PDT)
Message-ID: <fd8bf93e-f6e5-45a3-8e7c-7e63a918809a@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:53:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/13] arm64: dts: qcom: sdm845-lg-judyln: Add display
 panel
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-5-5e16e60263af@postmarketos.org>
 <6145be40-3b2b-4554-9d5e-c1f9fab0363b@oss.qualcomm.com>
 <da2f17a144374f326de9e0c5bec638829a31cd1e@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <da2f17a144374f326de9e0c5bec638829a31cd1e@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OForqHARrWgl-JgMweim8KfirsMU0O8t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX9H+RoOTJbADz
 1XAkLLkLXCbZo51M83cVUfRTSe/CzxXHfRqiy3LBLg1tiuSHnNPHKFutzW5xzxEH6dcPae9gYS4
 H7f+3JDA4bKy8tGSf4Qo+CxHAjWmoqrYFMNfIKjib1ixGq4iMoxvlvTkWwCnrk26K/+Ji8p/1Z4
 zcFHITDuLZYpOknDywDzXWMtovE6Lo34XYfmqat91HEygAkqS1rG0s+39W+54XWgxFUEubf1vAU
 E83DCpLdOCUrKkcJoF57PZm+ydBwi+b0lbL+LLx71m/MvSbYbSXoybDwoMHbl3M/Wf/5Jg6oxsA
 NMSiEq80pvPbm3HcHKeIcAWgba59kCvT6gNjaNmolDMjE0fnTNvomEFCV+Xs4kXkgCdERqqpRKG
 U/lq6UPNrr2EI8b2uC7rK17b3pw0ag==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e51b6f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=NEAV23lmAAAA:8
 a=XKEg-W0rSRFBAHshmuIA:9 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: OForqHARrWgl-JgMweim8KfirsMU0O8t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On 9/18/25 3:38 AM, Paul Sajna wrote:
> September 17, 2025 at 1:50 PM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com mailto:konrad.dybcio@oss.qualcomm.com?to=%22Konrad%20Dybcio%22%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote
> 
> 
>>
>> The vendor kernel (for Sony phones at least) does pull-down on both
>> active and sleep, making them the same
>>
>> Konrad
>>
>>>
>>> + };
>>>  +
>>>  + sde_te_sleep: sde-te-sleep-state {
>>>  + pins = "gpio10";
>>>  + function = "mdp_vsync";
>>>  + drive-strength = <2>;
>>>  + bias-pull-down;
>>>  + };
>>>  };
>>>  
>>>  &uart6 {
>>>
>>
> 
> https://github.com/LineageOS/android_kernel_lge_sdm845/blob/lineage-22.2/arch/arm64/boot/dts/lge/sdm845-judy/sdm845-judy_common/sdm845-judy_common-pinctrl.dtsi#L109-L148

Take a look at these lines instead

https://github.com/LineageOS/android_kernel_lge_sdm845/blob/lineage-22.2/arch/arm64/boot/dts/lge/sdm845-judy/sdm845-judy_common/sdm845-judy_common-pinctrl.dtsi#L137-L161

Konrad

