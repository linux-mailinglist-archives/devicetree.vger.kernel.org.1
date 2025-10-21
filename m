Return-Path: <devicetree+bounces-229265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB01BF579D
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 11:22:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE014482487
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36B8B329C6A;
	Tue, 21 Oct 2025 09:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PPEXYGax"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCBA246762
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761038517; cv=none; b=nW7onlTUJECo7nJPFCpIQyoN8Tbjf07ETAGx8J1AeKSGJxfCvYUyIwk6X+3Ycv1EbIB1NE4mtBVVIdBFayOMYOq7KhMHWyv7AtbX7z8oU30yveQNCIdes+rmZho5jlfvvE3Qww/9K6vViy+M0uNN96tBL/Nqfy5LjVLR4ijGlOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761038517; c=relaxed/simple;
	bh=kFNf9brByz6v5/4GXE00UOetHqmlffTFffnrz4dzNy0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TRpZqm8BQGQjUB+9w6DfsE8fowmZwccvdFaPE+oQobA/4R4YhvHtY7CY5WrEfL7TxXcGUrFGTZi80YZruGzlAt6muydIfbZL4/WZjhLJ6c07B1GPILyloUHg492RnDTstvBoaS7frTAMitbshrxCFhRTNVJ9X2ledDCiyUadUMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PPEXYGax; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59L8DbvA024737
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:21:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gtYgfBJiMiBp1ITu/OF7uYQwL1eNKdtPSXCX6k15khQ=; b=PPEXYGaxg6HgnYS4
	pID3Cvgf1vrHAo6whXQSqPz5HEYgczqmuNMybSojMbxt+dkucqgzJoodUEPOlL3s
	l4xoc7KNPWDo3VYnt+31ekIiDgoDWSiYvzgLo5P63VXkqC1l5fMPvlkgl4MxDBxi
	cNvZlhoDSaSWZowEbSlJMTLWXqf/gRmCz3amorDn1Vf/06fg1kPx+7SCP8CoZymH
	cs1QYfWEXUxbLPvpJju5LR62nXAhiAmvVsbcLZbhNoi2j665vhQUu9nQys4RA30E
	5nXrPO/7LLmt7dn8PXH/YivfNAJ8GnphdP9FyLr8u8LQfdUJlh82wWyRuwUDdUwV
	eJDRKA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49wsws2h2g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 09:21:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-883618130f5so262547685a.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:21:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761038514; x=1761643314;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gtYgfBJiMiBp1ITu/OF7uYQwL1eNKdtPSXCX6k15khQ=;
        b=CUObV08mLqduYQGalH6WuP828o5r3FG7RdSxH4XX4Xp9uq/clU5MEB0Zn6j9pQV1zt
         SDkPJXYoqU5ut6BUgUGYop77GitcskbrHOwJ2uNIymw5x0bP9f5421k3pmRMrFBabNL3
         xjLk+9uUXBvpk11FbDpt4aVtIzc6MC09srCs+uUlcGkpC1e5tixj2jSj6O6nPMk8djZF
         QsSOCZTfM9hzP56oncSNg+rZQiIDgxIagixGByF65lMWEif61+fK02j3mUD1tQ5TXkL7
         UmgnoSFQgFyzepzIJYh3kY47IWsPQxpSKBvTHnoTxa+4J7MKd2AVcWbEyhSK829YAQQX
         i81Q==
X-Forwarded-Encrypted: i=1; AJvYcCXsmmkEaXOMa9rk1TqWCCujxiFM1yUHqW6kwFi2KX5wVH9/whi/C1aEnsi7fo+Vlr9FThR6bXIZxSLx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxlc2kbzI+pspDRzfzaJ/e49tktKRuj85gRUVso9CEwXXNp2l4E
	yfmas3LgAL3hZU7FdOGMqDeXTHJ5LHbnBMpOeXAthsbC0NXtl/wtWHk4QcFuJpAC/bGqgwH8lY6
	APMol2QoT+c/tghuhR1ge+wrWahfs4+4j8BIhermkw3dQPlVbavrd832ADrMWqZUt
