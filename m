Return-Path: <devicetree+bounces-262193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLzIOpPYgWlYKgMAu9opvQ
	(envelope-from <devicetree+bounces-262193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 688EFD8204
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02F453065DBF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 11:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A299D3314D1;
	Tue,  3 Feb 2026 11:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aE/IbWj4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GU5SXhUi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F325331227
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 11:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770117261; cv=none; b=snDGtyOXtEVa2VpUW2b4PeuCcWVt8PkWpT/kbgpj1/NlPEd2F+pZFBK024yaFju9pLtnoKzK0lUbQh0dTEuAayVIu6P4LfO7YGmIbCCF6nMmJMv/X4Dd//dAxrvgDvt2/hQm5w/5iyzNBWo1GTyGEZfk0tQRzAv5GzbtOcGE9C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770117261; c=relaxed/simple;
	bh=hE5YmGG7iH5u2PUUIDZLVoAsmcZUgfitPft6rYLloVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WrA/7hRxw8ZPH0T3m61vtVF2Wv1EPB4U43m/5NpyWfvvc0uhyksg/iJJV+wqEOmaxRCWHlUPTolFdMbnbriakRywXUM3DvQv3pH33+EDyaoniqtaTPQQecMrvwdkCD0Gm+1Qgnbd6cf9J8w6ff8ZkPE2dEMpg+1a0CB/uCAJXzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aE/IbWj4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GU5SXhUi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6139m7Ws3386846
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 11:14:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fqIWeb7+wQWH9tXZxxrOSv9gW7UU4Zw0dIiw7RLktA0=; b=aE/IbWj48X8SyCA8
	WCwZ2VvncBD6CbBGSeaveEEj3h1pNjT5j6eEemFBDbtSMqyCbkkRW9AC92O8Wmp+
	O6Wk+S3v4gTSctcTfRIHNjMFEcJYBRlFhx++dMFL57LJT4+WwvvnQglwT0Bfh3nc
	qIx3K31w7mO3fm3aZD/Qjxy6OubSDz71wslVYJNStERCOL5eWIm2jg5HqqvVGkA6
	eS0DQpvjCGN8hqJQQHeDva8p3THLyBW6Js19Y2mTeJoKnKo5KFyOjER8Vcu7YjcP
	P6kHfoXRSdt/iJz2iJWt5PtnCLsaJe5T7rBtEgR7Bt8JOnemSWk3LtPgbvwjc6Ts
	M2SnwQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbu816-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 11:14:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6d6b0f193so101042685a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 03:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770117257; x=1770722057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fqIWeb7+wQWH9tXZxxrOSv9gW7UU4Zw0dIiw7RLktA0=;
        b=GU5SXhUiK65Dx1lZis/3lFYl20euEwqLmqBOAadcthmmWt0JNLy42MkOIzNTmsVy8O
         BTKye/mdf+KQQzwqq0pBJvWU9riTYGiq6+8Tx/SPpe4kYnyYtVyUW5PbvTVMRSLUtbiZ
         Pae3UVJ8Q8yVjtyk7keAcLeXLAfMhWuXgkA/d0sIT5nRKUco00KFIuCizJaVBU8YeGzE
         Ote61qnKnGOlk/HLrZVa+UXV0Uw7Bn4wzxuzeJOuj4oB1AH8TJAAZf1Gd+CABICVvtzk
         jrsUL/DdkrWuxqe7kqeB0/FnWFOMdXb416LQamDJwFNIsjVTVpOviH9iMEyzbBMF6xl+
         39GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770117257; x=1770722057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fqIWeb7+wQWH9tXZxxrOSv9gW7UU4Zw0dIiw7RLktA0=;
        b=b8sr1jlgmz+7d8nSR/TiRhGrtk83XQgdyqT2J2/Xqm/bZ4w9SA1hBLraPKlaYSDGxG
         /4exuZpVAy1HakL6BbTW+mJVhJBTMidJvNOz0GVv9ti8O0N8cCrGnOriuVddw0ut/l1x
         a3Tgr0MF1BxTiOne81bJQHdqGhApTaxZEMJ9A/uGOIzzz1J/rA37uUNxbmPrWYmvrwGX
         CZY0Qj3O5RCpBTuvQ6FmwPlNO8mA0XW5YvanWdknscBjmWPuJAjpDYJHvpHRLy+4p0xb
         /iAR504i69ESnI2VAF6KK3bR/Wa0KvjNyu20BPzU/fuc26YXCinKaP05NfawWuxyWupj
         d4zA==
X-Forwarded-Encrypted: i=1; AJvYcCWB97UQq2pY5Eq95CUx1jfuLqbZxiPups8s11QZs98UfErKchY3Lwdcgn4Pe93WMg/fbC04M+GK1UfN@vger.kernel.org
X-Gm-Message-State: AOJu0YygInYjQhimfwFa7LkEiMUZ/HONQLSBdhxGDVSsQyfOTUwroqu+
	k0xqEXZLN+SjVTu6VspyjoPVkHWMj4T6YfN92ocubNVg9N5dSKModvhZ2RLYRf9Kq24CQ48QbU/
	gbNbk58wRW9mhSAJkROkQ3neWLsxPHB3XXMJ8GAvypxtIvmF2N8AkTUJ9HQpmNGVs
X-Gm-Gg: AZuq6aLooB9ruLNBpiLFUduy7Vuze04x5hR5+g/QPwYCcIUTkN4Iyg9FHFxA9BU4D+8
	+WCklE0gYa5fDyKpSzX/0Rl36sPmcHZW3trnOqGn8viNG4ZLLoez8LTUYjQXcveTJv9veI/ehc5
	h2c/NKBmfNF9Yi+mrQXFt3NHdLKn9/8Pm/dfK03mhQwy2nV+3P32rZJc0j4PWPklFkkR1edhy2M
	hzlEJ7S4O83I2rCKCFRB/b+/YFTnT1PGfShzrRC9hpoaQ0RNmvAILfMCK1YeFtcddsU8HJB5HjW
	c1lCI+2k+XsBhV+m2erElyIQDfoUxZ82ZDnme4bphIWim95pfthjHxOqGyqyykfszDKts016Ufy
	BWuXdgDn6tChsvFAOHsAajb3ow/0+RRT9u4zlfihPHNvz1GhSp6aDldGekJ1b9o/BWY4=
X-Received: by 2002:a05:620a:19a7:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c9eb139c25mr1519171585a.0.1770117257540;
        Tue, 03 Feb 2026 03:14:17 -0800 (PST)
X-Received: by 2002:a05:620a:19a7:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c9eb139c25mr1519168185a.0.1770117257008;
        Tue, 03 Feb 2026 03:14:17 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefca54fsm1023572666b.23.2026.02.03.03.14.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 03:14:16 -0800 (PST)
Message-ID: <24f967b5-0f15-4aed-a81f-ad54f8e541fa@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 12:14:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/12] soc: qcom: geni-se: Introduce helper APIs for
 performance control
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-7-praveen.talari@oss.qualcomm.com>
 <af0eba46-329f-4979-8b8a-fb5dbe2ad992@oss.qualcomm.com>
 <b918cfa9-1f40-4aee-ad91-d6425798bd07@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b918cfa9-1f40-4aee-ad91-d6425798bd07@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: F8qtrZgdHJ4X9GPNgjl1yyIBe3pNcImf
