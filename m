Return-Path: <devicetree+bounces-261719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KM9MId5gGne8gIAu9opvQ
	(envelope-from <devicetree+bounces-261719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:16:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0397CAB88
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:16:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 27B923047296
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D92C3570B8;
	Mon,  2 Feb 2026 10:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aotjcpyM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KBQsV3oT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74A6356A05
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027182; cv=none; b=HNi+/Pz8r25ENsDIuiwG/WzZ7vCCSfQ3vDVoUwcHfTe+yyp6Y8TCgzp+MMuc053jkLACsSlIQ39l8PKfBEumLRUUYxto2XMQ7kKog1oF8ujdeBwgYuIPPlg43PA9KUBVmVAfpoBSvB/E4q7BXuQ+H4x3AkODaWmzTda38Npykxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027182; c=relaxed/simple;
	bh=1jmLK14LqxG8z+7yjYgdbBHNfz60JYyrT36cz58Vb6U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zjln//KTsUM1pMfuWY0a+4+/LQLCg/4DGb6XH3LngUvkqQBhd61TZajlCTu7GmhhPLft9/VYPqHWJ2AxAezFHhmBWgNrB/I3PaOsGx2RUS4u5T2J2S+gK8W6tu0q20dI3bHCJcgb1Aw1azIEqmjEdyDRoHQWycrk82VPFd2aMYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aotjcpyM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KBQsV3oT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6127ZSos794804
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:13:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/pT6iNPUZ5rIRZHrVV5FEzyGpeE2uo+c8pdtnOAtf5M=; b=aotjcpyM4a8MpgJ+
	cycnt1eKnB+tpLvrWvhhqGTOK2grvTyzbagbBbmBfvStkuvNviWy9O07DrjoPfNn
	lKGxVEE0uJvJXTAZxTdqHL4cvKsX6UpHclbmD4MSEDVTG9Aqg8GUmBsaqIx5z5fT
	pX0wxcMstjQXRnePOtLX0rVHPrXL1ptKY1z7geyELgRelpjcz9pPDMlLl7ZIElCk
	7TcFafuRpVw2Ckp+xPqjLpILYAnI9XXbOJwyR79G8RoYOoVkJLtUALTBLsqIPA1e
	fbu4jVTD5caGJayRSPCYY+hqr7f2U7V/rYqdYhAr/UO+gpJA+5VcbA3UxVCMFue4
	b+iJ6Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as4w1dt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:13:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50336ebabe0so198210541cf.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770027179; x=1770631979; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/pT6iNPUZ5rIRZHrVV5FEzyGpeE2uo+c8pdtnOAtf5M=;
        b=KBQsV3oTSi6xU0o3O5q1TXbWnCyhwh86wFYINz4tPEIHBL9J8QvsM2Zlnfa+wq7ukV
         4hmSmFwkoUzcoVuvsny0psZdSvCfy1mvKh1elewMgLrvPchszIBQqq8N14MWs7+MRDaP
         j0HpliMAHq5s2jf2VRGEGncVAMFNQdQuQeVftb+cBQbvzPNw31Np2rNVoMKZOFGUdIL9
         iZt02kxfKXPMhCAHBGJkMEvHaYbAS3rfbXgjTBKIeP1tCXFBITT4HdOozf/PUaMUtWE/
         7+R2EXfjr2C8pyJK2OtfYm2Lzxnqh0aBdgkFjWHkona/tu5coAxzj+h1fwZUZkvQo54J
         huRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770027179; x=1770631979;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/pT6iNPUZ5rIRZHrVV5FEzyGpeE2uo+c8pdtnOAtf5M=;
        b=u/odS7IwL/j4sCTVK5Tkdzd9vwJyb4ZUQqMf/pJITMPCSI8GiRxS4BHZC6JjlVXx7f
         OLl9VccTqQyhQBeGEZB2smqrVgSn2egk3bsRbxWXDbjpLzW6dXzYeBiMMzB7QlLpcq07
         FcWPBBMJOP3dUQU/B3uoolm74m3G1ZieEMgDcyyHRvBNeOjyG9lKiSPHVT3csCvg0KvK
         fK91k/RcrKLkDgMiuVxmYG/hKtYaHi83qNQDL663TVX9adxAt0uqDe8z82VYokQcr+da
         9eVondk1uYX5FOvakW642MzpgA/fuSPXsIbJP563/BJ/EfcLjHP6HMps8Mjim8XswGGr
         kz6w==
X-Forwarded-Encrypted: i=1; AJvYcCWDEFOEluCWiTqICMbxDNoY16PnooHajsd3p6SCYkaXVzxdxhRu0m6e4racg3Ed6kmK3XIITGUjuNsY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt27M0wHLE0KxNyZQhPiB1GseTLNuP1SesR3E2VCd4m6JC479q
	OAQ6ZPEcyLfVynXxOhwvMzA65H29MZfo5VgbNpzI2Ny6971bMfe8Dff/qjJvUGe+089GaNsj01/
	gY7FY/ZtTxK1IYf4wDkWmSEVBatQakQdOx30UsF/kL14FKCNRiVa7eK/pQ52deEV3
X-Gm-Gg: AZuq6aJgpPvUcHY5aX4yweUFkxp9IdTouYgyynUckBPR7k+u5AkN8YJ+X1W3va4+dOz
	gtUokLtsNfXb+hKTVnbLL4wSdb7mufQhGRkKVV3m96bIiAGae27LKMhXt+FCKVc5mlKMlGYc7nG
	mkvQ+ti1uALV1vhKEYwUHyamP7o6XCA8VBbLDI88TuKVBbe0D8ZnbMr7gXQCdBt2KtaMJrY6rXK
	WF7pag4ToVrcx4JFw2JkWUZiczf0vwT0HjSmd7A81u+bVxKug/cDQOwga6ogMmIbFdBS4jQKPcX
	wmkVv/n7NSKyxd6nDGS3L+DR0izBRqee2GtGhXOxnlwFTEyyxQfsdt/5xV/TeuQSJRMMmjKd5pO
	L/6OL06kJjidL47a6wksedJd9yhE0oGNwW/QxIdLaEk/DWwG/bTfO71OU2JmkiArs1n/r7T+MUZ
	y0WTKn5Bt+P9QrVGzutwyGdzVW5u8j6vmRjU/KoqExBVQS3VRJA8KMHRkrbQdP+/E=
X-Received: by 2002:a05:620a:9489:b0:8c7:3ff0:d472 with SMTP id af79cd13be357-8c73ff0d649mr1145393885a.15.1770027179096;
        Mon, 02 Feb 2026 02:12:59 -0800 (PST)
X-Received: by 2002:a05:620a:9489:b0:8c7:3ff0:d472 with SMTP id af79cd13be357-8c73ff0d649mr1145390285a.15.1770027178630;
        Mon, 02 Feb 2026 02:12:58 -0800 (PST)
Received: from ?IPV6:2001:14bb:15b:d5bd:79ce:863:9a22:aae2? (2001-14bb-15b-d5bd-79ce-863-9a22-aae2.rev.dnainternet.fi. [2001:14bb:15b:d5bd:79ce:863:9a22:aae2])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625c44cbcsm29528431fa.7.2026.02.02.02.12.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:12:57 -0800 (PST)
Message-ID: <ace931f9-822b-4756-8c23-f69963ffac02@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:12:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] media: iris: scale MMCX power domain on SM8250
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
 <20260201-iris-venus-fix-sm8250-v2-4-6f40d2605c89@oss.qualcomm.com>
 <95977a30-616c-44af-ac93-90bae2bed298@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <95977a30-616c-44af-ac93-90bae2bed298@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: RI1mGqkodLGnsjQZDMD3I77qSoFvOEWv
