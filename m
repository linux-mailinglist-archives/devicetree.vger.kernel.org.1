Return-Path: <devicetree+bounces-326956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xXrHNgZ9V2q4LwAAu9opvQ
	(envelope-from <devicetree+bounces-326956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:28:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 497F775E1E6
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:28:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=p0WOR4hY;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=HtUN93Rt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326956-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326956-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4418303D313
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7443346AEC6;
	Wed, 15 Jul 2026 12:24:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1874534B3
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:24:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118263; cv=none; b=OLV+26t5GsXNQ7FPbWsg7Xarbnc+yUhG6SA+B0RpPQXZOyEmGIqvNqdvAuBuG6VdQqOKkjdKEnEHoGQQcmB3XH2Ub/RmfmMFU2HIRTRPxmH9RAD9j61LzcIgWD12ZIuozVl0rD+hZi8DsKvqI6JcBBbiB0Pi8tvXjNuG8p1MzrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118263; c=relaxed/simple;
	bh=OiLW0cnorrZrBTCCbegC1HCSXh64/IHwTXjkwHMRpLo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C9XSoXGs8laZJdXzGfzGr0ChxX9md3PdyxQ433hYoFjoxQPwAm0jpD1i2vOEvOHSwVodfb0LqCwSMY1iYUBD8cIWzUsKmJTrbAKxsG0YQhY3aGGUPqDUnIbQKQI8Iux2v4ubV+qVRGpHk8IIvQUwCDm52jQPd10hCY1YQGNZKnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p0WOR4hY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HtUN93Rt; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66FBcaPW3766609
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:24:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n+6U+9HLnuGImDd2MqcA4i8jqmVqmZWZIAdVkvw4LYo=; b=p0WOR4hYHW07HL2k
	OV+sr65xB0Q3FJ8TzTpGqbWYF3U5KjEKy4RPuE/muoVvDosiK4LDWr3oAYe0UdnO
	xB9OSs/hmQneWnIVxJE62bH/lDvjuufoJoXlPJD2XeBgkT4dEkLcrzLrFOmNxX0D
	xzijU/5Ihrw7JXDkUfPD3395jWEguz47346Vf0MGrzoLJOVWQ5hJrlwyWPnw5kWk
	S6qZ0++ZJo6TagxmkbckIubPqNs68ZLfTxze4D57WZddVNKb676339esjExKCYZM
	Mhrb8dBX0P66kEmeYRri1S2p1xA7slESSpOqAMDSoVe5BtaSGk7S1womcJGI+zyh
	zEO/Dg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fe8558jsm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:24:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8e8e83314abso16618926d6.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 05:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784118260; x=1784723060; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=n+6U+9HLnuGImDd2MqcA4i8jqmVqmZWZIAdVkvw4LYo=;
        b=HtUN93RtdEMX6Im1M70TvXS2eNSeINDQJ8NzrMnCsIKpFzW7X9heCPBnh+uBMSxErW
         2+cCTUUO9A0q8sBZdIIXXEsA4Ro7f8b2ENiQ5I2SgY4z+rzMJDcWUE6vR5g6uDST40nC
         qJ1lTdTqqxhidDOGzFMqRN/paTkihY/6yOlxURomh17mLHqSc7gvcRIH86OAgW3Scxc3
         GdgWGRvhJze9vWPuBGVCh9lp62YpOcnIGNlm1gy5b0pvXuKwkFfftZ8CpKYPixkunJsl
         12z3/wwIz5Tpcn7jflTkhdHKiwwZr3uQxk/2JD6hiWhy/YA8JAeUYPs2gnZ7HES2MPgB
         L7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784118260; x=1784723060;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=n+6U+9HLnuGImDd2MqcA4i8jqmVqmZWZIAdVkvw4LYo=;
        b=MGEjeAHETqjYmDuYGYylUAgaQ9cNO2HZOEHuiE2Ct2NRMMTikHJ3Z3agdIo9t+3vc7
         qumTfgiKtPxwda4jVXEW1nxP4iqBnyY041WOQFFRjRuY0LF6NspcZrp2saRzHNh9gwfl
         bYPX7xClKyNQufS+/X5A9Mk65Wp6FHUcvAA83pr4PSi0lqm8itIGp+iTVDyfu0jeAB22
         IOiYUx4mz8KKNq+aFCR+l5BMpnmBjFghXzp61pBeoNMWThODqLcsh3l5gbzR+DdRobPW
         q+/SicdR9k7XHwAHCIWIWynJ1erenGcGNpIUB7v1tbrf/okRjPpwoHuL0/usBYF2iAL5
         JpMw==
X-Forwarded-Encrypted: i=1; AHgh+Ro3ZP8Hy/cxHGVRkxwoxV8w3m7U1Gb+70Y0xGTln3rjfLZKP4OGTnWRsT4SBW52kz0R0C0s+ay8lfSs@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs17dOo3JnbwvROpb60Azv1Ps1fOinVoeA8HZfpBcOH4PSdpkm
	q2xqHZgcrEbqlk9uAoOOvym4RFSUZmOpUXEj2XGt9swfxRfRmsYQLteP28J/6dUaEP+L/cvW+25
	BcILwPDtUAQXYsC9iwTAqbHYsoDg28d7EwclE/VXvp24UyZoetOhD/ojzEyfV/p0VCflQuWRt
X-Gm-Gg: AfdE7clV+Rp0+9r1FVcfG4AWubIXl5i1l2pAbpR3+YMvP75xG4EauCRqhgJPRMZzdzG
	jpiHtS4K0FKPgSs8EabR5WQlh7AerEWH0ONFF/pVvEokya3KqtHijAArWjb4BCo9pGrlmy5lge/
	udrNAz8NVWokXbrZb8UQZCXmd2h6nKCvmI+E5R7znT+9U6yoXiOJSwpEF1ayUIZ0oTZO3vA/23a
	Gz7F8Qo5WNtKaWrjYEBdONPUPa/nVbPfsIyIzLTPUR1+XUITJHnksfbk0pn4xh/Ux9hZy39WTBY
	2YVraY9xuvOQAd7kQfeE/zvPLevbrMeWeNnVFE2XNWP3dyf8ws2XNtHoC/oSGPdo6489ie4h9cc
	maHo9m+ugNS0ii9W3AAVyEaekS0r+TFudbWo=
X-Received: by 2002:a05:6214:459f:b0:8e7:d237:4aa9 with SMTP id 6a1803df08f44-90403d516e3mr172365966d6.7.1784118259770;
        Wed, 15 Jul 2026 05:24:19 -0700 (PDT)
X-Received: by 2002:a05:6214:459f:b0:8e7:d237:4aa9 with SMTP id 6a1803df08f44-90403d516e3mr172365626d6.7.1784118259369;
        Wed, 15 Jul 2026 05:24:19 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69cd287882asm2931930a12.3.2026.07.15.05.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2026 05:24:17 -0700 (PDT)
Message-ID: <ee424097-6f29-4605-bd0c-242190a7b376@oss.qualcomm.com>
Date: Wed, 15 Jul 2026 14:24:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/4] i2c: qcom-geni: Support multi-owner controllers in
 GPI mode
