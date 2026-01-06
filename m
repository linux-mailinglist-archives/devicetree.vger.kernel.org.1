Return-Path: <devicetree+bounces-252005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE95ECF9927
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 18:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A319430223C7
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 17:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D085433AD8C;
	Tue,  6 Jan 2026 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jIdR/F6b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EMi6HFSJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202E133A02D
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 17:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767719634; cv=none; b=btmqOZKRMiDuPQeTq+7Os68f92nChAWCXvBzlN99r20ykJORVFBGayGUuWUXQqDS3Hy4kArX5OQ0fOBRrJzT0dJRn4+uaM8KqlXggU+fIirsOHcQDfbfCdi3e3b7tWOGhwEMBerlUa1mcJahXV6pa9T15fl94N4tKtV0ZPRcJhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767719634; c=relaxed/simple;
	bh=T/73wbQhsnPCQWdbJBZXay476SzJAjgeFVs3Nure3OI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IzvZ3Jyaw1nQAj1qHEe5wS3kKT9kgfpqSzCH1P60vwprg55XB91QXlIyDEBKpitOxqXow4gzLTaVJTmQb4CCZ0m5lrHnK04nAzQzhyqsYV8TVvwv/eC6cQpZXCcSCzgEVdvvqpMt75I9dYvBKJ6qSn/9NgFk2F4rLB3fAlC5Eb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jIdR/F6b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EMi6HFSJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AgnEL1462600
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 17:13:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EC3T6rSFC1iUcR4kmgWjUhT3q9obgUoEQgmXTpBn8tM=; b=jIdR/F6b8h+2yG+b
	00G9pyDdzUCqhuQtyS6bDe6ewqVhwJXf25H5JpIXEI6dbN/rOJro5uQtzkr5eFDV
	9rxWoQlG4D1Um5aVm9/A9wuF5fJWq2cXiXj3Lhij8uhcGBXOVBrr9o93fXZamEBx
	W5vP5W/YnzmLv9FVzBmS9enF/k1Dfd6Wti7ett3uwZQhI07avc0aU6kg254iKLtg
	J1sg5sPh2jsqyTl5NIeBVkSi/Q97s2JG+xZ5+b86SX8c2XJurDCxJ0zuCyzK3BrT
	YGRnmwbC1KTMj2sb4+9CoBy9DaAdyk5jO6RKWl/WGIKUi41uJAbL/XHm2RcKB5w6
	O5Ojrg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm14a2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 17:13:52 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7d481452732so1947184b3a.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767719632; x=1768324432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EC3T6rSFC1iUcR4kmgWjUhT3q9obgUoEQgmXTpBn8tM=;
        b=EMi6HFSJ6fAFPydv76mGYgNmAMknFR6Y32a/0IBUdtXkMG5DL99KtqilJ5W6iUvb60
         TO/7rYqBVMK/Xf9hkQ6QvQqE9gU4F7sqfWhUsMuEznqP02MACcwfGvTtZnwmy191TNOL
         a737xDpqs7wzxF4J6ahvsHuTvanwfoaHOw6J1Mz2rYZrynRGjCTnjUa/sdP/eQTeS2Tl
         cHdEC+oDQnDJJrOap9yC0LZYTGOFG+mHDUmU1t/IzM2HSruWa18gpmWqt+00AFVlY9Ex
         fgVonoMmSFbKLCK9mbDqnWFkpyU3pApXVKHDNfs07O95pXmj+ukX7m7wamh1BGebKNTg
         8cQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767719632; x=1768324432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EC3T6rSFC1iUcR4kmgWjUhT3q9obgUoEQgmXTpBn8tM=;
        b=YRbgXvjp/AG0Crpv3OV5srjCRcYlXQhIKhh3BBuMGuWxZkSYJ+07t1eFgf7Mtx1ixi
         HO6Qyn5HC+LUEFOD1xKHEI0Ti/3jArNvQwV0bFHFlsniy4f+Gn4RLBkeWdEaR7wbXHaL
         CviU945D5JgfXt04tk372xc8SUdxnODoe/GveM/0BXBoX7oLkWKESYIap21gvurKTRZH
         A6PUS2x6pZU6CNtoxCTfp+g1wL9lFkRHHWATaa0nFfTaP+TzIAB3icItFJPijT6MtxSC
         7PoFfjj3/I4/QsK6bDVB1UCt/CRLD3K2/Dc4le0cCFD9RMRP77kBpZAh4tBagI8hUesD
         ghDg==
