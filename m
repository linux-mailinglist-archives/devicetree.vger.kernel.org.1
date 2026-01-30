Return-Path: <devicetree+bounces-261207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPl0HLKffGlSOAIAu9opvQ
	(envelope-from <devicetree+bounces-261207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:10:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E48A2BA581
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:10:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C3FF73008299
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58F936E485;
	Fri, 30 Jan 2026 12:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QaEPRCk7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NsPRLmbT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6457B36C598
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769775023; cv=none; b=sVbqkA7NFtVmuGw0QfHC8nrS5vcJJI3emermrJHOYkRdDncZtiXP18pZvI/H6HtUSwIMSFIgNl/IhRJqUlxys/AGcQa3t0ApLJh6c+mk6PFWU4Krv3DkqFJPq/0Zp1Z8Qnm/GltjoQeIxf26QhO6ts9TniKlgUQg6wAZA9kxwU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769775023; c=relaxed/simple;
	bh=HzZiHDlrOr0vI/CQUVVtqO9fYzHLUewVnOb1g+k7v4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LutVejVLalvjg21R9AdUhe1aSsr3rj5j7oAJCxYZAK0KVi11OAMwxAkhM9M/Gyuwbcc2PxAzb9FWqiK9xyJ1ycAO3KVEthV2iFfKHl8tv+aiL3alx88otn6DgNmhlzd3Mj/5Jkvjh+trF2lrC3vc6ou/EObg9bg9xOUZ1WYSQ3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QaEPRCk7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NsPRLmbT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U9V15j2675395
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:10:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5KrQEShWz4+X5gzPbDvb6pqebx+KGMIu9EIvQ3m0nDk=; b=QaEPRCk7xYhOOINL
	7e3SvpalzFWMppl4cy0a5KeatAPdekZ9LE91Op0fKmugXLt2OuDxUP4/WQkiW299
	ba1VpMkDE8wwCSUcFKYlXjzIy9Nw8ds9RAnqyibAVoEI+LT0F7z+H26iSt2ttBF7
	xWqIN0nFcvyaJL3RxbWCxpILiHNARBaiVxD3wuLWLfB/HS4Xcy0rx22xO57pNdWY
	7/tGfN+qp6A8zPZROVlIyUdKJa89y07AjaT/29xuvEmJ9Rc4gom+ptrSwxve+6o9
	XNjNfPJDNVMRJ2YEVOXBeopF0aEz5zX5H6uExuM5Cdhy2e3g/8C/gmUgQUfRZeSz
	b9wfDQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0t340ew8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:10:21 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5f52555c106so156983137.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 04:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769775020; x=1770379820; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5KrQEShWz4+X5gzPbDvb6pqebx+KGMIu9EIvQ3m0nDk=;
        b=NsPRLmbTZy4AyvzEis2B6sxxBfFpmynrRVTkbC6xrnfcVhCleHT0eIww2qcca1vwF6
         w0T9bzDAQmZvoxuZew8irb6m/bxiCX3NTAlgRhaqsln9c6jU3l4E5K/1BEmvP5HCigvl
         /WEZXiHMjWxuhpR5cTEXqtWFNlWmIDnh0O2SL021321sPEq5C0DLQDsn/eILhZxm3Chd
         jIpH56YxukV7C0LIZMEZgAJbPvT8fbILyXYr36QC5kI+RYK0BXAiOkM7HWrAKaM32glR
         kQbJMg5uOSr3YmCNUTtYH3TIw0rD577PaCsvZU7IkXMHhqh+Vc8TB238EluXAhnr6eo7
         N4cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769775020; x=1770379820;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5KrQEShWz4+X5gzPbDvb6pqebx+KGMIu9EIvQ3m0nDk=;
        b=WqyTDdEF5MQnpUrAso6NTWucHq//KFHfW8vLeowWlf/tIm6v1rteMSS2A3XSgP+avM
         t8oDtEi64FmpXkNDRkIUn0z/yGcFpQV/Lobp3w+5w1Cwbsf5acipjU+NeD8WEwdkLpOy
         Yeaxo4EVC5vq+nu9EuYZNut9+ek06wpFPuiVG1wyQ8kfTb5ojryU/xyYrVrPnG1VYYZx
         a3TPkyY/zl2rZ9T3/zUz/dvjEPd7YLhv4JXSON4vTu7ympRrFM0lQB6IzuFObvdrhW28
         u8AmzhQGlwhcA1d0dP4N78MPfLLqcmitY7Oc3mqQJM2/1u7Jl+zdxbjTeSLPH1lCw+Ek
         cAfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWigMmplRqOQ+stVxTn9YiGqOQJzAfvX+VLFLa8fE3qLn7JO3NKXUcSifWNLm+wU+yLvyLq/L5fiU9w@vger.kernel.org
X-Gm-Message-State: AOJu0YwSQp+osPlHRJc02p23k5oHApox4f6T4GGxE50428yhAW9FJ6EZ
	qYcJj+ogBHTV6O8epMNkdePMmu0ittW0ncLPeEu015DRbHYESgFWDV+3WVYpR8AH/avx3aGe0Kz
	4N1s+dWQfS/IZAOEhKR+tIUcucpI44NOtNa7N2krHxcFZrzij2ZecwIyfF8QFasVG
X-Gm-Gg: AZuq6aK8z6M4K69QmzHq+BQEy87yVyzjPrgeGWzLBu+d2u92UD0HYVpI+Sj8QVymiEY
	hyACytxWorQpXtI7RVuSOc/ylL0T/0bmSkuf6tGRibpkHnQPkH6NgLNJuKtIhYAsQJwvIr7Bm1h
	V38vjZH1jI9XD5hlIE754axvlwj80y4VDLwvJDNPJoZyipi3ALidiG4y10e4T4+4JUqhZ7pTsYB
	bEvYNg/y53EFWO3iaE4S+ivUler7IPY5c48j/2nlTTXyM82z0aG4FYSCMRZDZmfDw6Tp5otXcIs
	q9fMqqBlq7Pf/J4NsIBTxfsSACxUk/n7hIP5gB3V+LB+/F7ui38+71mO9T3T/WuHgzwzwYousZN
	iVKUKDt3B7rFuSvbNCxB8UyasIa8FpxO1jk0WnQCiBpJAzGIM9m622gU/zncGM0i5EHM=
X-Received: by 2002:a05:6102:c13:b0:5df:b52f:58ff with SMTP id ada2fe7eead31-5f8e2657ed8mr399681137.5.1769775020188;
        Fri, 30 Jan 2026 04:10:20 -0800 (PST)
X-Received: by 2002:a05:6102:c13:b0:5df:b52f:58ff with SMTP id ada2fe7eead31-5f8e2657ed8mr399667137.5.1769775019677;
        Fri, 30 Jan 2026 04:10:19 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b6e08sm1773806e87.67.2026.01.30.04.10.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 04:10:19 -0800 (PST)
Message-ID: <f3a47ca9-643a-4885-b8cf-0e32c6a1ea2f@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 13:10:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/12] soc: qcom: geni-se: Introduce helper API for
 resource initialization
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
 <20260112104722.591521-4-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112104722.591521-4-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA5OSBTYWx0ZWRfX/xJk+a3azGeT
 D3GscFin75ENxBMsvjo1Napdw4domPGCTtB5FNvnvoJaVoKhIgK+FsZXA0As/yluMfSUbBCyjfV
 OASJ3OmBQiPRkmwIEkeY0ItiGGeM2w1fbjbxW6AMjaoXCzlwjw52nwQ4uhrmDftyYqgXsC8qAUy
 uHGXoYRObGgNoIxBCKhK2dasR9STzOnLKmXgoYdwPC3WaP4SscYtkhfcWOwcrd6etlbC95XD3Gq
 6VTM7Jcovlr94IV3kACQjaaGbwmWMzCHSHajfrDblJQ+/OUDJdcoFXi3EGypkNUCgfX760sdfJR
 B9meZ9dOW/5ddbzjrcp1RT+5lO+y9HXfpnm00HssHGcpL9RCu+XIErdWeZe/Tisz/zez+dK24Mr
 Gbp8F2wQgQ9zsv4qqtWWN9yHFNOIXftGmrpP9J0JV4OneWp+qCWTM9Dxfjk3PM3r2TbGoFv/rNQ
 XJRzo88qZ9tj6VpbpdQ==
