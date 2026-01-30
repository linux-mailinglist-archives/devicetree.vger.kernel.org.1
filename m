Return-Path: <devicetree+bounces-261205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCzYG5KefGkLOAIAu9opvQ
	(envelope-from <devicetree+bounces-261205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:05:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7B5BA52F
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A48F6300B582
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E794D374171;
	Fri, 30 Jan 2026 12:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Im70CB4y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QsKeXlXm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846EA36B066
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769774732; cv=none; b=X/U5EPKV6RAyo1rIrcQ5K1lt8bZvCAmVrEukH55h2JlHmlHv4PO4e7TAA5caF3wD/E9yr8WiI7DElno1ZAn5sfsaUQpnR+fS6YDT8yReEWJMbEMLo7rxb3jVczNp4OAPPoSeyssTt7qRs83LjV0Zzk41sAk2jgO+yEO6zNv+aog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769774732; c=relaxed/simple;
	bh=aFC0zeyoW5t5zvTuMz9rGwaCcw9cyjn7qR7jI7+2euc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DA6ieuf4boWanQhkEbXkdGZYnt//maXo0KiIe/UxlAFODdYfHruqyzogHtkTrKt/vSO8VpAUELj0CRnfRWATjEvX/wPpyfYyexjL0W3r1aXTgguYwKLTfit8XkEdfcMb5GcPZEF6zBMSmCIgS6cWCs4Gr1Vzyi3TAMXBVbO8jBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Im70CB4y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QsKeXlXm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UA0T43486271
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:05:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZJZ5UjJQNNupcjkDwCIMciIXXm9F7RB7VuIIvWO2KnU=; b=Im70CB4yRaEL9v9N
	FGrL6W7SgVEDc4q52HBfrqTR75hqdrlKzXlFDjICf+Bk2quEvgABuiiSsG058Aam
	1RubjQ8pK8Es+V2/SeQjH7W/lnHc6AzOJCSWJyt9B5hSSd5j8pYw1Oil9ErNshVJ
	XuLaFXcSnZx7exXoAtdE4VQyNUhFPdL7ZqdkO6J1K2DbxXEemWd0xA3xZe7N3Ai3
	jgaEIf1PiKY5uJD+Sas82yIX42x6cfOVd82sDXbYJKoC5diMf/cqMNai3qzIYhm8
	JKYSCUZgww6YUYyyMfqFi/lzRYn7UDvqggdtjnwNmtlD/GdzRKCwlJz1Ky7xCXjY
	KztCtg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0gtnj0sf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:05:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a182d4e1so39616885a.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 04:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769774729; x=1770379529; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZJZ5UjJQNNupcjkDwCIMciIXXm9F7RB7VuIIvWO2KnU=;
        b=QsKeXlXmS1R7+3ZdU9GpumAAdWSLH0n496f0a9V8AiN5f08FMYpl8AKUMft25hf5aQ
         4QVZvVdTG3jClqn0LP4G5RSCc4Ef3DeM76tX6zCHz323+EybCRSK3X90T50wFqC/QvBa
         beFaKHH9jg9z7uxSy8IrVJDOhIIb5GC9MNPfy83BWN/Z7x75c5pOmb3bjiQ/HPOAT8IC
         OyCysDFj8XSrekaQiHyfxjIg1NStvAhsCkXWLCDcnY55HE/oN9yW9kHAeODpCMUGR5dy
         6CBYaREQ+eGRbZIUfIUrktFtlxPtGScY4ZyxoheFBFW5h7isAxkhUVRemRkLlMOG1C9F
         RGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769774729; x=1770379529;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZJZ5UjJQNNupcjkDwCIMciIXXm9F7RB7VuIIvWO2KnU=;
        b=Q8YTv/SevegnyIcbd9ZJ6fMFOPypsctPIIxZaQMes7e2hNL7rJaMuL3/nSAuhMqbpf
         mf6eWJrUmx3lvJ5U5lp4kGulrGhZtblTDLnXK5o8g5/McBqIi1KmY/zSAHUgKmifEaXa
         hKC7Q7RVmxnKvqJoojrDtOxF6HAtDXM0kK3XgkyMhT9xEEVb7zd8b0c6noTVybylQhyI
         6tDJ0DoIztLMgi7QcVqlFdfujSZZN2lfWV40lGTOUUCVCKulH8pqYt0uZvx4uO/FmvzE
         IXe4dkP6/0ZBpy1zU0ElgF0o2LhT/DCvZtovRCHeRFujcw/Tj+c+hlMXZgZIR8nPuRUB
         +7VA==
X-Forwarded-Encrypted: i=1; AJvYcCVGLZkvBGpQ91qRu7kf3RBOpX/lOQ1UX5q0WDc9K71ATfje+wZEWoHBIyYsnl++BkdJhgl/W2X6cpD6@vger.kernel.org
X-Gm-Message-State: AOJu0YzopstVn3Vlkz67S/JnWCpaE46WDgZlHCB2caqJV1uTHFT2g4aN
	VkkydmrntjvNYWV4fdhMHkG0aC6hnkCUSmH9ChxHdiMOIxXqG0DkmA1Vtawj0djI3CI8ddlXiLY
	6ZyvuLKUtmBoQWRVo6lMLrDlc/9DKAV6wYx15b59f3FmqUKoe1os49s/gLOrAd4Ga
X-Gm-Gg: AZuq6aLOmZdn20u36iie+EcrQ8sgD9WlZX3Y0BVsUY0IBlu5SqfsBlnpBv7ccSMEQPr
	q6Q/Z9E0AZoiuQPhGA4C8fxqmCckopIYyk72xgaiHp9THlseeDL+ZKpVROwg5nK90Ntjxe/6tVN
	5XjCypDgx9gSMHkg09v2NbyhaqrDYfzGuuZ6d9xem+ur/ZE3L2dzoyYOOmrk2HnTeJJ9W6q9SEz
	twrZQGpnd5U7U2TwznLRVUjVCGHnpRFvEfAaY5MXqO04Xkmp15x1IuRAJb85FHan3J4augiDScE
	8Ahq2qYaZJ7aNv88axQkNNLjVePE+Vcjq1YItVxX+TSpuVWJqh4RtL8QqIQdgjbbEunw4CIiCr5
	8Z8FCOcYFVyOb44XYLd0o++TZZ6nm3ey3e0r6opVSd5TfnMmmvrOmtanRPZq+CecUKAw=
X-Received: by 2002:a05:620a:1a18:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8c9eb29d0b9mr291470485a.5.1769774728822;
        Fri, 30 Jan 2026 04:05:28 -0800 (PST)
X-Received: by 2002:a05:620a:1a18:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8c9eb29d0b9mr291467585a.5.1769774728347;
        Fri, 30 Jan 2026 04:05:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625fbff42sm15630051fa.45.2026.01.30.04.05.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 04:05:27 -0800 (PST)
Message-ID: <ce78b376-b581-4053-aa23-4f41ea0d140a@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 13:05:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] i2c: qcom-geni: Use resources helper APIs in
 runtime PM functions
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
 <20260112104722.591521-11-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112104722.591521-11-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _skKK0ZXzfGi8tHhPq0ycVzawOs31Dio
