Return-Path: <devicetree+bounces-270981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HdLOGgTqGnUngAAu9opvQ
	(envelope-from <devicetree+bounces-270981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:11:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD5A1FEC06
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:11:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D88A2305336C
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C24283A8745;
	Wed,  4 Mar 2026 11:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PWDaLL3h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fKK7Ogff"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E72A3A4F26
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 11:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622651; cv=none; b=SYjc8vwUoUCT30wNCLSsrtTN9E2Ru2cs9OfmpxKrcjgstGs/+cQjPOrRpnTYFBPCH7PIe+p5aqj9jOPOTjzEgs8lEiHCPoP6FMqiQBavXDupyBTzSEvovPRpD5pv6Bksj71PNHydEZcRJWmRKE3l7Q2X5QYL2ND1b9eXpFbveIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622651; c=relaxed/simple;
	bh=8q4I0+K3Qd+pKpBHKEg0QmrqNR8wj9CrheJKZvAvxoQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B3ZYO0Oy5qOYqwCthG/CmdYLuV9j/QbE5dRURpV0boYY4WgrkRCeEHvqZ5i9kFTka7gt+nAnH4VxpUil5SOYWgHJyP/wLYR8Xe+YQX9Jb2twRfnC/fN1DZKQNz1PmHYivh8ccP/0XvBS30B7PytlpCLxLcSC/86wfIX7xZT3hdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PWDaLL3h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fKK7Ogff; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SQXl957040
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 11:10:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MCCLwpZefcWyGX97YnB9vElnqX71UTAgAeEXx3DfaRQ=; b=PWDaLL3hXJ8B+B3K
	9BbHZWwPBW6Z86Zthjxd3PjGFDOXiE0Zf2cwHaRhIJ++rZpYaZwOcNUEkzsBPUl9
	BosBeVr4+RZa0QEMEbcFuWlnEF9dImhBz86+8iws1Zg2fMoaaoWC/QBL5PsKzMzE
	x/9ECkbkya3GvPuIFGj0pRVyRBnrpqFbRq0eEfk48E/hHtwe9eo+x/xK9Q8nWVas
	UJJvNGbTkBycDYOpxWMGlPKNGWqj26mBwTnTh9svxquaLyfYRaHT2UB+aj7TPnRN
	dBCiThI8kdAMDMSVOqFV2LcmBZqnL/eUrBqzVs46h3Y6yLdsAz3QQK2o8kxAOMfe
	qKHv9g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp6qgam2a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:10:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4817f3c8so3746312185a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772622649; x=1773227449; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MCCLwpZefcWyGX97YnB9vElnqX71UTAgAeEXx3DfaRQ=;
        b=fKK7OgffZtf64i3Lz6lgT8pxLIBMwLa+D7JmZf6dPUKsl8GpmmpEmJoB08asDGsNbj
         8HpSy4eJrywXI7Neo8rvA3r93YvzR80D1cyyN3WQr6wFXHkD92J0oaXaKbOLC6auMMlJ
         H+ejqLiHzey8sKE2MAMWUrKqKmah4D61sKvohb9sn1UMXfSbwwX0OKB+Dkn8BRQdATk7
         +LnVtqBOzMujJWgxdZt3XnfL5p0r9aTD83W5HTsB1ZLzM7UokEfxSZgaGu3CtNUYs94y
         0xC3iSGecq2oWEI/n/B+cRa6O3+o4DHtHFXjWrXuQpY8GunvF4YOk5rXAchioUp7xmZ4
         OD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772622649; x=1773227449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MCCLwpZefcWyGX97YnB9vElnqX71UTAgAeEXx3DfaRQ=;
        b=HakfTsYJMqK0VdG4diHASEGs4/JAsOVFsbbUr7Vh8g6JRLxkQKKJ87MiZABbIMsfJV
         t4imr+k0IN/OptfzfoNW770ujuavu0L8D0F+6C/IRmOfwsxQdR9JbmIKNa1rdxEqS3O6
         BpLg2zxb0lACDDMpPVsVicJz+u8jrZ+3zhhhXnOAX3daKPM2WmqFqeO4g5fGPHmQwbyJ
         ZdTH4UFrVeveI1zunAnWrib2LuGpAaRz7luscmwRBtc6GdtdIoilVkFzSnQCBXQD2SjP
         HKG2Mn98TjQYwaCqQ+fR7txLsBtkvvd02cUVxTULRZbHOhB6XQUODE9hKkECUyI3jqxT
         oD5w==
X-Forwarded-Encrypted: i=1; AJvYcCXD/SOqzw/2zseWT40uJfFnZ9AWZ52o8YY2JQlgM9RNFrbnaWvAH8w5VZN/83kNUT233GpTHSNQdlJO@vger.kernel.org
X-Gm-Message-State: AOJu0YzAl8yfbn4F4348eXO65W8mU4NlNpfPBKA0zRk/3+GrhDySIlTj
	FAmU0dA7ikSbAnuTBDUjoXuop90BX4ObaxFvyji2dFrua7vNJbqyiPc5rHnSvOWjNABpVGzh7r3
	CPV3/1kztk968Ahyhkv523QS1dEylRlKtp31MqS/klyp/bHHhcEDFkvj+vlSSWuTB
X-Gm-Gg: ATEYQzy0ZK1dsCeQGND1pgrspzde9PwOXfs2s99wuAa1MWcDP++nM1GhXeicgZVeMFC
	qpZW1+RaTdv8rU34GJbl5N+zO1lIOPHb+Gz0ksGeQcgdDkNTebEDFGC/w1cACwm+DMdZrlHBB+x
	JoSnC51SaZa0fxtMiyeIEmDjHkw59DIyAPH5dtgJHbGtJj5EfTqCH4nRj+ZU5H342me2kFXfxZi
	+pXKNxELa6fBJqRzVE9CXXBOMOCy33KiYntFBkqcfrccTb7bgk1L+r+JdYtL3VULPgcRpSIPaM/
	PpGQMOY99fTgM+yHn8rZ+CIlp42uWlXQSr3wXFhvWIIJR3gur1Nm0yUwGb0kVQ9Vw5t0ycE61WJ
	cSXCrXtY5YkpV1o4TycG6e7raOxiFNEcnqWxjajJRA0XFMGkx
X-Received: by 2002:a05:620a:1a08:b0:8c7:6f8:ae4c with SMTP id af79cd13be357-8cd5af774f7mr178541185a.43.1772622648964;
        Wed, 04 Mar 2026 03:10:48 -0800 (PST)
X-Received: by 2002:a05:620a:1a08:b0:8c7:6f8:ae4c with SMTP id af79cd13be357-8cd5af774f7mr178532685a.43.1772622647870;
        Wed, 04 Mar 2026 03:10:47 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b935aee56c2sm744482466b.65.2026.03.04.03.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 03:10:47 -0800 (PST)
Message-ID: <47123dd6-d17f-4d82-b8a1-e04a50e73a27@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 11:10:46 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/14] ASoC: qcom: q6apm: Add support for early buffer
 mapping on DSP
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srini@kernel.org
References: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223180740.444311-15-srinivas.kandagatla@oss.qualcomm.com>
 <3b4dfe95-9043-4682-8fee-7588fa1fde37@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <3b4dfe95-9043-4682-8fee-7588fa1fde37@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA4NyBTYWx0ZWRfX+aTHIvfG62Xp
 xgSJWfB3kdLfWFME36ferGbQulgUSnLj9iDXBUhpiS4RIAzBsa1oXcz+5lKUqowDTULvl5hZgYn
 ld2rrTciYxZFJQhxEAG3ps8vy+jNcV54jkyo2/ZGAds/WfBHJj7bYWkphCibhsF4o2xz3ffDShS
 vAUgwB+v/Nu2PA0n50ckCWJEIpOH+W2tidfyxj0mdnOO5vAwgzmdorp1g9ix4zFgvFwn3T7gKPJ
 n0diK7LLR0bjOuDrwa7/TgR+FbJa/MtxnKHQ0wBfV3s79BpJdonCu+Jz2oCjSCi42nYFfPXgqev
 KX+tMVCClYo1yxyk9Ezl5P+y+CqWUZ8aV4A+BQipgcsN68Xp4sMnccSGIJwptiIFRSALo4R0Emk
 F9pqlyCkuU3+A0zN1QN36jcwXpX83vO7N0JbeE4c4e21bsoyzAQsu6Yq9nko/i1ijVIZYm/m+63
 j/LXxpeSFKeyHrREbZQ==
