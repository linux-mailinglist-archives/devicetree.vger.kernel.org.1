Return-Path: <devicetree+bounces-183998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD60AD2AE0
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 02:25:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AB0A188FEE3
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 00:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D3D481B1;
	Tue, 10 Jun 2025 00:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kpDb1dMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D732A1BF
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749515135; cv=none; b=YdiYwi1Ycw5wHtPw2DyCMOuFckSfxEOy0RZD/ZksVMjQeFTsb/AnIsdDLFn3EFUA4tnj3EAC18Mcnv8xZGQ8/GwrxFvMqBNLFuHVb256iYHTdxMCty+bm6pNQPzOI9TsOc2TkZfzfKr/2swNQgAlsM9y+xC7j8m5DL3XcgFqzqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749515135; c=relaxed/simple;
	bh=aWBGDsONt3DsLjvWK84WyJYg7SV4UPTZ1BXTjC/JrWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fr3KH4+no+rW40Ort9l3yxYnYPTwsSCnC+GyQyp53qCquj9NK9gA9XAqTOLo8IJRDklpKQU1ll9/a8VeG0ezNYAtweOHWEmgM7bzT8Zjp8BUCITrZ9okfPgMqqZqsnsZyo8Xa2mWV2/iB1uzTR5zsFtZO10taRuHR3z14u4CnTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kpDb1dMD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 559KP2hQ017801
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 00:25:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	09vmSKArL95chil96Dhr62OqEuJwsqeryT0wyUra1sM=; b=kpDb1dMDg3Hno0DS
	5gjYFOI1O2StNBnOWfSDaGMePQRiS3m6oxqJchOnrsGgCmR3jrcxZT0Rp768bSWB
	+EwwGJnicIFX74T6DuMlcmc7gk3mHgmDg1bXKGwG/r694Gay3DFd1b0xe2nAM+zO
	918Jf5YQ9qvAth+frXwH2PuTa3/jJlBufDFaMDn6bkguoWaCl0K1qSbe+49QJ2rU
	tdCN0s6As6lYVVdb764/Y2CBcS/iQZsGvpkpRtZlMgRUfuZrUuu5fm8mz8I8Gkzd
	4DPlIMw1cDSE6pgOPmzoIFapQ5YnjFs3XaFZO1Pr2bEMNhboqKLftsZoLj5gyJPF
	8XIR4A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4766mcgd43-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 00:25:33 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f539358795so12486346d6.3
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 17:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749515132; x=1750119932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=09vmSKArL95chil96Dhr62OqEuJwsqeryT0wyUra1sM=;
        b=sd55hj/nLPDC2lZD7+EigKuiSdJ7Ez76isdyuKmMuLBKHpEFci7Ycpgs4WvnZHOxuH
         +XVG4WHO2FaoeNDYDLH6MYFNeMcYshbwYYQ6vLMmGge3gwkAp2p/5U6/LZe2KjLL9/XH
         Tr627wN1cNM15K0l6DfeKpxG8e4W0clj4XyE5vp+dtFzrVs8x7aPRfr8jIYQx3YN72fj
         tkKmhSzgi3iWrJXEeNb6/yvRDJgi+ylNaPSs+9/gepIM0QadMKwKcXG80l9ChRua6Wal
         +CkHdD5tNDDnM5Gek80k+9ToSthl+6vn5bzOel5cuHBukjGDwN8hgLP9OwdOk3HvxyyC
         JYmg==
X-Forwarded-Encrypted: i=1; AJvYcCUotRlb0ulT70HHrguF7P8MumlGvEBNRvKIF6go3tZzBB0RhBHuXOz3VopsxBARo0OdFE2lERgLMCe3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3ZFoiPL5qO0lMcxa+25zpFrMPc3LguXMshubQzedwNgYuqxSH
	oomT/j9iyLme8NdGt2KAeAeygK17pCXIjKSK3yHim/FVD6VzRzAeelF9o3M+qxyk5WIR5jKaSYf
	vIQJmw1P4an7hszUJbcOBBcQzHDm6rJjf+C68EQNxKRKzlCwlXCADq2Y2aoryK236
