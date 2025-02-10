Return-Path: <devicetree+bounces-144828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7603A2F633
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:59:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4969E18813AE
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267D325B68D;
	Mon, 10 Feb 2025 17:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q3F1RL3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEBB25B66D
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739210343; cv=none; b=sWfEiwdxuGhnI7Xgzo7VH7+oeGC3nO2eId1ez9H1H8JiJSA09e0xtBekhqRTA1JNX7KkVh9Be9w8ZRfX9rtgI/CUOnJIlp3nwTqvJnHM0oJX2emOprAJ+WXdEkIC4Nqoe1fxxb3GGCsnUHc9fsrNKhK4qGAg/Au1n4mw5VjLRfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739210343; c=relaxed/simple;
	bh=BLDczZsfC5KkSZfOgsG/+Er+OB3fP+wvqahQ+46/Mho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z5NMvJVq7UJGvvr5pM5vjoamoVK+VQ9+zl/erWo5Eqowq72BdzVO1lShzn4+02ZqWXzNlWck3zWSlUVbSoF+aacocSvww+nazuNE2BXCU+Qy1C7um0kL8F12tXzLXJT2v1ZeLRyKrXD23V6LAw94ItaXZWQNpQ/NNSMDM+wpkSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q3F1RL3A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AEAwFP010369
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:59:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sjCYVrgHrNuy5HZhQ/kj1n8xpy+D6Uui3+yo1qnI1Cg=; b=Q3F1RL3AguhGJIv7
	32sV32GPq8ipLOkPnXgsOnV+/a0Yr2aPIqc0sdkziouay9U400QdKFS4l/wXsXpQ
	Hv/zWmOi/Ot1ZrzIufJ+RUrIDqEJwrotTId+tP5KQYizS4B3rkfkDtSDPpytDpqW
	EGTtDHRvY5LFHFjJcEfCYc7pLLOiwWRRxMNDj/s+Z9fiXmA2Mn5TzgeVr0tqeX48
	REkKaDk32F+T9XCullZt7vuIl3HofXekmwVLx3ftVpPkvKih9i3wonS2Pmyd4Z2P
	6RYgTKUgP5DkqOJ5xtFvkUxgHmF52+WKlY1rlGEVw7Wznb+MHiHu80Zj1gsnsGrS
	top+yg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qcs59tdk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:59:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c05d579bc2so8191585a.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:59:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739210339; x=1739815139;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sjCYVrgHrNuy5HZhQ/kj1n8xpy+D6Uui3+yo1qnI1Cg=;
        b=F6wewTG9uZXFkrVsEs6Vpcux7m+leaWQvDy2VexvHkrM0UWtJkHoBxOKiG/25Rn5vQ
         /2zcqSProS5aLyAIoisc3Ucd71RfY0uO3WdmjEh+sP6boEXUZMkSO8yvBrvQ+epBFuKC
         1TzPCsUq7xcSYRkYkWHCtnn1KvKdzAp6vsGQtPHlHFpp/P2kvzRd/ywIa2S533WEqR53
         PvSocLwwXEP1wOaG0GQUzAjhyPfTb7rJTPS1qYdf1Gd3Tn10/gRNUf/xSh2bhzV9qe5m
         kYa6ox1L6p3MmgqWePMV+/vo2wdywXR5UGIugaNMPwgG1CVvEtnd9FAXmw92DAYiMkXT
         tArQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbZiN7E4jHCMb881rUAofwya24HZ5t9clqYjnOfKdRe+bByp4TAMFSOo+AHCHssGBXHvKc3dJvQRaS@vger.kernel.org
X-Gm-Message-State: AOJu0YydkUmCsw4Xqp4XZ14EGnBzs1NV63ZdrgDUPuGacLR0ouQusDsM
	+nI/OCtfOP1b0lqNNifzllCQN8rdRiOvEHj5qQbOVxCwQ9dNOdTBHDNEM9nvgTDYnF2EJFjaSLR
	lp4CH5dewAqsV4XG+6/sTb8dH//r4o1kb8TJUmS1rZxcd7WyL7Hu7GLAR6EWl
X-Gm-Gg: ASbGncuLvTf/zcT8nzlLs/VSJAnmnQa0XRyBneyvZGGF7XLsAuqDaQrYX6+L7rp5nZ+
	h5B5EN9aQ88VaIEayO79vffPyh5DYKeboW6Wp3Y/KwfC89fE3q3jwXTO9kuBzsu/X4KV81sRbxL
	WQXcfQ0OfUvIwmMveSEPkW3AZv6CBhsn82Ol4CaucmcxgEkeATVHvfEomr8MhtUec3t3EgVFILf
	zqcDswxnaiPQU1LAkCg7y4mHfpWHujCBcCupsiNdDY0Q8a2522Ze/0xPrVGZxAYIQwe0k06NBMI
	hqVhX+rqS1pqJteNCGuXZO0QAk2H4cwNlks/7P61/D6i94cdHlcVuCWEdsk=
X-Received: by 2002:a05:620a:244d:b0:7b6:d26e:9d76 with SMTP id af79cd13be357-7c047c4ae40mr923479485a.14.1739210339675;
        Mon, 10 Feb 2025 09:58:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHd+bNJHE4cBc3rrGE5bmYVzdToAh4Sjt4YKtiCNzFjTuAMpzUuVvB+Qsd/9GkfV9TvN3l/og==
X-Received: by 2002:a05:620a:244d:b0:7b6:d26e:9d76 with SMTP id af79cd13be357-7c047c4ae40mr923478385a.14.1739210339379;
        Mon, 10 Feb 2025 09:58:59 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de59f893ebsm5593163a12.45.2025.02.10.09.58.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 09:58:58 -0800 (PST)
Message-ID: <d34051c2-7b6a-4b33-af12-4bc6380afba8@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 18:58:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs615: Add CPU scaling clock
 node
To: Taniya Das <quic_tdas@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250119-qcs615-mm-v2-dt-nodes-v2-0-c46ab4080989@quicinc.com>
 <20250119-qcs615-mm-v2-dt-nodes-v2-2-c46ab4080989@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250119-qcs615-mm-v2-dt-nodes-v2-2-c46ab4080989@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: RcmnWB3Co_ip7eXggvutGgC6XkDyUPRo
X-Proofpoint-GUID: RcmnWB3Co_ip7eXggvutGgC6XkDyUPRo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_09,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 mlxlogscore=937 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 adultscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502100146

On 19.01.2025 1:00 PM, Taniya Das wrote:
> Add cpufreq-hw node to support CPU frequency scaling.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

[...]

> +	cpufreq_hw: cpufreq@18323000 {
> +		compatible = "qcom,sc7180-cpufreq-hw", qcom,cpufreq-hw";
> +		reg = <0 0x18323000 0 0x1400>, <0 0x18325800 0 0x1400>;
> +		reg-names = "freq-domain0", "freq-domain1";
> +
> +		clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
> +		clock-names = "xo", "alternate";
> +
> +		#freq-domain-cells = <1>;
> +		#clock-cells = <1>;
> +	};

This should be a child of the /soc node

Konrad

