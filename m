Return-Path: <devicetree+bounces-179910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DA3AC214C
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 12:42:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA15A9E2F85
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 10:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6071228CA5;
	Fri, 23 May 2025 10:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YtQOc04z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAFC2288C6
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747996959; cv=none; b=YNMeWG7Xz78tZfh7ZFaed4c3Vnk8LQcY5OoDFHW8Bh+z5q9RvFDXRMgG7tJqOr0+DgPIyyURTMCkaE9dX7enURNpa/awDa6eGZF6QAxMYI9+RbTuN45iViVm3+p515giOadfOKHe20F4fi1fw8kbH63NpAlfYGsql084VQuRGX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747996959; c=relaxed/simple;
	bh=Aub7nJftHukwBbwiYgLc+aHj347EHiUJZNm3GCykWa8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qz3ReNpB709mptUZoiRQ4kQbj5tP2+acO3ZbEHssSjfVHs8rvQzyBNman2eUAEert4bNuGLOgmK3o0luOGQ6qtR4iymlkGTc5TjleRtItjRTz69CAiMRheRCV0hmIAJ1zZRyJAERpR81ULdICQxMqDgE9L8iI+UNRn0BgkqMphM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YtQOc04z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54N66F9c029233
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:42:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FRSaRuNm72osxO4JsuapvVqs3dp/fnl7OJ+B9n0bvko=; b=YtQOc04zXKASao4W
	BSKOthmHdyYLvR6rqQId4kH7quBqm/KPMSJrnjUEznR4AkpNYztHTd2um4xwdEq8
	tT1nxcI10rgfIlsASLzVnYUkjNww9cyfFs7KicPb1aisBuFO5IT7g6DdTLi7bBpn
	hGbDYVns2Bkq3aBmMGbZnkbxuVwIb7RJG+Cs8q6jYjXx8FBJCEfIFl33f3gG+JH/
	jxk+s4GUM3rBJ+YsIVa/qXJz7OTgL9z5Vki6FGLGdlvHMYkBV2szOA2pxfWNJSNW
	1JOnSAdUupGERZw6lnA8p2s0IRLRC+YFGYHNDgTdirytzI1OxNur6aaEOZi9hyR1
	O8OjBg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwfb9k98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:42:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c552802e9fso220762685a.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 03:42:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747996956; x=1748601756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FRSaRuNm72osxO4JsuapvVqs3dp/fnl7OJ+B9n0bvko=;
        b=NSHw+8m0eREMNt/MWmzVhlpG52oCUvxSiQBhCaYnviRGbQAYLmCMPfbDZipH8OSvoP
         mwHgL6pkT+kKst+IXf9PSkdn5dWfDh7VjA5mHkaLtqi/puTCMFOUb2DncmPmYkNUpV9M
         eNESeZKM0SRf0Ci60lMpB7OIeAlfy6359jwT3ar58lKuS9ynGCma8jzRu8FvC8bxKWf6
         8bL9027qJoO27Vh2xm2jVzoQQnp78mOw+L5Nz62Nm8ardt3xhxc6t6G5m22n4ux0gRcR
         yjB/lAKYBgjpKAJCbMFSdO54NCtZZfhMUvquId9XDqUP2+2y0HVbHe8ThxlH4MBd6rxv
         Zc7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWCae2vcxBs8P4H6XwwxiBtbHkqiOF1jYXO1Z/EAf8ucOlwez24lsYRU41yM9K0WKsgoYdsFWTx3//V@vger.kernel.org
X-Gm-Message-State: AOJu0YwLV7iHYT1N9RXKiysrGfObxNmt2T/iRE2bzeT8HjiYHuquIOwx
	rNTvVdIawP/0L4xHjcI5tBDgF1aJ9v+MM+GPIoNUKYQJybZ9LzYZCglxfLvVeKvgaqFisGA6aWR
	vOiF1Sq9Roytgl0ujWqXx2KOMQt4y227PuNcpaqEpvgyC9ausV/MNQYsi1ABaaaQI
