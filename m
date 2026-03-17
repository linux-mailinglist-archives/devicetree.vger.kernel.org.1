Return-Path: <devicetree+bounces-276464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMynOELouGkllQEAu9opvQ
	(envelope-from <devicetree+bounces-276464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:36:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D3C2A4007
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:36:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 990FB30078D9
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 05:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E370F37E31F;
	Tue, 17 Mar 2026 05:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lpircLTZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GOQeM/b/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0E537DE91
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773725720; cv=none; b=Crclj9pxxL+KY74JYW0bip//YMAUeYD5d1aSGFXS97BxZ08CPB25Q1yIK+pMxpWqnaML+NdmnePxzxrrpusOdIlk0wpCK0Oo9LDd+objG3Fc7t9Iu4HLS4L0yuFjXFb8o0u0HAAdbQgE9YyfK2Pbm+4WDqb7+n4Yy+JlBKL1Fq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773725720; c=relaxed/simple;
	bh=gi7XzDxv7UZfVxYk5DmCxVha/HdTTWnjFnCNOXDqgR0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VKyh38Kz2o2GxM/LtjlBNHrh2iQpFlelgEdAlGhCAQs07WCZfSDlqJ/ORp2vjExFNX3YRvRHqnY328y7TvN5TUnU/Qq9XbOwwCYUv7wH7KrIZh8ICYh8dZtMrEe3QBgvF5TAe+S7BJFx/J2Xlet0OltnyMcBk70tTyKvMMIwpMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpircLTZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GOQeM/b/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GMiFgs2375045
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:35:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hmKjta0vmJszpX0qBzA+PcllN4eARnCID1N+IXOq3t8=; b=lpircLTZ1zqB3u5W
	8IYmNhcJ7XFK7NhS4ig2Gy4A7AMZqoePjKcLjH8SEmE5dgM6w0DXsposi9SgKjeH
	9Qea0OMJ09qoSAWi7y1LnH54ISkD85OZjWYRcqUf4v3zc5F1OtZOXNAOlzovF9cP
	bW/tJznXbm4NFZjtTjr21fNul7nLBKbHPg0CTJvZjrhG5xa+Pwog5j7llRO381zS
	5bMVscPmLuSbRlFpLbMgxyQvau8pMjEnHpcvTssHfjPirv7DroZ6gYRrweCkN3Yw
	TKh957PlOI41vXTsPqMslcn9NmMgpIb9IoRkLihr0lwEN/I9NJKvjDand70Ljc6z
	Fg7J1A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxkby2r4f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:35:18 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-354c44bf176so5834836a91.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 22:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773725718; x=1774330518; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hmKjta0vmJszpX0qBzA+PcllN4eARnCID1N+IXOq3t8=;
        b=GOQeM/b/ll0pB4TtyReAvU6dj+OZYTWazyrhBLO9Bo37K9fh7nggsrN+ueeQtM72IK
         fJjT3C18kHMcIOsF1QhoUrQFMbb/VNM1nMrJirEOgW7eEGFgJjjToMLuzW3+Wu4D1uzp
         xTzOrrzZlkYlHu3eCFKwsP7nzd3ab4VKnyzhSpapDMelWjjmtMy8sks8OiPbQrjK4cJS
         2fP4g3ueGc65CoHjnx+ReM0EmSNHfQjCSFYx7Atjas/OVo2J7ytzq8IiGCa0yVqY4Et5
         3253PFXlhy6FNEyjRJZ3HXGi9xKRCRnLISJysw11tethpQz0A5k50upRDYfjPyuv22ph
         Sxyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773725718; x=1774330518;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hmKjta0vmJszpX0qBzA+PcllN4eARnCID1N+IXOq3t8=;
        b=PNBfuxKhX5LhjWD30EE9SRvri6gho/FJ2w12kot2IA5gYrrnXv2/yLRE07ehWRYtT2
         C8v0ljufaRuug07RjQ11OHBLkAurJRvk4E1aLZHSCJX3wTSCYPNFXE+wJBvlFSJurXdp
         Gd2DKiRXob+nrOT904DMnZTFKrm6UlKF37QMaFjlM226KZPP88uaF804yrf7+Mu/GagO
         VXWnhtJxw7p79cTXG1g0U9JK9yKfZL+s+3JwG0OB2LXGY6xigca5YOAVXXgebgmAwDHW
         EG1jj04KJQCMxrqqnYHeGC6m6D8tVxcLDQc3qXyyx4agXABev3e4FDbzwkdKQlieNL8D
         Encw==
X-Forwarded-Encrypted: i=1; AJvYcCWV48H8Z6K+DOOoSWmr9YCwMBC0vKCF62qjGe4vHEMdJADDX27MGOfVu0IOD+TcB10GcxSg+qUGmfB/@vger.kernel.org
X-Gm-Message-State: AOJu0YzRnOhc1hQiB3qg2/VUEsbfdZjNNu0IN2HrmmI3+PNCC3smJKOH
	BnbV/hBb5pyZhz4gRyY1nTjrgkecAaET9W0kGCqRlDV8e1KtQKv/axVhqSedSEHOa/YDi2NUDZ5
	PO7xt35gPsy5Mr873R285OQX6wNMBeGnngEQU20gi1dRNKYRCvpSvKRtxnycKpzYz
X-Gm-Gg: ATEYQzxXRqIcz628CjaoxJZTyKFawBfaW9HiWmNWCLMOuYkXbBphdKsqOqqqiFzE3yA
	OetGHcHGlfj9VF5bzrHfORpJ5o/DUeH8uFQO9/fOutfLvy1FLKInfef9Q3YNrrqq0zWGBSIx7y3
	hYMZ/ctfHClytXQOYzjWxfQngQnZdkOU6YdqwtqH2xyBo9xODmQTPoPHP/3dQZtkCFI1vbCcEDr
	phbYtaDnWeJi306XUaOxK1ttvdwMSAMCyBg5nZdK1Bkvr9eERu70uqf1eXJQbCXowKeuOPbH6Un
	UwexisrlKhMLaf5EScheBJDbvGBMPA+sIz07L7wY+m2cBPMhSA8lFHDRi1pYJQYnD4tA5o+tIjY
	GS4tBWzmaSFASQkXOF4bKMJfaHP/GPIcOKQus6GZA7m4KWd3GwlAAoSKKJgT9
X-Received: by 2002:a17:90b:2496:b0:35b:952c:43b9 with SMTP id 98e67ed59e1d1-35b952c450amr4599144a91.10.1773725717847;
        Mon, 16 Mar 2026 22:35:17 -0700 (PDT)
X-Received: by 2002:a17:90b:2496:b0:35b:952c:43b9 with SMTP id 98e67ed59e1d1-35b952c450amr4599131a91.10.1773725717343;
        Mon, 16 Mar 2026 22:35:17 -0700 (PDT)
Received: from [10.83.99.36] ([106.192.46.228])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bada47123sm1607596a91.8.2026.03.16.22.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 22:35:16 -0700 (PDT)
Message-ID: <8c34f329-143e-489f-9185-04694eccaa32@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 11:05:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 4/4] ASoC: qcom: sc8280xp: ASoC: qcom: sc8280xp:
 enhance machine driver for board-specific config
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260309111300.2484262-5-mohammad.rafi.shaik@oss.qualcomm.com>
 <c3f4a9cc-303f-4652-8a27-71645e8337d7@linaro.org>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <c3f4a9cc-303f-4652-8a27-71645e8337d7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: eoIyDiXvQOIlDvTLwGk7nc-7JHmwDsPB
