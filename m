Return-Path: <devicetree+bounces-221829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6072BA3629
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 12:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C1011785B2
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 10:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5652D5410;
	Fri, 26 Sep 2025 10:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KFtKmtpo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1489F11713
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 10:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758883403; cv=none; b=mRUV5Je6vx3nXGeOBtoduyhexUc7Xos/Hri528EqW43iU27UQFn20e2mAU+SSq8lQV5Xv8jDAFHBNyk13FLTrZwXtdKVzOUVWYVp3/hrU8uzwZYsG9K1JHx6NyxGCtXmTq2nECrgGwWpe6sNNqfCg1fv4pAFXIqxYbrbfyf44Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758883403; c=relaxed/simple;
	bh=lzyUulIki5aKGPpP5fVxe5nwy/H12MYEtLFh8WNx5qM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gu/jkkq4VZcdyWl1XcpRUMuE+/l2grjRO+RMluQMukN+pemy+H8D8+pw9Zb2WFG9DlsD3cNLHess2OcB0blLwzmdMTs2k7+Zn4UPR7oi1DOB1Qah/JYytDmEKgoatD8/hr1aOvRY0WidvvfIw/ORj9IPWX/PVpFn/kBCMWSj8OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KFtKmtpo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vebD030634
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 10:43:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fBCHSYPAc7F0Qe+9c+6IkF1CaX9YY3oLMq9wdEIkFIo=; b=KFtKmtpo/IoZsy6E
	tBx1P3mAM2BtU8j+08faoGeAuRj9mj2nkv5i6Qt/udLmmNUwoL3bYcqkymPQ76oq
	Hd6dHseH85yFTiTD5EKnA+HQd3vrr/mLY9JrD08jpG3Zso5PMG8bJRH0bPaBXTPb
	21NI2l5gIxArgTAXjCh1QFHIPNuj9Lvh0uBRka+TQ2qgWeyGwfDYJ8SHgB39AX0i
	/IGFhOpoCDJeb09Y0sy+3JjSS171NTxTXQdH5OaQKfbb6IdMr5nltjEZoQzrG46U
	rLo2wdjDGVFSMCeFNl/Grp40o6PodLUKlpzo48EjpIM9RnAuGy3XmslrYydEgRxH
	4qdZFQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u2gyq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 10:43:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-853f011da26so71651485a.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 03:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758883400; x=1759488200;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fBCHSYPAc7F0Qe+9c+6IkF1CaX9YY3oLMq9wdEIkFIo=;
        b=VmmmyHSyjWhTPWvyJaaeEPrnY/egIqioHNHczT1MGPKzSqzn83ZJYCfGBLgpO8YlEZ
         ly+Y+1flkSvBCdhJz2E84m0owORF+vkRgHPwfzdw1XhjXgsVYQhoaDe/n0c6n5KuYgcr
         qXbHxOZZxKSeyGpf0Y3qo7pXyjEt30WAbcK85Q97wPMei2s+LlZ1834wYKPy7F2PdwzP
         DNvA4EEJMWHMWcJzsECUTuVkVzZwgKC0FKs48T8s3x2DGKPZ1nKWBmPkRw8HC6NRFk/Y
         IAZWS1/uCcz7WA/AU022ySA3i5ikA/qNYykgQqyB2mlKK3Fh6LivLSfskDLl43F5MeVb
         t+rw==
X-Forwarded-Encrypted: i=1; AJvYcCUnEa7l2YxFF80PwNbn+X0jSsRTPbrXIPxV5Ab59sLAYAgNzS14Ta5zWB9+Y+7YTVjbaMUmKBEzVkFT@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ7eJDGBgcgsY7rpng3A2gb5MjfphT+8vTkqQdmiQW9v/zrMiy
	1Nlt4wbcn1WRscR2R3+RAFi4EPTDmUTyzoAecwdSaCJk9VrxQZzz+O43rEeb2BaqAtXK6elvUIj
	hAdxpCTm+our9RECfmXxUSp5pLnyWgu5MRxT3iGX3ik7TlHF0/JmILeOUkkOUtvtH
