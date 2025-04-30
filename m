Return-Path: <devicetree+bounces-172563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0204AA559B
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 22:35:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CAAC1896599
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 20:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EDEC29AB1F;
	Wed, 30 Apr 2025 20:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ARmm6lJo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33B22983E0
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 20:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746045345; cv=none; b=iTdTThlgihL+h3wVPBZ0zjWTI5BNJVmrshNB53tmkcG9fHpJg3h1OR44+LaexwxlNYVA32VTzegfRvGpj5guZGO9omt2qTlG8PqlLa6y25mEFDdHaWQzIHLUwbJsQj4/0o5bnEoui01eF3OobdfmW+JyOqeVhbLLkZX5zNCQT1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746045345; c=relaxed/simple;
	bh=3A7zHPu/Pt4o72Oj3BLVHpf6PoafkUAy7nyJWJWscdE=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=cRj5keFwINVtP5+S3vf/IpHp9nPR7a6Bj7O5m7NNBcoasPmwmcHBk6CFeK5alE3YdwTMW6XdcISOK7nIBFHwf/9LJ62kTqHn9aoLlRfkEKbmFn/a+g07J2LtKkrgqq+WOg2kqLWfjtXyBMaSMrDpvdxjOoh2A/X/W+5uw/rGP1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ARmm6lJo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53UGqSGw020950
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 20:35:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FNlVwVSrdqwEdFQXdmlmCn
	Zk8ZIb4gnupsa/fnTDzGI=; b=ARmm6lJo8sePXTFjX/wG+3sL6SRhMEPxbSOm/S
	hqJSZxPEXMPpLvRdlDVxk7fXS9qe0OqTHwwczX6Wx91v6hLPTHJNYbMA/s4vI6l9
	m6bWqPJgfXH6Ww7IM/cQ3BzfeOENkASW3Nnwq71kqzx2Lql1L6RG3funQRotduZM
	PwpfPUa2klorxFTZUGPmOyYroiLeSaKQ7CBGi6nl8O1uadC9dM91u5UVp8BJ/iEy
	+4Ikmal3v7/hgLoIEHr1553EdLrSE/2D7bIIui5TMFKFdEkjXT5g+j84iQH4/7db
	Fe9V6Q2PO2ncmV5SyQWXN9SqT7lJqc+l/yu8gklCIOcF0wvA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u1ujtr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 20:35:42 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6ece59c3108so847046d6.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 13:35:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746045341; x=1746650141;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FNlVwVSrdqwEdFQXdmlmCnZk8ZIb4gnupsa/fnTDzGI=;
        b=fu90CrT7zXTerbZfmUs6OiLB6daT8UieWXRUVTZgozI461swGlSxFT4WFA80nhbXVb
         52CbEPJM0/xLQXMvELPgXU8U57H2rd2MLcoAAC0Jrg5+HK39V6OkS6Vm3vI5WRal5PYE
         e2CbXW4AZJC/8JCE+UsnPPpcPOOYX39ekl6tVamgh4i2l8G6s+K06RWIb36hHnZ5j/3S
         bERD/YQiXf33GkJaGsqF11qf31Jv1Zxv45VWpqyD8YgCtCCXjwi8T4g3AoCTzPVmDOQH
         7Ir5JBIyleAhniiljloKCppYfc5RU+1WxHpVrymSpui1vzWOEnVzMANj8OdPmfWxQBWr
         PjBw==
X-Gm-Message-State: AOJu0YzyTf14GPfp6cdledpD3oJqQnMjjJp2ax37MpMijy9tJvOwyRi4
	FCPcMcLKqPz2VB8ayvi7cA2fFcYQtDneBqlrrEay1tRdwk/9r2Z5bEt2npU0titrK5hCy6C9tZU
	CieIPZmccUuH8IW89z6hU0JH0jxZIOGT0yxeY6vKcVGP9MElKnwtYsl8eS3X19tCG87wQ
