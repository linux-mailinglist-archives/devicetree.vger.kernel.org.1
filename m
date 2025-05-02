Return-Path: <devicetree+bounces-172921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ECDAA6F9C
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 12:30:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EADD04A5F6E
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 10:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6689123C4FB;
	Fri,  2 May 2025 10:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l1Gai6KP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA8D205AB9
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 10:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746181801; cv=none; b=fy3dG1tL32C77QHlyInOx+d1cAOGQ9qhsNfYCQs3dPTNTbRMjKQJRlhFXEVkSPkFAR8V3bNaXt6lpsGrFfYRqbFl6U+4t/adl4ZnaSiESt0yZ5GzX57dxUvYwz/F7LfOYhM7A8supblNEpaxyRv40/PpuvBcnzIovpwLyUTtwFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746181801; c=relaxed/simple;
	bh=i7lDDRucUlwhNKwX/fbh3u9h2y2t42fMvoTgrZxh8fY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EifgVQg7gYXQKKBDF7CZULJFGTo/ki000jK4N71dA5V05kRT5Cki/5FzEguuyITCvlCJXfXEbIsJjF0HI+JgF8CIbwJsUW7/jcCQFiHuQ2jazq7vTymKSI6V4CIdrM3fhmaHIwUWPF7Vp9x86m/rOfmGuT5hXOFVB8TeZP26GKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l1Gai6KP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421NJYB001886
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 10:29:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Dn7fvn/GQzMSROH7cCLUoBJLbxJJYWAddOeCioJDak=; b=l1Gai6KPbjpr7o5J
	Hr3ZMqRKavmSUhCNa2QUgclx25l+PA+ZDkUUwmSv/bpX6CkpPUdOCmNuFbM3jLYC
	nqpoJL86ruqNcxZs3JGPm9deAxexS9Xuy/SV9HuXQWQiG5uKQyWKapWrxJ9QFpPy
	ZDY+c8jG6YBlQf0eAiKPYzR1BuKr+MIF3yr+uJWajlMla4WlMMXx5H8FrpB60d/o
	DMn/q2rqb0V274gBVqH+aO3DM+MeXx7sxSUBkBlErL/wDKT3NrcPbwxWaMJZ3IsL
	UpbjTuMX519ima7NKU+H61fuSuCDhSqyCV4AWspkRQWHx0ClM5WPYbBCYscuTzKO
	4DtUhQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u2g0r8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 10:29:58 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8ff8c9dcfso5444436d6.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 03:29:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746181798; x=1746786598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Dn7fvn/GQzMSROH7cCLUoBJLbxJJYWAddOeCioJDak=;
        b=O0laWdr9MabY1Wnr2uWQj87nCbLbD1f2o5s99wqYuWADyYVxj3zrsuHMGE4KWhDto+
         1U2WN/nH1FkQOj8P37+PSOpKhljwpvJF26e0YAvo5kMVWClBEYbWe2b9sBJ9/k26egME
         B1dmh218URVDK08Q1GMg6rdAPEgUgHqQ4m5J1ieRo2irxr+b+QQtRcaN16AdC2oHTJ5S
         I9YXKh7UPYGoz3u8lnSC6Uo5SOh7rjLWNDtBZLg2gcP5bzJS+PAinybB4Sxqe5/W4FK4
         PY/XIaXkGlYNp2Dg0jewY+RQxy8XIFqn5+CwI4dfTh3z335iaVTtghKkZ3F/Tc4kW6pO
         G+3g==
X-Forwarded-Encrypted: i=1; AJvYcCUgZpVAxqspy3/R9aPpq1KmvmwOFmPHWna83Lx65WQhxv24woECsbjXCseSMvRSe3/FdtxPoCzMbE3+@vger.kernel.org
X-Gm-Message-State: AOJu0YyPzD3d4HhwZJ+P4yeZZcpxbFOY9L9cMQkF6VDfUvbiHnA4PPSp
	EruwVnfPzE8SMJYTcEh3qV/MnCy7ipPWUkYOUuuTqsF4NUKjxoI8OGr28RPnVxOhRdGFLTsIPfq
	ph0mLaHNG2JI55AsHYuBswMLTsF+IZWzMkWppkgIq11mFjkInlhogNZxcNF2O
