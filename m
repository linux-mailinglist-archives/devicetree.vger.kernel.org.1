Return-Path: <devicetree+bounces-236029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 542A2C3F5E0
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA4AF3B2CE9
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5F522FD1C5;
	Fri,  7 Nov 2025 10:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mwaRH2oD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="csrlCJx8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBD513C3F2
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762510579; cv=none; b=Zhd7UNKkGys9q70S/kG/ck6BUHdF74JLrG1p2datLz90zGAmBwHfY8HF4nWpWeeDzkfx4iVu/b3Q7Gu3Iry7WMog27Bxk0za/yqx5lbRZWhtpL6Sgxld3vcfhsmu2nBT3O31T6KI9TYMiCb8I9dS/iSwmXNmtuUnHmCJ/lEnoY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762510579; c=relaxed/simple;
	bh=oih8H5ITFiYWo3oxH32M04ZFkQkCCAn+ReSdhjKM8Cg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HnLclzLMhklhWAL3WLtgQRnqJrBUNEg19Mxjxe922Hd76Xmq43oHkRoZboqDjhOK9xqya6PSeLbJX7iUbw8BNEex0squU9j9VOHVmTGPgchxqIvWj0JmST1kYNhV2YzUhYRipEULNms7R5F98SyEd65Rih1Ps6O3eARd2tQErgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mwaRH2oD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=csrlCJx8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A75Cdc7567792
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 10:16:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oih8H5ITFiYWo3oxH32M04ZFkQkCCAn+ReSdhjKM8Cg=; b=mwaRH2oDv2CcoJMc
	NA2l5w35BKpHWBS13QukdhhKCcWkgVLHD42tTS65+/EBE5Z3E+Shhze9iEIg4+Gh
	lcSZYR1fEjaA55cbTt7py5LqjmoK3F23eruCUGy8o+1zSuHHYRH9pfOW8Gvlzo5V
	X/TJthDRC+KfBygFe4dP9veAzKqFb6M58JjxPAkZDor+uz7JBu8C3wc7ugAeQ8/3
	G7HNgCLseSmTyrwba2fTrI0YO0fDk30J5muTHQO/cW/0BLHlR2SU4zksoQNIbxJv
	6SlUZhiNonu0OEpOFRzYbHZLTiHkKfwwje7DDHG1eyD2XG8cmw89beupGeps1C4D
	Xe0BgA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a905qjktn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 10:16:17 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8934ae68aso1704871cf.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762510576; x=1763115376; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oih8H5ITFiYWo3oxH32M04ZFkQkCCAn+ReSdhjKM8Cg=;
        b=csrlCJx89eid+UjDO/NS81c8lxbFLTX+iwX0gc8UO7jMnSzWH+y3HhVzbD+nNz60z8
         RnhZTDusmET46k90ifBJKzJBYgw2gjM334aglp0XenahoAZ/skyskhaf2vA6Tze6AUUa
         w2nK4MicKpyd9o6nX5DSrb19lBhiKJlQptMyXHeox0YW9jeGa1w7KANXAPTbgdHbNqKv
         yMzcGCyOp7SuUgVC9XVHJOmJ9w7kusdq3FhLTKonLx4wX8300SVSuaUyv1H4YSWCe2me
         UyS4NqriBWyr0HWil5lxoenXRVaxvkYA6SWB72Rhwzbr2/AhgiWk85xaNRpqeuKtUEUl
         ZCmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762510576; x=1763115376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oih8H5ITFiYWo3oxH32M04ZFkQkCCAn+ReSdhjKM8Cg=;
        b=JLYfVWab07DOI1O35SOayRwE9ONJ320IQlqDxqSvPGYDOUZzTlMshvVZSkEB5FoBgq
         DXtBdbwtjHtEOVQvGw7RPlHaSmpu46X3WVucijQ2PES1cv8rSrC5nBMOXCR3b0fPrXky
         EOJOfLfyj6xMY71ylyD9p6/khZPWhTX0V5dhlsVjSnzoT7qz0jpWjeyVxytSBUtLsJv8
         4apvdZgZtcJ64g+GCMHVDkt6YZojfnMqr9+zTVgKcnF5A1yCu3bZiK714RXb1Y+7U7xK
         mIRgwxbT04X6QrTa5eaOEKLjPbN5TOrIggAphdiuVikfMCZFXS4adA9Elz8Bt+K2ROC5
         Ufbg==
