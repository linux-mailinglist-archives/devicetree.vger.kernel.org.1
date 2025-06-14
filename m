Return-Path: <devicetree+bounces-185970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E6FAD9F92
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB0687A62FF
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124582E3385;
	Sat, 14 Jun 2025 19:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nAFi5kK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80657148830
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749930852; cv=none; b=aAmVwyjzlj5xQ6XjXcC59IbY5H0hBPLlpSfiHGcmcWzLJt6S6oVJ3ZA4yehmNm3ZV5FSZkhR35JzqhmS+QFTNqoFoxZh65hU559tkS2E76AXqNtXXRGM6/mLAnw5rnAflD0yZ3/lLcNRDbF1vhRVthqSajy5WQ6UybRK+TbWY/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749930852; c=relaxed/simple;
	bh=dkojOmJxr5zlSsVyIjL1aFGE71TCfhlwwA0JPuvDwxo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jRmWqo0J13aDbzVJE78bnaMNFDI1Js+jfPQTMPioVs0u3UdW27hx26f5dhQfj+jvV8JatT7DNAiSq8Q4SH/Pkx+wLhRoOrdmlE5MUIGGZzgnd7xjNmawsh6ptwasR4F3U4hRzYHqh6zqGqMgM3dJYWPgt0woz4hyNJ7NdrTl0Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nAFi5kK1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EInHiO020720
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:54:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cxFuTlLUJL74lCTydZFM1J9TTXFA3EkUjAUJE8RBdOg=; b=nAFi5kK1gJ4y9AJk
	hV6AGURdqH0M/uCSTEN5aLxDIDacO3Ffc3bzhvjRQQt454rLOIGYBTW56DYu5iRP
	m3uS/flgBC8IS2XJZYc+t0H0DUgLMiSHIuwdrd/2pt83tXjRrUVWT6z3GR8TkZp/
	9ZvzqN2KsBEa2pt/Z1Je3P1Ahl8s4gq75GVghywJlfoNw2KgOucz1FFucD9/bOFZ
	BtUEB53y5Jk8S3Bd/0M9T3e19O4Udu1bxoUvgmVXsJRq8NNMdeRZ8i+LKi39A5eZ
	RSNArIVSvXBi3tXI+g5vAlZG/AHbwY+KaBQfGc8RW4o9HC1tH2T/O40FqitYqw0u
	WAxeVA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47928m8wuq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:54:09 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a5ae436badso6689761cf.2
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:54:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749930848; x=1750535648;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cxFuTlLUJL74lCTydZFM1J9TTXFA3EkUjAUJE8RBdOg=;
        b=LjqjrzQgxhkPie3kD3BFvv+ruWcN3WfDLHEMQUcMk0IWP++2o+qNbs/PCQWG8tU2/M
         ypxOr2hIA7vGmewaInVtu+1lASekMwld2nZw1aiNuS2v5rz7swEZxbdYFSeAOQ9WJNT9
         2ZUxXyR6uG+cBRVVkRIowgWMFrRJXkzF6nUYgjSQmTkcogpSIzxPtvG6AN6tHJGDjY0E
         7+IRw/y5+nbZi+f/kG2dRUzqvCKgE9YUh7N0Jq2uuwVe5+JefFmU8S/isk76NSFnKRtH
         3Ca1QGnt01cTEjieihCZLvNKY5Od+2yuHeZRjZSzHNHqdkf2zRA/irYwggtp941GazSh
         YYlQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/P5+lf/P+XHFjqZDtnH1oKDUi30HYOHRnGTrZqOB0QLeC/It8ecFj8YsmyyguSoQpePXSPlTIDRjY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5yJHoBwbt3Jt7aBVTDFDND230ZU5IvUrzA6GxNH0sFy6a7aMW
	o5C65nH20Hd2ROA96u4Onzz8lk+cS/uzHWlbc1FN/81uu44NI05+T0xD1bcm3ikbludP2wsIhAG
	PXbgqXm0gnCuD2EtIPPvZOdsM/eRNYiatr0DrMQ4OseafMmX15cCxle2MEZIu9iZV