X-Proofpoint-ORIG-GUID: F8qtrZgdHJ4X9GPNgjl1yyIBe3pNcImf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA4OSBTYWx0ZWRfX3PGEOAB+CT4k
 MoyaRD7R7a42K14VE9GFxzkXWhDrwk/QTXhMX3sL/oI7IdQxGS+ZLvjulpGl8aDezaWnZ9FJgb3
 D2kLZvfNqdWA4E7VtRAJoE9Q75uJypxf1i6djrNoqxWd7wQGyP6sRhStR1X33uBrTs/h515S/CS
 eXHeoPLPUirTVOVW7tLHolDeLtgRXusbgj9QwUpfQSiQCMPla/N6HIH3nytWm+zxyeHS73QCtxu
 6wWSIHm6lDBZV08V4vuFtTZhe9N1nnYP89jc6ttIY7IuNHMVd1mHMh2b5z+zAEJPIiDtDmg9UqU
 GnOAtt4tDtaU6mJLSGuRySnn9w+71exOHwPWC7RimjgKXMghstyC53eo5jBBLC9Zo25UF3o3OIC
 uKfLmJDxUc7upaQ0bC7iG/MAJzRLr8ULzmbEqvfHBRFuCLJLPd0Q4ImQimagKl6s71zeAtz36Lz
 xL3dMDuQZNtSosP3JfQ==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=6981d88a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OO4x0hjL3wxKXcLKrYEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262193-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 688EFD8204
