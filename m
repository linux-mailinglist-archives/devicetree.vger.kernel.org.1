Return-Path: <devicetree+bounces-200310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8446B14131
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 19:29:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 072873BD820
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 17:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96682275864;
	Mon, 28 Jul 2025 17:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ndKoGrrT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6534274FD9
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 17:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753723775; cv=none; b=MoB818cq6yimzptikDfwa5zsvywJLDcY21uKZO33MXLJGk8wwHUy41zdD8pEb0W5e+/aLixpDqNZZK3pqkLyMRSwx8/0p0rYnAtv2LFQ7eWCjR8oaasQlwZifDZCiIFLRo6AK/AawhbOfaQP9BLwz1rNfKXFqeb7n8FqXO6z6Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753723775; c=relaxed/simple;
	bh=28otr1PWkOxwqfxwLLylhjzkns3AMN2v2kaXHqkXC2s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bb2EULiRt71+HW5VhnDMV2vngZ2e41krYkOqV4TfQEr3R/SE6KYMJrm6EJCeCwfxRetyY0qCmZBY5tTSpIKWjjDruTHJ++W0mKxnWRF3cJalCHukdCkuUuPgBiVMnOVwWeXiA6ShHPmMylg0t5Pg6kqL36doSgFeTKp4WJnx3zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ndKoGrrT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlOic018340
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 17:29:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	psaO0fhsKdZfRWyiSo8tAjmdJAZtx/Aq71yeJdW+1SU=; b=ndKoGrrTK4M7C3OK
	pJsr0X1o6iGXLpLdHSJMYA3nNmPMVy8YnfWcKsI0V24n8mRJ30912LCJ68cySYTA
	hfPm65aTNTTuYz4nCCQxJOMPy0k4FFTnNO6HsayVQT0wM8jz3cNItEyY5QZXP9Aq
	m6RXERo6e5UHBvGsmQcXeDtYn9NPlo+9anT9DJ5jzbKHnkoKJEQ8f2NPA/8BQR2f
	xAQDzWymlbnEoh7tvRyoLvSiUxLZx502nms9tzSHpOCnNN01lPqwdcpUFp0HtBmv
	n0dYC7pn2qe+tMIEQFxq1nMPi8UWO7Gv61+tIiWsbqKTGaKtDGdPjeLbUWZlKkZl
	5krA8g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbkwb5f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 17:29:32 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3132c1942a1so7045482a91.2
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 10:29:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753723771; x=1754328571;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=psaO0fhsKdZfRWyiSo8tAjmdJAZtx/Aq71yeJdW+1SU=;
        b=trnnHzvQazKJ9NjYwFQUqdcA9GR+FkPn9WEvzvyQqJtlaQnv7HPmwyrTD1CRSl+0XC
         mYfvhhpAoay+Iomu+T/D2m3B8u5YUWY0lIoYzlmwcx4dJvZAN3NEpfT4TcfCeym34eh1
         trCMThoQ4IJaoX94EPdfgFE+5hC3KqhnyaC1Lwc9SewVAuVGrr9ibueAv3lnx+8wiQ6H
         PgfsDPmVrhea+STI49ZLEX+PG874oGxtEEH/VxQBpHJaDgIdaREuVdyTntRhIhmpmArI
         MEybUY866X06l8rwRN8sSWVtpXcasXFukG0fIOLKlX6fHnxhq5i8fKWxUEDHrSdezkHK
         dpVA==
X-Forwarded-Encrypted: i=1; AJvYcCX8sPDQBUGszAaOQiEFh+611zB7xYldzJY8/qGX0/GfVRkiX++5OFm3pGNGzod7Oo2kflC9Mm1XaakW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2E28LGsEO+BZ5B1hUPoSwk4375MzeDIHuMggju4Q2OUOFWaRx
	k7UbdtYZQhjZ4RLX5WTDkE3vd3a/agWtEEhNyXVzTGaUxj0UI6WmHw05zRRAaR+Bz2ljSNdJ2AR
	g/T8WNs7w7l79PxFh8qgwNFsIlhauQ9xZUkI0+0mN+UD3M3UkbZhfSc40Td6GTaLg
