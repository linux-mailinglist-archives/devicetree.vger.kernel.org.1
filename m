Return-Path: <devicetree+bounces-266675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBbUEboil2lvvAIAu9opvQ
	(envelope-from <devicetree+bounces-266675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:48:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FE915FBD4
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43A1B300CFE0
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A91A34026B;
	Thu, 19 Feb 2026 14:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N3btbEW+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X+zjEEkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AA82F067E
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771512400; cv=none; b=M8w78BuJZzJ0o0FiQlCIKSS55u0nnm29ZaxY8C2RxbIKmtva22EOysXXgG26dhewIZvm4YXoCmgdc9ZjnbZUZkMLR2bZMsxrzRJ+PJzEGuXmeBn89a2Lf1e53AuKou5vUWt7StzHZH5B7pajZ3yXHGb+qj5JH32dOc0NlJYmHGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771512400; c=relaxed/simple;
	bh=vNW766IFB2+DzF8pp6Pv6LonUz6vSFc3tsbmLtLXQ6k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hva1JG4mJiry9Zshyz2cBn6kMY6e/gauFt+ZNEWEJpLZ5zVihUTEWUDdGLPG4zJdP5Em1ib//8ETefkmsvFTMVVFyzpkvc6zMvNguhdYynmheNceDaS+StkgujmQC+u6mFvimHjMi4kgSHmxro1meGoQ4DJrLo9Hd3G7Zf3TGVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N3btbEW+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X+zjEEkd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J56pL93319800
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:46:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yvBjsS8dM/m2taoBUTBY+/d+yJGb/O9XoBnXPJK6BXI=; b=N3btbEW+NNZnFii+
	1uWI90VEzMgkCX4UAN75fDIpRegoZ94H4jHGDd2E1qLacqacrMPRYC26PrrRm9t/
	rcyiiYIYNceNi6DkYHu9rsOcwGuMzIoGsJpyD9o1PpckYyZlrxAs7YG7nPmNMXUe
	eIpG/hi/U26AssqNL2Nf4y+FOvApf1sw+cpPz78nIlDeCCoCdsH3RnsNX2e7/CqY
	m6fO83abjUrtU7wmx/Srcv48pAlN+Zo88NO+oIrQd0VxoIst7mxqRa3cTXEb+SNb
	DgWFqm2QRRn4BB6lz5xxaT08gs0+3mTjF2LZ4OBThNqKa0hwzJPfmW9nM0YEj98M
	b8Fxyw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdv389fs7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:46:32 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354bc535546so955232a91.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771512392; x=1772117192; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yvBjsS8dM/m2taoBUTBY+/d+yJGb/O9XoBnXPJK6BXI=;
        b=X+zjEEkdNvcxc/xbH5qcVJ7iQIAp+twEnN09yIJs8lXtULJfRgztbWX06VLLESTITc
         z3B3I5PCDSbyXuzhyNxqoGA45+9hPeMbYq9nHJZVTELKfHj1D2Yb0uuRc7v1yBFqEiSP
         IOMilo5Z5BNYeqLl1scHM9R9jabUXt+n1ExnBs5lKluSrYE3MXUMXZA7Zp6ka9b4P65/
         0FB3kEkMcXs6P31Vl+G9Uw0raGF293PBGJ3Lja/InvCvFmPV65hjeLKF1IB40HdpOLLo
         fkMzhb5iZ7jwY5tHWglrxwzEbVB5N58CHFSY1xSqZA1lG8NsVDBD4WIxm0xtIaSK9Hfs
         asWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771512392; x=1772117192;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yvBjsS8dM/m2taoBUTBY+/d+yJGb/O9XoBnXPJK6BXI=;
        b=xCDj762kj/bCyQ8uEiPsTfwnIZtvp+2awq8UxKwcg+EHtxEZu5mV/vTGxCpNcvWIAR
         1aIQQ6UuKuTrDeJQIamN9qoVPo8zvF8DAfqa5Q3Fs0R/O0Ms6PvnfSrwwSlbPJ22MBNZ
         cH4/zO1dbLzJUYZU1vJqQnPqaKTYGmJ+iOnYRvM+jAW1wpfFD9ZTIQ4gJpbGNM8EwBmc
         /LHkhoYTZzE2K9ddKrfJSgDnvngQQ8tgvOEdfXBkgh+y9ssm4HeeVra07rE7O/Tqp/XM
         bgsRsTfh2fKdL3NjnXJUqufxLYQHJ1YxXQ3Mb4vWHnga3JFlDh/RDu0aTlb/OqbqnCD0
         WrVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMqpGSDG09AR3OG4QKDQ8fGEzSLX5+FIti2R54deTRMQkQXlMnksreScykm42f2n4CFqWgW9T+0iSd@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu/vvJrlI9nRFZIRbsE/VMMIlE0cc/X8HzcvFWUcSYv09xmWpR
	G9xVjDlqPTU8tfxU1mUOX4UQoUANMcBfPSPEs2h6+IISK4VBuitgxjmkcR07l3lB/FOPsg/tPZG
	gnwKikj3LJRnrVJmIOG2nkZAOLBhMhgaE9AeSWczXO/rJ9nXFFan2L6ieoMM4+Axr
X-Gm-Gg: AZuq6aJVhdCgPoFmK2hq4FdktXijkZ7a6S0tjMguRbThtczM/UT9H73keA3Ec6oDkyT
	1yMjTceFKKAjp5vY3T17+v5kKR/Z5D5YSmH5uu/LRftOJkhpcoWQlZv1BswWn3W01+03SEHjS8D
	ogbb1Rh/EY6RN9unhNk/0xV/385ODGIpFyeOmUqfmKokQFYidHCMP9xa2w4oIVuybuAUKapy9IK
	58I8BlIiOd1DdoHahEpOu7FiI4L5dbnWDZoIv8/ocRkHZLuhnruqoyv0m2l3Un7ou/VGPpG7dVy
	QZE5kZFkNxMRsic7Wg6Ph93maod8js1ZPw6uTKu53PhVyRWc/U+ZGDwmFRfbiXktIOX/NzjM7ao
	xeTlQaslYn8f9YoLG3r5KLIWbUmi0XLyhf3bu5NeFrppGpVfyWq+qPw==
X-Received: by 2002:a17:90b:530c:b0:340:25f0:a9b with SMTP id 98e67ed59e1d1-358450eca59mr17324774a91.33.1771512391841;
        Thu, 19 Feb 2026 06:46:31 -0800 (PST)
X-Received: by 2002:a17:90b:530c:b0:340:25f0:a9b with SMTP id 98e67ed59e1d1-358450eca59mr17324750a91.33.1771512391299;
        Thu, 19 Feb 2026 06:46:31 -0800 (PST)
Received: from [192.168.1.6] ([49.204.108.219])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35894b32cbesm1520691a91.0.2026.02.19.06.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 06:46:30 -0800 (PST)
Message-ID: <12063990-70fe-4faf-89fa-c74c7bd97f42@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 20:16:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 13/13] i2c: qcom-geni: Enable I2C on SA8255p Qualcomm
 platforms
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-14-praveen.talari@oss.qualcomm.com>
 <389dc762-bd20-44e5-a3fc-256b42f3c82a@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <389dc762-bd20-44e5-a3fc-256b42f3c82a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ceffb3DM c=1 sm=1 tr=0 ts=69972248 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=SEi2w9hYDuVaAARFuk79KQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=0Va3wKG2juJEggPPLkUA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Nc4B4XEH5iCZKlRVCjAniHFyTMjD_xo8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEzNSBTYWx0ZWRfX6XGIBYB14kwd
 AIxYOnWZaz4L+SE4KwDhHoRt9gWMf3+qzhsjn6vROWni0c6K/UPVWe3rlk3XJ9KCJoooOoU2Mj8
 gZrt2TEU7XYP/AsquFjTSaUbNJ/W/9KTkiy7Wh7v0yBxlRS4C9/NRW7Z7CIRS8c4odh0Nguslf4
 OWjLzNAih7nsvovslaSvGnMbVLqT8PKj999+VEnhzxMu7hBaa3yYZCyL5Fkcsk7bUTuF4sdxCCQ
 5SAextte3Ef/UyBFuUCd0ghhDrLROnnMq9bjKkaCLalXlp0DL8adGTbiDcr2NOU1Cz4pfTwlnPY
 Y1SuuIdJWs0K8EiKgS7KDv68Ov637rJfC3DsUU1u0T2JBw122jYJrewlP8usNoFGmwLIcdDpFje
 nMNxC7trmT04O2btzPBLsCiZE+1hxXPpb6hY5OMX/Fx2iP/C4Si7GDaV32wHQo7NL/YP6AYHmhf
 xcXUESrHGY66vmMhDng==