X-Rspamd-Action: no action

On 1/30/26 5:54 PM, Praveen Talari wrote:
> Hi Konrad
> 
> On 1/30/2026 5:53 PM, Konrad Dybcio wrote:
>> On 1/12/26 11:47 AM, Praveen Talari wrote:
>>> The GENI Serial Engine (SE) drivers (I2C, SPI, and SERIAL) currently
>>> manage performance levels and operating points directly. This resulting
>>> in code duplication across drivers. such as configuring a specific level
>>> or find and apply an OPP based on a clock frequency.
>>>
>>> Introduce two new helper APIs, geni_se_set_perf_level() and
>>> geni_se_set_perf_opp(), addresses this issue by providing a streamlined
>>> method for the GENI Serial Engine (SE) drivers to find and set the OPP
>>> based on the desired performance level, thereby eliminating redundancy.
>>>
>>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +/**
>>> + * geni_se_set_perf_level() - Set performance level for GENI SE.
>>> + * @se: Pointer to the struct geni_se instance.
>>> + * @level: The desired performance level.
>>> + *
>>> + * Sets the performance level by directly calling dev_pm_opp_set_level
>>> + * on the performance device associated with the SE.
>>> + *
>>> + * Return: 0 on success, or a negative error code on failure.
>>> + */
>>> +int geni_se_set_perf_level(struct geni_se *se, unsigned long level)
>>> +{
>>> +    return dev_pm_opp_set_level(se->pd_list->pd_devs[DOMAIN_IDX_PERF], level);
>>> +}
>>> +EXPORT_SYMBOL_GPL(geni_se_set_perf_level);
>>
>> This function is never used
> 
> it will be used by UART driver, not for I2C/SPI.

Adding unused exported symbols is "eeeh"..

>>
>>> +
>>> +/**
>>> + * geni_se_set_perf_opp() - Set performance OPP for GENI SE by frequency.
>>> + * @se: Pointer to the struct geni_se instance.
>>> + * @clk_freq: The requested clock frequency.
>>> + *
>>> + * Finds the nearest operating performance point (OPP) for the given
>>> + * clock frequency and applies it to the SE's performance device.
>>> + *
>>> + * Return: 0 on success, or a negative error code on failure.
>>> + */
>>> +int geni_se_set_perf_opp(struct geni_se *se, unsigned long clk_freq)
>>
>> I think with the SPI driver in mind (which seems to do a simple rateset
> 
> APIs were added as generic interfaces shared across I²C/SPI which is specific to firmware control, not Linux control.
> 
>> for both backends) we could do:
>>
>>> +{
>>> +    struct device *perf_dev = se->pd_list->pd_devs[DOMAIN_IDX_PERF];
>>
>> Then, we can do struct device * perf_dev = se->dev;
> I don't think, it is needed since this is specific to firmware control, not Linux control.

My point is that it doesn't have to be specific to the auto usecase,
further commonizing the code..

Konrad

