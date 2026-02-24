Return-Path: <devicetree+bounces-267809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNWrFj17nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:19:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 981921853C5
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83B9E31B58FA
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B3537755D;
	Tue, 24 Feb 2026 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k55crp6B";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bekabLQZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA16137756B
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771928186; cv=none; b=AJZtn0wJXmiuSGiPSTnsM/1kPtw0E6Udsmzo0pZXF3NMvob1rm2guN3BCeKWLXfjkdzA8kVCBqpUiRHu+AkzPxVnu2O9TqMt5GJMxSwmlJvaZN24hP98bgSluPnKxOiRnC/N46pePQCCPVy0bzITLbwFX5+Ba/VyUIqRpAd+0lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771928186; c=relaxed/simple;
	bh=tXSUvXCwunQ23EDzKHiUTSeV6Lu2PRx2BSlcE39rkkQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GaYJVK8Y4BoSTr+WnjN7z2X8xOuQCL6oWoUdgSJnEWEH0WFR4WVwRg1s7WDWQuvqS+anriTFlcDSqHUriHWky90o+SLjih55YbICwD6TKMKOvBNWlZvmLrK2Qh52Xu/cV2ywcaJhkNwuFfzLeMf33E9Jg2hAoToaXRO5uYv34es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k55crp6B; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bekabLQZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFXra2512781
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:16:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SSFe2tWFC3c+9T/6vQ7AhbqX1hOj5PYF7zeMFWf212E=; b=k55crp6BYValQdOv
	gDW7zOqVuoB3RfmpldUW0H79OrK9FIkE2bEfqfgaTqE6EaBNM8fdNTymQ3Xa0Qzw
	EOyFTsJAulgmDqF4Cn4d21JEB8imiLRUdnYqW7BXtIoc+MJu3NqFJKSNeRR2vo/o
	59HZWKnoS7oM0InEhV7YWiQpnjgWdQIHWILurUY12wX3W1FxHKnB8iiqmjSyqUmB
	5Z/qsQTvftbkcDjinK7n3gsQ39tuhUWnz70pitScnPA6/LrXk/nq63+k+g3y74ag
	lhJ+++Pb8pB+OjXobtgUGQ/IiqPZkSFSIYEw/ws7oFctB6pK4313rbt5WREXgtAv
	x/TSSA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn81bv5j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:16:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8954b9b5da7so59469306d6.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771928183; x=1772532983; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SSFe2tWFC3c+9T/6vQ7AhbqX1hOj5PYF7zeMFWf212E=;
        b=bekabLQZWtPPLLnOTJVI/6/G8HKVtuaCQZiWgLL/WGBTa7dcFwtJepPhzy20cIuB80
         dodEroEuK/n1eMiHm7u+9e9zZk/y4tdGwsdWlqWHFfk6xCTaLBh9sOya0ZcDbPYIG2Bx
         svgo0TxRSysJLch2gMsCQz0neGcwzrLNH1x56xPbSy+fvz6unXYWM12oEkSXQN5gpXmU
         Te/2WC6+XGW9PVtWsSdCqa6E9OayA4qhKFPSVY0ia/Veb/tJTZPM0HP8GQDMxkOIagYp
         JpHV20gD0+eiVzymQnrcLNmddy5raA6MFP+emUFH2vfGCmmhgNtFWu8LdPWMRXlnq6tI
         wp7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771928183; x=1772532983;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SSFe2tWFC3c+9T/6vQ7AhbqX1hOj5PYF7zeMFWf212E=;
        b=INSOW/FQqdcltkQvagJgqfi82mX7klE/EBZTDS8gYiFHu0tJ78p8rKx5exO4A+Ku03
         kic7VkZowIHLTO+cDGd2qYCEvXvuyGOLeivfJaTkhiJEbM/sbvWxXhVfIg9LsuNKTvQ3
         IWR2rYloXNP1zPXIbdJDD21iakBOsatpj1Z3G+XHYjtX4uuocKO8cwLNeLSAopjYhEXn
         XNHTOp965cSsD3DenVhmIm7bfOO2Lnx/1XmEVPF2Q1fe9Gyq9dWnYEr56VhLVCbcr1ZD
         eheGj59koHJi/iluudgLssUahJfd0XJp9Vce+vmMFePj6FBPoJA7maI1JuWW4cZVtFgB
         kTVg==
X-Forwarded-Encrypted: i=1; AJvYcCXVF5EHfDK162KM1XQcRa5q12ULCM7R/hhUKS2um7FeJsfRXDEZ5Z8ab7AdtZCHlYftcQrGXngAQ3o8@vger.kernel.org
X-Gm-Message-State: AOJu0YxbS+YDgMxHX6pfzetNUmkyx9FvJKTuRp351mvm3KWhkwko1dzt
	ibC292RNtSEENb4aQkv0t542ArsKLf2RS1NXrneqsfWvni06CcWulojB5paHDF7xqzpHF9G84jE
	0/VJz36EPhdzkluEbQy0N/QDDimyrt8Oiq8zjPlOzwjn0voQ2MVQGzKQI1Os1KbFL
