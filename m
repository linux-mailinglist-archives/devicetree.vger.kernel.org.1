Return-Path: <devicetree+bounces-273412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBlLBsbmr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:39:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71940248A26
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:39:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B75F32437CD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4291243E9FB;
	Tue, 10 Mar 2026 09:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cm2OhGvt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ry38sKHT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1475544A70E
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773135036; cv=none; b=Rhy8VxCZtpqoak77orbvfsLaed373LJHqUcyry75OwwTfR4Ks6OMF8paeoyMaakiCH4k1yjHD+doLJziZLW4K6J97geS5f/XMS31QjTuFmaIoPhBuFZ98rFvaJEeLp6GboZAJeG/7hEiyTWQOSBrBmrV414+R6UYK7tNvZEVy+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773135036; c=relaxed/simple;
	bh=uqXuGfflSEpE8YFEEerWxYrmt5kvu2j/BNRVMxIXBBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U0TGyJbQTl0FQXrW/CEWrr6q8oc1fC52NsOr5o4jHEq2J8c+orAlngkgFmOLP2aCck3avxeCAsun5KhejzZouqY7r66WLIeVt/JwRsdlwhvG4OMDx35rx0/xTniHu1bdcoPf8dsgTuFyD9p2qRUf1O3OUQlJKo0P6xMUprwqEL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cm2OhGvt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ry38sKHT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A9GLA63587427
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:30:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	URVuKpK3lvRK8s9gUYJAp+UYjsaDU/GsAGApoR62pDc=; b=cm2OhGvtTYEt9RpB
	6j0D+baogyV+DR4pchS5uD1givux7lgEpcjqsv5Xia3OX4NKwqNnKV2g5DaaSCxH
	kJQlwT5EsShN8C60PBIdYUYCjubAvoLnRpdl8xV6SfeiSUTEGV00GXYQC9JxWgnt
	Zvj7WQfM+7vOmb9bKe1b9lZQPHJM4CUyHjwEL+EFebFkh+AzawFG8sdUa7Rb+d1U
	NGgMwQ3ZsFPGEG+a8HfCcxSAioMidtSscaqETgo6B3ADpxx8amuxIWw0NpN5zjvw
	0+tW6iqmKYczBQW+2D7YT1wJAwM8eTnw/mUdrletruD05biNNHQcgYOCS3SukWTT
	n55JCw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct1eku5vw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:30:34 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-358e95e81aeso60271011a91.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773135033; x=1773739833; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=URVuKpK3lvRK8s9gUYJAp+UYjsaDU/GsAGApoR62pDc=;
        b=Ry38sKHTmUs7Dz5h+QqLQmqvi/r244bNPZ003bqwUC+BeS8FB0pamZvdsOyj0zphyF
         jkCRbWraYPJwA8uADZc/dYomCWDTmNJL7tCQpxPoGBsYDRHFPt60Xb4CsA5v5p8KT10S
         xFUhcF0f/sQnl/A8FOnOAzbsv8Od6BlXSgWEBlRR70RezVXN3Qr8DxOQ3Htuts0LJcHM
         51JypKdF3MdivPTUUJuJHlfpZm2ks3trwsXny43Q8L/pEU+WSKhn1Ndb/4hjQ1g3vkFC
         Kv6k4zG0shQqxwHRnymHtZoFerJ0pVlmam9JtvayomQKznr3fXLAQH/r3UZXwzGjz64s
         dQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773135033; x=1773739833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=URVuKpK3lvRK8s9gUYJAp+UYjsaDU/GsAGApoR62pDc=;
        b=iqwZ83Oe9TX48UzpxPm5U2dUC5xyQfi99Rzq889KsZi15bnl9EjiMldpE4WG6/foqb
         q1ATXJEuLfRFKE1qT2l6BqGxWRDEpEOjZpRxK7mhDhBBO0DG+11IOazACO8Ih7PBWSzB
         QJHhxUjGtMUUa75Ojno1/h7duwy1GXcxWLOP/ZlAaqZpidLaCDjaXxqWVyG+WOxROYiC
         zBEv/tKBCKLCDuY087m73Fm7hPNQ2yam6HMdAOgWlWY75PPQjVOigIJdQl31iYmWcX2E
         Y4oCb3BKP355xBafXYK2e27GOSUCh4LFvrIUIbqJt6PE6OBkiV3U6q+F9ddkgBZ23zVW
         xgaw==