X-Gm-Gg: ASbGnctyC3V7kmFddbJfhO3i4mEqVpCTlBGkx81VXbkv7jQXTOSc/bSByLL2PEKzvC9
	9h9xLLcpDlnzr4IfcXKMMQV9KBx9GdgzqiITcS1V97Wh1K5eBQcRSStB89RvKsSGped/fOhwhZq
	PYKWeHdvreGkfcSwiJgUaxnlMp5/xtGgOOR8ns62R1MCoFnD5xLbAoK3dTh2DByE4qNmoTS2ByY
	OigpwpSNMNIqZf1sEovhdiVdTKa4/0tLByb37zV+cGpIA+fKmCS5eQJwoTtNmBrZbD7n2dlr4T+
	XLcwuRslk7x7AxQLLXWx6eBPqXZaHqy9tnKAaqZJetmK8qhEXh8eOwaEPsAIDkWxgg==
X-Received: by 2002:ac8:5dd0:0:b0:472:e32:3fa7 with SMTP id d75a77b69052e-49e31aaa483mr13085121cf.15.1747996956058;
        Fri, 23 May 2025 03:42:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHagPFlynAk3FNNsBGniFLQSLGKrz+h8ngLRBYab799rOtOx9i60SREqYxm56Hb6M/zcQ0pgA==
X-Received: by 2002:ac8:5dd0:0:b0:472:e32:3fa7 with SMTP id d75a77b69052e-49e31aaa483mr13085031cf.15.1747996955724;
        Fri, 23 May 2025 03:42:35 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d49889asm1224027666b.141.2025.05.23.03.42.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 03:42:35 -0700 (PDT)
Message-ID: <b8b43344-0b8a-4e76-a8b9-1a1e2b354f4b@oss.qualcomm.com>
Date: Fri, 23 May 2025 12:42:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: enable camcc clock
 controller by default
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _Cw0Tw_PPTEha9ofG3F9RokQvjrQHxfB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDA5NSBTYWx0ZWRfX0fZldT2damPt
 jCuGayzRk20FsyboicmhB+FC8ImCwcO7EzylaYPUEZz8FQuhWpT3xQhj+pFq3H0WA5cjU7+sQym
 3UlCADpraT4/OWbQeHI1LKjKSnFBTyKgqaOYi4Ko2UpYHXMO5NBZj503PGZsPbL4rs6mEZu1ZcE
 lwkzewEn5NZMqTFIn+tpDwtViBY2lxNzPUSXjevob8oiNIKRXi/Pvx81al1flxGAD/Fx56SffbU
 jetimDcROXuzGKC5nffvEuNkuHiUGKteDLVuHH1q9Rbfl7sya2sy5V8e2fJF3V42L6RXdSdbYj8
 F23W1J51Vg/MJMGSNgZ3D5Q8RZ45zHBwHzM8xkOuf4TYdTbmdE+6vFyWLN5Vxv+2LZLLm0N4mRy
 cfUHORSDMxpgU1Xi2MSy/CzAg7wQNCvLkw/IZasTIFCpBbCdYQQ9h54l+rFOhKUGxoFJSBKj
X-Proofpoint-GUID: _Cw0Tw_PPTEha9ofG3F9RokQvjrQHxfB
X-Authority-Analysis: v=2.4 cv=dLCmmPZb c=1 sm=1 tr=0 ts=6830511c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=QrxyFXYMqUdT4-5Nm-QA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_03,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=953 spamscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230095

On 5/23/25 11:23 AM, Vladimir Zapolskiy wrote:
> Enable camera clock controller on all Qualcomm SM8250 derived boards
> by default due to the established agreement of having all clock
> controllers enabled.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

No reason for it to be 2 patches but redoing it would be clearly
wasted time

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

