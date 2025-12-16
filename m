Return-Path: <devicetree+bounces-246947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DD4CC1AED
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:04:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ACBC300A1EA
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B725335566;
	Tue, 16 Dec 2025 09:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CUhqv9nS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DZ70GUf0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC703054EB
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 09:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765875859; cv=none; b=icaSZihRooUd/CRrvpHuxrov7J5i9IZyjpD/ebmoy8ZCSk8qyO2Is1q/h+WpkjJgDJtEkfF0Ol/Emt5jnO1IP1qSeNZ015OeQ1GnmUaXs4wycyJ5+SMqnJ3+9RDcl917tIyB6KgH5/zBwkHyF1RHtj5UAk/vZYcH3XVrnCDxiZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765875859; c=relaxed/simple;
	bh=3XT/0FcGB/tV+4GKPwRgKdrInL6MAJD/Ux2SBaNPymA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vt8lheGRF1m170pCP4DxwuykTbO6Z02BUNSSU32KFa6EuXROCA9jh0RbtJyAsNnoipa17KJkvpcaV7NXiWiU1PdVWy7HO8uYjjx4zoMcI+ohCJTD74n1MwuUX32ZNQhQiFfcxPcWm2hXOsjD7thJU4YT9wStGsLVk5H8qB4gzO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CUhqv9nS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DZ70GUf0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG8JOlk2573310
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 09:04:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0eTtNWs2HtU4CllgC4so4tlnbnYLGXXoz4SXM7DbLkQ=; b=CUhqv9nSMKxquEoe
	2DSwU3pdIG5t6Jpd+lrNfvWEQBRscvCzEDP7SwNm7F3m8rPSV3YzYaeGSWEMmB5r
	Ngje9YmTXI6FSj2mYYKfepQX/Gh7SSSXt0lndBhx51kBMOQykVYxkx4rj2rj510y
	6PAvnnAGaWnIflq9ucMUuhS59hKVMLZcg6BQAYwAcEamqkZhVXI0KOdzXmLGSS8q
	bqw0Fx9Y2eD1LnQX8EFtuqHETRNSuyv7K8/Eo/TwjHkhqFSzqdWyRBICfIP5P3JU
	PRnXG9BdCrVVWqXoZjsowoCdzBkw0YPGCV0jo4J5CKTx38SnbMRLGfNQOOn70t7p
	0z2XHw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b33thr7cm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 09:04:17 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34ab8aafd24so2796218a91.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 01:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765875857; x=1766480657; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0eTtNWs2HtU4CllgC4so4tlnbnYLGXXoz4SXM7DbLkQ=;
        b=DZ70GUf0iVlVNGVx9d4YWVxz5i6E8z/fYhUsXcpmrNlpbCjGs9jztUPvZNw4uDUG78
         OFtfcQjr+Md9MWF3xokSPbCEWRen+1Y21+rYTLNd+y1LxD3AzTzJNvZgu3P7byV9st+C
         u2y4dPVSCKS5nLN7ypeiojSgCe+cArqF8zBwfiRArSmSoyQ05LYWcouSKuXh4sktpUsy
         sAaH+LlveuMrIxhwWB7Yk/TQgcf5lG/OpYCyrF34gMQJfI0DXWKrQCX2juy7lajufLic
         71axWElsdRq5fcHzRHj/RqEYfRnyqb7YIb7zoLmTPT/ZdG2ftv0rTT8txcbkAMGikCnQ
         Fv5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765875857; x=1766480657;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0eTtNWs2HtU4CllgC4so4tlnbnYLGXXoz4SXM7DbLkQ=;
        b=fmK11dZZ1/coR7OKveLgkxfUjMbu9u9dYzf/MfRmJSyeIC9BnOSOOVSJyd1ermIiTD
         treHBH7mDcKKqmwCGPuad2a2Juo/2wnH5YSsl3+zcR5nXGJUhuHsTlKWyp+A00Yc/XGc
         DAQxdTDPy8JUYF9UkEigVSJC/eLbgxZ43L/YeNWGx4Clb29BfCGBudC7dK/59YWL8Xm6
         5jkOnOsZUESP0i5YUFyx+rumoxiKrtGcx0KfUnDT/PiOIDNBvyXlXc/9RUBMpUuJCIET
         LYDuA70dPMW3IU9ZBc9IDgvFG1woKj8Jltpq+p2Sw2Px6vcvWfylNiR/UiXrw+YL6lN1
         7z7g==