X-Gm-Gg: ASbGncs/SzxNgUJVcxP2ZKQ3WZ/KTjSH5bK19CIXgDxMrq32M2hq6aYEVK8A1lWJX1m
	IvOGObKQKBuVOe/ccg4wZsVcUONPJo0BVoKEvdbLD/lwYPDto4frAdZm5rjerOqaNNc+Xt2lzQT
	bOQRqb8EJKBudIGS/IuYwr9zIuZxCHtA+nKPcx5VDbks//CFQ3ldYcwKbLJTPprxJ/mNvYAV3Nw
	YYwOypf8acJQRUjI8dKsTekHpWkEFLKTWXyDkgyUyj3p/SswNUcdaEI+9bstXx9mqfylSy3I9Y0
	Mnneym7U3sCI26723mvAs0tZtzbyHZs8r5v63mTyoEvky28TvqfD/w8mttxD8X975Bc=
X-Received: by 2002:a17:90b:5830:b0:312:e731:5a66 with SMTP id 98e67ed59e1d1-31e77a09df5mr14812091a91.3.1753723771397;
        Mon, 28 Jul 2025 10:29:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2TlcuOoZ/w9fSJKReXr19wg4i7BNBJ46J1r389MBi3VQRREXKv6EbL1QihQHnNxN6OtEqmw==
X-Received: by 2002:a17:90b:5830:b0:312:e731:5a66 with SMTP id 98e67ed59e1d1-31e77a09df5mr14812056a91.3.1753723770840;
        Mon, 28 Jul 2025 10:29:30 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.31.18])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e663a71fbsm10033869a91.35.2025.07.28.10.29.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 10:29:30 -0700 (PDT)
Message-ID: <713d1c82-6c48-484a-9995-2d7311cbf2fb@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 22:59:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] dt-bindings: clock: qcom: Document the Glymur TCSR
 Clock Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
 <20250724-glymur_clock_controllers-v2-2-ab95c07002b4@oss.qualcomm.com>
 <20250725-chubby-spiked-tanuki-eefcd9@kuoka>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20250725-chubby-spiked-tanuki-eefcd9@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=6887b37c cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=6kochd2Oe038OFj2Hkel3A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=_CRzW6w8_PcMKYmKewAA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDEyNiBTYWx0ZWRfX9GyEyHbYIg+k
 IrC4JveV6mi8pt6/iKjkgGWpiJLZ+U3jiekBi5FHzVeEs8gCeAjSAZOF6HOwV9de1sec6wtLmiU
 KimKv7PxpuQUKHBZsSH6VsIyvClT4BK/iBi0k7dGp8QB+LsGmkc0Z8hidvS8rPNGMZIwhK7P9VF
 71z/ul4O+dPDqKoMnPJr2UkoXp1giwuoccjPGAoJBv2GJhZUlTn0wik69vctGiGympxMkW2klu9
 d/+dN3ljV6xAFIu1yqo5FIp3SbXniEVpQWximhqzLcCZg5/OOtVwU58ZnX/3aFdcTJyIn2SRMnU
 fzV7zwieLtNjnYQqTE1tBM9smhYYwQrnjKjNPP3/7qeVLWDiC6ea94KI4NY4h29jBDnojEWO8rC
 na9pG0vv1FbQW03YSxvwqpABuR3SZuTd/nzFJRBbvgnd6mj/E1+qUZvy8i+P4pMNOvEFCpwy
X-Proofpoint-ORIG-GUID: ZJVBxvNNaXfaNL--r-Q6Gs6Yviz-s9e2
X-Proofpoint-GUID: ZJVBxvNNaXfaNL--r-Q6Gs6Yviz-s9e2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=954 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507280126



On 7/25/2025 1:19 PM, Krzysztof Kozlowski wrote:
> On Thu, Jul 24, 2025 at 02:59:10PM +0530, Taniya Das wrote:
>> Add documentation to support the Glymur Clock Controller, which is
> 
> What is "Glymur Clock Controller"? GCC? But this is TCSR? Please write
> accurate commit messages.
> 
>> necessary to provide a complete description of the clock control module.
> 
> That's redundant, just describe the hardware.
> 
Sure, will fix in the next patch.

-- 
Thanks,
Taniya Das


