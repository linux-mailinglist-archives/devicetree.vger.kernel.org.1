Return-Path: <devicetree+bounces-221345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAACB9EB39
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:36:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D596421899
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 686C82FB609;
	Thu, 25 Sep 2025 10:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oX9j66kR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1BA52FABFD
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758796423; cv=none; b=l2zBaDZXTGVWPQkSUx7OefEBvBDTwNBUk5xrH4oB4/NYNJptmsIp+yAa2Sr4TGqwMl0r1VqpEVUCkoKORBSi4NVqQUTlvNcrbdl1rM1BtywKvIHbkPRaO60w/EJEYXwlhjkYLSv+J7Y3mQ5zSeIuH4gUpfUxf9l6a6uiS8ihyhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758796423; c=relaxed/simple;
	bh=zej+0XcA4O/KYcb+DxmZqeXEO1sCOIfJbhlYjGA0ZhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n7YV4/SpMmp5AH54K9lwLZJz5BLkPjWbdszz42KAf23badGZZOM1Z5fsZO4+5jljswFQQqMj5PKMi1TiWcMsPgI3ANAV6icn+gVVhBjGFEjwU0ZIiNaK8WWCdCE5t6yWBH2VDa4QYJGf1OP5+JoeNelwBCgzUUdu+TI7CTpoUqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oX9j66kR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PAC9VF017430
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:33:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UFRsyLmJIufwOkTJA/XGc096S5ZP7JZFqnfjB1m0eAQ=; b=oX9j66kR0DA/C7uL
	WK94bNc7c3fmG5aGmUyB37OJkNWcMTJA9sDRcFMuoGcYYBLk0GZGb3d+np9si8RB
	05eIQhISocD1HBqn4685OBFFQ7Xo1NLPqa9SJgrqUb7G9HbGq0azdBq190HCyv9q
	JrQQ61iQsJDeqBTK2StKjNYDQBqQHBeXpu/aF/gK4qH85bXM/MxaDenO3uh5Ngld
	WyZGyzrxE/YkuXAGSGqP+CqgPE0fh0Y1fqVCtJXDxNUNxSwIDtg/Lk5UchEz/gWI
	sjo908l3SLgTjM+E/EKDghyCryQiB/hvEmPvXTZOwIWLK+Cntzqr5TF9fTnTWpgA
	ZKuuBw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvk1368-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:33:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85696c12803so34762285a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:33:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758796419; x=1759401219;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UFRsyLmJIufwOkTJA/XGc096S5ZP7JZFqnfjB1m0eAQ=;
        b=ZsyOhDn9DxDj9SU81K82F2MQmX6bmN0lEnIS1WYyxwG8dQU4HgQagP7ai/A531zAE5
         Ha6tG+I/ri8rcQJiHARL50vxKFxILcFbp9+SpA2/4vqSMn4uGS5OzD5DXGvAtLVxj196
         E43n7ZWFTjAhkd5TeAoH6/emuoyOXVPc95xd/Brm/YPlqpIpxoOmUfsCqQjw7b+WmTSY
         5ijuv6XZmgoSBWfBrBBiDajNzFGXjjW6Wv3yIJo6ss0aDguuLlVBAUrjf5PQC9EECM1x
         PUeFO+Kd6nWWBWBcjJmKWF7mrVtQJkCJkxOLWIRn5wosUcy6Ge95tZfWJp+09VGo2DQn
         deTA==
X-Forwarded-Encrypted: i=1; AJvYcCWabnV/jPTOKW7N677CYvashvIc+fI7N4neZcj/FIvrHzO1dfkswjhp/XNC7Vod64JDT6oGTTORBrWb@vger.kernel.org
X-Gm-Message-State: AOJu0YzqYeHOFS6I0Ao0SYngIj3EE4a96UgtDQDPekIonoGlpGEuBO+/
	9zyzFBjfyFtinVnklOI1TGqBG3JXFc6gsJpIOm09WK32FlbLYIPF8xdiaYZymHAHmCgAMEn7VFQ
	UVTFplQr0YMosXHQXj04FpYAu5dzqAX1+XyUPUP6yqjlA6M7tB1lrti5/62HnHBS2