X-Gm-Gg: AZuq6aLZwHWHKNpQ8MmkhTZo+0aMBFoHyRGZ9qwKhc0U1btq7lFfPZdpTd9YhmvIg+U
	+kahvaL32iOk0qR3psLqzVI4N0/ocFmmfpYIk1bdgmOjI42HFtciWpNY2t7UKgZXKgeJ3bUGLte
	bDTEOxp/GT3cVRsbEvFdeGRF8A5rTaUPI2Y7HXdF1uBK3f8rbIX5m07CphpFlQMWcL/KDuP9ZPO
	BUWpo9yqOa9SVZSIldNTcTBtX57fAKBibdGVoK027J2588Ah8yGzj/TKbaT9Otq2HXeG+IFwk7F
	xFdPQHxNwaQcq4gVJuZxLeKOa9XT1tWQFL94s3fRR71Xqweo9HiypEP5kj38lENv45n4E3zcqhY
	phBspDLB81fzxMsNv4DtktBS0laScgobZJhl3FO8hRWoDHHPgWoTsZrIfA7u4rnMe2HJUywG0dH
	gqBsA=
X-Received: by 2002:a05:620a:400e:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cb8ca198ecmr1054712485a.1.1771928182934;
        Tue, 24 Feb 2026 02:16:22 -0800 (PST)
X-Received: by 2002:a05:620a:400e:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cb8ca198ecmr1054710785a.1.1771928182446;
        Tue, 24 Feb 2026 02:16:22 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084c84c37sm405006366b.23.2026.02.24.02.16.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 02:16:21 -0800 (PST)
Message-ID: <3b4dfe95-9043-4682-8fee-7588fa1fde37@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 11:16:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/14] ASoC: qcom: q6apm: Add support for early buffer
 mapping on DSP
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srini@kernel.org
References: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223180740.444311-15-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260223180740.444311-15-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WfDecvYbYS31nKlM97qOKnDBwPnDM0K0
X-Proofpoint-ORIG-GUID: WfDecvYbYS31nKlM97qOKnDBwPnDM0K0
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=699d7a77 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=TT9Tk4Jx3cP5QYn9PwMA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4NCBTYWx0ZWRfX11+ghhwESHLy
 k2ktAE/oW36KAdStPPzZc+5+KaiieTCFsMOjKGFfTYUhxKuNqRHEsQIN8gAg39pHrt7QVupJ5cJ
 SG/znku9ogc8ai7leA7HrxdCO7XcTcG4Wc7wmnK7Fcb+0rzl2EGMBEqAY3aohOm69YBqvGleb9U
 0xMWm5nlvD+2b9PKqc3qU8jBMc8enWynh6ocILDPHtnsKja5nIZZ1Jt9vqOybYSwACSXb/DPKjz
 SvlaDu2WN8kLPl83TIpAGlkCLbKH3I6aPrF5/4cnSw66RSvHJfQkmqbx25iRzbhrWLEfdDXOEaq
 0bZeb0LwUti90WH0HixjviBcFx4kAR03MNgXxELZbet75fgnvovXvXgsDLqKZ9LZLsWWnWPaQJg
 vm+RIyOdHeJaZxOy6rjAzCAFBw7BiC+KOwT0yZC5UvX156ZxzPjI/vLzqWYt3nybEm1P3649TmF
 WYEG5BFl2p0Hsc8ocDg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-267809-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 981921853C5
X-Rspamd-Action: no action

On 2/23/26 7:07 PM, Srinivas Kandagatla wrote:
> Buffers are allocated on pcm_new and mapped in the dsp on every prepare call,
> which is inefficient and unnecessary.
> 
> Add new functions q6apm_[un]map_memory_fixed_region to map it on
> to dsp only once after allocation.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---

[...]

> -int q6apm_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, phys_addr_t phys,
> -			     size_t period_sz, unsigned int periods)
> +int q6apm_set_memory_map_handle(struct q6apm_graph *graph, unsigned int dir)
> +{
> +	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
> +		graph->rx_data.mem_map_handle = graph->info->mem_map_handle;
> +	else
> +		graph->tx_data.mem_map_handle = graph->info->mem_map_handle;
> +
> +	return 0;
> +}

This doesn't return a useful value today, will it ever?

[...]


> +		case APM_CMD_SHARED_MEM_UNMAP_REGIONS:
> +			apm->result.opcode = hdr->opcode;
> +			apm->result.status = 0;
> +			rsp = data->payload;
> +
> +			info = idr_find(&apm->graph_info_idr, hdr->token);
> +			if (info)
> +				info->mem_map_handle = 0;
> +			else
> +				dev_err(dev, "Error (%d) Processing 0x%08x cmd\n", result->status,
> +					result->opcode);
> +
> +			dev_err(dev, "Memory Map region %x\n", rsp->mem_map_handle);

Looks like a debug leftover (also in the below 'case')

Konrad

