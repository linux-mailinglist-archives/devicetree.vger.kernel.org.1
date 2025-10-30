Return-Path: <devicetree+bounces-233354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAC1C21632
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A0273AC6E5
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2F0365D39;
	Thu, 30 Oct 2025 17:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="deKCnjL6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TzJq03cg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD9B3655EC
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761844052; cv=none; b=PRyUJXijJxYe4rXyRSww+p15U+cFKE3KMoPd5mmM/SgPf8z/SLM+UWGaIgSDtTWD9SLhDanK2b4S0OCRCxy6aeUPhJd4lK8bd3BVPkVBAX3Y8M/+m1jOwdOrBeAnmbsrRf+6ewrcMpVPCU426aeP12YhqV2BpuzqY3Ss3DFSfAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761844052; c=relaxed/simple;
	bh=wKvIfqufDuHtKL2AooVSBK47inR75+5K2P7Tt+gVXfQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gUv9iH7iJlGLeOqrOUOAA63qo7yYg+CCK77tWTHFMu4U3Xo2Vww/ce8usVaFQRTeXBIMsQwU8Z/pN+DIKA5Z3JT6vTZORhXWCgNxlnae/juHks8Pcn26RsRjocqDTQ2GyNxOmi6V/y9aucDP17OM1DQXMebWrg5EMcqflNKfl68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=deKCnjL6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TzJq03cg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UFEWCq084097
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:07:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FaUffMg0t9RN/r6zOahDKELQJDjO77lGV7JAED5mRPc=; b=deKCnjL6nnjC1qyC
	8fs4PnmeyQ9oYQqtw9ndiYaxFh0VZnSDBXCEO9LWst2vTRQzq1LDTQq2dJWDOcTK
	liROZ6/3hUu9m9xE3vBOoP7jAHJobfoearalPgJidKP0T5zWV/Zjkrc5DTz6GYZI
	tTZUqI6zmAadBDzF323TwgrJuhtE9NZXs0AdMcYz53xv9fVUSTaAmodfQqkqZ28n
	E/tBXKzBhGp9OWfmWso+hO5in/ozgxx84UY92RHtRSHw974uOgkeNYVMEWC1XimT
	JIU85CUR6TxobrVzghi8VFlDAtKqrBetaJw1u7z0B8slmlUlChYkPeYYKQX2538Y
	VQUQJA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ag38b05-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:07:30 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6ce15aaa99so976195a12.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761844049; x=1762448849; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FaUffMg0t9RN/r6zOahDKELQJDjO77lGV7JAED5mRPc=;
        b=TzJq03cgqgWfS7E0cPNHzVtWB7LGCqBbg/hN2fyADDrQOPPOPE+5eAQD9T6lT/0kI/
         bZ9lKA9Yl24eIxBSJNXWfM9AZ50IRLGA18tox8RVF9Xeu7AEHIMm8sB4RCH0JpIqb0/4
         2LgmdbcS9J618dDoIZXz1Q+ZnFjHR1PBt1mi+heieZBwswbunz6FrazbFWD5xKp3xHR7
         cuhi0ADz0I3NHjNYX7S0XJqHJYivhlIU8NfHsx/Dha3FWBQEiL/SWQLfJ009e/anerCj
         ybTf6qISeOxK2SyOW3JXQIMwS4yBbWqjMmy7TClhhS7FZAuCxD1GOeZfRnGNhdUfWB6X
         izCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761844049; x=1762448849;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FaUffMg0t9RN/r6zOahDKELQJDjO77lGV7JAED5mRPc=;
        b=nXm1eWkxZbdHxHeR42HLjPYegsm7nlaC0cV4sM5zMhtIyXURiCyvcmcY+TzfLxBgnL
         +KwdPVxxNeokqGXNQ84sdVmq5SwOUZFiy6dM/7cvA1lX6H61ZMgt5sYATOuNG+VzABbo
         JOBVYNp2P9z3kXYDl0DencTRimop98UOZy1+205eHNxKpbqEWv9PXXs6CVd2eRJDHxaH
         zWpB0mvPp49AEOeF3WskW+SDe4icmb+sbvnWYz7eGEuM7mi57LNxhcBl8jjJ8cqc0iOv
         un8atl6WSzD7F9BpBy/ED2JRid4zFMWFlcD0Z6D1+6wbYbqGGUL/0zk8+wNaEy5puMQP
         BAZg==
