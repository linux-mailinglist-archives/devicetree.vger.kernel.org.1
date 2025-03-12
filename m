Return-Path: <devicetree+bounces-156973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB05A5E326
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 18:54:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B27D3B6731
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 17:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12F3B25485A;
	Wed, 12 Mar 2025 17:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TCa1usWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4C71D5176
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 17:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741802083; cv=none; b=SMvlfB3puXJ1EwNHxr1HNAMyUv6CivRG70fG4HMdia9FqqONKz4SvyGnGpeClBBK4BAnrLyA5rlCklhboyeRkqe04rFqnG7brfKxTeCYRvOyfXBQqC4mqiN+Yv1h5fW0pU2A9i+G6NYaa+ZocYiZYpt74iuoCQrlovHqQ6uysa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741802083; c=relaxed/simple;
	bh=zwqVmLodsfl+JVFY1LzQmxbMBGzfN1ym7c7asAxagbI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mgvvcigPNCHoNfMcqWk3ecf7EYWISrjAkFj9h6M3fmfpGOP6fPd6epwNL/p4uebvriHMgdsMNOg1/YIbBxyv6xUtYJTrVKPGTbQLlviQaN9u/V/f4sz6IMrXqV4cwZmE3p6f+P6pG2M7x35He2KNUpjcg9OAatW7wySiPWUqUz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TCa1usWN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52C9pX3l016092
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 17:54:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nvZ6pQSfPtCdBsC0Pf71CwoupAzu73V8XcCgUrzkfQc=; b=TCa1usWN+bZ96Bwh
	l1mf+hEhbFWKQMq4YxZ4b11cBkPdwvGxGJ7+gdBJyFP356AEAzl3hAuveBfqvXxJ
	pOQE9sRNEK/R/hiejb4bo/dtDMO8SlJhPyWFncEhj5nduSt6gEekssj/TtxwFnKU
	KvKlB0dt5oIKsR9PztlCWrfOMfOEIjKv9DqA1ZJIzqCfWNe57RNhyFl5yV0nafZP
	fgslSc+V9srETtrrm0ocSrJ54vm0LvpcAYidtSAvj7BREPotUqJR3AcbwhCy6sJ6
	VHaaqRV+HfdrRnfep8enCVRcZChUwjxRYpF+H1A/+NNsl0M/OMBBECkHzNu8eOUj
	P5QuGw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2nu8r8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 17:54:39 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476783cbdb8so90131cf.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:54:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741802078; x=1742406878;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nvZ6pQSfPtCdBsC0Pf71CwoupAzu73V8XcCgUrzkfQc=;
        b=fKUSy4DWP8nwBb1bky5kYQKNrSSvnQ/+sBBSN+341/6lLNlZMmTRqeUqL67aFfP+PV
         I7mXXFvYL17xrY9vEVLz5SO8o7oHBevdkrBQzblim+xgp9GKyZpmwGlPa54g9mQCTYy/
         sASkVohU89xToZO3LiHSCX20qGTXPzuHle/9+1RKM046Q3+qDjlY+KUPPC+EFgB9GhsH
         4M7jARpkCUXwku30Vftue+uRWTiFstqts4dQ+dvU/92lyRgI4rYExnA/o6ehunU/GDw4
         1bxscq/tstluioEjG/kngUUTYbnDRyRq/cLyC+DxJ0QZD5aGUzTwPSuV5kTndI2uM70u
         TPWw==
X-Forwarded-Encrypted: i=1; AJvYcCWSV+q1MWqEQwUtKCWoIF5sh/+oRvCvYulnfATjIpgdEqjsX6KNEOe1kA6NoE8ZUuctI8CHqKegriID@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi9e2+tDupiN8ublJIHmwWmryble2KtDCkYwbtgKvPaN0tP+b2
	j04yMdfTFSNQ6+K161+JxMHvLkBaRgaHsQZlReH29tEtHWKlwdPzvuQpGeYNqB4WmZ0L1BPJeHP
	oF9o/e8weQK0lwKpgpc7J0QsSwcbHArhImqHqzZopYELPIRkaINUbpPvtawmkeYnvCQET
X-Gm-Gg: ASbGncvCV74TVu1ym7LaXJ2N71C8wBdCMk+3s0KZZm0hrDK6btqRzNEKNBEz86elsL9
	vtxUx5AkoTvz311MlXTsWpNipMdvEgtyCQtLu0ki0Qs3u5VuIlYYqdIn74oJ9mgSU0s3+lpm8qy
	BsaSlzNyUigCfsx4sF2nzkV0EAwoLOWEjc8ODtBcblE1AGiRZbNLfwG8486xAlsJvLvNFXCq6uu
	5NyZwbmCQzgqzun8+974RV04NYxk5w9GP0L7J1OavLHgtEgA3YGxGTrvNwknS8Ms37on8tWU9ei
	qnQFVyl1jbEVkprUFlrf7pVpjgvhshg8/dEmDvrlyzTJ2VdJVSuq5hq6xJ/AArYZmbI0TA==
X-Received: by 2002:a05:622a:2b0c:b0:474:edd2:11c8 with SMTP id d75a77b69052e-47699621f1amr46843751cf.12.1741802078140;
        Wed, 12 Mar 2025 10:54:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0eqQz32HcJaJRaDTJC6gdf4gsgkF7rHNp23QdOHpAdvPCDesCeKRw96+c4IYou6wtwDfzGA==
X-Received: by 2002:a05:622a:2b0c:b0:474:edd2:11c8 with SMTP id d75a77b69052e-47699621f1amr46843581cf.12.1741802077828;
        Wed, 12 Mar 2025 10:54:37 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac288ffe157sm656364366b.132.2025.03.12.10.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Mar 2025 10:54:37 -0700 (PDT)
Message-ID: <9d16204c-40c1-4936-8cd2-5246966d844d@oss.qualcomm.com>
Date: Wed, 12 Mar 2025 18:54:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: sm8750: Correct clocks property for
 uart14 node
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com
References: <20250312104358.2558-1-quic_jseerapu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250312104358.2558-1-quic_jseerapu@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: tsaA1xTkt76tOX-Wn-VB2H8yFiLpiZM5
X-Authority-Analysis: v=2.4 cv=ZObXmW7b c=1 sm=1 tr=0 ts=67d1ca5f cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=xkG_gMnDietyO8DCwaMA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: tsaA1xTkt76tOX-Wn-VB2H8yFiLpiZM5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-12_06,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=846 mlxscore=0
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503120124

On 3/12/25 11:43 AM, Jyothi Kumar Seerapu wrote:
> Correct the clocks property for the uart14 node to fix UART functionality
> on QUP2_SE6. The current failure is due to an incorrect clocks assignment.
> 
> Change the clocks property to GCC_QUPV3_WRAP2_S6_CLK to resolve the issue.
> 
> Signed-off-by: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