X-Gm-Gg: ASbGnct7AOxayN204eueix8A7VNa+jYoByJLsFkQoAyNtYCdQ4Qxffo+8WxeViIo4b2
	8spK8hVYRf1pq4YXQbpak98dZhmWgRkJ+m61bP0M9juPjeIMHSmBvX0YjpH5swT4DnAOTSa8xDo
	F08g81tlTJyiTgmFkkduaWtE239l7tM8PZ3BwG6yJrB2LUQSLgVSnDnYyKr96nN0bUddidQSoqO
	rJvIwAhcG0dKxZC7UHmxoEr7GwbicJMpwc6X3l6oQPYFbFaX91PUjj4YSvWQs2upCGpo4PzeWh2
	bSSeKvwn3P9TrKz72M0seMmrz3vaC+GfYS2qEvr/sA7SK8WK773Vgm6EZyDx4H5dwiA=
X-Received: by 2002:a05:620a:2544:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7cac87ed1c4mr193098385a.10.1746045341344;
        Wed, 30 Apr 2025 13:35:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2VmBrfYPPRTYvOlp61CIEOTF9Ei0V5PaHUnfWAjyB297MB63P88J0+fTByDJXzYAuENttSA==
X-Received: by 2002:a05:620a:2544:b0:7c0:b3cd:9be0 with SMTP id af79cd13be357-7cac87ed1c4mr193097785a.10.1746045341049;
        Wed, 30 Apr 2025 13:35:41 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff812sm9553519a12.25.2025.04.30.13.35.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 13:35:40 -0700 (PDT)
Message-ID: <9439182e-3338-4d57-aa02-b621bc9498a3@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 22:35:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: dt <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Using iommu-addresses beyond reserved-memory
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G5AcE8k5 c=1 sm=1 tr=0 ts=6812899e cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=5cZCtqRixsLU-dlHIioA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDE1MSBTYWx0ZWRfX8kOjl0hbAx1H Qh6CGxV4Zb0REWKOwnRefKNJjgc21QcNmMuDDBRdmqzy0cMTck4Nvl9omHRGZ25nQWxdM2xoPuH HEomX5Y0AeyxeZ+AfdFzqJanotRFWtm36a1zquGWen2TaWNLrqfUNasNp17mIy8drE7Ksv1+dty
 CEqw7vQ0TTeNMsf109oZbEtQlmthXN66+8op1ylBl/X4KDVSviXtmiJsVFgqvL6Sgs6O0Ad1PEC KVDDL4VdFqjyqgTOj8a3Bmn3PKT6seOML+JDVYgYYuEZ+eRsL7RnhioYXkBzVwmhRQMAyHzhaoo 83eRkP4R/tYcD2499xcCsA8v1ZwT+dNu3+UewR+Cg2043rx8nEpeXIyUpl65mwObEE1P3pajJkS
 /GAwwuB+p3dq911eWVijMMNbbrjx3wSEi5nzFBfQOtxlZqeY+CBvi4xAGbnBjwTr8eYI7MD0
X-Proofpoint-GUID: SBcqAhtNMhRwzEZfLiWJv3z6nJcgfSL7
X-Proofpoint-ORIG-GUID: SBcqAhtNMhRwzEZfLiWJv3z6nJcgfSL7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 impostorscore=0 phishscore=0 mlxlogscore=714
 lowpriorityscore=0 adultscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300151

Hi,

We're exploring the use of iommu-addresses due to hw specifics where memory
regions for some devices must be mapped in a given range.

iommu-addresses currently allows us to achieve that, but it's incredibly janky..
To achieve what we need, one has to:

1. define a negative of the desired region (i.e. reserve all memory except where
we want the allocations to happen)
2. pass that to a dt (sub)node as a memory region
(3. pray that you reserved enough memory after the region and there's no board
    with a larger amount of RAM down the line)

Now, the obvious idea is to redefine this property to consume the **allowed**
ranges on ""normal"" devices' nodes (i.e. not under /reserved-memory) - would
that be an acceptable approach? We're totally open to suggestions

Konrad

