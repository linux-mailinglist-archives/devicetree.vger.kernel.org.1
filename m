Return-Path: <devicetree+bounces-277015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCI6L4hiummoVwIAu9opvQ
	(envelope-from <devicetree+bounces-277015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:30:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4312B806B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC6B5304CA6E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D0A37C11E;
	Wed, 18 Mar 2026 08:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iFFACriW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IuRHUWlE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE06337BE77
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773822169; cv=none; b=p3iTlNYvmJ8dJ0LaoL+P1Mn9UDfcGemMjKsPGtCRTHIwxKuqywIkmn+TDys+WYy13Yy7M8Kdz0uAV5HWOqczRXR8645q+kzZLgTvFpemG2dpoW8cLQNH8FQpgHU+hgM3XXWHs5Nz1XRnzfdAnkG8v7rOzaNrguakBHULCWpVVrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773822169; c=relaxed/simple;
	bh=OguXmxvgu8+63/765pf6tF3XoGTh0WGjLHU4/cJYNTE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kBXLnzoDXh6t5gR0AeXj97eNxjOy4BCT2L8gh0EBUtJxnGIizgnJ0lE9krT0KhQeO4/WpzJ/1LI2mZafvlQyv9EZIwdsxrqcYeJmWRRUmKrFe3O49gkm8eGklzs1+skVmaXt6WxzCP6xHs3270KfQjQwwEfaxLkyKCvVmoPx5Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iFFACriW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IuRHUWlE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I3H8Lw1147170
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:22:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TL5q8XNKKsr7ag/yXRzo0IkwUhw2QAY4HyZGuvuWFTE=; b=iFFACriW7BV984Vh
	Uv7LZA/ROgOh3+tftAEdJBT7/IZYURWYNQwtPbFFglct1eSrl3KJ7EirsbWXZQ3v
	P20L8soC87ZhEQS59HZfDviC7kwLaPjtprYPSN0LQlbTrHRw0F27rk17gca+ak5c
	/vNw6DIm3yapiruFBPL9fVRkqt1bmZQMEYDw7RZb79RGWKU4rjiCgjp2AZMcHgnn
	S5fYHcjlSJq5zu2zvLKBwB7bnuS88tFWiQpT3A+VUtY+IDCBLA6A+DDXehmgOBJu
	u0R4JO8sBJuU+giZCPr1lZ73jaAngFtBFAI1rwmLhIB7In/2+ESqn5OB+Sx/bIgT
	wT8gGg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyak3u8jd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:22:45 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-509044f54aaso131807261cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773822165; x=1774426965; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TL5q8XNKKsr7ag/yXRzo0IkwUhw2QAY4HyZGuvuWFTE=;
        b=IuRHUWlEJGCDwSNWlIuem8fAwgRr+uTN1Xryxuvv3PK65RRlqNp8ojeRq5yczppduR
         i48PfA6lMW234qa9s71WtxjPTB59wowgo8XqVhffrY/+2m7bw5ljcKoovDZjqNeJNd99
         8rD/9FV57ejGkJWewcTS/XuUjERlNnphOkC/U8t31QhOL1hh/AHj1hOOehRnDNr5owwm
         gEL2KrWRF8uiaj4hx+iaGS0gqRXF1z7X2Wuc2sqxnOqvgp0nJ9WS4uxotuvhj3tJcASH
         U8Ygi60jazVaJei9O4eLzaP6z2+O3itY/1X8tmSbVAPLhhUDXk765kFxW0vq4Z33XxD5
         KZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773822165; x=1774426965;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TL5q8XNKKsr7ag/yXRzo0IkwUhw2QAY4HyZGuvuWFTE=;
        b=BvlhDdtSQ9ZrbhiDpyzzNuBUp2O8/w7/TmbDFwhtF7UKGRB+s7nxqVNnnP2Sm7mRWq
         IYBB2SOYQQ6ogXTRtnvnN5qEMaibf0JAI8kCBxN0+qe12Yk4g/ffbYBqFvKEw2dKfLv5
         XtMwZcmrNqTeGRw0aSZAaHFDSophtGgKuZcO4SAy/Ud8up4Xu3GDph/MJMSVe9hkkTeo
         gZCELAwHvJaEaAmy2TKjwGaOtcsbmGKilkBLhEXQdOiYp7HjzJyqxcecYo0GBg11Kvr0
         LiuafyPFj62Gw7Gmm8CS60xC4RXnzAapMTe0N04zJgkUmyq4q8VuHzbbycxFTIRcsq4J
         vt1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuTmBOiwC/QQ2Z/tB7RiXlzpkz+FRN8uhDkNru8JO/eZhiTOYt/UroTFxoQ23UUCmIUjT27JWEZpst@vger.kernel.org
X-Gm-Message-State: AOJu0YxXLwnLv0NhyjPnO5KjjZa6y3RQT3w85tGytX4UPvVyIp8bKIUu
	MjLs0oBDqnF+iFyYAk4kWKCu96dUm2X39H/YhWNd89Fa13SRbMvEK1ULLIWiUe1J8t26DCTsa6X
	hP/lsZv2RVsu0UGKJrh0C2akySaHRAg2UmckeSwhRx0jELyUe+YibSE1qVhHgd25k
X-Gm-Gg: ATEYQzxCZm/wTTIUpHvSKjtiD3ZIvUbr742+f4nXFPD1TngRdnMzYN1kmvhauLiy+6d
	TnavlvNLOMK+ch0QkM62KJ/05JLQq5DMF9YcGsLXRDyvETyj8Pn53XjV3UnVJMs2DgXH4sP8aUX
	3IVu94Ws+VjvgmH4Rl4V7Vycn4gbXI2MQcPsTL88Dce/NSYugvOf6RUvQU0KUZiba5z+3GT/Ci/
	5An0PT0oGeZMZ+zqwY/cUuG/s6r9BfWbB7G8y+jzwZsh5uhaD13yOpZQSuowrB8lyxRMCJY+3jE
	esZ8hqySPVlvLIiJPtW+16x2OZF0dOIyNJTCJl4xKqVZbyhgIKSaK5Ty9eMvudwFVcnjcdFhIfW
	smqMXunwGbYqGOUme0ttsreF+gSaw5Z6xcZExshmh0yTajTMq
X-Received: by 2002:ac8:58cd:0:b0:509:382c:1c59 with SMTP id d75a77b69052e-50b14796e70mr28042821cf.21.1773822164979;
        Wed, 18 Mar 2026 01:22:44 -0700 (PDT)
X-Received: by 2002:ac8:58cd:0:b0:509:382c:1c59 with SMTP id d75a77b69052e-50b14796e70mr28042601cf.21.1773822164603;
        Wed, 18 Mar 2026 01:22:44 -0700 (PDT)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4856ea8fb0dsm228715605e9.3.2026.03.18.01.22.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 01:22:43 -0700 (PDT)
Message-ID: <8370077d-ba1d-4924-87de-91b061c5c5ac@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 08:22:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 13/13] ASoC: qcom: q6apm: Add support for early buffer
 mapping on DSP