X-Gm-Gg: ASbGncsDAV3rnH5YBe/DbPCyRb2Y9ajmMPymjrAhoVsWQ9ackXiqQTi8SUGp08cYC/j
	AxXwppQSswslenWO1C5qSQJkI//vGo9pn3EUQANCDRkxF5ow4ycgCc1i5qEkFHS4nZpKVJBW57G
	haq0ecA62v0229gXn+x54bsEiLZgjipJET/rbBBtVWMFVyuxSATxsSnKtBDP7nK5qddraOFHv2b
	hBuvh8rFh1qsPcAj/G6zNl5JUVKbZ78xOOvU5uS2n3ETG2s/L2S1RVKlMDwZfxs6b5zH/gP+oVi
	S5YXh/a+kEjs9B26VEyMujrxGiXlgWw4V0K3Yso5GeEio8fSNPf1YPBjZTVRN2z7vteRN0nU7WC
	Nltb9b/cm2uB80OEPwxxicAJp59xHVnjzM6xIo5XsrFPxCTnGwgMp5g50
X-Received: by 2002:a05:620a:4556:b0:862:bd48:923e with SMTP id af79cd13be357-896e1f22803mr204772685a.4.1761038513674;
        Tue, 21 Oct 2025 02:21:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyRgyrhR42atC+DLLdSulKMeyUrebbaa2AH53YBYgQ1Ndfz9lEI8czuvc0fAlmCABfGCmvBg==
X-Received: by 2002:a05:620a:4556:b0:862:bd48:923e with SMTP id af79cd13be357-896e1f22803mr204770785a.4.1761038513109;
        Tue, 21 Oct 2025 02:21:53 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1010151266b.31.2025.10.21.02.21.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 02:21:52 -0700 (PDT)
Message-ID: <7bed8dcb-279d-4bc0-bc9c-706ab598bb2f@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 11:21:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: qcs615-ride: Enable DisplayPort
To: xiangxu.yin@oss.qualcomm.com, Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
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
References: <20251021-add-displayport-support-to-qcs615-devicetree-v5-0-92f0f3bf469f@oss.qualcomm.com>
 <20251021-add-displayport-support-to-qcs615-devicetree-v5-3-92f0f3bf469f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251021-add-displayport-support-to-qcs615-devicetree-v5-3-92f0f3bf469f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIwMDE0OCBTYWx0ZWRfX/7igpazQiUKU
 Jj5xepUCFoTHA/H9ptXQaDrM/s1+vQrIpUhsPuBhXGbWG0yMz4yv6uYnB2eMbITHPGVUXmA6PQf
 xEEuwFNztliXUc95zzuir0m1+1xYcCEXDT6Tkn/xwXH4GjRicGxgeU7e4Wq286B+gp1l6eSP5BJ
 59sPk+aXpkmWCSe8YY4mkwBHKF0M7PnHmB7Vu4IjOOby1/SVDwlmWg/LWjOn+JT2t7iGsDmogam
 J8GkOaCv2xNS+cUtcb7ihcXX8VWJG4Wm+9Z3/gMCKwRAr+WrXh77PSQHXhpxmme9dFmngb8/7w0
 OZAo/u37ENurHeRbhNU0DcYLcDaFJMXxsWyKUVtZJjsjM0IPaxm5k5/UvlnRN+tRHnOAJPF1aAA
 MDZraghQce3DX4qeYkC7ibcAhieuaw==
X-Proofpoint-GUID: XOClpwEisSIkRVPPeLL2ezylYRsyyT_8
X-Proofpoint-ORIG-GUID: XOClpwEisSIkRVPPeLL2ezylYRsyyT_8
X-Authority-Analysis: v=2.4 cv=a+E9NESF c=1 sm=1 tr=0 ts=68f750b2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=jvkLkXCew81jr3KDB_IA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510200148

On 10/21/25 5:18 AM, Xiangxu Yin via B4 Relay wrote:
> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 
> Add DP connector node and configure MDSS DisplayPort controller for
> QCS615 Ride platform. Include PHY supply settings to support DP output.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