X-Proofpoint-ORIG-GUID: eoIyDiXvQOIlDvTLwGk7nc-7JHmwDsPB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA0NSBTYWx0ZWRfX/AzT5if6rdhW
 GasCANxKiBhJ6GTd5TKpkpXrp9RGs0dF2+GERMmkSDLZFTJKbv9opvRg9D3I1prCDFrPV1bx6/o
 jOrZ9mNuXgzvFnxQ+c20AqngEThAOufpZfVEURy9QB8eCLSJAs4nfVKZvV3hruQTEip/NABmLTH
 urSg+f55dhU6PZar7N/3hKrp5sMwoh6WUoXqagJyn56Fu8YxOMkp61N1rvozf4xmpCK5gkErDGU
 xK6m4pld6dCcz6cnSg27SO4L5t6st8+2FjMnd2xDFjGng8SAgTJNvPVbPfhvEFlIg7Tv/WtQf0P
 wbHLvuSyp7xKxLOPglD/uY5xE/Dgs3amAHVpxHOr/cAf+6u99OP0v36Itwjc8dysmP5zy98v6Gn
 uqrx07hToggUL0V9FsuTEuG/xkHx3P6jSvTs7tCHNdoTZ8RIgEfmO22plU4Smgvq7v+QgVJtJr0
 xyTxAEo1xW9n4uNzXSg==