X-Forwarded-Encrypted: i=1; AJvYcCUSqu97ks3kZ9CpO2OL8P5pHc8nETXwE5J5Rzd1X7k93Stm2XOe9MFNGivptd0fiFZdVjmm9N1L4pPh@vger.kernel.org
X-Gm-Message-State: AOJu0Yztt2vRzDsqCBrLYx5KT901ONtyQ+RtUUiPG2AM6UTBy+uoMzud
	YVQNndNSV0oU0Gp7ItJvbMuhAhhrucJutDM5hl6irTj2CE+1KNltR1DZnYhKL8omqaJJA9hyU7P
	v9Ys+QKUv7fAKOpJHUeKQ2C+1fJaal5zeEzTbZl6HKDHayAy+BzijzNxwNyh4AO7n
X-Gm-Gg: ASbGnctlKVnIrBKdiVIuWSCXmxQP70nugNBQPid44mkefeVreJl94r8gcxOZVxfbgwg
	bvkpsB404dFpL7EX7nRVM2ynzRAKUNBbIJn9aYp+uO1F+Gte4qLLLz4gF/EL4EGtWK3LEQjJRwW
	rvhdUgqT49CWhV5C3kUCqhOCGY28hwHNEykKFg2QW0FOAPM9jTT7SUeVjhR8DCWqLl/Si4qml8g
	ZTYu+DIG1j9dAVo9rwkVEIfjhoyTe0MjSG/uX5j95BV6Z1keBLSDHlaD30b6Ql2DQcoiUDODVx7
	neUrgWi2UbG+O51EMgxZsSKa2s18dyO9CiZTwGW58wX6K3M77C4xpHAVme7+eeC0atCnMaC7S53
	PuKqCOOsjpJ9yq3ug2u/r/XcaqTs=
X-Received: by 2002:a17:902:d48b:b0:28d:18fb:bb93 with SMTP id d9443c01a7336-2951a35eb15mr6940775ad.7.1761844049300;
        Thu, 30 Oct 2025 10:07:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKj+S6gpsD7cMRDxp+B6gNmnaouGxsBh/tuKhDI+PPphSW8SvQHJcu/fR16r0MTnLkisEEDg==
X-Received: by 2002:a17:902:d48b:b0:28d:18fb:bb93 with SMTP id d9443c01a7336-2951a35eb15mr6939875ad.7.1761844048492;
        Thu, 30 Oct 2025 10:07:28 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.28.130])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d42558sm192028195ad.69.2025.10.30.10.07.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 10:07:28 -0700 (PDT)
Message-ID: <cf41726f-cf77-469b-ac1e-404b69019573@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 22:37:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] clk: qcom: videocc-sm8750: Add video clock
 controller driver for SM8750
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
 <20251024-sm8750-videocc-v2-v3-4-6286bbda3c8e@oss.qualcomm.com>
 <d001f158-008e-4aa2-9f30-a06d314377e0@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <d001f158-008e-4aa2-9f30-a06d314377e0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE0MSBTYWx0ZWRfXwj2ahsqckVCa
 B+4DLgAZMEDYalshq4uD6pn08/OQGewDSKwObSrQ/8R9uBPSrjDFVtfCWQw0LaJ8jw6ysfrho01
 OYhDzHYzfGAQ/xs2ZUsx5wKiBoHye3k4/ChQGDs1empWKQi4KbBtayf1WNJoA6tiMtyUWDUn/w+
 P5UDBZr9Rgum1TS/ACvU78n26Y8m3pY6wgBf5dGHSMLOopkYTwYnpkWR2/bK9aK63LpLDnO4QGg
 UK3uiWAGrKdFrFhXCurqZactQZXNs4Ci4cn943nzm4GzfX9w5C6MUw1/o9OmooZoV0TXIYXfSha
 3cmEjRL261MiD1yi262S32JdbpVmR2jLPp+zKYUSOOUxVSTC0Aa7sOYBQFmW1f119hxZ8oJ/OBo
 hutvaBVmv+chzxIAHIbUrDlRwmP7VA==
X-Authority-Analysis: v=2.4 cv=TrnrRTXh c=1 sm=1 tr=0 ts=69039b52 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=kYOnW6kYNC4MuwyOue8uGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fw0g0I_whfq7NU55yUAA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: rULEUuOd-Nf548VK50GztAwUAY_MPbIc
X-Proofpoint-GUID: rULEUuOd-Nf548VK50GztAwUAY_MPbIc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_05,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300141



On 10/30/2025 4:41 PM, Konrad Dybcio wrote:
> On 10/24/25 6:24 AM, Taniya Das wrote:
>> Add support for the video clock controller for video clients to be able
>> to request for videocc clocks on SM8750 platform.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
> 
> [...]
>> +static struct clk_mem_branch video_cc_mvs0_freerun_clk = {
>> +	.mem_enable_reg = 0x8090,
>> +	.mem_ack_reg =  0x8090,
>> +	.mem_enable_mask = BIT(3),
>> +	.mem_enable_ack_mask = 0xc00,
> 
> GENMASK(11, 10)
> 
will take care in the next patch.

-- 
Thanks,
Taniya Das


