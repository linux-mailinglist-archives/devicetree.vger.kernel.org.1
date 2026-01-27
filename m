Return-Path: <devicetree+bounces-259854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4A1CKh+meGnVrgEAu9opvQ
	(envelope-from <devicetree+bounces-259854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:48:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE3F93DFA
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:48:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C49A2305184B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2896134B1A6;
	Tue, 27 Jan 2026 11:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S+v+KWlN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hoIBrLSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DAD734B185
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514373; cv=none; b=cYptHkMGpn46626xNYKf3fbnhWX+Z8znZoNbedJa/8rrR1tjYvmpToK3I5j2gmgftkDAXXFqYty4DJIC46CCFr/wsmtpDa/h2RnLRgWwS0U19O+HFCl9dSQC6NI6LIXkger4HvrIvo7lVfCWy/0//N0Qu9RpwUP8DFxewECDo/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514373; c=relaxed/simple;
	bh=8Y1fnVKjp6IEWN6IZPMX6ZFWAIUDi7MjIKUCO35bMEg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pIH3uhkTq2H6aenQ4DrTtaBv1Ljv2bf5JaeooA33YBVXprRdlDhGTKJD6TSHeyrejCTekxzW4xfhglqIxgeu69GkplE4vQpXlDI18ecOjW0eq0HpWUYZQppn5wvw/HtnDHR8X0kBaC4y3rlceyXJjb3ImW6iD/byQeT3GDK874w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S+v+KWlN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hoIBrLSp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAEq8a184939
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:46:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	camxT/u1sDFfuBtTBfipsSGIU73/JXukIB+LwjhlfJQ=; b=S+v+KWlNoBsmq0h1
	1ygpjflBgFfM84y7N/gN9fxPKfNywRPj+E/ge1sItcHEZliiycD5xqClekCfYeva
	ndpplnAOpnJFvJw/7BcZdSMIwFsEILZILJF7Br20hTyE19UftprZpuGPh0QFNdab
	fFJnt+vbiNAdN/wXU0jy1Jxg1HE0ZEsv3YObNLubTPbJpM7IixvJxqTL0EUKT/c+
	UeLKYzyv8ppImS0GT4nl44bMFd9dtUXjGLL3HzBx3wK/RG8541rt0yOMyH5/SGWS
	0/p5Yfcw45oD/MNFRLzmz9TUwEirYTV40pNBYpq4854KQ2vSQjOf4oRhE12ukgx0
	ZmNbTg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9jwfy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:46:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52de12a65so114749985a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514370; x=1770119170; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=camxT/u1sDFfuBtTBfipsSGIU73/JXukIB+LwjhlfJQ=;
        b=hoIBrLSpaGvz0NqSsMTTcUhlh1nbd53uXJ40+z/jTh4xzt4by8fOxOuqSlNckw2wg5
         TgtSCedO7FPbgEr3EjuK7Gl64bnFgyvq5rNlAq3XG2YpKveXZSqI8wVVGyFfexcnUjF7
         oSEsvodVRH/opc+jGRwiXUTr0QU2STjRxR7A0Z4uqgkP5xpGwWpaGSQxBi0rcBvPBQkk
         rvnKSdXgHGZubaGJ2TfFk/MiAFG9YAAMaoWnZmGJVFeoloV/8rCbxAs2iABkGIFilLml
         Odd+hZHgh+J38biL3otiIKvJqDYAUgAjX5xhs73OyovP7VJ3HgEGXdf2VQqptJDw2gS6
         Xx5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514370; x=1770119170;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=camxT/u1sDFfuBtTBfipsSGIU73/JXukIB+LwjhlfJQ=;
        b=kknIEbXKtVHLarS3jf6EXk/UUkwFrEigFnTk5QhUUYCALo6O8Q6bSaUYOL8rEaCjue
         kb5xW2EHM1qljhPXxWRdq2DocIKVlJNHnU/Nmv2JL83Q5+DZXQpEsTU2KGx83Qj/QISJ
         ZxuqkymEzG7of8WzNv52cm+uGbDtkgySjCBnjWar04PH/1V8tJT+dYEXr/6CKlMM6Izh
         hX5IvXRQJq7sqlesefZUgcblY43JJaNIHv+9Swb8ONpaM9Jhn/M9NfnaRTENqddDVZCu
         frS/2a2hF3t1qfgQSwwrDECruX1qVVRIkA5tR2BGhl0Qg1Apmh7WcuhKN6dNfIlQwgt8
         G9WA==
X-Forwarded-Encrypted: i=1; AJvYcCXEn6xpuhgodxRPc6bSHITaQIxZHfKUzYDTmbD7J/vvH4GZo5ukPL/k5H1qiXKPcgngHMRD3itFrDCO@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ5uOHEqfBF1v2UBYG36j5eLLbu3ZnFZWH2YTrdG21/pG+l2tC
	4Ov4p2e/GEIaBwJthviN2Tp6bKwm64WnHCyA9sPbsz8A4Ky3BDlTRrSuXSziBhPEi19/artXUEx
	TH0TxNvopR0LS7mtLIbXaH5HbCo4chjCVkWlajylpQOCXK1itITofphhLh6676XvE
X-Gm-Gg: AZuq6aLg15lGJ7pR2gGXRZdHjJYlpJJPTkZgryWhF8OYV+jSYtq+A858+c+XFtYcZYY
	pl1ZZsfnVU5cmYChMrWJjjS7ICG4cM4aAciUs3xcMTNVSUuwp9OJhXhItSpYDLfPDTgxGxCZX41
	KywC+I5YbRDaZ25m3ivKYnPZETkvZgPr4PH7ihM2Ia4UJWGtGpmM0Pkc5SrEbIgN3J5jGb1Dda6
	7bapYF4t/XnkCvJqEMQfdDGmEPvNgGuzFD6qei0CEcaARkYzrxFfVazwz56zxH7ywUOXmNzARxo
	66mqzFPGL9Qzl04dkuQHltRqa7HQnCpEuhw5WkWBbmUST6CFeg1rwqiUefKKdqBv40dED6MW5hO
	S6Ody3W0tmV85uWU1yXGnTtJ4UpG60DmSuRlkOCc0y7SIRnLUyDicS+YXJ4aBfq06IGs=
X-Received: by 2002:a05:620a:190a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c70b84a25bmr120912385a.1.1769514369751;
        Tue, 27 Jan 2026 03:46:09 -0800 (PST)
X-Received: by 2002:a05:620a:190a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c70b84a25bmr120909885a.1.1769514369228;
        Tue, 27 Jan 2026 03:46:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b6fe45asm784820066b.35.2026.01.27.03.46.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:46:08 -0800 (PST)
Message-ID: <4632ad3a-c893-449a-b0d1-48d9c93da7e9@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:46:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 2/3] arm64: dts: qcom: glymur: Add USB related nodes
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com>
 <01de4054-eebf-4ef3-ad74-c806b208a848@oss.qualcomm.com>
 <6lieos5uudkgynizozrmzrj5ov57frzzl65b2fpanwbhbmehot@z5uhyv4ipyet>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6lieos5uudkgynizozrmzrj5ov57frzzl65b2fpanwbhbmehot@z5uhyv4ipyet>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6978a582 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qn_fkN7zqQ4dxzFuYcEA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: O0Ll2Yr1E4Ir9GGP63ZQyW92gHeVWlV3
