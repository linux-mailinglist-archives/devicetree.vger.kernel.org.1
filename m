Return-Path: <devicetree+bounces-278268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNjEOrM/vWmJ8AIAu9opvQ
	(envelope-from <devicetree+bounces-278268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:38:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 661E02DA5E0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:38:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A96DD300C81B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 961853AF65B;
	Fri, 20 Mar 2026 12:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mLY4G3xb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YAUPe+NM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4C13AEF3F
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 12:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774010062; cv=none; b=cKboIIDucvBM86SL0g4EaMiSK9nMhfA9iupCbcmWdESb0nruscyviksL2mBPMIctj/DUMjOYcogLeiDrzKJA6srRTvUB7VuFyltQjSP7OhiumSxCd0LF6nK2cPSInzZ4jotO5m+euPcpfNUg+MghRvxL4FJYDRxYG2Nl8bnIIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774010062; c=relaxed/simple;
	bh=lEocWDistd+a/+7r13EdA2zND6HPENPTQxBSlwMvoQA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uXtEJA/UG6zD+u4K09N4McSnneBdnF+wpfgECX7SicKdJ5r5QWRWqa8dvAYHXYdUNp1LMM00Psi+PR1yTXn/Oln/wu5+YUnmFnewIF/vPhezYd5EIDH18sAYZBM+M7iDgl3dDa86y/ulyvKPovNR2Scpo0SE+P4BrHqD9QwIpbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mLY4G3xb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YAUPe+NM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62KBshsK3876222
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 12:34:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VPR4PG726A+qE/vUZXZhajFmf3xyRoeSJ2nfcoJVvGY=; b=mLY4G3xbvmJkNoxA
	PAueJbXjlseO/EDkSMr6FR1cF+DPc/5Qphkndy8gatV7tsyKHH1MbZPJrIFo/Iq0
	lChnXM1YEyeppUenZR65D/kdfKedA7eh0eCzABjsaP2Bjs+rKM8U5R7lXwB2+M54
	fAixw4bJ89uvyLfi9lG68vspUSaD01Eew0prKQGLT0QrRuxyJAflUhP5SMsLJfly
	EretMRoYn7Kmv2zONKnrYF+SiuV2PAPsgWzu52PdEGpdsKEP4HBG8cDGGAi3YAjQ
	vO/Ko1D8CSu5YfvKTP2FIVJoO+A+xz0BrVNBJbVU6FEm9VjcTIcRmMbbvThopYii
	Hqluig==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d15s082um-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 12:34:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50b34223670so86470951cf.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 05:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774010058; x=1774614858; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VPR4PG726A+qE/vUZXZhajFmf3xyRoeSJ2nfcoJVvGY=;
        b=YAUPe+NMmPSjbOTT+cCZSmyS5tcWcQ3hOlTnL5m6M6hcB48lsdnLKc+LUD9l4//iL5
         mf0Apwd/ZukjhSYalJtcfHFP714e81+tE7UOQ3tYn8NogwxAqGuTH1RhdLpNxHUYq84C
         IDsxD2wjW2BOeINK20tux7fkRYb89KhLdtu8+a25XlyXdRPVp3gHrswK5eDD4I3Gbdss
         v10Hea5Khmm3USE+yupBXMQalCnJfTZ2/tWHahIh+a3fE4bb+YRqkVXy6dSRh9UFOXeI
         lpH0qFOwEejTJeBGbmKnJT4+9mwJJ9/pEx6U/pmMlZFwYpIM73Z7QrLqaFA076FiOwU5
         0V9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774010058; x=1774614858;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VPR4PG726A+qE/vUZXZhajFmf3xyRoeSJ2nfcoJVvGY=;
        b=bXz7ZvLrREp+tZCfAX+LyGvYdHTqMJ3FC1bbo0MiOK0iM5EdD3A1bWhHtumLYN3yCC
         2mieOQGNVOoBPWe3pTp2QTVkETls7kcyYSqhKkgMeQnr5lGoK/z/8gtfHAFWj6xJABvZ
         973bKL0JcFndX7zwr5ltzNkn7r8YMfj7KAJ0c9+4ufbA1HTqkTJhEaFWB7n9v5Dmvs9s
         KZLvzKZsanujzvyiPVa8uexqpvFeL7YPIIsKbkCElSPxjJEH3dHtNda28EbjOCaAGlO9
         oAir1QZubaoIYEaq7/8OwGPpB8AYxlDrAcufOsSnI0LzJsnlvQBV+jzhH5VLuPT53FIE
         fx3w==
X-Forwarded-Encrypted: i=1; AJvYcCU9K/JlOnuZyZ+f148IQ0T2F1SmxwMVK/mOwOujw5W8/R6t3GJAC+NgCvKsHn3HBMjwwl6Tu/TA4Aax@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2CBRU+zaM/DMw9btirT4hey7L+WZ3bUcUmNm9cVcb9oXWHZNU
	XVLCJy1ayRSI23Gap4bwjigHBvevdVsnUmEeyDtSnxRv4LgwCbHObD2vUiRCUuGP8tcIa2Po+jW
	X8ReuLo28tqcNGKd9EY3xAHRA4yN5XjGLPe0M6QlkaP8FOgiXDYlbZ2BPZjg5aWfB
X-Gm-Gg: ATEYQzzJGmikIaAMWCW8qKicRNr63Tlx3GJGR49Sx7qdd1ncKynXiV8l0FcII0km2ZN
	ys+Ed8/evyGXuGdRTtQNHYvtoIKaXPadoU6lGvyRMoZ3xVdMrwMPgmTDR7jli9g3la4+q2ytC4C
	UCAkWCSyH38BPCcldbZpt58S5HAEQ3aSJaOZLpn6WkrVlYVxB0ag215a2/q9jTMc/tjRTRzNixX
	INy48lrRWpnZpbTHdmVQgw+MvTFU/q6iNGUU7gtm23sdkfoDjrMimbAV/VnZR0RkC1/FSft50hp
	hynSyBeZ/Bv8cxOjGbE1BXOTy6xzWN1X3FI5Edc/hg2LYTcfj4VM3qJIwClFHEJH7uJJ3u6IamB
	0cwE0MjCmC6O1v61KYPSAcDhs48bwVeY2G562s2rGyvFw6JSK
X-Received: by 2002:a05:622a:354:b0:509:1dc8:e9e5 with SMTP id d75a77b69052e-50b375252d6mr37859651cf.34.1774010057602;
        Fri, 20 Mar 2026 05:34:17 -0700 (PDT)
X-Received: by 2002:a05:622a:354:b0:509:1dc8:e9e5 with SMTP id d75a77b69052e-50b375252d6mr37859371cf.34.1774010057200;
        Fri, 20 Mar 2026 05:34:17 -0700 (PDT)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43b644ae619sm6863826f8f.5.2026.03.20.05.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 05:34:15 -0700 (PDT)
Message-ID: <94641371-ad9e-40f3-bf5e-c97e38891eca@oss.qualcomm.com>
Date: Fri, 20 Mar 2026 12:34:14 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/13] ASoC: qcom: q6dsp: Add Senary MI2S audio
 interface support