To: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        viken.dadhaniya@oss.qualcomm.com, andi.shyti@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, Frank.Li@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        linmq006@gmail.com, quic_jseerapu@quicinc.com, zhengxingda@iscas.ac.cn,
        kees@kernel.org, agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org
Cc: krzysztof.kozlowski@oss.qualcomm.com, bartosz.golaszewski@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com
References: <20260708051023.2872304-1-mukesh.savaliya@oss.qualcomm.com>
 <20260708051023.2872304-5-mukesh.savaliya@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260708051023.2872304-5-mukesh.savaliya@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VcsxFAw-SvBLXYTmf9yBSHstkmxn9JB5
X-Authority-Analysis: v=2.4 cv=KOlqylFo c=1 sm=1 tr=0 ts=6a577bf5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=Y68E4KffrGY8xuMxYjUA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE1MDEyMyBTYWx0ZWRfX/9n08JIyn83f
 ZH+RR9CXfNUKH8w1N2KNpzOaZl4ToyhsFnH41AGStEssYQSASqtmvBcIyXvion+4KaRZj7xiAfl
 7r+PG3EfHSneCxMuPpXvVVI0Uf+krtN53f13Cf0MlUkzgv0xm97D6iHhl9It7JqKv21QhnyZ1cd
 D9asxGSJxX4UCEmHZ/oMn1tDdkAIaoGDhGPkA0+mu7wdaUD+BUbYOjNR5zgJNTmtHuWexjMufQN
 2XqYkmC4ZinTESL1uFjY2A476pxUS+z7GzFpxiAnqQhzEyx5SKKeZI8i258nNMgVofpGiqyzomU
 /FNM8oZIhet9zfsErLun3gizJ8EGF5CJxgxqti5jLw3aZNSYRryvEBid39US+mqrBmsaNoONpOz
 XyZ6khVluHWCvB8Mgao0Xd+n4SQxaoVjSantCSwut6Ti3Y3pVnJkqspGIZqkPbuKJGWTowyFYaX
 3VvjEHjsWDKgFUPc9Xg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE1MDEyMyBTYWx0ZWRfX9RwppwD0lv5h
 CWzj96tubPpeuS5OngdGrPWdY3C04U60zvnI7zWCblE+FyMZsdxqq1bGEIK7fLp4JQOnVX2pBno
 Vq34Eei/9r612uWGcu4ZJYRFGyATdGk=