X-Proofpoint-ORIG-GUID: O0Ll2Yr1E4Ir9GGP63ZQyW92gHeVWlV3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NiBTYWx0ZWRfXzRqL4V2Ydf0p
 Y9Ecd6hLZ3DsRasxMMq8VYSS8TQWjymL1tuUyIqi5VhtClLszgB/b8ogOUb3t1MhDdFWomjiQFZ
 JhSy+v5whiOSUw8VepJGdbaDxoVlHEQQdjnfu867WMf0e98FngwK0ezupQj0+7oAHMDAOr7IF97
 OzjBgbFH2sx7wv58y/JcCGUgixJVmKS/D7dt+Yf9ez8GqmPIo9qrb1kN7856ss6A5csXkIAJO90
 weYahqIAaBvFwarky8/IMksBs5YSPQ7Zpz92/pG4dwT+ToNhK5wS1d3HFDGkI1yoD247S2j1omx
 VJlMPhrkjjlHm4T7yl5zxi64EY4BX6bMD5HuPyMQI1XVo1I8VvxMu8f+C2ts3ICYdHn0KzVjBeO
 3pp0qlLW05AjVZ1t6sV9vUIC+Ts2dX7TkOO33J+AXBkuPRYUAUZxTBtpZYxwv0gK8doZfG17VnJ
 dqQD3zeI/h8Bpal9CAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270096
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259854-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4BE3F93DFA
X-Rspamd-Action: no action

On 1/27/26 12:41 PM, Abel Vesa wrote:
> On 26-01-13 14:13:32, Konrad Dybcio wrote:
>> On 1/13/26 1:33 PM, Abel Vesa wrote:
>>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>
>>> The Glymur USB system contains 3 USB type C ports, 1 USB multiport
>>> controller and a USB 2.0 only controller. This encompasses 5 SS USB QMP
>>> PHYs (3 combo and 2 uni) and 6 M31 eUSB2 PHYs. All controllers are SNPS
>>> DWC3 based, so describe them as flattened DWC3 QCOM nodes.
>>>
>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +			snps,dis_u2_susphy_quirk;
>>> +			snps,dis_enblslpm_quirk;
>>> +			snps,dis_u3_susphy_quirk;
>>> +			snps,usb2-lpm-disable;
>>
>> Other SoCs have a list that's much longer, please consult Wesley if
>> this list is enough
> 
> Checked with Wesley. He confirmed that this trimmed list is fine.
> He said he dropped the rest since they are related to the power saving
> features like USB2/3 LPM (l1 or u1/u2) and we don't seem need those.

Is that to say that those erratas were fixed in this hardware?

Low-power states of the link are no less than desired is possible..

Konrad