X-Gm-Gg: ASbGnctYt5nJrYmsjqi52GR6P1jU5KWvLfbIZ5xM/LHg23YnBxuHMGuXEuI94A5/tMz
	7+earWYfPGcJgMn5VjgAxEJEhfs4RN7Z9mIFiNFlWHKJma1LwHxljpRcJA4BeoT5mn2v8vjU9KP
	ue7FnznJ2kCC/exeUvNS+KcMPiUrzkltOMdsK5EYUztHGS+lbA61ziKpFG6gooSGpHMcRwd1yYr
	jJNOhArMFIr1lpV4/gcPb//q4m+vn7NlfK8+dBX/nbfKX6iMu/y5mzZw6u1brsLO1t/6SMYdUH8
	+DJVZ1OIzPfgQYR3yci0T8wRxCtZildUGFlNJDCmZt/tlRauB1B468AnYLC/BI8vkAd137DYuou
	q
X-Received: by 2002:ac8:59cf:0:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4a669071b67mr92670571cf.8.1749515132120;
        Mon, 09 Jun 2025 17:25:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfBazml5ir8PMKKBZnsIy6xGkN7uScP9aQfNz9MkoMEsDOeZMCUgKUdSP77uFtWQjRzg3uTA==
X-Received: by 2002:ac8:59cf:0:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4a669071b67mr92670401cf.8.1749515131704;
        Mon, 09 Jun 2025 17:25:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60778377686sm5444185a12.25.2025.06.09.17.25.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jun 2025 17:25:30 -0700 (PDT)
Message-ID: <e1367b38-875f-4a9f-9dab-9aa9f12488af@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 02:25:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm850-lenovo-yoga-c630: enable sensors
 DSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250608-c630-slpi-v1-1-72210249e37e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250608-c630-slpi-v1-1-72210249e37e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T8KMT+KQ c=1 sm=1 tr=0 ts=68477b7d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=UYkWuftlsXAw6W1qggYA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: r_3U3sAGDa2ojYAZmA_ZH9WcwmWKfJVL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDAwMSBTYWx0ZWRfX/UOZH84yeYxG
 4eI7MVLgbEif5YGiGwNRnr28DB5e1GFbNF3GEzAVlqoLSEnPMYkMijG7XJankNoQ2hLSv14I6rF
 cfnN4V5TlOafQ+vhYDv/oq74nXkT2ZAEgXZrJu2uZgX5WttBK9XEE/R4TuQAu+Q2Y74ba5eRyLm
 IPumFr2pMobe/m33rSIpTuXm6tE/oLB7Jt2ZoMD/JWJVZhq5KPbE1kyvPlqN1m/b6uOFOI2DRFR
 baH9eyU4sHcLGAEXhuz1kbv7LRlMM1gVwk2cfh7G29B14DS6HwKN6WMmnIrvvClovNutO3wOgYn
 vqU2wGSBj4aBVlq4OIAulxhsKEdVCE29CPFWOKP55OGMQw/h5Quv4PgH9AgolhD+2ix3L2zFJuf
 tdVaUoBOVcT6gKvLHRrxVjJ7P+UhDEZ6AEHOjeCQJKF5YzcuCbRq8LPFidDLVaD/2dh2Wun6
X-Proofpoint-GUID: r_3U3sAGDa2ojYAZmA_ZH9WcwmWKfJVL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-09_10,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 mlxscore=0 phishscore=0
 mlxlogscore=573 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100001

On 6/8/25 6:02 PM, Dmitry Baryshkov wrote:
> Enable SLPI, Sensors DSP on the Lenovo Yoga C630. The DSP boots the
> firmware and provides QMI services, however it is of limited
> functionality due to the missing fastrpc_shell_1 binary.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Check if the Flex 5G's signing key is different (or maybe Lenovo
had more sdm850 models?)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

