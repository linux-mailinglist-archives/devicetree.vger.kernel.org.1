Return-Path: <devicetree+bounces-270983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCl9IpITqGnUngAAu9opvQ
	(envelope-from <devicetree+bounces-270983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:12:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 691041FEC41
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:12:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5C22C3062EFC
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569913A874D;
	Wed,  4 Mar 2026 11:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="je1u1I/1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SljtjOOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479563A451B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 11:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622685; cv=none; b=rsdSwgvHj2ljoo5Npc+w7aJhHGzXCDBy81uc9Rgo4BR0LN9LbrN3QBsG5sP6jlwGJOIKi/5ws00strdyXyOCt9cSU+ecm6l4nQ3qz78hggfBZ1ogT6DGipC06Wzf/dDWwhEadKSBoCQ5F5O1M7O3TGEYwV6jCVzgXxTVTEkx5gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622685; c=relaxed/simple;
	bh=JIuIKTH+GzYh8O8NqAoxb+Doi8Ewuu7b9VzXx/kXQ0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h3xCHuKnacYlSusaENBR6891UfvL4IcoOnpY3furp1dGB9NFL9SCCn3HEPddDemj38gYc/FxZXdUpgtilIxoj7fq0hkrYgga2W7uBucc0B5BZL+J7QgEmGfr0l409bldDwv80eOcLQIidj3HmXZrIr68dyJWiOBmSNC3JYJBM3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=je1u1I/1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SljtjOOA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245UAMn3114139
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 11:11:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yhiCehhF6KyRk1DM1/ckSVrTa7WGu4u+Er1d5fBuqes=; b=je1u1I/1fY9eKfWw
	mXgbU5Np/+fDawyu9yI/dnCPWwQoU34RLV3BygwZoRjVlBstRQ1DKtLtvwJtw1K6
	FOylK+OdRIJA2eroWmB4I1ZP9sohZ11rvQCl0WYeHciAAiMeOgQTCWChl9kw04aR
	QgChgZ6p9pLp6JTHaCPOM2hJMxvt2dhdtfjWpBR6rjSm65Gbtt1e7DK1MjX88xP1
	djwAtOS0edvusk57FaXTWqf+6YiGAc4NZOJEmTigYbn13O7ogCwl/QTFZ5TPvQ6T
	ciRThTtn/sRnEf9XL9lJTOJpDc3W4lZzcmD8CKZfcn26BxxyxpnAVOvFIvrVqDWK
	zd7kPQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp5h2awm2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:11:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70fadd9a3so1026585a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772622682; x=1773227482; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yhiCehhF6KyRk1DM1/ckSVrTa7WGu4u+Er1d5fBuqes=;
        b=SljtjOOAK3SJlxEQHOu3mGKxcW0SubJ7UojKhmwueydDpqUIYHr3MgLnckBV46rZ3d
         JgKU8kqnsx7cB/EtURmjk9sFz7Vdnw3+jwxrKkTTcpNkR8n82/bpd5JYX9NWpdOEgY2e
         Ehq13KUdVVv0DHIFPv4nX6sJF2RDegupRhpM3taU1mPQyXCvYlooSVidfx9johd1c2aJ
         0aOgcVONxVqfcu2Coihwr8IfBCoLrnc6ZICF/dwcqBrvD/fsBH13QYGNOZgRMatpx8Y/
         7SwaN/I+terS+JCMc5UKPDweMo3HjgnDV6BkOKC7GVaPYhncH3PMSsMJKva2JxAqftzO
         crDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772622682; x=1773227482;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yhiCehhF6KyRk1DM1/ckSVrTa7WGu4u+Er1d5fBuqes=;
        b=BdVNUmc1Be1F7HG1yO4e2A/kk3q5X+RbW6JITAv+RhbgcJ1nRCLAcmJCRqQmzEbSGM
         aOdZpOdQ6vHTdIOUdJ7PIDYA8KhqlU99UzNVH8dIhwQ1Wqn1s+B+GYXmp2tFs9olCmDY
         H1n0ZmApO5R68h8lXpEu/SPCfcpZp6m1q29UdoaeVZrgOZEV2cIoow7HBHhGqcE0gn8c
         YBOAq/uAzBKNh9/U+Fnx4oIBPY1Qj1ZtJOn3CuumcgjUYBo0dUep3NC57E6FIMlOnyhN
         wEXELhX+XIQwJuzcqtOHuP6ElwL9zo1iWjcRteYxPL66V6K1Lf13RemTHgSo2x7wr/JM
         aW8w==
X-Forwarded-Encrypted: i=1; AJvYcCUSj3mJSp7/s4V8gyZNCOGdTnt6yD0XYemnmRor9hHVzRJ3R5k2optY3WlZohgT4Uy8NfJYF25oCM+H@vger.kernel.org
X-Gm-Message-State: AOJu0YwpL3q6yOkFYa0hnOFvPCzQt5VbtD9j4HpBeMog+Vh67ii3lErp
	WHFibkktYWPDqjND849fWCxyDXNKWQ+RsRNMCKFEPCSTchWpmTMty8t3daUmqQOfSYthflchG2D
	zwu0aPAfkCh5o+t2is0wgyJ5WxSb/ML8A3i2HuFXo2ADxcQMmAl0gms5UT6Fja2M1
X-Gm-Gg: ATEYQzy4aMqm4VN0HyLXycRHHk5aDuPQdiluuDjT3Gavvhp9vUyrWxCzzUUKIopQu1G
	X7eTpVLkF4UTCahwpTycqUj8/84SgSIakdoSC4gqIIKzCxe9R24ltZFqlvgRpQ13sCGW+p9Tg4Y
	+U0cG3aZ+4lKYxq+kfKjSBZeKJNvA/diuAcM/cPA2qXBIqDM137IGAHU+HUqWJXLLGu4eE9UrkJ
	LiyNVjkiaZrnSNPREEDARF4vT2V376CA2rIauoTomS8xZZ0lp93O5QZyNITPfO8rUjlbF0ZQtH2
	NvNXjqaOfJFPaarFH7E010MjGJdDoLDARs11tnzEsTMOYeOb+tmu/hwUu185F0b1Ol2vSv2wySi
	lG3Jehci5JZ/+xLopWOIec0OIzCmoEMz2w4AdoYxyqjaTdnGK
X-Received: by 2002:a05:620a:1aa1:b0:8cb:4d64:e993 with SMTP id af79cd13be357-8cd5aef76a9mr181363085a.26.1772622681670;
        Wed, 04 Mar 2026 03:11:21 -0800 (PST)
X-Received: by 2002:a05:620a:1aa1:b0:8cb:4d64:e993 with SMTP id af79cd13be357-8cd5aef76a9mr181360085a.26.1772622681103;
        Wed, 04 Mar 2026 03:11:21 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851ad25a17sm7990115e9.29.2026.03.04.03.11.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 03:11:20 -0800 (PST)
Message-ID: <263d4c1a-caa8-4870-b95b-fde7a11d2a6d@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 11:11:19 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/14] ASoC: qcom: qdapm-lpass-dai: correct the error
 message
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: mohammad.rafi.shaik@oss.qualcomm.com, linux-sound@vger.kernel.org,
        lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, johan@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srini@kernel.org