X-Proofpoint-ORIG-GUID: BdKemhI5pyvFA1GB9qETskzi8o9usm9X
X-Authority-Analysis: v=2.4 cv=QfFrf8bv c=1 sm=1 tr=0 ts=697c9fad cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=d5hKC04Oyf0H4ek5n1oA:9
 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: BdKemhI5pyvFA1GB9qETskzi8o9usm9X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300099
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
	TAGGED_FROM(0.00)[bounces-261207-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: E48A2BA581
X-Rspamd-Action: no action

On 1/12/26 11:47 AM, Praveen Talari wrote:
> The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently duplicate
> code for initializing shared resources such as clocks and interconnect
> paths.
> 
> Introduce a new helper API, geni_se_resources_init(), to centralize this
> initialization logic, improving modularity and simplifying the probe
> function.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---
> v1 -> v2:
> From kernel test robot
> - Updated proper return value for devm_pm_opp_set_clkname()
> ---
>  drivers/soc/qcom/qcom-geni-se.c  | 47 ++++++++++++++++++++++++++++++++
>  include/linux/soc/qcom/geni-se.h |  6 ++++
>  2 files changed, 53 insertions(+)
> 
> diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
> index b0542f836453..75e722cd1a94 100644
> --- a/drivers/soc/qcom/qcom-geni-se.c
> +++ b/drivers/soc/qcom/qcom-geni-se.c
> @@ -19,6 +19,7 @@
>  #include <linux/of_platform.h>
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_opp.h>
>  #include <linux/soc/qcom/geni-se.h>
>  
>  /**
> @@ -1012,6 +1013,52 @@ int geni_icc_disable(struct geni_se *se)
>  }
>  EXPORT_SYMBOL_GPL(geni_icc_disable);
>  
> +/**
> + * geni_se_resources_init() - Initialize resources for a GENI SE device.
> + * @se: Pointer to the geni_se structure representing the GENI SE device.
> + *
> + * This function initializes various resources required by the GENI Serial Engine
> + * (SE) device, including clock resources (core and SE clocks), interconnect
> + * paths for communication.
> + * It retrieves optional and mandatory clock resources, adds an OF-based
> + * operating performance point (OPP) table, and sets up interconnect paths
> + * with default bandwidths. The function also sets a flag (`has_opp`) to
> + * indicate whether OPP support is available for the device.
> + *
> + * Return: 0 on success, or a negative errno on failure.
> + */
> +int geni_se_resources_init(struct geni_se *se)
> +{
> +	int ret;
> +
> +	se->core_clk = devm_clk_get_optional(se->dev, "core");
> +	if (IS_ERR(se->core_clk))
> +		return dev_err_probe(se->dev, PTR_ERR(se->core_clk),
> +				     "Failed to get optional core clk\n");
> +
> +	se->clk = devm_clk_get(se->dev, "se");
> +	if (IS_ERR(se->clk) && !has_acpi_companion(se->dev))
> +		return dev_err_probe(se->dev, PTR_ERR(se->clk),
> +				     "Failed to get SE clk\n");
> +
> +	ret = devm_pm_opp_set_clkname(se->dev, "se");
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_pm_opp_of_add_table(se->dev);
> +	if (ret && ret != -ENODEV)
> +		return dev_err_probe(se->dev, ret, "Failed to add OPP table\n");
> +
> +	se->has_opp = (ret == 0);
> +
> +	ret = geni_icc_get(se, "qup-memory");

The second argument is a NOP after patch 1.. originally I think I had a
cross-subsys patch to get rid of that, neither solution is exactly pretty..

But otherwise, this looks good

Konrad