X-Proofpoint-ORIG-GUID: VcsxFAw-SvBLXYTmf9yBSHstkmxn9JB5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-15_02,2026-07-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607150123
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326956-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:Frank.Li@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:linmq006@gmail.com,m:quic_jseerapu@quicinc.com,m:zhengxingda@iscas.ac.cn,m:kees@kernel.org,m:agross@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmaengine@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:bartosz.golaszewski@oss.qualcomm.com,m:bjorn.andersson@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,quicinc.com,iscas.ac.cn,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c0a:e001:db::12fc:5321:from];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DNSWL_BLOCKED(0.00)[178.235.128.140:received,100.90.174.1:received,205.220.168.131:received,2600:3c0a:e001:db::12fc:5321:from,209.85.219.71:received];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[178.235.128.140:received];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[205.220.168.131:received,100.90.174.1:received];
	DWL_DNSWL_BLOCKED(0.00)[qualcomm.com:dkim];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 497F775E1E6
X-Rspamd-Action: no action

On 7/8/26 7:10 AM, Mukesh Kumar Savaliya wrote:
> Some platforms use a QUP-based I2C controller in a configuration where the
> controller is shared with another system processor. In this setup the
> operating system must not assume exclusive ownership of the controller or
> its associated pins.
> 
> Add support for enabling multi-owner operation when DeviceTree specifies
> qcom,qup-multi-owner. When enabled, mark the underlying serial engine as
> shared so the common GENI resource handling avoids selecting the "sleep"
> pinctrl state, which could disrupt transfers initiated by the other
> processor.
> 
> For GPI mode transfers, request lock/unlock TRE sequencing from the GPI
> driver by setting a single lock_action selector per message, emitting lock
> before the first message and unlock after the last message (handling the
> single-message case as well). This serializes access to the shared
> controller without requiring message-position flags to be passed into the
> DMA engine layer.
> 
> Signed-off-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
> ---

[...]


> +		if (gi2c->se.multi_owner)
> +			return dev_err_probe(gi2c->se.dev, -EINVAL,
> +					     "I2C sharing not supported in non GSI mode\n");

ultra nit: "non-GSI"

> +
>  		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
>  
>  		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
> @@ -1098,6 +1115,11 @@ static int geni_i2c_probe(struct platform_device *pdev)
>  		gi2c->clk_freq_out = I2C_MAX_STANDARD_MODE_FREQ;
>  	}
>  
> +	if (of_property_read_bool(pdev->dev.of_node, "qcom,qup-multi-owner")) {

Let's use device_property_present() instead.

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

