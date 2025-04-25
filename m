Return-Path: <devicetree+bounces-171031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A571A9D0C5
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D44A9E3C43
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 18:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC8F4219A7E;
	Fri, 25 Apr 2025 18:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ouUzIaty"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7312192F3
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745607005; cv=none; b=k+1bwSMbDdpsP0fRuBuHeVnyG37qvc7p5HlZSZI5WGzq9sUqGdPLVt/41kJkAk3Cicaw3I/da4CTD2g0xHDqd+AIVvrr/yytx1L6zyV0Ee+dNJ9Y7BnWVEJeTxOCKiaQ5jQG2YPDMuj7hhHrX0g/TVZkZYH7AFKi+LeVezzlrvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745607005; c=relaxed/simple;
	bh=XoX+wEa5HhC3hR5v5Q5gpL5U4kgU7elVA8+JOzu30iY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AvnLIkk24lDN1A8zanMoBO1CEO+6lTuQ6Nf0HEirWU6YFARfH0VxqMlq1Tjlphs9jDEQ/wKIyU9Lq+e5BLGxTXfpdwOmUOuhlU/hW3kqnfkif6YArouEv/0YcB1GKEgRPv5fcqOC3WZ1ba8Wt8Cde8DVxBB/hqIJ4uar+lLAeX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ouUzIaty; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJpn4031931
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:50:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5UZacNDBLmuE/Heewz5Xsv2C
	HRXYOHYVhtQqphnjYro=; b=ouUzIatypmp0mRtlrGmCYrQ8qyI9f6n75zu2bnPr
	khZraYBacLCAhE6QCJM0u74MEGkz0jO0Q7an2a0sbYb1DaP39NVU0ppg7FjUGx+J
	m5yOxqlhja3PzeQkM1cS/00MdWVZBLFE3M8Y4mXLRSVQB36c1alTfeUvFrsw9IX9
	Zv5+ndF7FNIyqJAcbzh6iH9iNFYDtB6a3BHlBeAHCneYUpGZp2i1yezrp61UlMFB
	w/0G5XLcAGMd1wh08/951vOSYDOZfK1poXmnMD+e/XVd5bWLEQLklqgfg3UIRPwL
	RVUmc2meY4NxYoHM9dnTf3vld6NBLKFljAqy60BIxEXwZQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgya0ja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:50:03 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c9255d5e8cso453693885a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745607002; x=1746211802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5UZacNDBLmuE/Heewz5Xsv2CHRXYOHYVhtQqphnjYro=;
        b=AZkeD84PuDt1Boc6j7gd2sdqIUpaWceTn2hQJbdQaVpAMTG8Gjf1WnYpuO7hKj0OPO
         pQ/ESkRr3B95gcdzsKfE1am+aZzlayelOQ6reSDgDRPfEB8roTrF6KsIfEblskj+u9i8
         qvVyYtr9NTmW2pM7ZgUK7t+fdSCwQsmQ6fFhdsewTfGoHnL8oZVOmYa0cS64e9E0gT8c
         7joDWMu/uT7z8S1ci4FRGmKZ2nQmqXlu60sDcxmXyB0pZ38e5VWgVpyMpmvsyxZKs42x
         kn3PlkaZgvgjfDbfdRfekUm27/HHw0lUgWMk20YFJylqdpVua4IqqerVNBn4Ni+LrpWT
         p66g==
X-Forwarded-Encrypted: i=1; AJvYcCXKurTFN5Pnqrs5/ogSHlb6yAVVboHMeZv2w63kaOxI+iC2CQEMJ3lcqDH6yyZs6i2UDgBmT6wzNL5i@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0Bh1JcFbjSVZzLmTYFBX45toR/KsVw+SSn3DPWgQF/ZudsOkK
	wNwUOKixeMkg42lCNYNO+MudUSv+LFb6N0ly3hL0RVw7OIUqJ5+akBZtvuuUGX1OXEP/raTqICP
	x896Poddm95qCUZAdcXfosODoLnG6YfN0/f7yS1xsm/Y3ldx5QyzaVnaa3kBH
