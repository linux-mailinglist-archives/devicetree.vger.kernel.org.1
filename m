Return-Path: <devicetree+bounces-175100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FF2AAFD0F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:30:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0B4E7B32BA
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6A6270576;
	Thu,  8 May 2025 14:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TuXlWv9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DCC2AD20
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746714642; cv=none; b=EzmZDAN/pTuH9IfpXVKCpMySDHP/XhmtTqS5wqWt5VWhHFm26m5YknF+GCNc3YvM+rqhVsQCJlcSMPedSsAAqI/1bfFCXLlGdYPOj4GDu0sYqucPdJMCtiuA03yK69Lu7mbql/zgYtAzQVPR8H15KifA4pH3Fk8K2qrsLe3lTPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746714642; c=relaxed/simple;
	bh=t4oLXiz8QfvEsARyF6xExsOe53WBHk8ZMnYpTzjULGs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IZYxMJcyBU6tlPyy7i972Do3I9HcpRYkRRwijY4ovN6YaPQVsSHElObsupck6T6e/7z+J3KzIoWF1ef4sxMQVxfFSDy8AG7Yf1nNKpsg6pKknYvVBJGr7FNuCbFxEpWOYx96/TKBPQlSAH6xOoCQ/mfEpxi2bHCik7xvDkQllKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TuXlWv9t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DWj0n016175
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:30:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dqFrO+71U8ibQ3gpsHV7HYk+y8vT7OVM8bBAwyHrapg=; b=TuXlWv9tZ50cNzlA
	VxNCh8Dw7PETMDZTd1RX4sprzGJ8jxg0iKvbCRrW9a/YGqHM3kfs5il4hh5o04D8
	MNNn5AGiIgiX0a035xPOZLeMgdvR43Hq1RoFrm9KXdNrhq+1VnZ9xbQViUO+UFHm
	tEO7O8zznYIaib8nskpb1HcVoHuqeiowG+GImxBIikz69S6ShSAq/TcT4XWGlOvd
	FH6oZgtd3mf09TjvPxAuQJXx7YF8wRZ78/cp3uYPep1B25zQWEqMP/byaWvGgMcS
	qorxqNwrT6vwM0vu+TdHKpEs8QH+fNiARxSziGbiuW2esQe/0cc3R8AZRoO1EfnL
	AaA4QA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp8sk5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:30:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53d5f85c9so23018785a.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:30:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746714639; x=1747319439;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dqFrO+71U8ibQ3gpsHV7HYk+y8vT7OVM8bBAwyHrapg=;
        b=vlIxNDZbOHnj5OYmYYbqjxhWrmAf5hQ/9N8SFzRu9VedBqg/gCpRMiOVu25yJEFLKL
         EwLpMsYavkPHFteicU4Ji4OZY9brkyKA//jjE7h/5K9cRCs49X7JgfmZuL3AjormFhuP
         8t1r0y4s5/+Mg2IYkaErEAsPiLNv92Y3mAAN73bVOyfDCW6oIuF+C6UaeitSoIxcAzEn
         Fbt1Ko6xMonNfG6WPyzxKCGs54BUoUlo6jbSvTaTmsz4KYC/UuFjBpS0AX51SeGZv9+X
         lAozfqbqCzxOz8BLWp8FS8rKTRvf0MPNkrJxKPNt8NP912vCwWihyrSc9VwMO7kEKm4p
         iQRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyBQg/U9dNjLQGxvTXk7bQeUgGafYZ7crGp9J6R32Tlg6jLGF82BgjxQtdtyler8zTDkV0xNEhN/mr@vger.kernel.org
X-Gm-Message-State: AOJu0YzcaKW4btpBOpBP2DxgZO4wJnvH+nIlR5Uaw4JhZNUFnMzb0rEW
	LmPPzjXdPVp87n/t4BiomlRFebUq5Ss3g7+YyebZjlQL8GyrlQ+hqqoyKpuZgVUoqgKcXz3+lo7
	MB/FWw6eEOmUFO5xPvG/1ytDwNZP3BAkBDnLgd8E5CvKSobgBlkRBjuPZTAuA