X-Authority-Analysis: v=2.4 cv=ZpLg6t7G c=1 sm=1 tr=0 ts=69b8e816 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=dEIGAuP7kbcW1LL0Y9bFPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=MeqbiXL43mTMlFCfJagA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170045
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276464-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,perex.cz,suse.com];
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
X-Rspamd-Queue-Id: 47D3C2A4007
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/10/2026 5:14 PM, Neil Armstrong wrote:
> Hi,
> 
> On 3/9/26 12:13, Mohammad Rafi Shaik wrote:
>> The sc8280xp machine driver is currently written with a largely
>> SoC-centric view and assumes a uniform audio topology across all boards.
>> In practice, multiple products based on the same SoC use different board
>> designs and external audio components, which require board-specific
>> configuration to function correctly.
>>
>> Several Qualcomm platforms like talos integrate third-party audio codecs
>> or use different external audio paths. These designs often require
>> additional configuration such as explicit MI2S MCLK settings for audio
>> to work.
>>
>> This change enhances the sc8280xp machine driver to support board- 
>> specific
>> configuration such as allowing each board variant to provide its own DAPM
>> widgets and routes, reflecting the actual audio components and connectors
>> present and enabling MI2S MCLK programming for boards that use external
>> codecs requiring a stable master clock.
>>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> ---
>>   sound/soc/qcom/sc8280xp.c | 180 ++++++++++++++++++++++++++++++++++----
>>   1 file changed, 162 insertions(+), 18 deletions(-)
>>
>> diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
>> index 7925aa3f6..c2e9323df 100644
>> --- a/sound/soc/qcom/sc8280xp.c
>> +++ b/sound/soc/qcom/sc8280xp.c
>> @@ -12,17 +12,62 @@
>>   #include <sound/jack.h>
>>   #include <linux/input-event-codes.h>
>>   #include "qdsp6/q6afe.h"
>> +#include "qdsp6/q6apm.h"
>> +#include "qdsp6/q6prm.h"
>>   #include "common.h"
>>   #include "sdw.h"
>> +#define MCLK_FREQ        12288000
>> +#define MCLK_NATIVE_FREQ    11289600
> 
> Where does thos values come from ?
> 

Thanks for the review,

These MCLK rates are default settings in Qualcomm platforms.
so hard codec thes rates

> MCLK_FREQ        12288000 == 48000 * 256
> MCLK_NATIVE_FREQ    11289600 == 44100 * 256
> 
> This is highly specific to a board, the sdm845.c uses:
> 
> #define DEFAULT_MCLK_RATE    24576000 == 48000 * 2 * 256
> #define MI2S_BCLK_RATE        1536000 == 48000 * 2 * 16
> 
> And those are the values we use to output sound on HDMI on all HDK and 
> Dragonboards.
> 
> I guess this should be configurable somewhere !
> 

Thanks for the detailed rate calculations. I’ll consider the suggestions 
above and work toward a more generic and flexible approach for 
configuring clock rates.

Best Regards,
Rafi