X-Proofpoint-GUID: RI1mGqkodLGnsjQZDMD3I77qSoFvOEWv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NSBTYWx0ZWRfXxy3MoQaBrch+
 hkU43w+OSlOhy/UAi38DJAcnBhYYEUTiv09M5vnlMZz98JGERB90JnubDbkw2CbCSJDEl1+VjBE
 ROy/1ce+4V4uysWS19jLWVWx0xfQB+hnfRDKBK2L35fHewzMjPRYoSTRMZNYwyESUL4cD/j9aMv
 2a0SKFZD5XrtLkF/WY7gRRw29D0RS/nFIej7N+1HNqcddSBN3+20Hjnr2LOS5swp4n2LqqxbTb+
 qgEudXf0xwkRGK2fgjupuRBy/toKq3LUQgWIQX52BbXs5VYK9zZRHQDQvnFWxzMgcTyRFP57ABL
 rllEEX7308AgXNMQ1MzQ7XsNU9omMpy6ak0PjVBpJj10eZcQcnvGg73fXNnT0s3XYpXfI7peBAR
 uLiAO4+BvEomI7N8hb2BSxlbSIzTiyGPbI/RHaFPTSncemWKzc+CYLiWIQ56531TVrJx5UdCDUG
 cOUIVyDQ4Co5aOH3Bfg==
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=698078ac cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dCPk7noOixveXNiBySQA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020085
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261719-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A0397CAB88
X-Rspamd-Action: no action