X-Proofpoint-ORIG-GUID: Nc4B4XEH5iCZKlRVCjAniHFyTMjD_xo8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-266675-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B8FE915FBD4
X-Rspamd-Action: no action

Hi

On 2/17/2026 5:20 PM, Konrad Dybcio wrote:
> On 2/6/26 6:41 PM, Praveen Talari wrote:
>> The Qualcomm automotive SA8255p SoC relies on firmware to configure
>> platform resources, including clocks, interconnects and TLMM.
>> The driver requests resources operations over SCMI using power
>> and performance protocols.
>>
>> The SCMI power protocol enables or disables resources like clocks,
>> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
>> such as resume/suspend, to control power on/off.
>>
>> The SCMI performance protocol manages I2C frequency, with each
>> frequency rate represented by a performance level. The driver uses
>> geni_se_set_perf_opp() API to request the desired frequency rate..
>>
>> As part of geni_se_set_perf_opp(), the OPP for the requested frequency
>> is obtained using dev_pm_opp_find_freq_floor() and the performance
>> level is set using dev_pm_opp_set_opp().
>>
>> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> @@ -215,6 +220,7 @@ static void qcom_geni_i2c_conf(struct geni_i2c_dev *gi2c)
>>   	val |= itr->t_low_cnt << LOW_COUNTER_SHFT;
>>   	val |= itr->t_cycle_cnt;
>>   	writel_relaxed(val, gi2c->se.base + SE_I2C_SCL_COUNTERS);
>> +	return 0;
> 
> ultra nit: a \n before return statements is preferred

Sure, will do it in next patch

> 
> [...]
> 
>>   static const struct geni_i2c_desc i2c_master_hub = {
>>   	.no_dma_support = true,
>>   	.tx_fifo_depth = 16,
>> +	.resources_init = geni_i2c_resources_init,
>> +	.set_rate = qcom_geni_i2c_conf,
>> +	.power_on = geni_se_resources_activate,
>> +	.power_off = geni_se_resources_deactivate,
>> +};
>> +
>> +static const struct geni_i2c_desc sa8255p_geni_i2c = {
>> +	.resources_init = geni_se_domain_attach,
>> +	.set_rate = geni_se_set_perf_opp,
> 
> I noticed that because this lacks .power_on/off, the
> pinctrl_pm_select_xxx_state() functions are never called. Are the GPIOs
> managed through the power/perf domains of the QUP devices too? (I would

Yes, GPIOs are managed by Firmware, not by Linux.

> assume not since there's a TLMM node in [0])

I don't know the exact reason for this node in DT.

Thanks,
Praveen Talari
> 
> Konrad
> 
> [0] https://lore.kernel.org/linux-arm-msm/20250422231249.871995-1-quic_djaggi@quicinc.com/


