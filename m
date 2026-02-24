Return-Path: <devicetree+bounces-267807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOTDDrx5nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:13:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFD91852BE
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF46B304BEAD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A68377551;
	Tue, 24 Feb 2026 10:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MMsXfLAZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fC5iC1Cz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4C3376BC8
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771927967; cv=none; b=UT2FjSb0DenBJB0qHMDMU9Ft49+DwZd+wijmJ8LRMhr62jrfHABf7JlIypaqtqTun6SyPP9szbMx2ezHNrdIZcusDMr0Ce8zXdVNJyN7QuhCzZa/koTgAW7/7y/e3JjSuwzezsXI3mUpZytuytvudRK6H7geXtDeBNwOLIZY0G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771927967; c=relaxed/simple;
	bh=FCMRXZR8SAuy+rR/oG39tLfH/1KCNmdkdQtzyJsu8Vw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l1RnI+j5OpcBl4VF2KFxGwSehMNGpBDh0ttZpaozo4VnRuyLqU5d5v5Y+HaXEbBEZPKyXc/kde78kEv9qFa9IfYrXWC+Vi07oCSgyC2EZKpPEy7n5tZ5tvAfM82mYo9YYjyaSFlMkFpHOvR09GO0GxlzmfTXq7nGCcKWL17wQAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MMsXfLAZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fC5iC1Cz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O9seg13522805
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:12:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/zUFJH/jB3soteowiXuTedDU0sM6XkQn3T2X92OyF00=; b=MMsXfLAZE5ynACpp
	FWhZxfOch8YxVJDeYcSsHfthQw5oo/DhMEoqBTJwY99Pk8tMduRE+meYw5fTfkgo
	2w+Giycozlkcg1CeqPpjcBSqsNUlGHK4z/5as6cG3Z4CRgPKJ4KKK4h1Hs7qnRs9
	W+w358ncbTbBZnmstNNc7CzuqJ5i/jwrhgOEBwstJ0VETln0wmTIOEFY2N9+0CH4
	PvGUNYt12JFPTyIJKGVCR2tHeO3spDyFNDULWJNH/dQwl5cT44LMWpwCCcGqPTq0
	rfx9UFwvIB0MXJ04okXrCc4LEzvvNue20bY02TjRHE8lrszsfM2/eUvmhZVLJUvL
	trqH1Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8rbv0h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:12:44 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-896f7c56f10so53457136d6.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771927963; x=1772532763; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/zUFJH/jB3soteowiXuTedDU0sM6XkQn3T2X92OyF00=;
        b=fC5iC1Cz7x8o+f1v7XbZ3EQqnt6fMApVqZjy1WLh8761owuNfXP9Dc9UGvBN6SktZL
         9j86EGlTwJniDSNbDLC5ju10k4yR8KqDMwlXJaNenKEW1kX03bz7Ymp/85JoiM5mqcHO
         bSAeYt6vG4+RUMC8PlGxraT8cG9WKq8RkB0XzIgcxF3h6IStPGeIbdfiux+pvbdxL4dZ
         EHoFCpRzA/LLvpWbcLCkNb2AirT2nfuC6jrkie5VnTcB0F/vEBr6M7tXDKL3yidTWyUO
         PEIPv3aNoLFiWwWaqOJmX1mg/wddDjTJEKsM2MB1tyDNF5J1wX/L47rzmTPZ/xlxouDK
         lWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771927963; x=1772532763;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/zUFJH/jB3soteowiXuTedDU0sM6XkQn3T2X92OyF00=;
        b=favuGd1J2K0CFQjVYa8Aa4E2VwAVJ0ywJVrQrUI8Yh+kaJ3vHeWqG/d1NiaO367obo
         l6r/W1D82fhKbl5CXWJ/dGEB3Xb20hQdrU/eL8IGErN9WoLHFWFAqqkF9IhqvTQ8KkL6
         sHQXNhtCIyVzKGKUfGnoShZnvgdDBQQtSaEp0uwkc7wzyZB9ON12n9tMe4g3IAuvAbqJ
         G1qYKnElghdpadRlyRxdZmm4NTee16aLsIdagyjXWxkg1o/9qHAjmhqozpezJm7ONPH7
         8qp8Is2l7TCmx78c0teLYb+GVBCRVEcETi6jAYMJi2yCxajClz4Mhk+MaNp+Zz4tc9e9
         WSHw==
X-Forwarded-Encrypted: i=1; AJvYcCVZr0kcchW20aW5B8tOfj6v4jq/0Og8srqsW1YtsQxIOKZMYxEfIz6V5DHQ6kclKddJ5dX00oBafwSX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw34MlsLllwExR53+92jlPY8g52cbse+5jBfVn229ZbUCkRVs6J
	b/1C1aAybmh/gbkX413yGozVdjU7NpA++G7j849v9wawS1tpVesnkWl8YqQskpg71GUyGa+QvzH
	+dgE3i1btvN2fReXfGeU1vOifobPpQcSXWtVe85P0s6EggSQwDLzBffe3yQ8zX7Gc