X-Gm-Gg: ASbGncutmWXIixLNKiE8k64Rl8EpHeGbSRWcrjHX+p4c1z2YpAsl9kHoTAYVanWOW5I
	XKz2Cwn2dVjhfMn3GtP89BRwyjChp36tL+Vq2kZEDMHhB+gexfkIDU+SU7QD4hS7X/dMMoigkqu
	9JJVcoYMQNoDG9JLKzVtGQE6iSYN0QuE5NnFO+AWMXkIMPAd8zqj9qjpMfoxryN9Gip2gbmhp86
	MoZx9ArklJVKnSLValNjR6s8tz6+jsibU56Y4TEdhav6pqBj6pON+hHN64y1tbF1FMTM+0w+k8h
	+jZv0T7YStxyxfw7bK8N3livcxrdJUklwM7b0Z75PH+idxn8qc8m8X60ueR2198V6HkY0LJ5K10
	=
X-Received: by 2002:a05:620a:1722:b0:7c5:a435:7867 with SMTP id af79cd13be357-7c96079406cmr478379085a.45.1745607002339;
        Fri, 25 Apr 2025 11:50:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKGFKhgTNVIChoyaUoWx/RSIrv5FxjCevn0K+xqfxGKoAvvW3lf0EQM4tiPmcCVL9Ey+Vj2A==
X-Received: by 2002:a05:620a:1722:b0:7c5:a435:7867 with SMTP id af79cd13be357-7c96079406cmr478376285a.45.1745607002037;
        Fri, 25 Apr 2025 11:50:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d0019716sm8540161fa.48.2025.04.25.11.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 11:50:01 -0700 (PDT)
Date: Fri, 25 Apr 2025 21:49:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/11] arm64: dts: qcom: sc7280: Use q6asm defines for reg
Message-ID: <c6brmbdqfp4kr4unp2vici4klzocwnpawxdl2m6g3farzgdlvf@2w6kd43oa7sh>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
 <20250425-q6asmdai-defines-v1-7-28308e2ce7d4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-q6asmdai-defines-v1-7-28308e2ce7d4@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzMyBTYWx0ZWRfX72lZpwbMwUKT 0BY0KXqg60th5z0wCaWfXkLIeqJDqeRkIRfa1B8PTCAxwSF2/1SyMwYyHyqqmiLJO8TrL7JKhd1 2Tzt5bfhAk4mlqQFURq6XfzojWcaZtou8nY25KnNDX9v6+zG8ZqAQAnVaMkhHq92S7KwdI1kcQN
 fqeFwaCaj98lKFsDhgOymFJrILNeXTZASIUEhl+CFYP5watW58tPMibaEbeZctyT/HkjxEs4qIp MqB3qoIMm3QoQQ66dcdGV5DZjkUARNNXzH2gqVIdec2d6lUewXfPMO0PWKGOVVonydpEYXTEKdK rYOEbaBytHGsi5Q4G5s1N/sMhelqqiY8CsqPdLjIUH1rQxivxZoE9B/oEURLY2NNLIL+8stOu2r
 2GbjgeBEKEJ3RhnOylE/irs53YNauxTHai6h4fiwRiivuJlENss1CvV4D+A0Z6XZ84TVYLe/
X-Proofpoint-GUID: GSJl9luB4KMV_n3ZXdOEXW3YBYX0XG9y
X-Proofpoint-ORIG-GUID: GSJl9luB4KMV_n3ZXdOEXW3YBYX0XG9y
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680bd95b cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=0uHdMyS-I8ESt-gxu3MA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=598 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250133

On Fri, Apr 25, 2025 at 01:53:46PM +0200, Luca Weiss wrote:
> Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
> readable. No functional change intended.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

