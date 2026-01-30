Return-Path: <devicetree+bounces-261274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFuNBaTjfGkQPQIAu9opvQ
	(envelope-from <devicetree+bounces-261274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 18:00:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E37BCC27
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 18:00:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1448A300D0FC
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:00:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B11B735770D;
	Fri, 30 Jan 2026 17:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ETVG4Gog";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S3cTXhfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958F935505A
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 17:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769792418; cv=none; b=n9ZO7jp9ApTUvdCnmkRTLOCZsepdJyRcW153al6gCTdTe71/SfxHPm9JMaykGg49uuGkx7uR5gpALoeSQd4mJb9OVxzp/bEWMOBQyvfb/3kHV4qRyhPwpX3qQSrooyps7NrFuU9NMrCh6DZC40emHwuSSnarzZZkLUlIg5lu7YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769792418; c=relaxed/simple;
	bh=ds9FPB/5pM/kv71BElJIzPABzsNvdIriGuFb8MtF9aA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ac/J8hsk3HgWlrIXMYWBRb27+FRGyUM2bWYdTfaQ9p6O51av1htfWtloTUK1iG/+OZ8ec7u5nDjyxzBZv/oggkZdFumWqkz0GVrAKYJs7j8ytMFhf5vbWp1q5nrY1FyVCcSEQpIW0Qw7BtlgmOpdzTNkReB3kOVAYxsdlOyihpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ETVG4Gog; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S3cTXhfP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UCJixi1826769
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 17:00:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zb3wuqHKR/ACis16psjpt8hkng4oZUPBMQt0TeF/IN8=; b=ETVG4GoggPSEaYNk
	6YHAzRnjxRiZh7Xx4dz9GvBUz7xr1SdT49lC3wM/p+UWgbGZIERkm9wBRnb18OBX
	/CdEwng+GjYziTZMu5ut41hKvOJfV0BFeNy8vFpOlctpICRlhaPD+ZjnvhA1GDgN
	x1jqq+BjuV6/3GmAPBNTHaGIzEg6g3Fu6aX1baiN71EVT4nAKOY6hrOZXtf8ydui
	nFEXwsIGX7nFfpIlz/VEunlKcyqVOp/6f7ax4DXwKKXxVY4u0jTWBQAUjkd+iWg5
	R9gaM5y6JNnC15HIbSR4gxCmR23Sxt6Op7sTJbeLXcIKC7oii/2kolwnecNEGzAM
	Xi+JoA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsmt517-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 17:00:15 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a76b0673dcso24428585ad.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769792415; x=1770397215; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zb3wuqHKR/ACis16psjpt8hkng4oZUPBMQt0TeF/IN8=;
        b=S3cTXhfPTGRmaBD+fz02CBBWBYddwLelBOLA0vDTeaBskGqF7jK3SeW1nJ4S2j+1Nx
         OwiOQhYKIuU5SNhIJuzjGFppQMI75LTgSvYAkwejMUIaUM66HchGCcYcCRTg3k8u0VdS
         Y77zdCtI9E0hIEJNAPishZ6/99k5uBCtblYdq7BiuuOCuGInB7EYrFag4DtohQ+GJmYW
         H79sll9AAIFBfq0/+SpdN/kExTimmlzqGi6WTUdsmSOI5V5A2fvFIZ2yHZzcCnLtVesi
         xNr2eACgb3jLXPSXjtV/WhRqRrG6RtCJ5U8fsptQ70JUz/kbxyFWOIaOUWUtsGVoziZX
         5ugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769792415; x=1770397215;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zb3wuqHKR/ACis16psjpt8hkng4oZUPBMQt0TeF/IN8=;
        b=e+0xWn1i9tTbzl27ZTyKpTMV0d49rjBmyWXKoXK1NFAfwVfs3eDd5K3X8wZuU6bFYp
         0Nt8jWsVbT6YQ2BRzXKDTWKfRgjCr8lW7RNXgEw3IWw+9rXGmBrhYaZ30CAOLX/bTAyB
         TuQa2aMv+cbMadDfr6/zfdGDomrF9zyfwMCCiGEUpY3ZAAW3a6jT6CAadz2AC9ixhXJM
         6i6wE0LhSt/2OwMEjrvrBC9qTs6tSJz1365YyI+Diot6NNxc0O9Vr2nXtSnKofiGg8dF
         ypRgU6zSg4hqXLCAdUuz2ddrFFeyDXRpJ98TVlJyMb63w4SgTDoV/JrskCgoGzk2xo0V
         Yiqw==
X-Forwarded-Encrypted: i=1; AJvYcCXdA4C2HwbhU2oVCKU+fk/Y6TH661ATyFZWi2xdZU3wm75WWuvv+g5JCY+/IniJB5I9++rGUq36VW4C@vger.kernel.org
X-Gm-Message-State: AOJu0YyTlvFW6Kc/2uzZ+mF+TflaDXJQF/fF8OsuIW+SBqHk8UlJcgLM
	Ohzohxe95ZndIHNO+E1hE4EXVXNzZaPqgZGfSbSntzZoHElpTwCPJyaRzEUY4+VYTE5JGEOSDB/
	GUjNdjExNPkerdHTvKKjbRkhcOo1jITeJBtpn5ZHq5zH/iXDn6eWf+3rjeFI4Gxvn
X-Gm-Gg: AZuq6aLNn+pGPy2tAcO3Pb/8RRtt9HXQOb2NHQ7uE+KpfUSmgpypVL4BYlFtW8VI+kS
	AhdHFL2SYOgFBy6dNekTxYiDMk37oHlmkiQas6O4+85psSWCVcACCDre8ZCHcU/yh2GAv7O0RzF
	ScsYKOlToBVyJ7wWln3/zod8P5lGVGQmJYKiWpjt/PwY5RVlWS0wVtqeKCe93rv6Lj3b1Un3pCx
	6A1KYvji6UO6Sa7YDERcchwR8YE+CpWD+zbepjW6lnEHTkv5Bkb6YeM/NyIbNpNsx8h5Z026fTA
	rPSA79y/xS/cLOC4h7GgETWlYa6gzxv2aDf3OnytOAnoEn18eNWLI8YlGKomxsX1fYLgCvmfmXg
	6FX2qbME6WLadWav2+ag31Wf0EkZHq+ayNLyNM26z
X-Received: by 2002:a17:903:166e:b0:2a7:8bf3:5677 with SMTP id d9443c01a7336-2a8d81bae0cmr34347795ad.59.1769792414701;
        Fri, 30 Jan 2026 09:00:14 -0800 (PST)
X-Received: by 2002:a17:903:166e:b0:2a7:8bf3:5677 with SMTP id d9443c01a7336-2a8d81bae0cmr34347195ad.59.1769792413761;
        Fri, 30 Jan 2026 09:00:13 -0800 (PST)
Received: from [192.168.1.7] ([49.204.111.90])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3db4sm84917295ad.50.2026.01.30.09.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 09:00:12 -0800 (PST)
Message-ID: <eaed2a51-2efe-44d7-9186-115dfd185a62@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 22:30:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/12] soc: qcom: geni-se: Introduce helper API for
 resource initialization
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
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-4-praveen.talari@oss.qualcomm.com>
 <f3a47ca9-643a-4885-b8cf-0e32c6a1ea2f@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <f3a47ca9-643a-4885-b8cf-0e32c6a1ea2f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEzOSBTYWx0ZWRfX8EIRXRdEQAsJ
 bCmowJg5JDW36DCBDWoC2SgXv2tOAyPQaJ1y6q9CObFEiWdAcVR34J5gF+zd8/spj7Dziwd9Ed/
 5UrLE78Nvnp50Lxs+I5WX1317hzncBOZ9C2aRImXPskPYgWyMH5tY/LrE3lTLPPjF3K0sSs3xLz
 hyp9tA/VWMtaekGgDx8i+jZb8A9Xz7IRblhqVrJFg1UaxvIoAct7EFFO6sSaV2PkakKHQs2Oujz
 unzVVOq6x4vvdqoNHeQV5n6zqx9N1jXBWl8JQSxKdUpkEcJbEbhRbrn56sFs9ZONSExufmadVGN
 vvMB/evZsGflT9/zmNE4DhcykMg3Jo2j0Esne3J+KHIQ5CFghiqVHHWHds8S87krRBd40Mm5AEG
 zVcLk5Ls44468rVDtLppXWawaDb4jPKL9/+4dKE0eFS5eCEUgyS61tRO5Z+ZtP0NxVgVAVVHFNV
 1435XteyskPHNeRQEVA==
