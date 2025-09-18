Return-Path: <devicetree+bounces-218940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AA0B85B9A
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:45:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A3721CC3A9F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557EB313D62;
	Thu, 18 Sep 2025 15:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UAaNBnv1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB355310635
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758209901; cv=none; b=aUJjjNi8CjndeLfTt7ob6wENst9/gYYMC4GDgVUX+iMCfS9Ofm7AxTDGRTR6tV1dywSJyCkm8q1Oohs9ZLvQ0mxeSWLjhfAy6j1Up8yaj0Psy1V8n62vGDbZIfvizD+WlQB+ncP4EzqCAUEnDpE0EaqtG66Qa4AYLpyN/BzMg6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758209901; c=relaxed/simple;
	bh=2gRUPxfRjSbYhF1p+cW2cxTtaSknQ7GgjWsCTIxXxHo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dhkuzKu9D1w0vmtlOR0TXFdq+CunmA/nWK/YYZJxw6MXSXzFjJXUIwUcMK+vfcVUO1zkkBi3eUoMJVkRMIeI2S/AmzY9BAUv6Bsnf6bMFvvpWsgRM1CDsdRB0A6Aq54MrJbWKSEQo2uUxTZ2XZA41hGJZM1x8s86nlwXIcH/uzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UAaNBnv1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IAaYYE032419
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:38:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1k9ZRVsktbtLAiEK5sR9687tf7948D4xuFAEiteLjTQ=; b=UAaNBnv1ErvIrs9x
	vNWWU/TlijYTn1fE5kArVZoLSG3R95Bi5E3QmDVq+XRd34/IKYtCbWR6iLp+Ake1
	6JSXY9+jZHeBBtJ5Fs5+dXKTFtKKr4JHOJH4G4x+5TYjPpSw1NF3kHdGG3hsWbmO
	te1rbAClSAg1g02uH8A5ShOhympZcbAYJMdOQmDqDSOj1yeKfl4h6b6bpZ7iSCLz
	phcXMpufCu68r9BduZ8sYdWyQ1PNBC+cMVwWW0j0bNwDq4XPo7PlQCTk3p9x3Lja
	9MT6y3M0OwARinvnf14iyesHv0i1JORbSWaSgkNWEwLXWNkq6ofQd9SRzp7WU08p
	kzesNw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxypyn7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:38:18 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b7ad884ac8so2791771cf.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:38:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758209897; x=1758814697;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1k9ZRVsktbtLAiEK5sR9687tf7948D4xuFAEiteLjTQ=;
        b=CSoxIfYBhehVj4CqPRrbDuLWXixGITft5JrgmQ8HmSfWDD3aI7c6+v5W9ZNrWlxM31
         v9PpjfI3Qw+w/jO4ZIeX3ISTLsrS93WuExQNMmkoeT8vvEl0Q8DP0bPs4BLjJrK8kHk1
         CuiPlhxZiZuG9qFdm2bomxWzWX/EQvfkvMk5HEmVoVcQVN1wRgH7QpFUf1n0azXjJGDS
         illWBOYsu6OIDnXO6gWziHCzGwEiw+y3MJKQDAVlVNPUdegZ48rcXIPQQPE/4CCcT0dd
         nNhgVyM9n/AOu/3bXBiGXoViOU5x/d6uIrae+5QD2Ke6H8K0jcfR89hRixAE+e71rwrc
         Lnsw==
X-Forwarded-Encrypted: i=1; AJvYcCV23mVCA+KjfZnVEYNnwKuNps6Nhuw04ulWRCUDUEmdBKnj/ZGFKJiu//YfT8DIZzEjDDo+446oK5RR@vger.kernel.org
X-Gm-Message-State: AOJu0YydKw+Kp4asJpzD1XNndCrvWMXXhmnRToIy9wIcQBaOn57KQvOQ
	IcCi5SEbtX2heuJ3VL4zfOP8G/s2iBal+xVZ1dbjYcBi4Jyp5S4KNK743PUPW9Zb8Ej/ar31X53
	Q//DnYIsj4XZZzhKnh6s6WA2ldlYhW8CG0dpdLkccXsyPx/VsY/zdRDhHFT71hsIR
X-Gm-Gg: ASbGncufV7hi/XOnPudzHYnSD78SGR0Ahj5IBIKJYh5ry06oOYioEFqqHrkN3SlpTJm
	+couozpUhLQ8+ZuI4xqhVUTusoMO7M019YAGqBLgTL5ASgGirKu6vm6CJK+hTUWi6d6HMAql6BR
	6RWGc5PDdpycYPJRA3DzkK0r87Cdz5N+P7BsW8QNWW5NE8FMg7JGeQWvkB/CwdItAqD9mv3dM8L
	vhFAIL8iDvQEXZH7o1DeQNnYsekRrwQWJqZANFPh0gWi+HAYz9TulBjdhK8zCbAua0O+Xkuh23s
	GOWBACbzQ4N+pFMzUpaUdr7NJGVespze8lDRkBbNxFuMt5r7xXuLHaWMzF+3LLpB3uqqZ+6/VVn
	O91uVtsADafSf23B0gFCUjQ==