To: Val Packett <val@packett.cool>, broonie@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com
References: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309065137.949053-9-srinivas.kandagatla@oss.qualcomm.com>
 <a7058f7d-b9c9-4f4b-87af-7775a2e756dd@packett.cool>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <a7058f7d-b9c9-4f4b-87af-7775a2e756dd@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: SgT6fTd0AJuPAjflBQ1BNOD29sb6Lt0h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDA5OSBTYWx0ZWRfXwYBV1H+b5hrH
 ybmhD4O+nfxTrdyZa23/zb+Sy2s3OcbCxy0Rf0nC0OjAqCoDcFtvmUdYmisweg+7Lsj67FdV7XB
 EpuVAA8/K4iCTxV20OZajzp9j+BxBaO7VFq/FZOjpvxLeUuXPXI28Dxe8tN66Z77XRs/rlMgQc0
 Bx/P4leP7TCsDtju4ogxXYTMgHj9y0oTzfjWHh5dRPWsRgDLDJxBUlM6IlT/HDFNn2UOPd4b3Nd
 NbwAh8bOMav20sYR8KoYtRKDelsdHv+n22iLZO4Bbwnc5fftnjizgSkIZjQsr8AOK9AUV47W4s7
 ores09zCsTgIcxEjLjoKMxRixYxOI1V1sEuO88v7Arj+NWAcD+TOwVm+cWTYXDuxMBi7bW/s3Yr
 Qj4jBsjJAPtGP/tgD5XDC+prWqaoOGwKB1G4ixNk8SAMc+pfF9r+xp8RtJzLHFgkqnjuP2ZBUpc
 KOmYDb9wSdNjx4et7/g==
X-Proofpoint-GUID: SgT6fTd0AJuPAjflBQ1BNOD29sb6Lt0h
X-Authority-Analysis: v=2.4 cv=KORXzVFo c=1 sm=1 tr=0 ts=69bd3eca cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=R13D1CNnDosyH6-BdusA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200099
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278268-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 661E02DA5E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 5:17 AM, Val Packett wrote:
> Hi,
> 
> On 3/9/26 3:51 AM, Srinivas Kandagatla wrote:
>> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>
>> Introduces support for the Senary MI2S audio interface in the Qualcomm
>> q6dsp. Add new AFE port IDs for Senary MI2S RX and TX and include the
>> necessary mappings in the port configuration  to allow audio routing
>> over the Senary MI2S interface.
>>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>   sound/soc/qcom/qdsp6/q6afe-dai.c         |  6 +++++
>>   sound/soc/qcom/qdsp6/q6afe.c             |  6 +++++
>>   sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c | 29 ++++++++++++++++++++++++
>>   3 files changed, 41 insertions(+)
>> [..]
>> diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
>> index 43d877322bae..7bd40e32f758 100644
>> --- a/sound/soc/qcom/qdsp6/q6afe.c
>> +++ b/sound/soc/qcom/qdsp6/q6afe.c
>> [..]
> 
> 
> One chunk is missing for this file, adding it to the big switch in
> q6afe_port_get_from_id:

Thanks Val, I will fold this into this patch.

--srini
> 
> diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
> index 7bd40e32f7..40237267fd 100644
> --- a/sound/soc/qcom/qdsp6/q6afe.c
> +++ b/sound/soc/qcom/qdsp6/q6afe.c
> @@ -1783,6 +1783,8 @@
>      case AFE_PORT_ID_QUATERNARY_MI2S_TX:
>      case AFE_PORT_ID_QUINARY_MI2S_RX:
>      case AFE_PORT_ID_QUINARY_MI2S_TX:
> +    case AFE_PORT_ID_SENARY_MI2S_RX:
> +    case AFE_PORT_ID_SENARY_MI2S_TX:
>          cfg_type = AFE_PARAM_ID_I2S_CONFIG;
>          break;
>      case AFE_PORT_ID_PRIMARY_TDM_RX ... AFE_PORT_ID_QUINARY_TDM_TX_7:
> 
> 
> With that + adding senary to q6routing and to SoC specific sndcard,
> 
> Tested-by: Val Packett <val@packett.cool> # sm7325-motorola-dubai
> 
> (WIP device, patches coming Soon™)
> 
> 
> Thanks,
> ~val
> 


