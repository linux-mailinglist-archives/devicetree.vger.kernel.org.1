Return-Path: <devicetree+bounces-269153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CM4VADVooWkUsgQAu9opvQ
	(envelope-from <devicetree+bounces-269153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:47:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 274331B5898
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:47:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 30DB33046F61
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4AAD33A709;
	Fri, 27 Feb 2026 09:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ej9/NcOy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GUsgcCDk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D246309DCF
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772185623; cv=none; b=reIoDIIp/1YTYuco+WuHKtvUw66rlzY6TgAxMpN2VKo8EkLn+Jh05ZwmUtxyXIYeUsxeh2ZQ+7xgvdrTvK+b3lZh2KO0+uYfVa6AyctMbzMdKhmLvts2Jo3cHoLFqU7uOFkIQ633cevK/40vqWh0r92miCd9YDHLUkybqq8uNC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772185623; c=relaxed/simple;
	bh=SW3MNISh4kYWqW03aETC8/au5O19/AaJi1c3vdFjoLE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MLoAd4I6sDg2cvEqXoGwVDivxlV/yiE+eTJ+1y7QV1Iq1LCnxx/UHnOnZCbNFoLnwE67RUuq+edbYDZJ8m3Wl7rGAOs/b2ovl/5Mzjbh2tCL/6bRxadGnIPDagWII83tq4y67lZmQbs2KEBBSfko1Wasp7ZReoTNNU8LWB2AaJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ej9/NcOy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GUsgcCDk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2KmEV2404082
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:47:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SW3MNISh4kYWqW03aETC8/au5O19/AaJi1c3vdFjoLE=; b=Ej9/NcOyuAIfWgSJ
	D5l8salIy/eLXRVOaum2EpbOH5xhHIgnRuvJF+ySjQGO+nnbpM5zxVzRe9x3ydie
	Ac3bCpmS8+5H+gG4tdnGceMroNhl63/YVLNpA0x+TjtpYYxE4GOyc07d9e9V6wgn
	v8tGmbaxnevGoc16ZO9HysQBM99r73G6wNwhaXRFTaxsMX0EgZWqE0JAh6+sbNXg
	mhmmRH2X8HCjhbniUnlrSGX6C9iqKeiRHXhUR/dzpE2HS2XjLPoMqHI2ZYab9tah
	pTxQ0XofiqBYRsKd9TuCXmPVkUGEmfbCyLMHDzzx2RnA78JzsK8n0/xJDtKNYOpQ
	o5vnAQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjw23a8x5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:47:01 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8272736ddc8so786113b3a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 01:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772185620; x=1772790420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SW3MNISh4kYWqW03aETC8/au5O19/AaJi1c3vdFjoLE=;
        b=GUsgcCDku2RoZObgWaRwmJ8qCGt09uyNbfJwXjUWJEWA/CO5F0ZXJrXfjhyExd2y70
         OK9xPi1CICiK5jo7RBbUTS4FaN/cMMa7IwVpXnZ6GoQhpY/F/azjAtjeDy1YbkI51/hZ
         OtzgMWkVp7/2v9vdwxLi3tcS+AxSxatU7VSbwt8qP9B165v8C+WOcufa/+d+45YfABOE
         BUjW0Utj+iap05/ztfKyieELsVD54VCE7YG1SL1mQ4iigE3dEimxNfoQ+96jJiS+N2RA
         bEQLsu0L5/99snH5ryhtm9GFtZLd5+GDZG0DcU6JNyJVPqoZ7KUW4Rr/nL333cJhzMsS
         H37w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772185620; x=1772790420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SW3MNISh4kYWqW03aETC8/au5O19/AaJi1c3vdFjoLE=;
        b=VeRwzqmCj3BIp8U4xf9r4s1skP3oqOee9enD9gIoy8ijs0QCM4w506fNV5ryHtcgI/
         3bFUExQssP/9Km5NYlyzL9o+B388x1SyNx+MdzORdxKRHM4w1wFbwnyO4czNQ7kbPsvA
         i/xBJ0j4z+vNvj5Rzsim7ZIkSZuU87orgJ5Gdu+D4c5F8oF/k+8PcCmwxwtrabSTxv/g
         E523c4HXAp/2GaIAdV8xznNTBJWulanyUU1BlF/7RDVQWTyppBhrNrZWIc63f/9Il+9D
         Yi1yqWNpFEVVP415z27lrwrhq13BdEtdfihW/7Y94l7X3Eaw9P3Jtt0lBs9mosU7bVWh
         X7RA==
X-Forwarded-Encrypted: i=1; AJvYcCUKRb+r7azi0jwzVfQF2Wbp5vHQcscsaObkPNo5zq4ZoNQ4S7PIZ012ABOqQku6yW7vFY7TmUYZidvK@vger.kernel.org
X-Gm-Message-State: AOJu0YwzSyyJELph4czT968F4arDg+ADmaG1NpD04QIEzTBGgaaoAcVa
	QIGlLsOwaf0pQZXI176U17xn2z839Rto1fGXG3Wxe/rexdARg0gVhFObdH/PoOc6FB6pdb7F0S/
	9BNLSGfE0T/dca3naJqAaR0s4Q1WeRX24bOIDf9f8e3PoGmNXkSajyVVWOQ9GaaJ4
X-Gm-Gg: ATEYQzz25LIKEj2Rgv+0xl490mSbtc6XThSN2G7JE7BCg/uvJp0NjHFuHCzcvmBBr7t
	awFh7v4SvtOSS36BrNNX15zcPPMF/mfzV2VbnXRSRvbZ6pv8yucLwlnIMUWH80JY3HRse45I8a0
	4a3DJZ/Vw46qCbZWYmRHTyutHF0tvx6otvH7iVkBQ7TfwIfqntGmkD0NTvNJdGicTu4zOVlflGl
	7/MPDIJI/83O8rJdO2j92H0/ljiBotB406NR74DIFn/hO4xjtkmtz7OtNMd1u9QE8nnzuah/SeS
	8XQMY3bQhPY9dXEjoXkeoqQhpz98fu0C8jacOcLEAbU5/Ob1yVTNEzUO5sS5vUR+aS5/F0ejSUu
	6KpMGNtkd+I+toZBy0PGRyP0MorPAu1BpQ1NLi2g+v4UdQmtO8w==
X-Received: by 2002:a05:6a00:390e:b0:824:9f50:83c7 with SMTP id d2e1a72fcca58-8274d7d4efbmr1553351b3a.0.1772185620536;
        Fri, 27 Feb 2026 01:47:00 -0800 (PST)
X-Received: by 2002:a05:6a00:390e:b0:824:9f50:83c7 with SMTP id d2e1a72fcca58-8274d7d4efbmr1553344b3a.0.1772185620151;
        Fri, 27 Feb 2026 01:47:00 -0800 (PST)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a01aa09sm5716006b3a.48.2026.02.27.01.46.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 01:46:59 -0800 (PST)
Message-ID: <8c335484-34ad-496a-ad1e-5afd648744c2@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 15:16:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: monaco-evk: Add Interface Plus
 Mezzanine
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
 <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
 <a7777e5d-f9be-43c5-9f3f-4d84e16f6e89@kernel.org>
 <jncbztn4xohzns734i4o2hsherdshjgxqtiglh7zf2oz7nkujs@an24wf3txymy>
 <87e3de23-cee9-4789-87ca-e85826af7760@kernel.org>
 <w6pfpkgu2xypyl3xw7upxo4gkbkagmmh4mr7ky2itdmusah5xt@gh44xrzgmrtg>
 <2b3dddba-f5d4-4eb5-b2b1-52df919e02f9@kernel.org>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <2b3dddba-f5d4-4eb5-b2b1-52df919e02f9@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ohQQ6AIXUcw-SpSlr4NjLZB1EQE62ph0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA4MyBTYWx0ZWRfXyWGuuW9EtsnK
 kfvev1s+KbT38LZh/pfSpM0EU7RMw6FNtUIUijsQSfzoX0+psuEkkAWnboladu7bCBe9pbI/wvt
 V8CjpD9F91+Z3IqeakE3Xrv7RDVgL/paU+176BnLLBHUM45Wy7wefDTffgAEWaX0anIxm16E8Uo
 dwlAKoDdvN5rOefS9KEuDtp43aa/Rv3qMdq3ou9FvypTeecrKvdZVNynbWkiScvQE+vJIuhoZrX
 1JHF0vWC43cE7bdiOR7ebyyUjvQvk6cxVpvvyk/v/ETm0mZcGlIkSAcKqDA73K6bFjQq1TcdMNj
 wuDap+Blt3BcvJt1ql10VIa8fiSndnWYLEiTTOudsOfvaLIXf0Bt1iOy6ujXzghKNZcbub4z1MB
 jFLkGnIRuHJPMwB0ISA74L5tPeu7EMhiCTPWdqTJoE8YQya8utIPFPUM+Qo+NiOx34hQsTauvUB
 SjDEmv1TNfPt+yjbpow==
X-Authority-Analysis: v=2.4 cv=cJHtc1eN c=1 sm=1 tr=0 ts=69a16815 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=qchmUdsTM1gVW9wSoHsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: ohQQ6AIXUcw-SpSlr4NjLZB1EQE62ph0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269153-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 274331B5898
X-Rspamd-Action: no action

Hello Krzysztof,

On 2/24/2026 12:25 PM, Krzysztof Kozlowski wrote:
> On 24/02/2026 05:29, Bjorn Andersson wrote:
>>>> The recommendation that has been communicated is to based label, name
>>>> and regulator-name of the schematics, but prefix the node name with
>>>> regulator- to achieve sensible sort order.
>>>>
>>>>
>>>> In fact naming these regulator-0v9, regulator-1v8, and regulator-3v3
>>>> make the name useless. We further have plenty of designs where there are
>>>> multiple regulator-1v8 and regulator-3v3.
>>> The regulator-name is to match schematics. Node name should follow DT
>>> spec expectations to show the purpose of the node.
>>>
>> And "purpose" here means "it's a regulator providing 0.9V"?
> The purpose is regulator, so I was in general in favor of
> regulator-[0-9] with the number being index. The convention/schema asks
> now for a more specific suffix, which still is just a suffix to
> differentiate multiple nodes.
>
>>>> I guess the preferred name, per the binding, is to not have multiple
>>>> 3.3V regulators in your design?
>>> I don't see what you are proving here. The "vreg" middle name addon is
>>> not differentiating multiple 3.3V regulators.
>>> It changes nothing in the problem of this duplication.
>>>
>> I agree on the "vreg" part being redundant, but you're telling us that
>> all fixed regulators should be named "regulator-[0-9]v[0-9]".
> Yes, I am fine with some meaningful suffixes.
>
>> Are you saying that "regulator-edp-3p3", "regulator-misc-3p3", and
>> "regulator-nvme" (examples from x1-crd.dtsi), should all be named
> First, I would not change existing names just to match the convention.
> Really not.
>
> Second, this is not the case here. I talk about patch here. The patch
> did not need additional suffixes but added the "vreg" useless
> suffix/middlefix.
>
> Third, if these are controllable regulators for a new source code, then
> they should follow the convention with optional suffix. Whether the
> suffix is numerical or name, I don't care.


Ack, will change regulator node names as suggested above. Thanks for the feedback.

>
>> "regulator-3v3"? Or is your feedback limited to those regulators that
>> are trivially named in the schematics?
>
>
> Best regards,
> Krzysztof

Thanks,
Umang