X-Forwarded-Encrypted: i=1; AJvYcCUWaWV0FOmBHHEUyBI4GOF2vyVdV7vh7xUUZvgZQ4qVIvKCq2HFhFA0AICH5bS3z/jFbzd5SX/AabvE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3hunC7LNjQmGTCH3nEtLc/kvrMHAXbtxpocK0q5HR88IMbXVV
	ENQQwSv6IGM/VRe9asuJWW55nLBh7in0G3vrBw/PKAPZEjvpuNNKlCYbC1bI1pPjb0gCxuAKR/k
	ID6xpt9PfX40XMrcvdCe8FmDbtzGxHkwL8KSVeRcRZzFg3aTHXj42JOfw5GbaAn7C
X-Gm-Gg: ATEYQzztVJf+RF+xtuzgCyVTOu5G0xR0RTsmFPB0XS0wL6o39/Wr9Pu8l1qVifeo0Yp
	sDs34SqK85tXbaLzQKMfV3gjhb7TPOFGlZ0Z/qC0z3bgLzwVJkx9vYdx2R2esPMhedSYp577AkL
	snYUd+lGI4qvxE2cuOA2Irwq1kcGDVwG7Sdmnl0Mdue5kVC72iqzH14SKU+JbYF0apLeOh/+tkZ
	RqN6I1Rzv/n60N+5tyW+x5BJ3jZ0GIaU+DtWBcLj8T2Lcf+s9Md4JduA61RzX+sMq31qpHw9aVM
	8WXG04OKL8dWIYvSh9YN8AGNu8SoXpNgxBRVjfcYh7T7f+q94u211Cv0Hi/SLeDjcox/pLl5H+Z
	AQtI4m4DA1l3gObTYrh+NMIR+V++IHeBsWKHxcNu43axqVLH+K7eJV096EVro
X-Received: by 2002:a17:90b:1e53:b0:34c:99d6:175d with SMTP id 98e67ed59e1d1-359be283016mr12464092a91.2.1773135028920;
        Tue, 10 Mar 2026 02:30:28 -0700 (PDT)
X-Received: by 2002:a17:90b:1e53:b0:34c:99d6:175d with SMTP id 98e67ed59e1d1-359be283016mr12464050a91.2.1773135028372;
        Tue, 10 Mar 2026 02:30:28 -0700 (PDT)
Received: from [10.218.21.154] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359f05ee478sm2395579a91.2.2026.03.10.02.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 02:30:27 -0700 (PDT)
Message-ID: <fdc64e6f-386e-4f4e-8890-841c59710dc0@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:00:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] ASoC: qcom: qdsp6: q6prm: add the missing LPASS
 MCLK clock IDs
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
References: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260309111300.2484262-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <cafce8ef-5297-46ea-a14d-8a12bdf2f181@kernel.org>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <cafce8ef-5297-46ea-a14d-8a12bdf2f181@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: MboK1sQ0y4u-tPjht0niPh1n88Z58ifF
X-Proofpoint-ORIG-GUID: MboK1sQ0y4u-tPjht0niPh1n88Z58ifF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4MCBTYWx0ZWRfX5pr+kjeSwCh6
 pIsqNI5nOujncnLqcHrv2Lt63N539yS29uiUtoLcUxuOdxlP20VNO/o/YINNibqr+5CNPI52Xng
 aTIC0u2bHFytRleQ1AAwHHDDLMzxNzDUtwMnTZ/Vhm7z/GhYqZxQaNJn2O/hV4KZWVrhnbnwecQ
 pOrkjc0I8luVXkcWnS5V3nj8COlSGvBmoX47Q+Zk8UZ+nUZGdaI/ga2CJ7V4a+hoZZxbysx4dKr
 +wWEd+xfeGahvAfBPuincq4MxS6uPb8b2HRx4vlkCWZ60SqoD5PET2XtY3rMxIChU5QfmDKOLY8
 WHW01XUxG5Jj9Tzd5lmjcoyEc0TG2sUcHmYI8gliidXwsgO+77bWF3K/1gNVlpPuJquYPHLv9k6
 JDHa6/8Euj/JP3AstEjonJTp+PrN2Y4vMN2PDxiVW4fZOP2fe8DAmMK7HAOufmRe66aoAAWP5Gv
 lHaFbG8dQ+5koL8MGWg==
