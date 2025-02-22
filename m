Return-Path: <devicetree+bounces-149745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 305F5A40488
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 02:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71A9119C73B2
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 01:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26FA115855E;
	Sat, 22 Feb 2025 01:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BKr4YQz7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C7115689A
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 01:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740186487; cv=none; b=csdT78+M3bDZU0HrXDrvJpxHfm3hLA0SM/0Ar8fc3cJAMO243Zcozkx+h6TDjc4lozKCQvWe0EyKYru2JpAwbljDXmo+DOi4xzVZZ9XZ34j7OGm5ndqtVo3469Guowxn3VVvLozXWLYAapEkzgYNPePDkGxXNjBjXVf979rCfyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740186487; c=relaxed/simple;
	bh=kcM168HKI5Jed1r4nVUAyCHhMXa/UH7cpDzt4jG6/0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nEu0VJ5n9zk62pebcDOPMKqbMFrFZYXwNkjlNsfRn1NK79D6WLB7OR8lPlNMAM7FVADdxXiLS6+acH0P30C7C+OMsJqGmDrYZ6MNcdzuYfaQ18ZeKU/Zf8104z1k8iHPZSXl79Pq8ICGHQU1knm/yS5WvmMWy4SxHqvp9tVBgvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BKr4YQz7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LJVs37011833
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 01:08:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I+TCfbgcqE/1oBoYAt4RCN0sS63NXiTuGZp5HOUUOoE=; b=BKr4YQz7LliFUlku
	LcCW9f9R09vIJd9kmTsrUvkKi6cFLFnKKVHHC4hhjS6FCuFDnTEOoYz/774Hmc5g
	DNVBNE76qodVK50k1AE76/U83UcjLRFBlbu1aDpfew1RUDIKYTUdqF3EuYlh4J32
	JYhOWL8pZAFoVep6ZLmMV8LjbCilaCTcX1V7eFeNaz1fL/8lWR4CcKIZnjjAWPZZ
	rbi4Kun5YSUd1R/fbl+LyWDu1NmjffoUcy4qIkgH8C1vi15n1tcIp0UjhiFzWULM
	UIB6M7vPD5wbxkoH6IMXns+aoKlUqMx4MtMracpoVCg7B5Ba93WRG6+iR7aK8mpm
	++Ijzw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44x2xbdsuq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 01:08:03 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0a70510d2so48499985a.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 17:08:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740186482; x=1740791282;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I+TCfbgcqE/1oBoYAt4RCN0sS63NXiTuGZp5HOUUOoE=;
        b=w4meonqek79ly9wsHbfR1f2u/pw2aqfOpZO9iE3N7uSPpgwMs0aBqrZEF/uX2fM5Hb
         zSoItyTvARJlgPC1OHBcyruzxqQaAJ8sl/JY4hE8HJDkn+gC16XgxuuLKT6wYAgCj034
         rq1IfVjmkZHN9hlqHFsfI1npllPEyj4bF7otwRqp8QjCrnP64mDY3yeP9Ky67D6RGK5k
         tjhIndR0D/7os0Oo5fgkJOAET8Z33+jv2+53fSTWK4ocLO6m38nwdfD9/JpKq2za2Rs8
         x+SsYTAeeADqLItCb6QR5iWE+GnsOp2YSQHk3TS1mLHpTTbqG9P86cuGTm/dkAGS5fgJ
         Ts0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXTfqVhPOS/zZ07tt4C7jaeT4Wv13SGNOfxbLcQXN0QjVzxXso/HnG5gibEHyV4xOIPMSollCPGkho/@vger.kernel.org
X-Gm-Message-State: AOJu0YxWoXEn9GCqiXsj9Z9bVcug0qvdxw3nG4uISEOfVbsx9HjuG4dD
	W6Fo2h7VBI7R3lXHFtDlSX0mkco02Nf9FE9bb0OhWwbXDKA2JH5XILNC4F/DhUmDMzr1TX4nMG7
	TuJrRWUQ7gTFJB1cTdOckt3MdSmnH4X9M0d+oaFuLcl81ObLJiGQuCE286rxm
X-Gm-Gg: ASbGncv5brPfQpnU0LctNBbpvsNmlhmDzP+AcfZSdrqDtHX7usBOnVKDIGlY9GWYM/T
	tlzvpVgqyqUF09BBZ1844tHJc1tn9Rigd4S9ZaoUv3zZ372nVSLvzeWCcbdivkrJtOwA1RfVGuc
	QYO0h/cR7rd54RHstIrZEAw1bFG7g5o9+8cleneuCOB/B+jls+2C8OJY37oOjNv9y9+/xIQTv62
	zDm9dMdjdP2FqDg8QiqW4xQko3T0UF82FcRJO/d3+w4SxJn5nb7/o4TRZCROk8GhN0i9tmlQsKy
	pv7yn8epASB3WRvu1TQGDetfrhy343tHnlOt6olr+nI6cBICJfqhLv0Rh63G2eMRcOHCaw==
X-Received: by 2002:a05:620a:2620:b0:7c0:c2ec:e560 with SMTP id af79cd13be357-7c0cef6c8bemr300407385a.15.1740186482355;
        Fri, 21 Feb 2025 17:08:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGSlx+o7PycgVPhhbvjZgQJlB+2/vJecp+ZwAE1CaGp8FDGTYUWBZmppwJ75uZfZwTQOsWXA==
X-Received: by 2002:a05:620a:2620:b0:7c0:c2ec:e560 with SMTP id af79cd13be357-7c0cef6c8bemr300406085a.15.1740186481963;
        Fri, 21 Feb 2025 17:08:01 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1b4e8dsm14342801a12.14.2025.02.21.17.07.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 17:08:00 -0800 (PST)
Message-ID: <60b4da8d-ac1b-4122-9dbb-2450b0f5b6de@oss.qualcomm.com>
Date: Sat, 22 Feb 2025 02:07:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-db845c: enable sensors DSP
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250222-rb3-rb5-slpi-v1-0-6739be1684b6@linaro.org>
 <20250222-rb3-rb5-slpi-v1-1-6739be1684b6@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250222-rb3-rb5-slpi-v1-1-6739be1684b6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dpZJ2WGMwXb0bdt9JT07-a_G5RPNdTNY
X-Proofpoint-ORIG-GUID: dpZJ2WGMwXb0bdt9JT07-a_G5RPNdTNY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_09,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0
 mlxlogscore=780 clxscore=1015 priorityscore=1501 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502220006

On 22.02.2025 1:43 AM, Dmitry Baryshkov wrote:
> Enable SLPI, sensors DSP, on the Qualcomm Robotics RB3 platform. The
> firmware for the DSP is a part of linux-firmware repository.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

