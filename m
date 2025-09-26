Return-Path: <devicetree+bounces-221750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BF1BA2A43
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DD7F3A57A0
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1DE028B4FD;
	Fri, 26 Sep 2025 07:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J3qVcvXY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED482868BA
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758870574; cv=none; b=nAinHiVdnSeSl7Q8YNqsAPW07yT3DoxZyqYn2oA2331YM5KL4Zl/FBZ30uHUmpZaBho2R8NsH7OU5gBAlhelm3CZFGuiVSJ2R6ElwHFuArzk9DQlHwU4sfZJw96fioOUa8DBVeUlcBVQ1j4n9wSizoiG9PcchcDEV+O2IB4o888=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758870574; c=relaxed/simple;
	bh=TgPzTPR+Fe7zC5llvHWJQYlWmW4c4SjRxa4PU0/hZn0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RCXzQIoj6zDGB3h9H7dZkWHo0Xupc0vREnNAKl+UKL4nuN8qRMM6lFjeWK3vfcAyuMkNlHW3giK4mjdyaMgnb4l64eJ2vsUEOHTgyflPh/X9l8W0VuZp1z8AzaFdubfdk1eC4bjm1Mjlu9gKijIcx6PXp+7qUBr32czM1IDA88E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J3qVcvXY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q71dfT025387
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:09:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FiMzZ4vz22Rl097tXf+wFhXKFt60cY1ODkrhVnPMDCE=; b=J3qVcvXYlUuoRVqy
	lRjFU5FuKBu0X9L67bFI4kTqDbMAJtUQFL5w7b0crDrJwycWq4V0hzLQ3S3W9wFH
	UF+MnnXfmDNDWtt1o235ygNStK1U5hD42Y6fBUvampYbuMB+WtKMHWnhVhIcEzLH
	yyV3FK5FfJNfT9zGf/+7dwaaRZCHmwrF40yLxKZ1/Xppj3lCe5c5/5FtzD7mc8gr
	cW9Mex9W/kS1uvPV6aMZz/HHBqrjDBMj4qw7VRGvOvpy9FvppBLFoc9DMSkgnizo
	Ho65NtBMoHW6X8Ie8sprgpmS5ImuV9Gt9PDpYv6ccm0UNajT+6Ofmc6ALRfjQ4s7
	sOTCfw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u1sth-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:09:31 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-244582bc5e4so20980735ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758870570; x=1759475370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FiMzZ4vz22Rl097tXf+wFhXKFt60cY1ODkrhVnPMDCE=;
        b=QbLe4TUiXU871zEPLdB9FO/oXjxv8bADQArcfVkDREIj5NAwH9wBndHBTj5RYGnwNy
         66+rp80An6LQVUQ6vY/Z9VnGzM9oj4/OgihMz1qVqov71Vawd6QRisXQ3r0GMBaQ0FET
         D0SyDw4ajbTjqiOVNGcTl7mdafQVHgMvDLQtMTymEK08NhTiNaTYHSYkZ8L7Cd3oEwgn
         SoG1e4e8ZYqnDd4YbOPDeVEx8lbVMEt9/k/z0km62kjmfFHI7mYLHrKuD7wzSZvMZ/2/
         rnAhPfN6h+Tofl8vvwjS6Oem9iNmQogFFOvoNuIlJeE3yEWV5WOUUF61Wc/pM/J468VS
         mEUg==
X-Forwarded-Encrypted: i=1; AJvYcCW0LkZ0yAGlt0FnrEePPxmOQK77yujzxS5vcxkRda61lCXAiyzzGGM97z7SkQkIDlf4NPNsSXmtdH79@vger.kernel.org
X-Gm-Message-State: AOJu0YyjFUoQOi+LeLdXByvsyxDMZrnDtA3kucgCQcU5Jxw3TyU9teGO
	3LkyHQNzE86KQLOVIbdkhy0I0Rd+5zivAwO0svScAae5W0sYNWvkWe3kX+8GUKO/PLjNomIb9d1
	4ioRH23MgqoyMDsXR2GR5X2M98EFgIPQ6rKWC71WoRAD+qKDNJcerzaa9kgACiMbY