X-Authority-Analysis: v=2.4 cv=FPcWBuos c=1 sm=1 tr=0 ts=697c9e89 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gzD-2WDeCj_JQFVUwcoA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: _skKK0ZXzfGi8tHhPq0ycVzawOs31Dio
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA5OCBTYWx0ZWRfXys2Xhe9iNGTJ
 UgfUrOnUfWPZh5tjB+pbDmP3JFTQbHBGcTqqkCTlWqg3joKXYHpET+kjfeqpAUc2g/UZj415kLM
 9D4o/gqbTNeHhV01ah0zscmYXxVnPXyX9asfCPYmtvQnlMpqxe032SVnUnnqJWjsoUXNYOeJBca
 30R9uJWFDL5r1AbDMGFV01XWf4FqYfqqd0qLLSTIGd8zvKKyTYidGHFAt7efRF0uv5C50YkGGaz
 UvKQkuj/4NlCIkR47Gkccjtztqq8XGai1vv4MXecPQ7wg3xXoVERLV/Q6RQMnZ7K2vm1OIg7b+3
 1P/k1Um5zhZeNO2EiurcJ4mQcnW01nJKJzP057d8yJtDuZMbto1bCzYWFflj+LxbEZNDxnBBYid
 0ZsKkRmj3DLY6/+hdXdbaX4rPVJo3AijWqzeDO5aDcgq43ShVc6DYXEEt7zRGoW0MKYu3MHYWfh
 Jpb2QLrt76gq0B7/k5Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261205-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E7B5BA52F
X-Rspamd-Action: no action

On 1/12/26 11:47 AM, Praveen Talari wrote:
> To manage GENI serial engine resources during runtime power management,
> drivers currently need to call functions for ICC, clock, and
> SE resource operations in both suspend and resume paths, resulting in
> code duplication across drivers.
> 
> The new geni_se_resources_activate() and geni_se_resources_deactivate()
> helper APIs addresses this issue by providing a streamlined method to
> enable or disable all resources based, thereby eliminating redundancy
> across drivers.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---
> v1->v2:
> Bjorn:
> - Remove geni_se_resources_state() API.
> - Used geni_se_resources_activate() and geni_se_resources_deactivate()
>   to enable/disable resources.
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
>  1 file changed, 5 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index a4b13022e508..b0a18e3d57d9 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -1160,18 +1160,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
>  	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
>  
>  	disable_irq(gi2c->irq);
> -	ret = geni_se_resources_off(&gi2c->se);
> +
> +	ret = geni_se_resources_deactivate(&gi2c->se);

This calls dev_pm_opp_set_rate(se->dev, 0), dropping the performance state
vote, but the other function doesn't have a counterpart to bring it back

Konrad

