Return-Path: <devicetree+bounces-270984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIqyNCUUqGnUngAAu9opvQ
	(envelope-from <devicetree+bounces-270984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:14:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 339D51FECCF
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:14:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E231A30045A7
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F67C3A5E77;
	Wed,  4 Mar 2026 11:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZfszIOMH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="epR9SHyq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE064372EEC
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 11:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622883; cv=none; b=qJgP3PPbCeaVj6LZx0lsg/iJV/tp/pPghIfgp6pm3pMoGI2krZ/s4knv/P41nKu9U2saMCZqNmDVXxLpqb3Ld9ODAZ3mAhKiuo0l7M1TsA5B6AmGy44JvIj1EWz+s0wNBOn1lMetsZLa1xjpCOrf9Vd3N60TB6v1HSJ0tRF43xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622883; c=relaxed/simple;
	bh=6TGX5eb8szacsm3F2lalvCDnlz7m3TVT+pByVabyND8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ISEmUZ9TLkFWXtW3kWbqHY7hsJLCr9KvOiD4TlhkCIqGS20USK2lL7Nd+SA5bD/5kytvCLKg/WIEnKws41aC5T8BlvmLY3kxp1v4LUvSdUOfF4+1idv04hCoV8Uodm3Sj4ouOUMfHP9hDhzGBWfxtHcJI9S7+zhX16wUSg/zo0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZfszIOMH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=epR9SHyq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245STso2306170
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 11:14:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0rGH/jrADNsbgLFFgLkWWPcPeim09mgivrA/vZM8rJI=; b=ZfszIOMHKp6J40jg
	oBrF4ZuPUGXDoxCpYm06ffM12zLkZVk1krzE32N1D8vdreRK8ZYpYRtXkLLH93Df
	J3UnpJLRwdoO8u8ax7RwJ2rMT+pC5DeMq0aIJbqPEJUbt8rH4saAllREexOk+RZo
	n2xfNBA0jP8Em5OS0195UXKEHHGX4OfAmvHQj1FluVG7FuToacmn+2e4QtEICzZv
	wJsx2eJW6Mycgrq5Fy9dCHHfafq/dlwhP+Tar2gEnim2rwWob6OSLo4bhCVYJau5
	sN0gGELSwnmwj5P6Tg/LAkJn3DwDRAaavp21sNihCLJtpCMSJYqETKq7mIxd3cKm
	4G4fXA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpau8sw7u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:14:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70fadd9a3so2377985a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772622880; x=1773227680; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0rGH/jrADNsbgLFFgLkWWPcPeim09mgivrA/vZM8rJI=;
        b=epR9SHyqiPEUankjwQGRYP8oYpj/CihYu8iU6TP5oDX+mwsD609B7bbZcDul8PObUh
         yLYzCRUmJBH5yeu5EIZUJrgWZAQAJNshUb/Z6rL0RPWOvBBcAaW5MWvOyKSgFAgqs9vJ
         qePXD8ztjsTgibGDe3LHnaj1ajyvb6ousHVWpiaA7JtpTil9D8P5gQqOqgob4NREjzR1
         RZMG8qmbXxo34vJhHMaWZStv/E04SAE5sngbe+KIMQViFmqGSjclvtSi3sPc9lQvMbZt
         AbLXo5EcmN5G7TyBQsEFmFgxtNjaEPPC6yVk/Mu0bys6uIL/wuL/j3vHaGUv1ZqdaGvD
         J43w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772622880; x=1773227680;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0rGH/jrADNsbgLFFgLkWWPcPeim09mgivrA/vZM8rJI=;
        b=CPr3D8FKHOL8DplbtnFvq6xduPklLHhc4uvo5YsbODiLA5RBwDw6TknZCS1sawJRU3
         eI39LgLbrVMUFjsEKBEm+M0OJaMygV5G/qoclWzKhZNcyrrK8rGc8qS+HQq3X3AEbP4c
         RAQknoIIRHUFQLdpSyk0sLF9JjeNaiN1rIqEhrAVwJsnNs//HOUzV0GoJebk14TPROs3
         bZBPlgiecQ789rWIGuKHea7XqUBCadGhZKu6pJpEQnrpQipLeD4zrpAzKUr3jSL03Vke
         PAmpiM9HE0GVle5/Z1H6mxTpjdUx+Psh8vp4Xn+GEf/Dd7ayCJBrq7auwDs+mfk9FarZ
         ZJRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxPPCVUMFjdo/XBa3swnTk/zXL1b/cfXg+hrK/9CtQW8BrfbGqrAcbPZ3wZ2GWs2iMnbD3U/RFYrp7@vger.kernel.org
X-Gm-Message-State: AOJu0YwMJrj67qcZ8dP8Bpem3tPmJSwBuvoRAmhro2bbhXguHvq+dY2w
	ItdSAwwpyw7BN2p7TQM4vc++uRdG1oqIT4lWQNx5qO7WTZwYMBb5LFxasOYrW0usRbbyU5iJdnK
	/qseJunAObits5NnYx4EwGSVTdKjJwDTaHbdmjgEQYJ1pZuX2XSEP6E3TYpb7zUDY
X-Gm-Gg: ATEYQzwBMbHz/p39gLZuz8EINEENxxdu36HgsXvi/qWNXIS72bv2alRU/k5XzVKEMJl
	HbjcUdAfb/5m0Ru6+fwzWFQeUdptROHJkrXvMJiQbA/G8hHVqZJ3keioEBKNkhjIHYet6p5mgB2
	W6iRIweZOLAGZ54KNYt4kDP88B6wsaWsg/KmZ9nvshJusqP0Ud0cEiKhArXP1k3VUIzQBV3WjhV
	HfgvqD2bSaiBOz0X8WjzYWmdh3m/cP1Jn5havkUHfru74Ag9KD/tv/YqGl94i6Ss/5u6Qa1Yn0J
	yfPcipgvxiQs4k4pO6bnKRA/eYsfbYDXp2uZ6lPKRhrmDCKRCplNhyRRvOO+3UZ2PT62p4lyhFZ
	NpObiFLspu+G5eRrQPhw13Zva+46G2hhYIQKgfVlWNRu9uSIz
X-Received: by 2002:a05:620a:46ab:b0:8ca:1107:1215 with SMTP id af79cd13be357-8cd5aed6d97mr172217585a.9.1772622880265;
        Wed, 04 Mar 2026 03:14:40 -0800 (PST)
X-Received: by 2002:a05:620a:46ab:b0:8ca:1107:1215 with SMTP id af79cd13be357-8cd5aed6d97mr172215385a.9.1772622879860;
        Wed, 04 Mar 2026 03:14:39 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-439c65e0b23sm6002048f8f.32.2026.03.04.03.14.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 03:14:39 -0800 (PST)
Message-ID: <14abc647-25c0-449f-a4f0-978372ae5544@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 11:14:38 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/14] ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add
 Senary MI2S port
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mohammad.rafi.shaik@oss.qualcomm.com,
        linux-sound@vger.kernel.org, lgirdwood@gmail.com, perex@perex.cz,
        tiwai@suse.com, johan@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srini@kernel.org