On 02/02/2026 12:07, Konrad Dybcio wrote:
> On 2/1/26 11:49 AM, Dmitry Baryshkov wrote:
>> On SM8250 most of the video clocks are powered by the MMCX domain, while
>> the PLL it powered on by the MX domain. Extend the driver to support
>> scaling both power domains, while keeping compatibitility with the
>> existing DTs, which define only the MX domain.
>>
>> Fixes: 79865252acb6 ("media: iris: enable video driver probe of SM8250 SoC")
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>   drivers/media/platform/qcom/iris/iris_platform_gen1.c | 2 +-
>>   drivers/media/platform/qcom/iris/iris_probe.c         | 7 +++++++
>>   2 files changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen1.c b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
>> index df8e6bf9430e..aa71f7f53ee3 100644
>> --- a/drivers/media/platform/qcom/iris/iris_platform_gen1.c
>> +++ b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
>> @@ -281,7 +281,7 @@ static const struct bw_info sm8250_bw_table_dec[] = {
>>   
>>   static const char * const sm8250_pmdomain_table[] = { "venus", "vcodec0" };
>>   
>> -static const char * const sm8250_opp_pd_table[] = { "mx" };
>> +static const char * const sm8250_opp_pd_table[] = { "mx", "mmcx" };
>>   
>>   static const struct platform_clk_data sm8250_clk_table[] = {
>>   	{IRIS_AXI_CLK,  "iface"        },
>> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
>> index 7b612ad37e4f..74ec81e3d622 100644
>> --- a/drivers/media/platform/qcom/iris/iris_probe.c
>> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
>> @@ -64,6 +64,13 @@ static int iris_init_power_domains(struct iris_core *core)
>>   		return ret;
>>   
>>   	ret =  devm_pm_domain_attach_list(core->dev, &iris_opp_pd_data, &core->opp_pmdomain_tbl);
>> +	/* backwards compatibility for incomplete ABI SM8250 */
>> +	if (ret == -ENODEV &&
>> +	    of_device_is_compatible(core->dev->of_node, "qcom,sm8250-venus")) {
>> +		iris_opp_pd_data.num_pd_names--;
> 
> You're decrementing 1 to 0 @ this point in the series

Why?

  .opp_pd_tbl_size = ARRAY_SIZE(sm8250_opp_pd_table),

  .num_pd_names = core->iris_platform_data->opp_pd_tbl_size,

So here the nom_pd_names is decremented from 2 to 1



> 
> Konrad


-- 
With best wishes
Dmitry