References: <20260223180740.444311-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223180740.444311-12-srinivas.kandagatla@oss.qualcomm.com>
 <c6ceab84-899d-476a-b2d8-e57028cc91dd@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <c6ceab84-899d-476a-b2d8-e57028cc91dd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JqL8bc4C c=1 sm=1 tr=0 ts=69a8135a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=D-i4kdfbrcmCuYzmauAA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: vA6OPjqReWhywPPPAHOrR4F5b2F_CUoR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA4NyBTYWx0ZWRfXzl4lUY4PEo8A
 uOtTIKqIN7B6GzZGJKPpJg0ta2YOn79V9aF43Vc5SX8F6j7JQF4idJAYlcLGS5XMqb0GxQZgYg2
 7I5StzA7VcD1KZTJddZTvGtGkMPK/I1fsYCGhDaAjYrLR0ML3mENXBKVW6oxlo6V0S3d8eFo8LM
 wQKvO03IqpyWok6fPm9DZml44kb8WAgovRvfs3+CSsQThjXwNCxJe2jRp9sU1Xr0tL/+uAdbGfe
 yWPIwQdehk8JWfl9EH3Oc+7UVult0HYRtRL0OXBD81h5FAKAn0YmO3CORfbIA3ueRgZFcCZEH++
 1myUD58PZEDyWfo6I1En8n0Qto44ytese0bOvH9vjrv8smEjCIQK+z9IrtiModfoYFwpEPmOuPp
 /F/xB2p48OCgPy5YbWQ5JxlHa8CPSPHbqSMox0Crt2/cZdjlmiUU/2+fpWbVyyx46aN/44jTgIs
 zm8+OgsgCVBVoVPa9EQ==
X-Proofpoint-GUID: vA6OPjqReWhywPPPAHOrR4F5b2F_CUoR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040087
X-Rspamd-Queue-Id: 691041FEC41
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-270983-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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

On 2/24/26 10:12 AM, Konrad Dybcio wrote:
> On 2/23/26 7:07 PM, Srinivas Kandagatla wrote:
>> Fix the error message to reflect the actual graph stop error
>> instead of graph close error.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
>> index f68d4b4974f3..fc246485e326 100644
>> --- a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
>> +++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
>> @@ -150,7 +150,7 @@ static void q6apm_lpass_dai_shutdown(struct snd_pcm_substream *substream, struct
>>  		rc = q6apm_graph_stop(dai_data->graph[dai->id]);
>>  		dai_data->is_port_started[dai->id] = false;
>>  		if (rc < 0)
>> -			dev_err(dai->dev, "fail to close APM port (%d)\n", rc);
>> +			dev_err(dai->dev, "fail to stop APM port (%d)\n", rc);
> 
> Might also make it "failed" while at it?
> 
Yep

--srini
> Konrad