X-Gm-Gg: ASbGnctRPXphtInV7DR7itR2qQCpezWX05dGCn37LCBhqhBIQ2Utgx1n7iBIi4i/t5W
	VW1Qo3FVhfuGGYxFXB8KAGrfpAO2umQaCXzfxjG5i0qhCZOg/0D23wluz3ftTJrodqmwNDfm0zq
	Si9uWAvDZ9e8tMEKmQAnWYKsYo3hOHi9yOCH0UuYnkK2uaKq/FX+tEp2MmNABN3IFhQcXG+20A7
	j1bC+U9DysJxFzyKlL77AdtZxR41cWJm+bvRs7PtrxZfpQPr5SQgJYXSqwYFAJAwnyuIdBwqkFY
	yD9jyPS8IawiRy6Nar/fMEQatbYjA+b/dqFR5TcEAZlonsHNSrPP0jJqcmG1WkNVqMHl3x2oU1J
	4sfbr6XIlmsK26LndsKf+jQ==
X-Received: by 2002:a05:620a:7002:b0:84e:90fc:9bcf with SMTP id af79cd13be357-85adeb4c7d6mr258397985a.1.1758796419308;
        Thu, 25 Sep 2025 03:33:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHua7CpFGuTkLb23y689m09dwFCWAXFmDLjmnYAHIVDng1NKtA47v+/EAkxhQQoBdLLeIRjjg==
X-Received: by 2002:a05:620a:7002:b0:84e:90fc:9bcf with SMTP id af79cd13be357-85adeb4c7d6mr258396385a.1.1758796418723;
        Thu, 25 Sep 2025 03:33:38 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d11ecsm137737366b.21.2025.09.25.03.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:33:38 -0700 (PDT)
Message-ID: <3c886104-937f-4d2e-ade0-fd525d56dabc@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:33:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/24] arm64: dts: qcom: glymur: Add display clock
 controller device
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-22-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-22-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: uGqe8JsN6VnlKLaCyeXxoraWSFEhg-6p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX5nw57ncPVIss
 IdVnW9nQzDyBWuR+ZJJh957YBPbm6DzuE21wIcb6EcwBFMI/d5Xkz7HbLO2kpZGnKbVR9NYgYJw
 d0nVODsVaPgGZ1avkss7ArbVYtThJwDvI7K5OiEGcebpq2Cw2PEEmGaNaTko/VVTvCjfxNvniUA
 azKQz9vWiQ/9Bibx6AO/F6F8prwc9Twq5ESanfaKaeZPbqwEKUjLO+B9gB59jjeA27qcs1CJoUT
 zzbmQ3m1nGgLUzUETfCm15u86I2T0Hgeha5Nn0xI4V+0YOco7wQtfuQwXlbmim9Y0g6bpXyGnow
 n1D+1JNng29arR1x81qZ9a7qZBLjCZqQ9qsCOOpg4JbVj3XujgLk6iHTaOteVAixyR0WbX4fUs+
 g3bkMOgH
X-Proofpoint-GUID: uGqe8JsN6VnlKLaCyeXxoraWSFEhg-6p
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d51a84 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KtVf0pUd8HSTWu7jDnYA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Support the display clock controller for GLYMUR SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +		dispcc: clock-controller@af00000 {
> +			compatible = "qcom,glymur-dispcc";
> +			reg = <0 0x0af00000 0 0x20000>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&sleep_clk>,
> +				 <0>, /* dp0 */
> +				 <0>,
> +				 <0>, /* dp1 */
> +				 <0>,
> +				 <0>, /* dp2 */
> +				 <0>,
> +				 <0>, /* dp3 */
> +				 <0>,
> +				 <0>, /* dsi0 */
> +				 <0>,
> +				 <0>, /* dsi1 */
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <0>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
> +			required-opps = <&rpmhpd_opp_turbo>;

Really odd!

Konrad