X-Gm-Gg: ASbGncuFMNpa2aG6VLGnGfI7ek6e5YVPV3vM1BCXzjg0I7ciwG9/PJ7clu9wCn0UFPu
	eA0nScuphMXhw/jTpJ4DddjL9APJPubDepIQLRQpgOmjs8D3kv5fwudOu34Wzmw3HaOsIHN0BWc
	9kP3yX7X81zkzEechxHqSjSsi6DGEwOn3MgEcrCehiCRJxHXQknJyXyC6oV1bbknRssKNPMUgqD
	/iFtzkX5bd46RpHu25Vxqg9Ay/0NhYZQacE2JGKVhO70xctlb4o3MQ0UKFWrHL9QJ3OOGtG6Krn
	SogTFDPQRWZLFjtuwac6ORMaUC1ZGTXWAiPRkYWSiqYiJXxX5D4SXy/ZkgZ5sVGoWig=
X-Received: by 2002:a05:620a:f13:b0:7c5:79e8:412a with SMTP id af79cd13be357-7caf737f08dmr455458585a.2.1746714639001;
        Thu, 08 May 2025 07:30:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFERWPG6KvKc50ZOv48iurNgCUBU1wb1dtfWuaQD0GVFc2xadC8U2UgV9n2hIN+6mOuzpaQbA==
X-Received: by 2002:a05:620a:f13:b0:7c5:79e8:412a with SMTP id af79cd13be357-7caf737f08dmr455455085a.2.1746714638460;
        Thu, 08 May 2025 07:30:38 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189147403sm1100399366b.13.2025.05.08.07.30.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:30:38 -0700 (PDT)
Message-ID: <314117c9-1865-4e33-b7bf-5022869412ae@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:30:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] ARM: dts: qcom: msm8226-motorola-falcon: limit
 TPS65132 to 5.4V
To: Stanislav Jakubek <stano.jakubek@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <cover.1746711762.git.stano.jakubek@gmail.com>
 <b67ed6c7813fa52cf00b473dded9b5042102f593.1746711762.git.stano.jakubek@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b67ed6c7813fa52cf00b473dded9b5042102f593.1746711762.git.stano.jakubek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Zdsk_SOuJhm38--eKQmdR-JA3GGDZIyU
X-Proofpoint-ORIG-GUID: Zdsk_SOuJhm38--eKQmdR-JA3GGDZIyU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyMyBTYWx0ZWRfX9pncdOqMBpOT
 w6d17Wqe8N7wUXP/kSA/ToGejCfYTMl6WM4MKX0l1LPAVQTVAIy7HwA22rfjHxolH5sSW0T98VP
 Omkb37+U7dKIxRQMcziH9SvVjhBBa2PKJceM1LM8PA3WGN/F9tz13k5QTn9JlQzdjFRhIHOlB9L
 WLRgvNqTssLmOcWFcly39ASLBblsvpv94EG41B+GgUlQCGhx8PaBzm+ZVvofWLrU06UZ9k4iWOk
 aEPdigd/0WP31B++mIxh5eGTpREKhmDkClrpC4dFVY5u6l5ArUPaU+2s/07UbJh9FhbzU4ohvkQ
 japx3ZaFoKsDrargHJSsvvHv1jvz1IyZuYwg3cK/MrrTBjFlQuqLbmtKyoBA6J+rmBbjthUCHk7
 BNko4plinnOsNAWgNZMV8/yNGBJi6D/NuxiHU6X/qpv1NimZGrrTpLiqNXIJ6yNmysuB2ZiX
X-Authority-Analysis: v=2.4 cv=e/4GSbp/ c=1 sm=1 tr=0 ts=681cc00f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=p4YvtlIvSzqog-DnsKAA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 clxscore=1015
 mlxlogscore=728 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505080123

On 5/8/25 4:11 PM, Stanislav Jakubek wrote:
> After some digging in downstream sources, it was found that the TPS65132
> outputs are fixed to +5.4V and -5.4V respectively. This is further confirmed
> on runtime through debugfs, the troubleshooting guide confirms this as well.
> Specify these limits as such.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

