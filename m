Return-Path: <devicetree+bounces-120379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 351B79C26D4
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 21:52:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 587481C22853
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 20:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3241D7984;
	Fri,  8 Nov 2024 20:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iUq5BV2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9B31D221D
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 20:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731099137; cv=none; b=NC2XLAAu+9p3UBihFnj5byVSbPaIYujCiR0YGcrHN0Umk3D+8fIhyaegK+K0MFYO69wcQTj8IQs/D3KsiR1RuCQdhpnhezJchczEeJa+EcQsw5nPh0aSsHFYv/A5mqvTLw5627JP1YedoyinT+TUlyXJkSnQwM+vKeT1CqPhY3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731099137; c=relaxed/simple;
	bh=g2i//UKfIgyqpn5AcF7hv/8fn2kw3ee4/fXPyElQpso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t7yHvxO6sOk17LT5CAshaKVi96mCpSYeuq/4jsoaY9/DM8Qdx37KCRABQsR8A2g/T4jeqxI/RXCB21h7kG15cwdG1SMCnloomhuMJtvgS0wW4mxIyqfhPa6phnBrn3Ew4mQJavQhflOc39QgJzfyVtEaj2R7ik/nmgiuHoET6uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iUq5BV2A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A8IVJdb021896
	for <devicetree@vger.kernel.org>; Fri, 8 Nov 2024 20:52:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9rqRqJHdABUGtN1Oa6Wf8KKvgmkCqU/Lt+jAre/pNEQ=; b=iUq5BV2AsFwkwqrz
	QUnxMq+OFA71mWewKQP7R2It31ZdURgf9SM+oXXiFn8SPtoqG/5dKiVa7XhAQ9eE
	1kJpoFivxyMSGwJfclGK0cva3eB9ib5ZU9mSvb7/+iPvQFh9sdtHE5YLIL4wvf/c
	vr+6w0RANgyuBaJhLhII6/kE1IrTfZpZLsrxIpkacJL7jFy1rS3b9dO9HnHiNAQA
	3VMuVyn0AtpCMR0kpzZ/+bH5+dV910H0nHS7dub2ILDuHkOliFGE1+98rLii6VTG
	+UZUYAAU5yyYQ/PMIEodbXrfIPpDHGfVYMQkY0q3Au/S3rrLSkTlT5ZU4r0Q1EEm
	Yd9zWw==
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42s6gktm25-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 20:52:09 +0000 (GMT)
Received: by mail-io1-f69.google.com with SMTP id ca18e2360f4ac-83aa8c7edb7so43117139f.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 12:52:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731099128; x=1731703928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9rqRqJHdABUGtN1Oa6Wf8KKvgmkCqU/Lt+jAre/pNEQ=;
        b=NSjZoIl/rx6eXEhYTwqSJDRhsIZyHFqJr9hF/TCNA/f06kBdTnWjJe7tsnCPuhCU26
         QS3hgmdw09jSt79QvzAbSRu+qwYsTyxZjd6q5v0VgPIebMSvMjixe8r07awcuMhaVmq1
         8xND1tJ86hlcoDjI2+AWLjbAhrfH1MRCqevk04U6CePfKejy2Kgm7CzaWuY9gFTCkk7m
         4Io1YWYSsxz7NghPhlQ0Wnwab+NuR9E3fNStj8uEPEvU/9yw4UIXrPqMqBomnnQ074W2
         A/HfAqF2ifS8tMXo3oz5sLAriVBLIBv4ftDpr7VaHQ+HXwmPjrhRuegD280UNyoN5jkt
         JrWw==
X-Forwarded-Encrypted: i=1; AJvYcCUZnUFGfgRMz8FWG01M2LS0n4Vyu2DZ5aNrcBrPz3/57RxPw0cBrG3ii/kz46QYNKFusj0SDEFrI3/r@vger.kernel.org
X-Gm-Message-State: AOJu0YwuGvA6jTcOuJe1ytdL4gMf+cKuoE25EFCfMrZgUFn4QiUtr+1/
	hP9K24JOUfhMVh1om2gTovF7v+fE1+dn5r9svpEHQ9mBFKrjvbm9ezo2tHbSjUDwNSJqdWXS2if
	raDmCzQw7zCw/HvSee8Qh7MTD7h8ILPiJV2Yg4i5VDYtkiJOtERRUHYfEpgWw
X-Received: by 2002:a05:6e02:1a82:b0:3a6:c8cf:9d5e with SMTP id e9e14a558f8ab-3a6f1a570ebmr10843615ab.6.1731099128523;
        Fri, 08 Nov 2024 12:52:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0SkFz1RuD5aydeU3vKatb/g3KQgNxDav5jnYzffNXFhUJayuliKzxND2HIbBSn+ua6ypJaQ==
X-Received: by 2002:a05:6e02:1a82:b0:3a6:c8cf:9d5e with SMTP id e9e14a558f8ab-3a6f1a570ebmr10843505ab.6.1731099128178;
        Fri, 08 Nov 2024 12:52:08 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0e2eb28sm275429266b.197.2024.11.08.12.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 12:52:06 -0800 (PST)
Message-ID: <f15c4760-b52f-41d8-9dc7-3896879b3ca8@oss.qualcomm.com>
Date: Fri, 8 Nov 2024 21:52:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] RFC: arm64: dts: qcom: Disable USB U1/U2 entry for QC
 targets
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com
References: <20241107073650.13473-1-quic_kriskura@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241107073650.13473-1-quic_kriskura@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zNBrKUv74CTtPki56pWrnbaNxSQkf_Jm
X-Proofpoint-GUID: zNBrKUv74CTtPki56pWrnbaNxSQkf_Jm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=464 suspectscore=0 lowpriorityscore=0
 spamscore=0 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411080172

On 7.11.2024 8:36 AM, Krishna Kurapati wrote:
> Enabling U1 and U2 power-saving states can lead to stability and
> performance issues, particularly for latency-sensitive or high-
> throughput applications. These low-power link states are intended
> to reduce power consumption by allowing the device to enter partial
> low-power modes during idle periods. However, they can sometimes
> result in unexpected behavior. Over the years, some of the issues
> seen are as follows:
> 
> 1. In device mode of operation, when UVC is active, enabling U1/U2
> is sometimes causing packets drops due to delay in entry/exit of
> intermittent low power states. These packet drops are often reflected
> as Missed Isochronous transfers as the controller was not able to
> send the packet in that microframe interval and hence glitches are
> seen on the final transmitted video output.
> 
> 2. On QCS6490-Rb3Gen2 Vision kit, ADB connection is heavily unstable
> when U1/U2 is enabled. Often when link enters U2, there is a re-
> enumeration seen and device is unusable for many use cases.

Would be nice to enable it on there too, then ;)

Generally per-file commits are preferred to make potential reverts
easier down the road

Konrad


