Return-Path: <devicetree+bounces-141454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D556DA20BB6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 15:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8C587A2D9A
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415321A840A;
	Tue, 28 Jan 2025 14:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lpIWLMle"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21B71A23BD
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738073110; cv=none; b=Z9rnUzYYPg8IjnggQc39UhTYr0XlXWvyvJROedna3uHTyd87R2FtNsRKikXVtILTjC7zy5pohTfyjK3gj8Xf5SUAFTzqdD24smOBjwQuA28mcuQcPobSNLOosMLqQ63aPfIfIkAbNGW6ZKWOWVm9KOxiNWilpa1rX69qWIxhp1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738073110; c=relaxed/simple;
	bh=JiGD2cMe9lX307WsEEDwaESbm7NZG/QhYRCoDpdf+7s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FAdRMMTQX+QdWp62wX3iIdaiL3OOywPDGCXUF90mS/FNmKukGdTHObzuqnQHirvzXR6aFW7rWoKhyviBPzqk/VNbo1lcSr1IJiYovp4FJf4bYdz3/b3s3zocZM360zFOgtBnIz9owqApVuReCQF+RNhQxfqtjzrOm+9ei1cg0TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpIWLMle; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50S9lXZL018324
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:05:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	no3WhmSMt1ha/2u4SRajwCvcV4h5mAOvCoziluL3Mss=; b=lpIWLMlebDehy7EF
	huqJML2Hww3r53LvRjjmW/Nlgwv/Eo7AFNYoxKUgEEsfBjcaYJlPuD3sY83RPMpe
	6GsNApjV2zJmWO59Bz/HQy0RPj7PV9d0YVwHJ0Rw1OG4hPKSPsWFViTLvsRLmDr7
	s7fLDC85/PR6CRhB8A+nSdLQwbuH7tYgaOBjEVbPrm1lu0jiZylarlnpCMio15bm
	5dk2QebJRCWGKBTnlCkkN+p7/xrFBQhzCFbvchnCYOVZxfc6sYwr1dAzMObBq1u/
	DcUoNsIWdPb7+whKxLxtj8AlH1CauZsXafTc0Doo8UySf3xCgZ/EUyG8vH6H12RO
	yeDEEg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44evwugkbf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:05:07 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6f28dc247so115323785a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 06:05:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738073106; x=1738677906;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=no3WhmSMt1ha/2u4SRajwCvcV4h5mAOvCoziluL3Mss=;
        b=hoyCG5ix4gxG2fPriK2aXe+BNrZrlrSDpQjzPT0LcCSgTXi1QlDEPTfOATqB8FDhTv
         tG/FWkfNOxhRYLEgcAXC8VOvJEc98TJNqQq1DxoV539rsMKNE+g+5+MyFNp45y5CZpb4
         g1arYyLMTGRzK5m1PbdXmOXwZxkbjQBbfE0VlYqHxN76vl5sRWqCy9q90FMndNHuJBbe
         fgS/ItsbJJodDwjEb69fPg7I+UCAWMTR4ElVQ2dXwwzYH9weN39+X6ba4TueybnQnXeA
         0Y+OP0eEhgtKiix8DxeySjtv4j2iJTMpu3fwP2GnqP3lJM13P+wv+aD47JN/9mIXTevJ
         hBJA==
X-Forwarded-Encrypted: i=1; AJvYcCVLBilGUEr2pyR9182JWlZeRLVNyCJi6HJnz7yJ/jl5b2ts+21XwOf8v4QtE/b41huTaD5kSIKQYj+m@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6Y2bwYV+xA/Y6HFRfAv90mO96IORhoa5cmG5iEdpvGppmuA4h
	rg0Fn0X1NFlNrvPczzp6rX4caX4mUsbEuFwn441gAdtm9RrqoZGbt2jrCOpLDDlONHbVVErhWlT
	VHNy7c43A2usmMO1mYO3AXdiMsQqTpRjtD8Ypoqp0opsDkgzTH7SP/cZfgRfb
X-Gm-Gg: ASbGncunp+FGKLhDt+leoRI+SXbm0pt9UafEAz297+MfpV+HJL5WlutH1EXTkzZtuV7
	v8zI9PwA5Zs31pkgU3xpmyTkfQHe6ITP30ma/bOMbhqpPKeRklVK2ymdCqCM5Jz95+gL6mwFm7p
	FblAlfpLjSIOQpeTh5BQbL4ddX3+61KSodIaIaxJzvhEpXIfuo2MA0MTNz964x8Fh+AOHC2Uz8d
	gaPKveU8/nTVqf35V+MxAwVPWw4h3DEdKR05FgrXH9OaMEDXTi8FdpInnYZCCy/NaTfGFaocKqo
	uRM8pH15tkLqs+Xw2CjJ2vaU+d5xyYb8L7o0JZRE6PqcwtS004vR1m982mE=
X-Received: by 2002:a05:622a:182a:b0:461:4467:14bb with SMTP id d75a77b69052e-46e12a16648mr253563631cf.2.1738073106595;
        Tue, 28 Jan 2025 06:05:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/LbDGQlsRbLBsthnFftYoCMDN39FmOkWnL2VkhN43zQmeyE+B71djH+1Jp+LrNzwR7oFTZw==
X-Received: by 2002:a05:622a:182a:b0:461:4467:14bb with SMTP id d75a77b69052e-46e12a16648mr253563371cf.2.1738073106182;
        Tue, 28 Jan 2025 06:05:06 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fbab0sm775064466b.150.2025.01.28.06.05.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 06:05:05 -0800 (PST)
Message-ID: <dd03609d-fc75-4841-977b-8fb536684673@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 15:05:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs615: remove disallowed property
 in spmi bus node
To: Tingguo Cheng <quic_tingguoc@quicinc.com>, quic_fenglinw@quicinc.com,
        quic_tingweiz@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        kernel test robot <lkp@intel.com>
References: <20250117-fix-kernel-test-robot-unexpected-property-issue-v2-1-0b68cf481249@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250117-fix-kernel-test-robot-unexpected-property-issue-v2-1-0b68cf481249@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: JOgJGffrrJxaNhG6wortbHEciZ2rV6Aq
X-Proofpoint-ORIG-GUID: JOgJGffrrJxaNhG6wortbHEciZ2rV6Aq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 suspectscore=0
 bulkscore=0 mlxscore=0 phishscore=0 malwarescore=0 mlxlogscore=995
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280104

On 17.01.2025 4:24 AM, Tingguo Cheng wrote:
> Remove the unevaluated 'cell-index' property from qcs615-ride.dtb
> spmi@c440000 to fix the kernel test robot issue.

To fix the dt validation error, reported by the kernel test robot
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/r/202412272210.GpGmqcPC-lkp@intel.com/
> Fixes: 27554e2bef4d ("arm64: dts: qcom: qcs615: Adds SPMI support")
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