X-Authority-Analysis: v=2.4 cv=eIEeTXp1 c=1 sm=1 tr=0 ts=69afe4ba cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=D19gQVrFAAAA:8 a=EUspDBNiAAAA:8 a=0x9H3M7g5i9H74ZWH3cA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=W4TVW4IDbPiebHqcZpNg:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100080
X-Rspamd-Queue-Id: 71940248A26
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273412-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lkml.org:url,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/9/2026 7:37 PM, Srinivas Kandagatla wrote:
> 
> 
> On 3/9/26 11:12 AM, Mohammad Rafi Shaik wrote:
>> Add the missing LPASS MCLK ids for the q6prm ADSP.
>>
>> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> ---
> 
> 
> This patch has already been submitted previously by Neil, Please pick
> the patch from https://lkml.org/lkml/2025/10/6/828
> 

ACK,

sure will pick Neil patch and replace with current patch.

Best Regards,
Rafi.

> 
> --srini
>>   sound/soc/qcom/qdsp6/q6prm-clocks.c |  5 +++++
>>   sound/soc/qcom/qdsp6/q6prm.h        | 11 +++++++++++
>>   2 files changed, 16 insertions(+)
>>
>> diff --git a/sound/soc/qcom/qdsp6/q6prm-clocks.c b/sound/soc/qcom/qdsp6/q6prm-clocks.c
>> index 4c574b48a..51b131fa9 100644
>> --- a/sound/soc/qcom/qdsp6/q6prm-clocks.c
>> +++ b/sound/soc/qcom/qdsp6/q6prm-clocks.c
>> @@ -42,6 +42,11 @@ static const struct q6dsp_clk_init q6prm_clks[] = {
>>   	Q6PRM_CLK(LPASS_CLK_ID_INT5_MI2S_IBIT),
>>   	Q6PRM_CLK(LPASS_CLK_ID_INT6_MI2S_IBIT),
>>   	Q6PRM_CLK(LPASS_CLK_ID_QUI_MI2S_OSR),
>> +	Q6PRM_CLK(LPASS_CLK_ID_MCLK_1),
>> +	Q6PRM_CLK(LPASS_CLK_ID_MCLK_2),
>> +	Q6PRM_CLK(LPASS_CLK_ID_MCLK_3),
>> +	Q6PRM_CLK(LPASS_CLK_ID_MCLK_4),
>> +	Q6PRM_CLK(LPASS_CLK_ID_MCLK_5),
>>   	Q6PRM_CLK(LPASS_CLK_ID_WSA_CORE_MCLK),
>>   	Q6PRM_CLK(LPASS_CLK_ID_WSA_CORE_NPL_MCLK),
>>   	Q6PRM_CLK(LPASS_CLK_ID_VA_CORE_MCLK),
>> diff --git a/sound/soc/qcom/qdsp6/q6prm.h b/sound/soc/qcom/qdsp6/q6prm.h
>> index a988a3208..8296370e3 100644
>> --- a/sound/soc/qcom/qdsp6/q6prm.h
>> +++ b/sound/soc/qcom/qdsp6/q6prm.h
>> @@ -52,6 +52,17 @@
>>   /* Clock ID for QUINARY MI2S OSR CLK  */
>>   #define Q6PRM_LPASS_CLK_ID_QUI_MI2S_OSR                         0x116
>>   
>> +/* Clock ID for MCLK1 */
>> +#define Q6PRM_LPASS_CLK_ID_MCLK_1				0x300
>> +/* Clock ID for MCLK2 */
>> +#define Q6PRM_LPASS_CLK_ID_MCLK_2				0x301
>> +/* Clock ID for MCLK3 */
>> +#define Q6PRM_LPASS_CLK_ID_MCLK_3				0x302
>> +/* Clock ID for MCLK4 */
>> +#define Q6PRM_LPASS_CLK_ID_MCLK_4				0x303
>> +/* Clock ID for MCLK5 */
>> +#define Q6PRM_LPASS_CLK_ID_MCLK_5				0x304
>> +
>>   #define Q6PRM_LPASS_CLK_ID_WSA_CORE_MCLK			0x305
>>   #define Q6PRM_LPASS_CLK_ID_WSA_CORE_NPL_MCLK			0x306
>>   
> 