X-Authority-Analysis: v=2.4 cv=UJ3Q3Sfy c=1 sm=1 tr=0 ts=69a81339 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=29lxGkwPwxXT-BnxCXIA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: QF3Wy-QyFsgQ5QqhWvXiCRg2sGlPNXZR
X-Proofpoint-GUID: QF3Wy-QyFsgQ5QqhWvXiCRg2sGlPNXZR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040087
X-Rspamd-Queue-Id: CFD5A1FEC06
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-270981-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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

On 2/24/26 10:16 AM, Konrad Dybcio wrote:
> On 2/23/26 7:07 PM, Srinivas Kandagatla wrote:
>> Buffers are allocated on pcm_new and mapped in the dsp on every prepare call,
>> which is inefficient and unnecessary.
>>
>> Add new functions q6apm_[un]map_memory_fixed_region to map it on
>> to dsp only once after allocation.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> -int q6apm_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, phys_addr_t phys,
>> -			     size_t period_sz, unsigned int periods)
>> +int q6apm_set_memory_map_handle(struct q6apm_graph *graph, unsigned int dir)
>> +{
>> +	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
>> +		graph->rx_data.mem_map_handle = graph->info->mem_map_handle;
>> +	else
>> +		graph->tx_data.mem_map_handle = graph->info->mem_map_handle;
>> +
>> +	return 0;
>> +}
> 
> This doesn't return a useful value today, will it ever?
return type should be  void.
> 
> [...]
> 
> 
>> +		case APM_CMD_SHARED_MEM_UNMAP_REGIONS:
>> +			apm->result.opcode = hdr->opcode;
>> +			apm->result.status = 0;
>> +			rsp = data->payload;
>> +
>> +			info = idr_find(&apm->graph_info_idr, hdr->token);
>> +			if (info)
>> +				info->mem_map_handle = 0;
>> +			else
>> +				dev_err(dev, "Error (%d) Processing 0x%08x cmd\n", result->status,
>> +					result->opcode);
>> +
>> +			dev_err(dev, "Memory Map region %x\n", rsp->mem_map_handle);
> 
> Looks like a debug leftover (also in the below 'case')

Right, will fix that in next spin.

--srini
> 
> Konrad


