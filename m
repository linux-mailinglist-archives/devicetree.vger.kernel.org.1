Return-Path: <devicetree+bounces-226423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE709BD8942
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 11:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 105F818A2E55
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 09:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93CA62EBB81;
	Tue, 14 Oct 2025 09:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HNOVm7Nn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16E719E97F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760435584; cv=none; b=jtEDgy3EDL+3D6zd5DbJsM5F0TXFry9AElrOZXG0KDpocqfy1Bu0bJbWOo9C+GN9+pP/cK+z8z3LIkS4psxqqZrq558BI9XSo8pGyIHwdyscTofkeKpknnAGi6kEIct4ninsYYCtMD3vvICSOwYgvdW+NH67ElB2MOCMOwhlpmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760435584; c=relaxed/simple;
	bh=gUfKWkkU/Gl5PN2qM9TecVGml7FKvbb6D1xfgGMKKXs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sfEMgTb7/YieTcaM0lgKb9PIRiAx8eWc2O5aw0uSd15xtQd/uH4naghChI+rCaDlZQuXLV+OsB8usLbKZ6tEDlZmH7C5zwb06IFdvVZMrcLH5UTSYXjNm7tza+yp+d0fMDnh7bEnflpwSxgCSUCU8qnz/WvhoGWuOAGMlP6xtpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HNOVm7Nn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87H1N019879
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:53:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F0bffc/XzD9MvQE2h6D3BwBGaZfZTTXTRLHrFoBclpY=; b=HNOVm7NnkRJjzTul
	4m27bq5RnHkIE3pKfuThw6zYZRcYVwqQJ4GLjTZ2Vp7Km/aUk7yILUKO3HKu9+qI
	u0cfEd2rMsLDqe2JzDWL7AVj9HtcYNfQ2VBGAQXvVckTmyn37lKPPKEfy03646At
	0Mc2Z4WC03US4WqVvLrAUKMLsAG8zZ/5cYEn8t9e/95ZWXFlxhi4v0gKmYUI3sD5
	mVhFvSwg17f3htGliHI27DkfXtPkzQjWL7TO786c3ZfsHkQ0RbazZPMW2o7k6lw8
	XILciNaxVBqsFMNLYQlvfjbMdgxQZR+xsRmAUrB0boAsouwPJUFz+zFGv5swGZC9
	Bo604A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0byy3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:53:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8649a8dbff8so226590485a.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:53:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435579; x=1761040379;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F0bffc/XzD9MvQE2h6D3BwBGaZfZTTXTRLHrFoBclpY=;
        b=NFYjJ8rtg+bQjGVJnyLQoEhzuWVMs4vbXzLVFgwtW/GsymCJcygUjgP4MFwA3tX3lE
         ugGWDL2NoRHhF/c5F6GnSY+BNLhx3ret7wGz+isHyZrfresgbcrSlwVzD4c+balGgryu
         GCFYVoenFseS8r3Yc9W1m59OSShAajnhF0Kqs/qbMauLGvYoQheQP1zf797LkKZz/GMD
         yr9x1H/u+G4PhudYvBJEq7QJnaA8STHVZin1775AimX78vercJ5Qw/lpaiNjWDB6/p0I
         uruhJo4pJNxW0YGemPx7CqPej31IbfZ65YKUi6SnuPC4/x4kwAPYAHGPD32GWNXZQHgK
         I5cw==
X-Forwarded-Encrypted: i=1; AJvYcCWlUz7PXTdry/rpk8vWNfGEzTn2xd3Q5ods2+/4N/l0HO8PAeZZh484xSGr5n8NNfrBxBb/XNFWal7V@vger.kernel.org
X-Gm-Message-State: AOJu0YySFgLXIel+JxwHrJwHKzqP8E3NZn68IqFRBNKXRBsYrEzhz8F1
	eyft3Z8CDbhXH+W6XPYSPWxfV9r4zjLImKG7badjkcaCZivF/pkhCizzXlt+/PNFLFG7Ck5rFUq
	n8jB5Jdpe3uUuUfGAD64HP3oQzGM/A0sQV/rxZ/GhsP1lmB3tBPau7hZ/aMPUnfAvqbrHNRrp