X-Received: by 2002:a05:622a:1342:b0:4b5:e606:dc13 with SMTP id d75a77b69052e-4ba6aaa82e9mr45331271cf.10.1758209897246;
        Thu, 18 Sep 2025 08:38:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBfdAGIe8TQF/ReStc/B5aiHhufdTh5lJgSiTbdgmj+ayT1z4IZtsaBYVybC06t0pmBAwlgA==
X-Received: by 2002:a05:622a:1342:b0:4b5:e606:dc13 with SMTP id d75a77b69052e-4ba6aaa82e9mr45330881cf.10.1758209896681;
        Thu, 18 Sep 2025 08:38:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa5d4189bsm1616785a12.19.2025.09.18.08.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 08:38:16 -0700 (PDT)
Message-ID: <af749f54-1406-40c0-97c3-2a418f29b55f@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 17:38:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC] dt-bindings: thunderbolt: Add Qualcomm USB4 Host
 Router
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Jack Pham <quic_jackp@quicinc.com>,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mayank Rana <mayank.rana@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Andreas Noever <andreas.noever@gmail.com>,
        Mika Westerberg <westeri@kernel.org>,
        Yehezkel Bernat
 <YehezkelShB@gmail.com>, linux-usb@vger.kernel.org
References: <20250916-topic-qcom_usb4_bindings-v1-1-943ecb2c0fa7@oss.qualcomm.com>
 <20250917061236.GF2912318@black.igk.intel.com>
 <e648a71f-a642-4f5d-bcf8-893484cfe601@oss.qualcomm.com>
 <20250918051244.GJ2912318@black.igk.intel.com>
 <035c0d66-bddd-495c-bd23-e1d98570ba7f@oss.qualcomm.com>
 <20250918152322.GK2912318@black.igk.intel.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250918152322.GK2912318@black.igk.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=e50GSbp/ c=1 sm=1 tr=0 ts=68cc276a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Zu-_-z5cN0bD-gc8aucA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: E9NBWhfwsanmf3hgj8syg_GqYrNzWHgV
X-Proofpoint-ORIG-GUID: E9NBWhfwsanmf3hgj8syg_GqYrNzWHgV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX1ul2UoFGsc72
 hX8E0btmEyGpoATwH0YbyvXD0xoadYm/yUF7jddKL5dPP8oY21dN2HIqgF1i9wIUiv7Z580Kyns
 0MJfnxLq4ok0H2xitNhzWx1UCnDkCyYiMGDBf4ZtpeqqaxjLzZBDAREhou9L60+ef6TLKOoRjHv
 A9Djqa0H2IaotN+UWtwV58+J4F225F8tTGx5jGm9nQC6ecRgvEBABEhebpfyYEX3X5Pqt/Y8/A+
 RNFaU9vgNB9thO1rdEQucjn9NTEiri+/Ir2DOJpmvmbCAQ/K7Ivbhs111UXBh29UyL87Q8CKeWU
 I34oiw3Uz425n997JymijRKhs8VMB+dandB/qN+dzsacw3cd/WzLdZIBMW6V5YX+roKoUJjQYu3
 Dfy9dC4H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/18/25 5:23 PM, Mika Westerberg wrote:
> Hi,
> 
> On Thu, Sep 18, 2025 at 11:05:42AM +0200, Konrad Dybcio wrote:
>>> I it hard to change these DT bindings later on? If yes then I would
>>> definitely think forward and make this support MSI from the get-go.
>>
>> dt-bindings (attempt to) promise an ABI-like interface, so bindings
>> for *a given IP block* ("dt-bindings describe the hardware") should
>> not change, unless there's something critically wrong (e.g. "this
>> could have never really worked").
> 
> Then I think it is good to think few steps forward and make sure when
> Qualcomm adds MSI to their IP it can be easily desribed in the DT bindings.

Your reply makes me believe I glossed over an important detail..

If qcom,x1e80100-hr doesn't have MSIs, qcom,nextsoc-hr can add them
without any issues too, just that the X1E80100 binding can't be altered,
e.g. "binding" refers to the (compatible, allowed_props, required_props)
tuple

Konrad
> 
>> Adding new properties is always OK, marking the new properties  as
>> 'required' is not (unless it falls into the aforementioned case).
>>
>> It's also totally OK to add MSI properties to e.g. Apple Host Router
>> bindings specifically when they come around, as it's simply a different
>> piece of hardware. It's also OK to create a usb4-host-router.yaml down
>> the line, which will act as a common include and perform any
>> maintenance/code churn, so long as it doesn't end up in the bindings
>> for any specific hw block (e.g. this QC one) becoming more strict
>> than they were on HEAD^.
> 
> Okay thanks for the explanation.