X-Gm-Gg: ASbGncuxRsnjiw1ilHzLHWT6Vi0GTd3nmuag0Z8GYYTLAbDN/kKsZeGwRtuAHWRWoVj
	PXfiddLMMUS8fFhjJJreva7IDPiZVRUgFqewDXErKYTJkg3g78SpZGyNlCKAuMnySRH+lHdfKT6
	QWssTsvbWoYClm0V3KZ6w3+Pa98QN3kwXwHmAMnBTTlYapYKlV4PlhSGGojW05hRuDJd/sxjy3x
	njzcqwkf5hsAJPuKNgWBn7XGBOpTtu2mfgUz3otF5wTh7r2QVUxWRFjsB2Yd5a93UvzF4pc6ehF
	n4dHai2jxTgmZninAmjk5+A/w+OMsf5I+AcG7XqtSxMt62rij8AZSGZvTTzCUjh/HrZO
X-Received: by 2002:a17:903:32ce:b0:267:c984:8d9f with SMTP id d9443c01a7336-27ed4a0dba3mr75469075ad.24.1758870570343;
        Fri, 26 Sep 2025 00:09:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqHGrxe8xhPkP6vuNLzQiWx+Rm84GN1CL+4+QaWX56Yg2h/x7LJeftQZFHKJ2KkwePgdl9Uw==
X-Received: by 2002:a17:903:32ce:b0:267:c984:8d9f with SMTP id d9443c01a7336-27ed4a0dba3mr75468445ad.24.1758870569854;
        Fri, 26 Sep 2025 00:09:29 -0700 (PDT)
Received: from [10.217.216.188] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac94ffsm44250615ad.136.2025.09.26.00.09.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 00:09:29 -0700 (PDT)
Message-ID: <b0541564-3ff2-4cfb-84ff-1d3d59449f86@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 12:39:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] dt-bindings: clock: qcom: Add support for CAMCC for
 Kaanapali
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com>
 <20250924-knp-mmclk-v1-3-d7ea96b4784a@oss.qualcomm.com>
 <4315205b-5320-4a8f-a707-45f5eb35ae51@linaro.org>
 <8c558ac3-541b-47c4-be4b-c9101997de7c@quicinc.com>
 <14df3870-6cb1-4e5d-9c4d-bb8acef8c594@linaro.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <14df3870-6cb1-4e5d-9c4d-bb8acef8c594@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: uqR4cMYLmD13emXGCBBiZfjN_LEle5wm
X-Proofpoint-GUID: uqR4cMYLmD13emXGCBBiZfjN_LEle5wm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX8f9sTvcifRve
 4zth1WbNqymUZaPbUWKssYFDhT1WvkYC/tLmUKhoRSndwDduBIN26SczCbSTIEDJNAxvryRMa6H
 eXU1sw4+dsNFZjKFS/Xr00KhOF0AFlox6eru9cBlEDXerj6WOR2eZQZKaqYpGWwm2C/AbWAH/e3
 wlA/DgKUpGvywfoHh/SMcbTBHl87dcQMhqVKBUNAFxZARPNT8n3ct82FZtcd9Dba9++nBcZ+EkM
 oU1zZ3VckdkYjrLy4Nfq0K8Si3bgmJNUp+ijwb/eyMbdnD9N8kJ92JIDF2E6PaeBw9Qtq0G515/
 zoB6LB+mrN0JldcWvtnrLsDxBdr0gjxnP42o9V/NBa1PaOuN/WJzZFBNIC3gshKH+fuZeq58Ite
 v7vYHpIjQnziX6WbqFcM6maDpHgvNw==
X-Authority-Analysis: v=2.4 cv=ZsHg6t7G c=1 sm=1 tr=0 ts=68d63c2b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=hVoh_Pt7g2FPdimnm9wA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171



On 9/25/2025 2:31 PM, Bryan O'Donoghue wrote:
> On 25/09/2025 09:46, Taniya Das wrote:
>>> BIST == Built In Self Test ?
>>>
>>> Can this not just be put into one camcc header ?
>> These are two different clock controllers CAMCC and CAM_BIST_MCLK they
>> should not be in the same header.
> 
> BIST means Built In Self Test ?

Yes Bryan, this refers to the self test. However, the hardware does
support functional clocks for the camera MCLK.

> 
> Is this really something to be upstreamed ?
> 

As this block supports the functional mclks we need them to be upstreamed.

-- 
Thanks,
Taniya Das