X-Gm-Gg: ASbGncs9I4j2ocPXGqwNviakU+mbpzGto82bgrejKx6uL0EJZdZE5zz+MVSRF+pSvuj
	hXE4G/+aidLgBEOAcAgBqsuWcwayEQQpcNs8z69z4dnskYD8maYhEN2GDRieNjIGzBFZ9EZ8t2A
	KTuMbm1o2NGtjHyJRvCF0EyneBbb83Ggh7KqH/zfZjSRJdMsKmKYvbkdaNPTPbQsX5/NDzXyeIR
	pciVCrcyQs2iczX+PpDqHqJyCFb/tdB/Vj+rQ/DbOxlDDFun4yde1qogohBOw4OAmfhVOdLGQ9P
	V5kFqODk7caZ3EQ1Sv0NjPAbZcBzLlMK34w0aWXeqd/HXxIQwo+NntJ9LQB+ETwZUJmBlrPhWIi
	NqvKx1G0YVDcWfYi7GDoinw==
X-Received: by 2002:a05:620a:7012:b0:862:bd48:923e with SMTP id af79cd13be357-88352d9a2c4mr2163599585a.4.1760435578880;
        Tue, 14 Oct 2025 02:52:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnUhF01Zofq6EjRpw5993//+lfD9xui8peDVWDyOkLe4ZPEIW0HfK9WyJ8gfgXNrAo6KOw/g==
X-Received: by 2002:a05:620a:7012:b0:862:bd48:923e with SMTP id af79cd13be357-88352d9a2c4mr2163596985a.4.1760435578438;
        Tue, 14 Oct 2025 02:52:58 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d65ccfe0sm1114443466b.25.2025.10.14.02.52.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 02:52:57 -0700 (PDT)
Message-ID: <509e9902-2f74-484f-b5ca-e1605a221004@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:52:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Enable DisplayPort on QCS615
 Ride platform
To: xiangxu.yin@oss.qualcomm.com, Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com
References: <20251014-add-displayport-support-to-qcs615-devicetree-v2-0-1209df74d410@oss.qualcomm.com>
 <20251014-add-displayport-support-to-qcs615-devicetree-v2-3-1209df74d410@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014-add-displayport-support-to-qcs615-devicetree-v2-3-1209df74d410@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6XYi54OH8IXWNkmNu0PS9SzdZ2C0fy2w
X-Proofpoint-ORIG-GUID: 6XYi54OH8IXWNkmNu0PS9SzdZ2C0fy2w
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ee1d7c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-JAsjFMKCY2WfoXnbYkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX7g5zYKKExetK
 sOAqRylOHE4xGRnqz4pTgfKyoA1uu/0ZG0ak0PtB0Num56r3STwt/doxB7IqINK/JLsOYwdnnX+
 saxIrcefY2lvD1tabGkND5iswbxTJ61P+hrjbXmCCgrOmtmoFxbnC5zyyp7hM8jwqbqutf4kZFx
 usqIl9KR4yxfsiLCTtHJIIAw7WAA21iRFkH7QLrwS6Eyszy5J65ZobFJDN/3fqYBLxLQNhM7dT8
 7ehGdtVjtpKLzWDkrcsu7ef6QB62ZpabJLoUoqNQijuGe9XOYglbTE6+NUfsQp/Cc1ft/GMG5ua
 TbWcOSZYJxAGuFb4M4aD6p3LY8CG+g+2StyXjFkIviHgqk6HstapM3YxTF7GKezsJRq28YZb31d
 8JGZZIvMxSYG7yEFYBHqWySijaaqQA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On 10/14/25 11:42 AM, Xiangxu Yin via B4 Relay wrote:
> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 
> Add DP connector node and configure MDSS DisplayPort controller for
> QCS615 Ride platform. Include lane mapping and PHY supply settings
> to support DP output.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---

subject: "qcom:" -> "qcom: qcs615-ride:"

[...]

> +&mdss_dp0_out {
> +	data-lanes = <3 2 0 1>;
> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000>;

No 8100?

Konrad

