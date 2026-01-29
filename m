Return-Path: <devicetree+bounces-260857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MeHHtREe2l+DAIAu9opvQ
	(envelope-from <devicetree+bounces-260857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:30:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF3DAFA20
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:30:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EBD3305C2B6
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266E6388856;
	Thu, 29 Jan 2026 11:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oyX+7pFv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HvTXAja/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BB93876CA
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769686104; cv=none; b=dXHjBj+zreaTaG+Ez/PFRQzrsdc9QDEhtDvNdN69DKjPFFDsWTnKMcYUzA8P/VaeAhfmDkS8Dj2hI1viDZDirCHOeNjoKC92ENoVkTs4Vzx6eTIIaiiHywdsBa0BXXiQytokrM9DwGJBTzxCLIU9EJ2HPM1yKcbsoyMlnreIgSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769686104; c=relaxed/simple;
	bh=p2axHXkBLcb/YxRj2QZU2q+JRuLkBNp+GmrjT0DWn04=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=acW7bJjGy62gck2vGDrjc1yrZmzb2uSGzANHMcch0XvxVPZiMPflOq41I43IDdMhUQq63/0npiXxUXkLNuf/FjNeUKpR78cJqJ7+/R8E2Mo0wm03gI4FoRSZkyMomlwfCQK/1xGHP8zOrK50kNOVL637XRL0aMVSuyXnIGm6LgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oyX+7pFv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HvTXAja/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TA2tbs2033395
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:28:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	itAneaJJLEuJh0bM1d3ExjX/oEb9v6fnFKl3auDIGbw=; b=oyX+7pFveMY1swCg
	hF/HsGHcnzWK3j0JCEtgkTJYYW0wL6MVcm1ii09O5YfqjrbUyf54cZOFk3FTYl1+
	+NrSICzMSzF1YowilAnRJuDSFg9Bq3cx7InPUXjbfC/e0Z/mpjgLiTXH4oM2zxDv
	VnDPTwsxrPbSMyA10HzNNxIoUAgJ38E0yScp/OPouzlmA2ovPUj9a11TJrRWNG3J
	aKrnfAE1KNUujLJXoFD/GdLP2+304SHeso/3q1xLsznW6L/AHZaX5HzLnWoi5mZY
	/TvYmc/VQ/CCODA0KPdGFr1LdPuovV6dg2MS9o54NGRNtumUUqcq7TAum/K886tJ
	aCvV8w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byna7kdvx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:28:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88880bc706cso3204486d6.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 03:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769686100; x=1770290900; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=itAneaJJLEuJh0bM1d3ExjX/oEb9v6fnFKl3auDIGbw=;
        b=HvTXAja/XcnzN5u52oaVFixJc5VdimtSMDi6t6HgW3sqYQBlGUYpXS5pK+524KZUUw
         o5Rf2qcyQUI1T7wJElnqLfoU/rKccsfAUFI50rnv3xqABeq6VLXTsDvyZxcfJeSBxiXB
         yMAkMBtCJxbiTG9i6MXaqYS6Zp54XhFG+VraBWuwMpOIqO/cnkZHow4HLa2kaiIFeIqI
         Xb2YoT2CtzPZXMIfTXgpHqTg4b0WX80QjilqfMPxMrk/SMBQR2/53Lr0J7BzwJ5CIm2V
         wnN+e8jRoresfA0guxW7vVhUsSbNB4iIXbfo5fqj1XHllaKI0y7Y8x4ZBZb8Gjm8oZqA
         LYpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769686100; x=1770290900;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=itAneaJJLEuJh0bM1d3ExjX/oEb9v6fnFKl3auDIGbw=;
        b=BtLMKtwS82zAdlYDaJkQTBiDj+UNYCVeNRcVHnOsgISvjeRJ+t9DAcAyDuZ3ggQDXj
         ULXWUlZeqiga/njmrtJQ+26jql3KKE0W1ptR5uuzMZ5MUB/czwvf2OTsvjS4UclVApQe
         mr90KqItVYhQ6+C/EE/q7JlSbYst77Lgbie5YCQLNk4waPEtvrI5ev7Wg8rCncDRrt0O
         kOG3u8q0V5mTHKNxvjtR5vT7pD0S6QxtElLyY6uZ1YV9tynbcTBy+S6EQKssp0wmJmx2
         QiVDWRuucY+mPTcuDkT6yB2PTTTUaF8qxgX+gl/08rHY3SBeWCQZhT7z+HO7siXs3Jux
         50jA==
X-Forwarded-Encrypted: i=1; AJvYcCVk8NQ/GTvYd92VvnkSQ7HA6yvxCTrj/0YxaeUtuolOQy1B1Rzx4ncyzp5RIlavm6Az0LInThuNKm37@vger.kernel.org
X-Gm-Message-State: AOJu0YwVwkqOsHNQrOMiGFrayM8vlCvzi0AJubghgcDZ5auxFJrRiVLV
	s5/J+DKydMNKJqZ1bMCpSLPHQDa9sHaqSud5lIR1tCuuikjxZ/H0VOynIsRocpE4PQB7hTDLkr/
	fqYK8tGjbqygTQOcBAipcie1E1rgCrBJ2QBKk78srg+P1V6Bnq/MeKhouF+8bUpOs
X-Gm-Gg: AZuq6aLNoAf7sVFJTJrsldQ4VkZI7MgaZjo9A20bvK6sMivQvLk1mRaUF95Gudjbash
	AAauQoI3gz8SIF+5dXwNk+LpksJ4mp/TP2JsCbA2IWXKERb7jKikQi0DM2AOnneWjln50t03xHb
	miS3R2H6gEfceO70VPrICiD922u+JLt5zW+3Q9FywItzefYgcQRvpFTC3tQ5UD9CIrGZgI1+NRq
	DxpaUdwyu3pAmlT6SQYMhQZyjTiJd73LSS7PTG9Drlo73X7LJQrBPXtKaKBQNXKkIW7jR3gYk9c
	Mfk9GQecUmVQQT10T76LkIpQywgTAVic3Ytkupa9Qiima/WWupMb6uJCPZT0SnL3Cr52a8g74ZL
	Uc2+x4xquErNt+nMY5AZCje94PvV4Gn/NJW9p+iFdfP99S5W8lyv5ptM66zWoHvPMwn4=
X-Received: by 2002:a0c:e012:0:b0:894:ae65:5ba5 with SMTP id 6a1803df08f44-894d7799679mr54392736d6.2.1769686100613;
        Thu, 29 Jan 2026 03:28:20 -0800 (PST)
X-Received: by 2002:a0c:e012:0:b0:894:ae65:5ba5 with SMTP id 6a1803df08f44-894d7799679mr54392556d6.2.1769686100196;
        Thu, 29 Jan 2026 03:28:20 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691e53sm2696913a12.21.2026.01.29.03.28.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 03:28:18 -0800 (PST)
Message-ID: <fa3735c3-ac4a-4f98-bca5-a1b75dad0939@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 12:28:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: talos: Flatten usb controller
 nodes
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260128062720.437712-1-krishna.kurapati@oss.qualcomm.com>
 <20260128062720.437712-2-krishna.kurapati@oss.qualcomm.com>
 <2324aa41-6b2a-41ca-9f97-7a5b5e0f575f@oss.qualcomm.com>
 <f9f7514a-8841-43b8-b01e-aef4aceb8d3a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f9f7514a-8841-43b8-b01e-aef4aceb8d3a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: U_bMEBrPnFdQkm6wHGWeqFQBXPcpcXNk
X-Authority-Analysis: v=2.4 cv=J72nLQnS c=1 sm=1 tr=0 ts=697b4455 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=mjPXWT5hYa9pg3g40W4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: U_bMEBrPnFdQkm6wHGWeqFQBXPcpcXNk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA3NyBTYWx0ZWRfX/qmwvy470nbY
 +9FiHOHeszAGxrf9L7hwimA6R+rXsePVx5OHOlJ5DRfPu6BpAXhx1jqR3i2ND6wIpIKPboA7J/J
 CpoP9oGLpFwQv/JgRKtJanQOaDxr5aSmm4uMyu3i+w8ttiTW6PQocPJGG/auqpSp+K5C8qJE+CP
 WfaEqJ4kzcEXf9LMEfbO75i7pTi/EHYWqoG135GoKFVmSxKBQ7nyLymkUMjHPhYoQ0bca3xAJNJ
 EClgkX3uc2um7quICyZdCG8v8MSiXFDMUkChdmzq4OksA847qGKegawVjYeyI2rHqMpA1eBaimV
 XsrYBfBl7BRmPXtnucYvodDxXizEIuTMZQL0pKAju5JzA3S4ytTExAenetAwHzD1lC0BEIHQzFi
 z8ZFKKnpNtvEbsdVI5i2Uywf1VEVXI/4CSVYLv3afKNbcCKMw84xxCGL3X6Q3GEWwZXTQ+TnOEk
 IcYmSFEobxuDoj5Azxw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290077
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,a8f8800:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260857-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CDF3DAFA20
X-Rspamd-Action: no action

On 1/28/26 5:09 PM, Krishna Kurapati wrote:
> 
> 
> On 1/28/2026 4:01 PM, Konrad Dybcio wrote:
>> On 1/28/26 7:27 AM, Krishna Kurapati wrote:
>>> Flatten usb controller nodes and update to using latest bindings
>>> and flattened driver approach.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>> ---
>>
>> Have you checked whether this brings about the same crash-on-suspend
>> issue as it does on Hamoa?
>>
>> https://lore.kernel.org/linux-arm-msm/71c15a78-7a50-4913-b677-e5308fcabfad@packett.cool/
>>
> 
> Hi Konrad,
> 
>  Yes, I did check system suspend use case after flattening and there is no crash seen.
> 
>  The only issue I observed (both before and after flattening) is that waking up from bus suspend, there is an enumeration failure on second port in host mode, and an xHCI CMD_RUN timeout occurs. The issue is gone if we keep controller GDSC flags as RET_ON (not the right solution though). But this issue has nothing to do with flattening. I will sync up with clocks team and try to fix that host mode issue.

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 75716b4a58d6..7e7f4eae8a98 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -4559,7 +4559,7 @@ usb_2: usb@a8f8800 {
                                 <&gcc GCC_AGGRE_USB2_SEC_AXI_CLK>,
                                 <&gcc GCC_USB20_SEC_SLEEP_CLK>,
                                 <&gcc GCC_USB20_SEC_MOCK_UTMI_CLK>,
-                                <&gcc GCC_USB2_PRIM_CLKREF_CLK>;
+                                <&gcc GCC_USB3_SEC_CLKREF_CLK>;


?

Konrad