X-Gm-Gg: ATEYQzy/Kb9dBjB4AwzAyW8ZnpwE/WKlLxzRZWalfnXiT9MyB8MlyhY0fXYFFUamkLB
	2RHQqbRuAlcMM69U7rldxJ4UEfiTYfS7CJLDr0hPCGM1D2iBxSIaMzkhZN93PifYWJLO+UwvMuK
	MvrLu1kN4TGNegsg8fboBHDdSJmHOukFAjr8rmyL7H2er2BR3+G7afYa/Wdc1r7k9AMJ4jmjLLY
	gWtOxpR7m4iIRwauikrJBy1QF1L+ydbSENX1cRMcFFmDv/sl1VENbbuVkUKpqGlzlh1jA5RNYoj
	G7tS/7PZGSm6fMCkPGzalrV2xNR6Cg98tOwUrxmj+70rFAthnWSTvDr2/F0IMzF1BDiDT2kv5vf
	i/lNtgdTofROKC/XsI3Cb7gZIg+9Hp3LpF4ajnhj6YI74g3yBb9QeLMiwzqSG5wOIo6pK7xfpVY
	Nof1w=
X-Received: by 2002:a05:6214:8095:b0:895:4919:f536 with SMTP id 6a1803df08f44-89979dbc49bmr120768186d6.3.1771927963625;
        Tue, 24 Feb 2026 02:12:43 -0800 (PST)
X-Received: by 2002:a05:6214:8095:b0:895:4919:f536 with SMTP id 6a1803df08f44-89979dbc49bmr120767896d6.3.1771927963147;
        Tue, 24 Feb 2026 02:12:43 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084e4be53sm411811166b.31.2026.02.24.02.12.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 02:12:42 -0800 (PST)
Message-ID: <c6ceab84-899d-476a-b2d8-e57028cc91dd@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 11:12:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/14] ASoC: qcom: qdapm-lpass-dai: correct the error
 message
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srini@kernel.org
References: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223180740.444311-12-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260223180740.444311-12-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8a4KTU86YiABVs6Ovg4b5VPzLqttIZ3i
X-Authority-Analysis: v=2.4 cv=V7twEOni c=1 sm=1 tr=0 ts=699d799c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=gJfCF8_cG8V4FlLix1QA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4NCBTYWx0ZWRfXwHGGCOwfuK14
 OYbvWOnM+AQO0D7gJsypD7WXsVvTiHdsxtkhVvlIVW37bR0EaBj1CFfCwJaAr5yJZhqt4rKXvoJ
 dQ9z1Iz5VSyV9ErjRiR8wnFJFwYFtVQ4wvZDrs464CIOImUl+k0GRWne/FBcDVXGfUPvy32AT3F
 yOBgpra5PM6ryrV+fsoY6ubR+dLwIlFyRxlJQQXSA4qMa5ivMAvLMiCLpkHSIWldSPy3QNmIIjL
 r/7lc6eb5Ibd+rrVpaHCW0tStkFsdMAwG6gcoUbXZJV/fiFt/ihO1gpvmWVRx7rtdp/Bg/kzcqU
 E2RYCEiu4HGUHgr6KX3gHQSdDb90gk1xbcvkFq1x34vfQElLf0XJXQl5rYRihubgQ22oWUPJ1Ff
 znZEtW1l2rEpaA/oi37zauLwJ1HSnOpbag6p2fmZGP+yClcMSXUrm0poZezx9isNrWlm8qHcaEO
 vL2pL3rhTnhEKVuoEkQ==
X-Proofpoint-GUID: 8a4KTU86YiABVs6Ovg4b5VPzLqttIZ3i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-267807-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5BFD91852BE
X-Rspamd-Action: no action

On 2/23/26 7:07 PM, Srinivas Kandagatla wrote:
> Fix the error message to reflect the actual graph stop error
> instead of graph close error.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
> index f68d4b4974f3..fc246485e326 100644
> --- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
> +++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
> @@ -150,7 +150,7 @@ static void q6apm_lpass_dai_shutdown(struct snd_pcm_substream *substream, struct
>  		rc = q6apm_graph_stop(dai_data->graph[dai->id]);
>  		dai_data->is_port_started[dai->id] = false;
>  		if (rc < 0)
> -			dev_err(dai->dev, "fail to close APM port (%d)\n", rc);
> +			dev_err(dai->dev, "fail to stop APM port (%d)\n", rc);

Might also make it "failed" while at it?

Konrad