X-Gm-Gg: ASbGncs4n4aBSy3h+5R8qVitPZCfmtkmJW4aZWkun0hmJSbH3zB83yunPXbSZCZ2KnA
	1Jnu/MN9cmQ6UUFc+HmeLE01fif4NSu33d990DmsLCZzhkIuZPigoupUk2aSKSgpSDjEG5+M1Zt
	5qlLT3SYm99etddwk8ifobKilIpuplbxjBccq6aoux52zpcyfMGwdXMJzGC3ztNcG5ULY3fMcVd
	hOxPbu5cTksCBpnrc9QBSB7Q7TW9dhPPEF8hjkNAujSMmMuMrYQFJI82PLXyz/Oq7BZ2JhKxuUy
	8BYY2BC6KNO4GaUHnc0bwV6IT0IWy2BVxSctQIU6oKtb/f1WAVLqtdFlveZolNqjAB52vFk+KoX
	GKBc=
X-Received: by 2002:a05:622a:199e:b0:4a6:fd26:45de with SMTP id d75a77b69052e-4a73c5c1cbfmr23618611cf.12.1749930848318;
        Sat, 14 Jun 2025 12:54:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpYLl1OjQ8NY63WwPuMd6FHnvexEg1pNbcnCIaqlxdYhOPswPO6imf7MUgR6eBjDMKpzS3Pw==
X-Received: by 2002:a05:622a:199e:b0:4a6:fd26:45de with SMTP id d75a77b69052e-4a73c5c1cbfmr23618431cf.12.1749930847930;
        Sat, 14 Jun 2025 12:54:07 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88feb23sm355867266b.96.2025.06.14.12.54.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:54:07 -0700 (PDT)
Message-ID: <fbedfcb3-a326-4357-8d10-3be925e5df8f@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:54:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: add
 Bluetooth support
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Anthony Ruhier <aruhier@mailbox.org>
References: <20250610-slim7x-bt-v2-1-0dcd9d6576e9@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250610-slim7x-bt-v2-1-0dcd9d6576e9@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2NiBTYWx0ZWRfX91KRh9rcRRVZ
 0lShXZGF04tfcSkeloJbx5Bvc5bztgSnZgzaKy+Aun+fT6Vg2qK950kdvf8vfA599tFjrbTscMY
 elnTfyOvgpCKxmxCPg6n903BXgPmcQPAAjXIBwJa0u71bwTTTtOiR+L0B/GXS0z0k3AqBXYWNWX
 xjno4IB3ovNwmDJbr0HtBzL6BV+OC2dOH67dSjHLgYNGDT37cJAHyKbNAWGf56XPljwiEsW4hcq
 Z/wbLVucu8mBk9taqnYZ6GN3N7+5LetMsNvp7Wrr2ecOmyJ3K49pYH0IgHIVXRtbthr/n5Zy7tf
 ctdKalBpzqkWf6lmLAsenOu96ufrIfi28oWFNRqYNI6QugZSYhxDIlu5Kjzkvh66SrKH0R24ySS
 UsQkJtEvDifw/MIak7JjFwzO9dW0lIpy1h2XtBlAGeF5po7Y9Y4G63XoKy1zPdR+pUfC93OY
X-Authority-Analysis: v=2.4 cv=fvbcZE4f c=1 sm=1 tr=0 ts=684dd361 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8
 a=gxl3bz0cAAAA:8 a=b3CbU_ItAAAA:8 a=gXSpMBu-KZCXFNnvIZ4A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=kiRiLd-pWN9FGgpmzFdl:22 a=Rv2g8BkzVjQTVhhssdqe:22
X-Proofpoint-GUID: tePmzxsekvekhTJ81XUzpEA-qQWPVGAd
X-Proofpoint-ORIG-GUID: tePmzxsekvekhTJ81XUzpEA-qQWPVGAd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_08,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 clxscore=1015 mlxscore=0 impostorscore=0
 adultscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140166

On 6/10/25 6:59 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> To enable Bluetooth pwrseq appears to be required for the WCN7850.
> Add the nodes from QCP.
> Add uart14 for the BT interface.
> 
> Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
> This patch adds the Bluetooth support for the WCN7850 card on this laptop.
> Since WCN7850 is supposed to need pwrseq, also added this from the QCP.
> 
> This is also part of my tree [1] for the Yoga Slim 7X.
> definition for the pwrseq and regulators.
> 
> [1] https://github.com/jglathe/linux_ms_dev_kit/blob/jg/ubuntu-qcom-x1e-6.15.0-jg-6/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts 
> ---
> Changes in v2:
> - rebased to next-20250610
> - added tested-by from Anthony Ruhier
> - Link to v1: https://lore.kernel.org/r/20250426-slim7x-bt-v1-1-d68f961af886@oldschoolsolutions.biz
> ---

I'm mildly confused given the multitude of options - but does this
check +Stephan's M.2 description appropriateness check?

Konrad