X-Gm-Gg: ASbGncvEQhSm7Eqer4woF1DX/wl++3jqwK2hJZW9MQfajnZfDIqS+0lL0VeyArbgbC+
	Boh9Itg9EZjBjJHSoVSebLLhSstuOuW8kZvcARAJ5OXqp8T2Kza12ReOho5gwD3g1ypfAPd3jc/
	7nLx1uIKb06Oq/ItyR5SHAX+njaooiB5oyFsHDzE2te4i9LelkomHJLxoEfW4loVqXCbo9ZeM8K
	qs5EmBZCUFTahaDN1D7LjaHTFT+52Wh2wCMEHxnp3U8XnxdAISU3NEjuhwXkdR2+/8VGpjADZ4X
	DVu20PPZUy0zg1VZrtQKelw7BdU4dikqwPqCtsp7+o1TykkU+woALJI+vjFzAgB0F5o=
X-Received: by 2002:ac8:7f8f:0:b0:472:15be:54ad with SMTP id d75a77b69052e-48c32ebec71mr11930181cf.14.1746181797950;
        Fri, 02 May 2025 03:29:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExpZCizKsiNGnAZGjO17fHH8yFM+oPe1mErUD+l8Dx92sb7vZcW1igq+h+lNhd+1RWdEMubQ==
X-Received: by 2002:ac8:7f8f:0:b0:472:15be:54ad with SMTP id d75a77b69052e-48c32ebec71mr11930041cf.14.1746181797657;
        Fri, 02 May 2025 03:29:57 -0700 (PDT)
Received: from [192.168.65.113] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad18914731dsm29461266b.28.2025.05.02.03.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 03:29:57 -0700 (PDT)
Message-ID: <1435b068-3bb9-4285-8399-81fc278152c4@oss.qualcomm.com>
Date: Fri, 2 May 2025 12:29:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] clk: qcom: ipq5018: mark XO clock as critical
To: george.moussalem@outlook.com, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Lee Jones <lee@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250502-ipq5018-cmn-pll-v1-0-27902c1c4071@outlook.com>
 <20250502-ipq5018-cmn-pll-v1-2-27902c1c4071@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250502-ipq5018-cmn-pll-v1-2-27902c1c4071@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: sAnFylpf_37JPY3vIUt3c24hbWgc-l41
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDA4MiBTYWx0ZWRfX0wnlRmrtq2fM +O4qOzKWPQusDQGaV5kgAfKYIBP/fgX1AnKp6H9+7fnapqtI+i8A/vmsvQyxrbpcMkTNAv4LAF1 awaq6mXnNQTL4Ky0VdCexq3whfmVefC5HhL3f1/Z2mwRdI3FSlJ+xyzDFXeGpGNeEaIwOaE/OEX
 /OkT/NtQOJms8cgK8ggdUS2oElics/mmZZnyODulaz4K2/nsm/tu1KFnfW5HHK5PBX2k0BQrgNq 3m0CYDrqzWBg19/a+PQX8shHmw+9qD+Cpje9a7j2kFIRj99MF6fWrqoTZAJM5c1fYIdFiYGGn5+ xPSkKU2AmIBUZ/9+yB9TWdOUH7jFyBLheJTkrPUBLECW+MHoZPLlfsn3hh1l73v0/5KulOIx8TK
 P50ru9JBWQ+Yax2+OmdYC0rMjirBrSLNXki/O/I75KWCvrfbpJu7/td/T8TnT2FJUyYe7gZn
X-Authority-Analysis: v=2.4 cv=b5qy4sGx c=1 sm=1 tr=0 ts=68149ea6 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=N5ds6sLAiLYF8mbRe1EA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: sAnFylpf_37JPY3vIUt3c24hbWgc-l41
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=988 phishscore=0
 mlxscore=0 impostorscore=0 malwarescore=0 spamscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020082

On 5/2/25 12:15 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The XO clock must not be disabled, so let's add the CLK_IS_CRITICAL
> flag to avoid the kernel trying to disable the XO clock (when parenting
> it under the CMN PLL reference clock), else the kernel will panic and
> the following message will appear in the kernel logs:

Remove the struct definition for this clock (and the assignment in
blah_blah_clks[]) and replace it with:

qcom_branch_set_clk_en(regmap, 0x30030); /* GCC_XO_CLK */

Konrad