To: Mark Brown <broonie@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mailingradian@gmail.com
References: <20260309065137.949053-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309065137.949053-14-srinivas.kandagatla@oss.qualcomm.com>
 <a93db619-7539-46ac-b2c0-d4b42a0478a5@sirena.org.uk>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <a93db619-7539-46ac-b2c0-d4b42a0478a5@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=A7Zh/qWG c=1 sm=1 tr=0 ts=69ba60d5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=o7bm2iVLjxx3QYpfQvQA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: ljfdC0JxLIReUkQ3CPzOoKQDPCwQqixg
X-Proofpoint-ORIG-GUID: ljfdC0JxLIReUkQ3CPzOoKQDPCwQqixg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3MCBTYWx0ZWRfX2EYUsKVdoWPm
 MCEG+UG7F4Sz697lpl9Xn/Hz/A5CZH16Gi83H5IgKUn+rFQcJeR0y0+Y9fVUUtMOJK/5khZblZc
 cQU9Q9GN7sg9M+eYeaKvr6icBMXPYv/GqSFACxQyApEV8/Q65paGtAJMNqXUNCm89ruBP2TynFa
 Tk4apOXnfn21s2LKy+65dSSqT70DtUf+QXrOmIdEld+w9LKbEkG+DJ87kbo4O9sz1Eao3Ja12dN
 4jXtMG7WZ2Qnmmi2mE+7ysAhgN10vw9E5DEceEBDu4iBavc/4wCbMoM5mPCeShbVpUvGU8yP5uO
 vd5QcbBazB15FoZMlaC/6cCslpLWM6jELzt0gb58Zi++ZXwDWPCboekOnOxL92T8a4fhEMPWokg
 pUPsx4a2hZswbG+g3dah24L1IpQzkSmcoY02D8uqo1RBy9+5xw0pqAcvLXyS1cSok+GtmjlKgGT
 stwPzXEkWL5yuXCoAeg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180070
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com];
	TAGGED_FROM(0.00)[bounces-277015-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 6A4312B806B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 6:03 PM, Mark Brown wrote:
> On Mon, Mar 09, 2026 at 06:51:37AM +0000, Srinivas Kandagatla wrote:
> 
>> +static void q6apm_dai_pcm_destruct(struct snd_soc_component *component, struct snd_pcm *pcm)
>> +{
>> +	struct snd_pcm_substream *substream;
>> +	struct snd_soc_pcm_runtime *soc_prtd;
>> +	struct snd_soc_dai *cpu_dai;
>> +	int graph_id;
>> +
>> +	if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream)
>> +		substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
>> +	else
>> +		substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
> 
> This looks weird, we're destructing the playback substream if the
> capture one is present and the capture stream otherwise?  If that's
> correct the logic is very non-obvious, especially in the case where the
> capture stream isn't presenta and...


Looks like this is a typo in the patch it should be

if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream)
	substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
else
	substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;


will fix this in next spin, along with converting the destruct to pcm_free

--srini

> 
>> +	soc_prtd = snd_soc_substream_to_rtd(substream);
>> +	cpu_dai = snd_soc_rtd_to_cpu(soc_prtd, 0);
> 
> ...we immediately try convert it into a runtime and CPU DAI?


