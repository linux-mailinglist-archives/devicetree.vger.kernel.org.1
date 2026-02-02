Return-Path: <devicetree+bounces-261716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GVsDnp4gGne8gIAu9opvQ
	(envelope-from <devicetree+bounces-261716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:12:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15217CAA2F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:12:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A6B183007BB4
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 676EA30C60B;
	Mon,  2 Feb 2026 10:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bS9RDIdj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gAbMEZlt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFA92DAFAA
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770026758; cv=none; b=h9kOXHxg4oR9vPTEhh8iwpkozJ62LZSmzT0nicatzDP0Nh77hNqSO+ZQPbAbTFz094z7hfHCDWh/RPyhJMUOJ7eWl60kFa9VbaD+cHR7PQtUffhC2asHdLlpCYr7LCmkHu8+niuxna8SuskTGXCr/t1pVHeLKpsLQ3SDO0ZDr5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770026758; c=relaxed/simple;
	bh=htL1cVSiwon54WFPmT5nZ0fXBEdeRbIBIhR+cZygJRc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FbQEd827qPlCjA+bufG7rMWYKJ3qsAnnycE9JqtCKqwLgxc5UxU3u1xOOwJfYd35av+Xf7BsWjDde6pa882E9pO8OKI2VSMItk4b7fuHBdh6SyMaBcMxwpZ4P+DvdcMg0sPSvhFH6Ot3I2+TfsBXu3ZUOZuLwUHOuPYeNNmZ+5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bS9RDIdj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gAbMEZlt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612869FP2288629
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lE/lR/lqCoGkbnkAChtl6eTom0kKZQhHcUFHfJrocTA=; b=bS9RDIdj7SKOE0a6
	97fSo0GGr3Pjj5Z9G5OG6aFLssrH48qh+xCrMDAahJM8snkCTbMsqAxA2e8kNA58
	g4LuCoeRSkEXsdUnNykCgXLeTwY5cD3Df0zTQTmpGzgEl3cmNrqnTeSwN/RdHKl0
	c6suByNqSbfFSGNLbmID3UJUfOZ0IZKgbOdIdLMItgLmAWN/RpZTm09G6631/tF1
	bDQVCXb9FEgS+yAWd75p8DOwYziPPSZNhiePYcVk9mF8iEjHTkxR528We8OtSz0w
	7A1Wyti26AYp7EGR7KbK1FGLYA1HOgt61INi76JebCz05kxw8eY3SP9AkUEWM4xL
	EWiN4A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1ard50cs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:05:56 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c7177d4ab4so95378685a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770026755; x=1770631555; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lE/lR/lqCoGkbnkAChtl6eTom0kKZQhHcUFHfJrocTA=;
        b=gAbMEZltW1QSNApeHkM7IGnOWeTmaI0tJEnziMH6IWNYfSyBoumfpXcs4k3mPLVXnW
         GMS8Yrt3IFlE6Yb7Os69g/ks86POYQURorynN5QdkeatZzZ7Ob6zXAaq7XhaHmBFYzK7
         9Q0RfmeKtUWp2j6lS8IMRC0nyKpNeGcIj+B7UEtrtrng8iKnHtYomM9H8ZbTJjL7V4Rk
         QANJJpJ3YIk9uyyAPGfq/H8w+ArXtYeawpSlx9v9N2gRTNPzPk4wEeD1+X4Bb9hSJfVT
         XXpZIRBg0Il9vZbWAJfT9fLnnb3RZs/SanDzd59gyVxMj40icLhHW+UJsSqckas38Pq9
         YPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770026755; x=1770631555;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lE/lR/lqCoGkbnkAChtl6eTom0kKZQhHcUFHfJrocTA=;
        b=lhYIFgecvb6kXgSv/vyma3AHu3GFEep0bqP5sd6kszAr9mcqSKMH2hNgx3gPeoqDZ8
         CWZdwOhMqZyD1d4jm2wB7wwaGX35OQwzHfYod5mh4koHbyjqMcqmZQGCUemcCe63ZCRP
         rYxp7a4I4Rbcdd3Uq2GSPzci1UYK2ZP7oKxM37dWRIDPqeCj4n33QM4AfMma6lR5fF1r
         gvvOjCKdUlxm7NNHV8wyOQQN+1HLUwBdt6n2Fs3V1MEeSP5C1EM1mnJpbYgpMN2BX2xc
         Ma9hgDK7wZ15I+v/p1ATEDI3PsZNCYGeu/yDrCNzXe1i4TiNnNGxyVnV9b+BLxa0Z8I1
         vWfg==
X-Forwarded-Encrypted: i=1; AJvYcCWgXk3s//0cKgCHfUyzpEPW61kWuWnHeIeItdHzLqRjIbR0sKJd9SU9xtxIf00CZraiZERX4XHg09j3@vger.kernel.org
X-Gm-Message-State: AOJu0YyBYrNCu2ZoawJoooWfIuLCDNO9pbxzWxd2j/rZFbme8eXPUGBY
	Qu3wzrTe8r2HCi/EFCFQ4KPFp3Wr9jhYe5QY23wvE1jVW76cIp+pOBlUh2etUHHEGgK86cSn0rH
	WypEuzJkUGbBhBcEiB8vXw/vN5Zcgs4FPlEmb4qP6iZzQF+YmKvkBkGGvj8iF7Xln
X-Gm-Gg: AZuq6aL/QgryMzF+k+t1leQ2rWgFJDHMokfKF4n5WCFzDStp2x3AIkNIkMl7vY6OWpl
	RsgbTmpnRsH1Vt3KdqFkIi9wlOZPnvDd96ssRtcsE8luQ6SaG69DUoXgf2O8WbSubpCL8upk2oS
	ynmy9bcRxUS3vI2M6Uddz5o4UMe0U9DSEgSHzBnOfSUbrGqucXlAB271oa4bvwa3k4UGHb4nz/l
	/snITn+iiIdskO0PkpDrCWQxtODjyX5NJDMmrsSt7XLLnHlsiCLYwdm0FP61mYDgSD7q7qjeEz4
	D/m5L4ANV9sJaSON3GBCxoHH68Gh6H/RIzAvJbpRRpfU0icEut3AiKplRlsLXxvMnhvu/54RoUP
	FE5RKRkleSlsOr7EiYgpTZ+3HIdfQ+JCElJi5DTmafkT3h0Rsmq5OvlGmBiIJzjAP278=
X-Received: by 2002:a05:620a:4141:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c9eb2b920amr1083292185a.5.1770026755570;
        Mon, 02 Feb 2026 02:05:55 -0800 (PST)
X-Received: by 2002:a05:620a:4141:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c9eb2b920amr1083287685a.5.1770026755123;
        Mon, 02 Feb 2026 02:05:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469e45fsm7463972a12.24.2026.02.02.02.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:05:54 -0800 (PST)
Message-ID: <d8826de8-0535-40a3-9b1a-24c2d3fc5de8@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:05:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] media: dt-bindings: qcom,sm8250-venus: sort out
 power domains
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
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
 <20260201-iris-venus-fix-sm8250-v2-3-6f40d2605c89@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260201-iris-venus-fix-sm8250-v2-3-6f40d2605c89@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NSBTYWx0ZWRfX7/HzxL9asAND
 xZJFwM1GXLpXr6Q3JQUNSzt1v9whZLI3HMbkbhrZin4AaC8MtXGgpf76Vr8fxB2g0AHfKR9HzkW
 goJA3zg984U6mj/jwCKGCZbfd+G/XG3feoraMrC2hIVuKj6Q2gCvY2ee+/11mhwFcfotwRrq3F9
 nEI93ZnVVt5eQ5P8eUHAjje34A18tcqKTOBVrprpoIvw8/k/CNaGt8dJ7Mvr00IP+qZeVGFIi6p
 7iIJHhuWziZjNBrkdBnrWwTLchvqfLp7WXDoXoHnstOVSvPvlIMiH5MJtFlER5qG68H9qj5+rKS
 OeOqU7W7z/FcAGZ8TuoDPWRhweAWcxFoUFzrjZyrIQYk0pTsh//sLSatcBGZC7stXrIWjS3GJlO
 kNF2xxNTGJLDjsqgOzXKh77x7GO78+9J63ssvz6J9p99VEMSszMHjZS9PtIbZZEF6lGZz4oWbW9
 dYafFQtFxfyubWySxTQ==
X-Authority-Analysis: v=2.4 cv=J6anLQnS c=1 sm=1 tr=0 ts=69807704 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ybeyijjueW2mqxUJa2YA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: EvdQLjxJqphpDjAhw1h1l2wloqwnd9ss
X-Proofpoint-GUID: EvdQLjxJqphpDjAhw1h1l2wloqwnd9ss
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
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
	TAGGED_FROM(0.00)[bounces-261716-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 15217CAA2F
X-Rspamd-Action: no action

On 2/1/26 11:49 AM, Dmitry Baryshkov wrote:
> First of all, on SM8250 Iris (ex-Venus) core needs to scale clocks which
> are powered by the MMCX domain. Add MMCX domain to the list of the power
> domain to be used on this platform.
> 
> While we are at it, drop minItems from both power-domains and
> power-domains-names, it doesn't make sense from the hardware point of
> view. There are always 2 GDSCs and two power rails wired to the video
> clock controller and Venus. Disallow passing just two.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