References: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223180740.444311-10-srinivas.kandagatla@oss.qualcomm.com>
 <20260224-ethereal-koala-of-health-eab910@quoll>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20260224-ethereal-koala-of-health-eab910@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AJS1/0o2 c=1 sm=1 tr=0 ts=69a81421 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=OoQJ-9uZOr_G_Hsk2v0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: w-kmbpTcrGn8fT3nmFft39E0TrQWpQBN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA4OCBTYWx0ZWRfX2Lj5cLMTIk7X
 dIJv1mTo0vtOG64+bUlrDRbGl3xZT1udo4N8jniNLTxFkRSAm54ga/8td8fE1x/7iUFekUp+u7d
 vUDNIKjPFiRwbwVn/LlLMjN0f+Kv+gDqPdg4zn4/qYJkEAzFHW6JNV++A0H6rAZfp/m9DOUPKBT
 fSBsDsu3Ml3a8C5WjFAgJaP40rdy5hguO3vBT92XSiMEbFjdBkxKAN/EYWcjLFlq/n1LhYH+WlU
 q9SfoJ16n05B8kgDybM6ergD4CzwGTGpmJ1qtpx2LAvs/DYLtwIsQJqkzZblN8qfEO8r+0bZzyV
 mc6SzRtDVXUirXAWx6TAND0fwOf4oVJnlbmY/mDENHcIVJ3atqK3jiXP6EvMnJRitfwToNgczOP
 ha1i9R67XBQhwD0qZP1LH1OSEZdwL/l34WZ8CphFSzCj2eP18IMBEYd/posNYNcK42LTmnPqcvU
 wFlpQfT3eBRxfAFW9Wg==
X-Proofpoint-GUID: w-kmbpTcrGn8fT3nmFft39E0TrQWpQBN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040088
X-Rspamd-Queue-Id: 339D51FECCF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com];
	TAGGED_FROM(0.00)[bounces-270984-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 2/24/26 7:14 AM, Krzysztof Kozlowski wrote:
> On Mon, Feb 23, 2026 at 06:07:35PM +0000, Srinivas Kandagatla wrote:
>> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>
>> Qualcomm platforms support the Senary MI2S interface for audio playback
>> and capture. Add a new definitions for the Senary MI2S RX and TX ports,
>> which are required for boards that utilize the Senary MI2S interface
>> for audio routing.
>>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 2 ++
>>  sound/soc/qcom/common.h                            | 2 +-
>>  2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>> index e27a31ece1f2..45850f2d4342 100644
>> --- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>> +++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>> @@ -150,6 +150,8 @@
>>  #define LPI_MI2S_TX_3		144
>>  #define LPI_MI2S_RX_4		145
>>  #define LPI_MI2S_TX_4		146
>> +#define SENARY_MI2S_RX		147
>> +#define SENARY_MI2S_TX		148
>>  
>>  #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
>>  #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
>> diff --git a/sound/soc/qcom/common.h b/sound/soc/qcom/common.h
>> index 85ca73408151..ee6662885593 100644
>> --- a/sound/soc/qcom/common.h
>> +++ b/sound/soc/qcom/common.h
>> @@ -7,7 +7,7 @@
>>  #include <dt-bindings/sound/qcom,q6afe.h>
>>  #include <sound/soc.h>
>>  
>> -#define LPASS_MAX_PORT			(LPI_MI2S_TX_4 + 1)
>> +#define LPASS_MAX_PORT			(SENARY_MI2S_TX + 1)
> 
> Same problem as v1. You already changed this. Don't change the same line
> multiple times.
> 
> Anyway, this belongs to the code patch which uses the new LPASS_MAX_PORT
> (e.g. ues new SENARY bindings).

I understand your concern the reason this was changed in same series is
because the patches are from different team members and I did want to
keep them separate. I was also hoping that this patch would provide a
reference to anyone who is adding new ports, so that they do not forget
to update MAX_PORT.

I will move the defination of max to last patch, also remove this change
as part of dt-bindings patch.


--srini
> 
> Best regards,
> Krzysztof
> 