X-Forwarded-Encrypted: i=1; AJvYcCVijCGQNPGbdJ9rV3Riocp5nvUL31fSDI4m21QQTXPuBsqVJP49CQaiD13L8fUOrGxJP/c0/ny9WBX9@vger.kernel.org
X-Gm-Message-State: AOJu0YzHO654BkVgcSMSwYO7FQQrHg2qZkTi1R5MPfXBX7wjJqzZLXKL
	EWefz3qkjaXqcA97IwYKGPmVY1HwkqrVuknUWPM6EifnzyX75wWF9r+lPd+M6wkWKElYpfBqmL5
	Y5dS9YYtqoEBhTmoTh7BTdstO7A+d/9e5Lq6JSrC0bk5NxGhq+tSL+1UIn/sE6ibv
X-Gm-Gg: AY/fxX4UlYuZ1xMd9puYiouMDgccXk7in8NJc4oMvVuR/ovdyL+b4YAdZCnaaeNyUgV
	fvJC58C+r71sYVsZaTlTmx8vw6glYoZ3x4wB6Z2/d2BV3Ed9feUV6MevyxJOMRexHF3uauqqMeu
	mjXYu8N40DDP4af1SJou4h6IbtjP5gHtaszPQOwh78U/z7n2ymXyoMpEsB5nautTTLI3eV2toQc
	iXjvla+Xj4ib3lPWAZ6iDCh8WIZ7DURwcfmqdS1jSxpEXqaVCtRfQeTiPLbtxywhYH7VRnKHDgo
	gy0JHmjzWfeP7OYBms2NBPc87+guxOAS2VmbnjrioOorUWm0BFQqS2D9wyNyq63jR3sSIq1UxTY
	3oeSNAtHCwI3vbqVdTl2/gwHg2LYYncoa4B4=
X-Received: by 2002:a17:903:2f89:b0:2a2:dc1f:78d8 with SMTP id d9443c01a7336-2a3e2d0a3f1mr38264615ad.42.1767719631667;
        Tue, 06 Jan 2026 09:13:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZz3g1wavefuaal9cTj57zUPh9JmGbLDBCad8arIAn/WiJ97P5kFVDqKUXngu/jCzAcNE1pA==
X-Received: by 2002:a17:903:2f89:b0:2a2:dc1f:78d8 with SMTP id d9443c01a7336-2a3e2d0a3f1mr38264325ad.42.1767719631112;
        Tue, 06 Jan 2026 09:13:51 -0800 (PST)
Received: from [192.168.0.195] ([49.204.25.5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc793fsm27745945ad.72.2026.01.06.09.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 09:13:50 -0800 (PST)
Message-ID: <ca66b716-fcf0-42cf-af61-8be5ec333829@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 22:43:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260106-b4-sm8750-iris-dts-v4-0-97db1d1df3dd@oss.qualcomm.com>
 <20260106-b4-sm8750-iris-dts-v4-1-97db1d1df3dd@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260106-b4-sm8750-iris-dts-v4-1-97db1d1df3dd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695d42d0 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=/LlkvhkGe7jgMzo/w7jhng==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=haDqQUYsBGjX8MXYv58A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: QpFjm6NqtWkHYW3nL23G3CgqTX1ZVvrL
X-Proofpoint-ORIG-GUID: QpFjm6NqtWkHYW3nL23G3CgqTX1ZVvrL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE0OSBTYWx0ZWRfX1dDHiK7x7wXv
 eRFKkT74WomdMsPofTe3nQiSvqQvm+YRq6lZT5wi3CKMT71UhAVHGh6YSzSPVLm2w+uLybloVGk
 zZ9xv1SKsgT9WZcGFHVB/YF0TIiBdlTmvM8MXQ2lXM8avhwlsfF12FKVqcIXywN0vq3Ph4/5DRD
 DR1KLwx6W811elFcO2ODB5Y4cLWON1jFuPFwHFSaJdl2DNdifzMhOK1G9VBCnMACu42eLVaaLk/
 eAuQNqvyCFERMmwXVH2IkV+XGqbTUcN13m+1SeQo5xkA7RdZgxG3qOJNaTAO03yXxc193QF6NMV
 RrxyPwaGbqQ3zwoXHSa5gUpjFvj/OIJ8fXg/I7xiO5Vdzzd3YBQFCzGu0KRgsXIY3yLNe2fUyag
 qjNVqrD9+s7bq38TeeB8Ij2nnRJ4tICmea577JnRKj0y8uL1ueZFXdSGe6CEBlYpePQrQSuxVcc
 sbt1M9ei3oG8d0tfsOw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060149



On 1/6/2026 2:37 PM, Krzysztof Kozlowski wrote:
> +		videocc: clock-controller@aaf0000 {
> +			compatible = "qcom,sm8750-videocc";
> +			reg = <0x0 0x0aaf0000 0x0 0x10000>;
> +			clocks = <&bi_tcxo_div2>,
> +				 <&gcc GCC_VIDEO_AHB_CLK>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das