X-Proofpoint-GUID: wx6Vs-7vQihBJ59ivHL_bFXKmo1dT5-E
X-Proofpoint-ORIG-GUID: wx6Vs-7vQihBJ59ivHL_bFXKmo1dT5-E
X-Authority-Analysis: v=2.4 cv=HMbO14tv c=1 sm=1 tr=0 ts=697ce39f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=10aD+GSAjGS7IfLbEAHBKg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lW4um1KOeupUEvrI7wgA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_02,2026-01-30_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300139
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
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261274-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A9E37BCC27
X-Rspamd-Action: no action

Hi Konrad

On 1/30/2026 5:40 PM, Konrad Dybcio wrote:
> On 1/12/26 11:47 AM, Praveen Talari wrote:
>> The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently duplicate
>> code for initializing shared resources such as clocks and interconnect
>> paths.
>>
>> Introduce a new helper API, geni_se_resources_init(), to centralize this
>> initialization logic, improving modularity and simplifying the probe
>> function.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
>> v1 -> v2:
>>  From kernel test robot
>> - Updated proper return value for devm_pm_opp_set_clkname()
>> ---
>>   drivers/soc/qcom/qcom-geni-se.c  | 47 ++++++++++++++++++++++++++++++++
>>   include/linux/soc/qcom/geni-se.h |  6 ++++
>>   2 files changed, 53 insertions(+)
>>
>> diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
>> index b0542f836453..75e722cd1a94 100644
>> --- a/drivers/soc/qcom/qcom-geni-se.c
>> +++ b/drivers/soc/qcom/qcom-geni-se.c
>> @@ -19,6 +19,7 @@
>>   #include <linux/of_platform.h>
>>   #include <linux/pinctrl/consumer.h>
>>   #include <linux/platform_device.h>
>> +#include <linux/pm_opp.h>
>>   #include <linux/soc/qcom/geni-se.h>
>>   
>>   /**
>> @@ -1012,6 +1013,52 @@ int geni_icc_disable(struct geni_se *se)
>>   }
>>   EXPORT_SYMBOL_GPL(geni_icc_disable);
>>   
>> +/**
>> + * geni_se_resources_init() - Initialize resources for a GENI SE device.
>> + * @se: Pointer to the geni_se structure representing the GENI SE device.
>> + *
>> + * This function initializes various resources required by the GENI Serial Engine
>> + * (SE) device, including clock resources (core and SE clocks), interconnect
>> + * paths for communication.
>> + * It retrieves optional and mandatory clock resources, adds an OF-based
>> + * operating performance point (OPP) table, and sets up interconnect paths
>> + * with default bandwidths. The function also sets a flag (`has_opp`) to
>> + * indicate whether OPP support is available for the device.
>> + *
>> + * Return: 0 on success, or a negative errno on failure.
>> + */
>> +int geni_se_resources_init(struct geni_se *se)
>> +{
>> +	int ret;
>> +
>> +	se->core_clk = devm_clk_get_optional(se->dev, "core");
>> +	if (IS_ERR(se->core_clk))
>> +		return dev_err_probe(se->dev, PTR_ERR(se->core_clk),
>> +				     "Failed to get optional core clk\n");
>> +
>> +	se->clk = devm_clk_get(se->dev, "se");
>> +	if (IS_ERR(se->clk) && !has_acpi_companion(se->dev))
>> +		return dev_err_probe(se->dev, PTR_ERR(se->clk),
>> +				     "Failed to get SE clk\n");
>> +
>> +	ret = devm_pm_opp_set_clkname(se->dev, "se");
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = devm_pm_opp_of_add_table(se->dev);
>> +	if (ret && ret != -ENODEV)
>> +		return dev_err_probe(se->dev, ret, "Failed to add OPP table\n");
>> +
>> +	se->has_opp = (ret == 0);
>> +
>> +	ret = geni_icc_get(se, "qup-memory");
> 
> The second argument is a NOP after patch 1.. originally I think I had a
> cross-subsys patch to get rid of that, neither solution is exactly pretty..

I will drop the second argument once these changes are ported across 
UART and SPI as well.

Thanks,
Praveen Talari

> 
> But otherwise, this looks good
> 
> Konrad