X-Gm-Gg: ASbGncscrcSqKTo4rooIG+YAEAIHHImGsXNneQ9sjDlEIDR6hZP7IDqBt2YFg9ItzbM
	eQnoC++sUqiTkDIjd0X0ChPabFQJsxHcs/hGxVAq+noe3r9asRgS1yflYSDcUMdwPvEXwbEthPz
	rogceVLscwApWbVWybRNuu75DKWTxIpmgVhdZ8QYZowUcsyz7Y16G50XiFcagFGR/wVSJP0MvvD
	oG9sPe75vG4/90FuNFdXBQNpF30umf37zjxckriOS20FRkV9IRf3M78/yFr6VhYPQLD4puaPCZ+
	fh4jOgjnI5801xOKKL8v4st04xtgX5soadyuDDX4LbqDgs6uSgntydXAIBUuUQWcGUK/l38EErE
	yfW5UUinahdUw7rzpWAgwgA==
X-Received: by 2002:a05:6214:27c3:b0:7e3:3baa:961a with SMTP id 6a1803df08f44-7fc3a977b11mr70955236d6.3.1758883400003;
        Fri, 26 Sep 2025 03:43:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGVx19skRWQQlR8EDWFUgJT0cq0EvuBNJ2BsNp3bV9umJfPc4chZbhX8d3bAvp9/otYjBeqQ==
X-Received: by 2002:a05:6214:27c3:b0:7e3:3baa:961a with SMTP id 6a1803df08f44-7fc3a977b11mr70954016d6.3.1758883397116;
        Fri, 26 Sep 2025 03:43:17 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3b05779sm2734879a12.49.2025.09.26.03.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 03:43:16 -0700 (PDT)
Message-ID: <57be4253-485f-4a24-afc0-a25a3c33caa4@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 12:43:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans: add DT changes to enable MDSS1
 and DPU
To: Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-lemans_dual-v1-1-9c371803198d@oss.qualcomm.com>
 <nnvjazbxpywrmjnt67isba6m3ld6rqdaiid4qeczunmuablntz@vlbrjnxj5r2k>
 <d451f8f0-d2ab-44eb-bfcc-ec1e9dbba060@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d451f8f0-d2ab-44eb-bfcc-ec1e9dbba060@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: gPwnveUm26G4EKIXnbI3xUzaA4uNZQ-s
X-Proofpoint-GUID: gPwnveUm26G4EKIXnbI3xUzaA4uNZQ-s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXyhVv6VgGrld6
 C8zJiSEl7UlsXAhAZlunZOLSaXnesT3tLWpgDZQS81gFpL6dWresmFdbtXkcAgIH2k1PnE/JXt5
 N+5OX5mNxJpqE5WjV/vcdFsPufg+DlepUWZOuvX/S1JTPpFKpJeVZP+YBGG3lx7tfCLa8oMRlkg
 DpZqIVgaJ8a91yzfdMUr3rh0k1inVZWUZRercsd7UzS41I/h6lJUYkTwCeo30EYIktR9a1AwTJ+
 gHIts7FBP25F50bwcx0xw5y6syvancm4qEA5nxtXFaaGXVSL0VL/WOQmyz6UcSIkS+WgLNNXf8N
 BN1xnY47+2OrteQtRM4eIjqnnNQqwr89ebx44AdMb0l2x05UZqymgfKP3m3nygPtly4A/jsgVnE
 JlR0NUEVv4YnqKdhMja1bhQu+4m+hg==
X-Authority-Analysis: v=2.4 cv=ZsHg6t7G c=1 sm=1 tr=0 ts=68d66e48 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=_fRLgir2w6SQuGl5B5EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/26/25 11:24 AM, Mahadevan P wrote:
> 
> On 9/26/2025 3:11 AM, Dmitry Baryshkov wrote:
>> On Thu, Sep 25, 2025 at 02:28:07PM +0530, Mahadevan wrote:
>>> Add devicetree changes to enable second Mobile Display
>>> Subsystem (MDSS1) and its Display Processing Unit(DPU) for
>>> Qualcomm LEMANS platform.
>> No outputs? Should it be enabled on any of the devices?
> 
> Outputs  and enablement are include as part of this series:
> https://lore.kernel.org/all/20250926085956.2346179-1-quic_mkuntuma@quicinc.com/

Why send two very related and interdependent series separately?

It only makes it harder for the recipients to manage and track your
patches (there are ~100 emails flowing in daily, now more because
of recent SoC announcements)

Konrad