>> +
>> +static struct snd_soc_dapm_widget sc8280xp_dapm_widgets[] = {
>> +    SND_SOC_DAPM_HP("Headphone Jack", NULL),
>> +    SND_SOC_DAPM_MIC("Mic Jack", NULL),
>> +    SND_SOC_DAPM_SPK("DP0 Jack", NULL),
>> +    SND_SOC_DAPM_SPK("DP1 Jack", NULL),
>> +    SND_SOC_DAPM_SPK("DP2 Jack", NULL),
>> +    SND_SOC_DAPM_SPK("DP3 Jack", NULL),
>> +    SND_SOC_DAPM_SPK("DP4 Jack", NULL),
>> +    SND_SOC_DAPM_SPK("DP5 Jack", NULL),
>> +    SND_SOC_DAPM_SPK("DP6 Jack", NULL),
>> +    SND_SOC_DAPM_SPK("DP7 Jack", NULL),
>> +};
>> +
>> +struct snd_soc_common {
>> +    char *driver_name;
>> +    const struct snd_soc_dapm_widget *dapm_widgets;
>> +    int num_dapm_widgets;
>> +    const struct snd_soc_dapm_route *dapm_routes;
>> +    int num_dapm_routes;
>> +    bool mi2s_mclk_enable;
>> +};
>> +
>>   struct sc8280xp_snd_data {
>>       bool stream_prepared[AFE_PORT_MAX];
>>       struct snd_soc_card *card;
>>       struct snd_soc_jack jack;
>>       struct snd_soc_jack dp_jack[8];
>> +    struct snd_soc_common *snd_soc_common_priv;
>>       bool jack_setup;
>>   };
>> +static inline int sc8280xp_get_mclk_feq(unsigned int rate)
> 
>                  _freq
> 
>> +{
>> +    int freq = MCLK_FREQ;
>> +
>> +    switch (rate) {
>> +    case SNDRV_PCM_RATE_11025:
>> +    case SNDRV_PCM_RATE_44100:
>> +    case SNDRV_PCM_RATE_88200:
>> +        freq = MCLK_NATIVE_FREQ;
>> +        break;
>> +    default:
>> +        break;
>> +    }
>> +
>> +    return freq;
>> +}
>> +
>>   static int sc8280xp_snd_init(struct snd_soc_pcm_runtime *rtd)
>>   {
>>       struct sc8280xp_snd_data *data = snd_soc_card_get_drvdata(rtd- 
>> >card);
>> @@ -32,10 +77,6 @@ static int sc8280xp_snd_init(struct 
>> snd_soc_pcm_runtime *rtd)
>>       int dp_pcm_id = 0;
>>       switch (cpu_dai->id) {
>> -    case PRIMARY_MI2S_RX...QUATERNARY_MI2S_TX:
>> -    case QUINARY_MI2S_RX...QUINARY_MI2S_TX:
>> -        snd_soc_dai_set_fmt(cpu_dai, SND_SOC_DAIFMT_BP_FP);
>> -        break;
>>       case WSA_CODEC_DMA_RX_0:
>>       case WSA_CODEC_DMA_RX_1:
>>           /*
>> @@ -96,6 +137,31 @@ static int sc8280xp_be_hw_params_fixup(struct 
>> snd_soc_pcm_runtime *rtd,
>>       return 0;
>>   }
>> +static int sc8280xp_snd_hw_params(struct snd_pcm_substream *substream,
>> +                  struct snd_pcm_hw_params *params)
>> +{
>> +    struct snd_soc_pcm_runtime *rtd = 
>> snd_soc_substream_to_rtd(substream);
>> +    struct snd_soc_dai *cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
>> +    struct sc8280xp_snd_data *data = snd_soc_card_get_drvdata(rtd- 
>> >card);
>> +    int mclk_freq = sc8280xp_get_mclk_feq(params_rate(params));
>> +
>> +    switch (cpu_dai->id) {
>> +    case PRIMARY_MI2S_RX...QUATERNARY_MI2S_TX:
>> +    case QUINARY_MI2S_RX...QUINARY_MI2S_TX:
>> +        snd_soc_dai_set_fmt(cpu_dai, SND_SOC_DAIFMT_BP_FP);
>> +
>> +        if (data->snd_soc_common_priv->mi2s_mclk_enable)
>> +            snd_soc_dai_set_sysclk(cpu_dai,
>> +                           LPAIF_MI2S_MCLK, mclk_freq,
>> +                           SND_SOC_CLOCK_IN);
>> +        break;
>> +    default:
>> +        break;
>> +    };
>> +
>> +    return 0;
>> +}
>> +
>>   static int sc8280xp_snd_prepare(struct snd_pcm_substream *substream)
>>   {
>>       struct snd_soc_pcm_runtime *rtd = 
>> snd_soc_substream_to_rtd(substream);
>> @@ -117,6 +183,7 @@ static int sc8280xp_snd_hw_free(struct 
>> snd_pcm_substream *substream)
>>   static const struct snd_soc_ops sc8280xp_be_ops = {
>>       .startup = qcom_snd_sdw_startup,
>>       .shutdown = qcom_snd_sdw_shutdown,
>> +    .hw_params = sc8280xp_snd_hw_params,
>>       .hw_free = sc8280xp_snd_hw_free,
>>       .prepare = sc8280xp_snd_prepare,
>>   };
>> @@ -145,37 +212,114 @@ static int sc8280xp_platform_probe(struct 
>> platform_device *pdev)
>>       card = devm_kzalloc(dev, sizeof(*card), GFP_KERNEL);
>>       if (!card)
>>           return -ENOMEM;
>> -    card->owner = THIS_MODULE;
>> +
>>       /* Allocate the private data */
>>       data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
>>       if (!data)
>>           return -ENOMEM;
>> +    data->snd_soc_common_priv = (struct snd_soc_common 
>> *)of_device_get_match_data(dev);
>> +    if (!data->snd_soc_common_priv)
>> +        return -ENOMEM;
>> +
>> +    card->owner = THIS_MODULE;
>>       card->dev = dev;
>>       dev_set_drvdata(dev, card);
>>       snd_soc_card_set_drvdata(card, data);
>> +    card->dapm_widgets = data->snd_soc_common_priv->dapm_widgets;
>> +    card->num_dapm_widgets = data->snd_soc_common_priv- 
>> >num_dapm_widgets;
>> +    card->dapm_routes = data->snd_soc_common_priv->dapm_routes;
>> +    card->num_dapm_routes = data->snd_soc_common_priv->num_dapm_routes;
>> +
>>       ret = qcom_snd_parse_of(card);
>>       if (ret)
>>           return ret;
>> -    card->driver_name = of_device_get_match_data(dev);
>> +    card->driver_name = data->snd_soc_common_priv->driver_name;
>>       sc8280xp_add_be_ops(card);
>>       return devm_snd_soc_register_card(dev, card);
>>   }
>> +static struct snd_soc_common kaanapali_priv_data = {
>> +    .driver_name = "kaanapali",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common qcs9100_priv_data = {
>> +    .driver_name = "sa8775p",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common qcs615_priv_data = {
>> +    .driver_name = "qcs615",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +    .mi2s_mclk_enable = true,
>> +};
>> +
>> +static struct snd_soc_common qcm6490_priv_data = {
>> +    .driver_name = "qcm6490",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common qcs6490_priv_data = {
>> +    .driver_name = "qcs6490",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common qcs8275_priv_data = {
>> +    .driver_name = "qcs8300",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common sc8280xp_priv_data = {
>> +    .driver_name = "sc8280xp",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common sm8450_priv_data = {
>> +    .driver_name = "sm8450",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common sm8550_priv_data = {
>> +    .driver_name = "sm8550",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common sm8650_priv_data = {
>> +    .driver_name = "sm8650",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>> +static struct snd_soc_common sm8750_priv_data = {
>> +    .driver_name = "sm8750",
>> +    .dapm_widgets = sc8280xp_dapm_widgets,
>> +    .num_dapm_widgets = ARRAY_SIZE(sc8280xp_dapm_widgets),
>> +};
>> +
>>   static const struct of_device_id snd_sc8280xp_dt_match[] = {
>> -    {.compatible = "qcom,kaanapali-sndcard", "kaanapali"},
>> -    {.compatible = "qcom,qcm6490-idp-sndcard", "qcm6490"},
>> -    {.compatible = "qcom,qcs615-sndcard", "qcs615"},
>> -    {.compatible = "qcom,qcs6490-rb3gen2-sndcard", "qcs6490"},
>> -    {.compatible = "qcom,qcs8275-sndcard", "qcs8300"},
>> -    {.compatible = "qcom,qcs9075-sndcard", "sa8775p"},
>> -    {.compatible = "qcom,qcs9100-sndcard", "sa8775p"},
>> -    {.compatible = "qcom,sc8280xp-sndcard", "sc8280xp"},
>> -    {.compatible = "qcom,sm8450-sndcard", "sm8450"},
>> -    {.compatible = "qcom,sm8550-sndcard", "sm8550"},
>> -    {.compatible = "qcom,sm8650-sndcard", "sm8650"},
>> -    {.compatible = "qcom,sm8750-sndcard", "sm8750"},
>> +    {.compatible = "qcom,kaanapali-sndcard", .data = 
>> &kaanapali_priv_data},
>> +    {.compatible = "qcom,qcm6490-idp-sndcard", .data = 
>> &qcm6490_priv_data},
>> +    {.compatible = "qcom,qcs615-sndcard", .data = &qcs615_priv_data},
>> +    {.compatible = "qcom,qcs6490-rb3gen2-sndcard", .data = 
>> &qcs6490_priv_data},
>> +    {.compatible = "qcom,qcs8275-sndcard", .data = &qcs8275_priv_data},
>> +    {.compatible = "qcom,qcs9075-sndcard", .data = &qcs9100_priv_data},
>> +    {.compatible = "qcom,qcs9100-sndcard", .data = &qcs9100_priv_data},
>> +    {.compatible = "qcom,sc8280xp-sndcard", .data = 
>> &sc8280xp_priv_data},
>> +    {.compatible = "qcom,sm8450-sndcard", .data = &sm8450_priv_data},
>> +    {.compatible = "qcom,sm8550-sndcard", .data = &sm8550_priv_data},
>> +    {.compatible = "qcom,sm8650-sndcard", .data = &sm8650_priv_data},
>> +    {.compatible = "qcom,sm8750-sndcard", .data = &sm8750_priv_data},
>>       {}
>>   };
> 