X-Forwarded-Encrypted: i=1; AJvYcCWPcRrBnHVJ8zsVB/DOZCWV5vcZME2U072V9cV203ATaOHnhSsai8BQ3WH6PHqSgHkhEsmcwGoUtnpC@vger.kernel.org
X-Gm-Message-State: AOJu0YzXqYFIi5v9R3YW7VxE+XEz6qFz8kcz3hZzlj3xKAmGpRwMABcG
	gJDmYSZW7ZNFf7rn+we7hdcWoXj0FbHRYOkH08L/VjNPnCWWgrJ+o3Ci/XWCqx3H1S4x1rhD32g
	TUKrVcRtihxRessxIv4Wel6u/gvGU4ljuujPKmM13f2vxbpf4y6EQ3613jaHRJyK4
X-Gm-Gg: ASbGncstKe2GeT9LR9jAy9pa4QUeOrd1A5dxT/JX9zz7VCHi4c/8/Hys4ReAGVoloxE
	1x13/sADjXj/uWNR2ehP1zbYv25STO08XCibOEEFyWBwwMPELj8xF5jCXaREEBICYpzcri5Fv78
	CWqNSyTBgzm9LTKmsZonD3Rh/dHSAtk+2kx4BfaNYah+Cyy49ZGrHFGg9iiGKGB/WJXACsAqmUg
	vtzWsxO79LEj6D8SojBmdP0x6ImlHdFOnhx2qGyMmlf4crvHYrjdOd7BdCs9jkJLcKWDYZn0PWR
	S9cQOTzR6VzxT1/aJZEhB6Ias1yBg135ZNb2yizDh8utzeK56wnZgs7X9QXp+hlK3REa2zXT+QA
	acftWKCTdUY8zE57I1EHQB69PRiVQPYBKD20NdFvk82kgLdsAmnHbnYvs
X-Received: by 2002:a05:622a:134a:b0:4ed:2f2b:aadb with SMTP id d75a77b69052e-4ed94a844f6mr20123391cf.12.1762510576483;
        Fri, 07 Nov 2025 02:16:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGd62pbSfANF4jkGmXNMcRw44lphW1MAMAqba3HPT3RotQ8f1uUGg+2M6h0caCYjIIGfmBDzQ==
X-Received: by 2002:a05:622a:134a:b0:4ed:2f2b:aadb with SMTP id d75a77b69052e-4ed94a844f6mr20123041cf.12.1762510575918;
        Fri, 07 Nov 2025 02:16:15 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f86e808sm3677971a12.35.2025.11.07.02.16.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 02:16:15 -0800 (PST)
Message-ID: <5041ed01-c0a1-4c43-803a-9b2f7bf1f56b@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 11:16:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 09/14] firmware: qcom_scm: Simplify
 qcom_scm_pas_init_image()
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
 <20251104-kvm_rproc_v6-v6-9-7017b0adc24e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-9-7017b0adc24e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vUaL7gaABSA66CLYiiz0MJPwULRbGin8
X-Proofpoint-GUID: vUaL7gaABSA66CLYiiz0MJPwULRbGin8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA4MiBTYWx0ZWRfXxmqzGf1NmlSX
 zxykGHXUuBom2ZFJq7W6RpkG+uKGpxZrDiY7+9YXJ6/4sWHuauTFk3gzPNF42QhzDfJu12C/GeZ
 ttIgsZeAjIOOB+xwYy9ID8ZnqP7Zyfd2B7lmtWra2cjlLDhKtxn+ZG1rsq1pzPyndmMB/hGA3aB
 aIJuCEMemCx/a8NPw9erO4eaN4D8kwd9NPveoUTdp2WQQiUAC4AujemrFBJAx77WyxUP+yzVDgu
 zuoHhn8qbfoISJNnuE1XCW3aIf/yE+k2R3YmlmB1hjWIEWDXma+d1uZIJ7p70uJz5uAZtRlaptd
 7IOLXZfHJ98zBc2W5xqoWbtKI5skMjlR+uWBLM1xMlGF11qqUDIzxkogD4vegYKV5Nlb0ldL/73
 FxGjTYM9MqbFruqVVphjANG8riZzOA==
X-Authority-Analysis: v=2.4 cv=D6lK6/Rj c=1 sm=1 tr=0 ts=690dc6f1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JpbW_vvhGqlY3ahWJhAA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070082

On 11/4/25 8:35 AM, Mukesh Ojha wrote:
> Simplify qcom_scm_pas_init_image() by making the memory allocation,
> copy and free operations done in a separate function than the actual
> SMC call.

This would be better supported by saying "this is prepwork for the next
patch"

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