X-Forwarded-Encrypted: i=1; AJvYcCX+NXuVB51xWYuEKskRv3fRAOG+THITH1813HhJ+f7fypXrWnhlWILFAZL3Nq42dvhgLCMoZu5dGfDF@vger.kernel.org
X-Gm-Message-State: AOJu0YyaTYYqeGbxiquSkVu0RjnwhY3DxGsiW2piwV6TDYgeEwZ3mikh
	GQFfqRG+OXIR6dpE9yaazjfL6+gQsQU+LV0MTOx9PkcsWuoakKQIx3+YtKhcYJBVpIBdWfCl/Cp
	BXwHpoRbaHdCkYf67fUObfN91tMQMr/1vAZKH2WfExC4T0kPRjzUNTG86/RrTGles
X-Gm-Gg: AY/fxX6BvNjNZ/nNFYaj/uoHwjCYLrY+uLg0BcWYWddHJoyrL+ioDvmGWRzkl1zT3/+
	0Q/UERCp+cipxL1lw/glJsUML2247nELM/pTxlBpZFwbpg3FMhNMniD9oAtA92b0zJ1nVJkikF5
	ZASt/IB0QmrTMq+bDWmb2n9xTJJvatefsjMXv7aLc1BSX7oakz4RuKCTKs/2zEXuC78/y8SVXVs
	suxgvQMp8rYtQezx8IUoUCLKdsaSqkb6xzBQI5ckkq6gXBZIOf3DriEz3Pghh4IDQcNlppeRuus
	tOBseikxkcoihLCvL40afTfzy/xUe4jDscuAbENau9uLfZ2v+8ngziiWGRbFFZE2hAqIhUsuGRS
	qC/QAgrVgRoKjuf1zQdBRVmgOtLD5bkZwQfBN7QIkhN5esylxcEG1o2+Vqc+Ei6eugtkbdvDikX
	bIt6gThZtLOiOOx0aU8JtFb27/4XM=
X-Received: by 2002:a17:902:cf05:b0:2a0:e5c3:d149 with SMTP id d9443c01a7336-2a0e5c3d2c3mr69128945ad.23.1765875856685;
        Tue, 16 Dec 2025 01:04:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEd0ymq26RHV/DEGI1h2UHg5v5cvqbPfhHWyklfp8aadTGhgzhs0xCn74+G6Y6A3S3BFC+kTA==
X-Received: by 2002:a17:902:cf05:b0:2a0:e5c3:d149 with SMTP id d9443c01a7336-2a0e5c3d2c3mr69128635ad.23.1765875856144;
        Tue, 16 Dec 2025 01:04:16 -0800 (PST)
Received: from [10.190.201.184] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a0b465de71sm76633145ad.41.2025.12.16.01.04.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 01:04:15 -0800 (PST)
Message-ID: <5fc90779-6792-4cc8-9428-57b38e53b64b@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 14:34:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: SM8750: Enable CPUFreq support
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIPaWH7b c=1 sm=1 tr=0 ts=69412091 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PptT_Mh96ff8s3TZVEoA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 9YJJvBMYm0ngCzX2pS-trNuUR-7a_LjU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA3NSBTYWx0ZWRfX2qoz5QEJYVDF
 cBpUSeOB+uydicuqCkuU0FkpfY6tlZcwytPuZM0RytGkL08QhHU9y2n2FpkedQeZSlh6QQ4YHsV
 epLyFKoB2GLuNcVW7EMhRUQIv35ZmzAluMi/WmL14kATMR4eecvfCO/MlVwrS0UbCbDiUs4fFzS
 EFeK9Ki92MYBiZ8oGnAGHLWVqkUQYgIXE28y+9s7/iBs8Fh3Esx8sw+FvkjShKY3+IUeTyTlCQt
 JF9akV5Gk4RZRkoH3+BFflZ1+rUCS36VGvTip/Hgn1oWapB9tGHTdnrws8XYp6SWgytaVnrZiyx
 9mixHFRbOfiU2tWwYhSZdUUPgF7uEcqrq9PPlQPy6MxRVMC3/BiQBI+PGGhF8yZCGV9Lmjak5Sx
 nWA5GMiAWdCM1QEfQqvKtM5RtBQ9/A==
X-Proofpoint-ORIG-GUID: 9YJJvBMYm0ngCzX2pS-trNuUR-7a_LjU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160075


On 12/11/2025 12:32 AM, Jagadeesh Kona wrote:
> Add the cpucp mailbox, sram and SCMI nodes required to enable
> the CPUFreq support using the SCMI perf protocol on SM8750 SoCs.
>
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 73 ++++++++++++++++++++++++++++--------
>   1 file changed, 57 insertions(+), 16 deletions(-)

Reviewed-by: Sibi Sankar<sibi.sankar@oss.qualcomm.com>

> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi

