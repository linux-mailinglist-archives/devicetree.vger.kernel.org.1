Return-Path: <devicetree+bounces-130430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7549EFBA5
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:55:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 895DD1890CE7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8BCA1D88A4;
	Thu, 12 Dec 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ImYB5tk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF901D7989
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734029543; cv=none; b=WKtdPu9M5q+zBPLXWfpBv95NfOV+PTPmIXPUOkg7HhlnrE9ZlrKRvgcjnO3UCxgegcYuIY9QU/BaaOYMe0hpJzTj28BdV8DQU8Do5HFVmH8WQP1gEUaN1qAtWtdCGKmYAtga1Il9DfFqlaF/YNZByFm79y6NngV3xFlOzPPQfws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734029543; c=relaxed/simple;
	bh=X7CqOhvCVQxAW3TPflUNlS90D5V7WElxwjK0lBThANE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jzOoRK1Hh1T59ZSo4YxSjOsW1tv1ncIIZTJhiOY0+mCU2Sf2enYAiqVCxm+29w8WufsJjiLL+SYz43780N2oep9upN2r9ZgD4sbknICXBiSwd6K0FGbkfii7smocQoHGwo2WFxSmu2OK4pfzBdB+lzh5GwVLOR8cKASS8L39Rhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ImYB5tk7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGMNM4002233
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:52:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pbEKu8regyq0HdAdOVRdX1l0++CUeLiSYM31GOw+h8g=; b=ImYB5tk7Bj6TihYK
	6fB5TmdhG3/aVMHTrKHH9rRYM73cgQOPhB6Q8MjIyQ2CN31OEvMrz4gaPX70fiwY
	60BP3w4FkTYsuWG9OCHSwvO2agm8BwtUld9WEE5Xed2cZ1oyFXhV6r+B/nEPSKL6
	ohsqsxLDe5GJK0JPSqOvE/N9Pp2JkGsQYu3jAuNd+R43kxfAtDbY1MyuHtnxr2FP
	D2shxkoMchg86J7CP4ehR3/qqJf7j7SI6hQetZlZD+IZZQjsEWnkeXgKOK67PsUd
	EKZw5UXkmrLiIVv+fLXEMtK3MGAQf/I6ho5emhVsCl4QCUzBnrn1PvudaaTIq9js
	t24z8g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43eyg66fs7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:52:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a437e5feso28531cf.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:52:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734029540; x=1734634340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pbEKu8regyq0HdAdOVRdX1l0++CUeLiSYM31GOw+h8g=;
        b=PYO7hcKmHmLNph0QmGcTZuA00H9+/XIbfoSQdFVgy3hiuzmmfNtgngGodphBIfAH9f
         to/+UsrWCqrWYX3DihuIXFV925cVSK04nULJIv7VM1QKoSzmsOyQ8KsSsKqffHuh9HVf
         h5pV3X77muqkby2uyzN4DYX5cjNas4JrAljr/rUMNF30/DaKA88h2x7vAOKGh3RBNFeG
         Bp297L7HpE7TURrkKE6MnfF9fSs6xGdNAY7CCVH1/1ef9bBWz5oih+4RWGKGxZ0rrkU1
         ZV/+vLP5G087uUzD3PCAUhooXr5sUwFI2aTBRs/0Ws71YvBLAnade/aCwKF6UYosWQHr
         /MfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvrdexgBSJc2rR7yCMONH4zZB/ifSGdY8uGZJaaORHSexRMqe1rxoiItc7KPw9A/unCqzeQxXkH4/3@vger.kernel.org
X-Gm-Message-State: AOJu0YyNqoPnF00AU5G7Wnoukd6nUoPNaK+ZkBG3DWy1WMmYDkhqMDi1
	xeM+YuF0YWSbR0/bd4S2At9vGKbOoLg1K1cCvmjfrWzFf6QvZDnCCwKhwIemhK/qZ1CxGqCE57P
	/x4Qu06XsOuEByNWNx7KOZ35Dh7cVLiZ6zCK9EmpT7CwokSowynqm9T+xNZPx
X-Gm-Gg: ASbGncsusMO1Doo+G/2Nqhh0EJZgmJj6ZSNjH73BI3BCl9WhJw7eOdzaMSjF4wXX8S0
	on+4+fRjMTVoncdCCoIeT2RSYU7xNDIrxNmXZrrKzjOfXaEhib4hoGbQlLfyk9iILVGAPeAJEem
	lNyQ9kY5CfbT0Uq/u8ltGSkeSzwL3GzKyp1v0LWXH1UH07qLvjmLaiEvcvqRXN9AIGljyj5tWB4
	w+8t66guctzD8HoHzL27JupTwS7Z2wTkr42R+FhjoT1sVvhvt+UzA5evz2mCoG38AdECIsv5ILc
	qwlJ+yxFYI8+bSDjPnKe9razMTnH2ZOdbx07VA==
X-Received: by 2002:a05:620a:1929:b0:7b6:ea67:72e0 with SMTP id af79cd13be357-7b6f88d9debmr73902585a.4.1734029540167;
        Thu, 12 Dec 2024 10:52:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFsPs6DP1+cK7oGJeogjTsBnI30Jp6S92XSRdBy8n0cMgWjsVx/7UX4GSepqptWmHhCzjGG8Q==
X-Received: by 2002:a05:620a:1929:b0:7b6:ea67:72e0 with SMTP id af79cd13be357-7b6f88d9debmr73900285a.4.1734029539727;
        Thu, 12 Dec 2024 10:52:19 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa678f0ff87sm708277566b.131.2024.12.12.10.52.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:52:19 -0800 (PST)
Message-ID: <5571c654-f242-481d-b1c6-233fd7197c0c@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:52:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/19] arm64: dts: qcom: sm8550: Fix CDSP memory length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
 <20241209-dts-qcom-cdsp-mpss-base-address-v2-8-d85a3bd5cced@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-8-d85a3bd5cced@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: i05D-tycZHpOkbzIql72GSk1mgxj_VQB
X-Proofpoint-ORIG-GUID: i05D-tycZHpOkbzIql72GSk1mgxj_VQB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 mlxlogscore=870 phishscore=0 suspectscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120136

On 9.12.2024 12:02 PM, Krzysztof Kozlowski wrote:
> The address space in CDSP PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x1400000 was
> copied from older DTS, but it does not look accurate at all.
> 
> This should have no functional impact on Linux users, because PAS loader
> does not use this address space at all.
> 
> Fixes: d0c061e366ed ("arm64: dts: qcom: sm8550: add adsp, cdsp & mdss nodes")
> Cc: stable@vger.kernel.org
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

