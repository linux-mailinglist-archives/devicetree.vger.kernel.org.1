Return-Path: <devicetree+bounces-257062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C607ED3B686
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 20:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0FE37303A951
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C6DD39449B;
	Mon, 19 Jan 2026 19:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VRp+IQp2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zug8ByNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B71139281E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768849239; cv=none; b=AcqQ2GxYWzZYA+ntuVhuQPsf0HaUfhTmpB0VJ5Vqe1TVBBOW/mgwavHb5zmhThwIkxMczyecq9mwXTTJJjyjR2PUgt2eNAu1SwqusJatwnIvctdz2TtDtsBBLnH0XjPXoViLXBJxPuoOPpLFKpyLhZ7dLpHUpbm32SbXH8dv2iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768849239; c=relaxed/simple;
	bh=lAjq7fba5mBFkp5iVa0k0x8vLKodbf5quItnNBmhjJg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jJycFO/F882D2FnPbOiMBHL3bGQ4C43KChReY+ocQ+YVj4DHK+R4M/DVYkDty9Rsu/c8UJ65AD4ulvKy3WkuxJorN+2/PNU3o+jcVrOp9m2ThdS6893oy0rj3ww93N7cqfwANeMty6BqudbtgycptYHqzr/JnjLRoMSm6KI9rs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VRp+IQp2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zug8ByNO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JHBHGT1044147
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:00:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5ea3RudHor1/CzJHno9mdqez+SZYcrRBHMvzlM4KMN4=; b=VRp+IQp2H0Iw5Cpu
	EBnSwMrfh4iid19PXqkOv4d2f2i5lOTrQ4iDyxWHrHAezdpFMz7EdtBMuRTCK5JC
	Jzj8i+648ukOwfhjLxUwURRoYwDfeRE3ztEijHxOiNPQ1Sg+uVwuAgDun6JSGCbM
	RXrFWz0uw7vZEMVo0qVW76cmNNM6/wdeHjtss4d8C2Z9ubHLbxZMzP8KjSeSqY+f
	t/5tcw4V32nqJDs6xdhkouoCXVitr/YHhxfbuTkbOGQCgvdkd13RIQmDKKFNmjnx
	RkVi/s3rbkR8lsq27hmDKLlE9CfBI7zVQ6iGeqOc+DI1P3tEPGWkxL2p1mYrRjoa
	7KHwKw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bs79ek5kn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:00:33 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a089575ab3so40460415ad.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768849233; x=1769454033; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5ea3RudHor1/CzJHno9mdqez+SZYcrRBHMvzlM4KMN4=;
        b=Zug8ByNO0jbK7sm8ueojAAXlkSidOhRvPhnV2CwZIXqhoC8V6MjU7vh/C2DmHYRKaE
         BBPQpNRt9UbtqsK11U+V4FBQ2gEkC6LCf0ddk9jT3S1vTrWQZNHAhA/Xpty9HQRXtdm6
         pe72wA2X1sCtS775rS8s0abJKmzj9UqumeNfWBfRnVHzvizH2sCynIG2kzR1QY8pYlXP
         PLBHgPL4PHSxoNTdTdAQv8C/KmNob62q9kWUziJgRXF56Shzf4uIuyOrVRG+FYHbxYVR
         WyA8P1hqRY7ENFkVoKPEOhP3ZxQZQsA3yEgPLTyx234yN7OABAgS65DZoDNr+W9ykzuy
         9IJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768849233; x=1769454033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ea3RudHor1/CzJHno9mdqez+SZYcrRBHMvzlM4KMN4=;
        b=F/idPE064dl8H48tIHSXhAIXF3pPhNKiKbVR2UBrAwzWqLfWLDu+cSKcQnEcluAP7U
         Nvv9iwxjEjOesv2jhnJKJQNzpbl8quTmv/NmU5gHSV0k3fN5+DhZY1DCx9J7hEFNgmJ1
         DHTLussjpT1C0HWLfmk4Q8xCM5x23Bqd70rT1b6wtCYFGwJvIYj/JyPL5BWC8J8gLg3j
         mPgbX8Yxlv2DwJ13HFtKi+W6jm90Ml2vjqvwudQNChSFF44fTVyegK7zl+/mb5amQ2un
         mRbbM3jbpbL+w3DGO1p/U/yPjQlCO/YvAcgjA/+et1NupBNaMsp0ybuU5yv3vcBt7CMF
         OapA==
X-Forwarded-Encrypted: i=1; AJvYcCV9Ta000RdPBuZCK5TniUA0gO5wLHqKkXNBicKVa5g4Au1dNMZHWc4yQz4cIJe8GQTIw/rgjeNpgexZ@vger.kernel.org
X-Gm-Message-State: AOJu0YytCXQPbOfpVTxemLjI3C/qDb2Oj9i6PHLPvkmVV/sWIqo01Wsc
	fuXI/LK4kNNfvuVepS6aoFgZf59OeQCEpLj06f4hhZc3K63qPPdZqi7TfD/ALqTDq6zJP+7PYt8
	RVzHRXlDa9HaQH7ojp2lzXAOr8FpQM6luqKkQwIpYstOSJ4RY8tmyZdXeBCSyMD3N
X-Gm-Gg: AZuq6aKq5PCd2lMR7NRvfswifsHcr/cnR8ZZvxtH/p84gbDLWqKQgkzjd5MxgoO8bGW
	FuwpJez/3DDoFUCgEwqF09DAfu7g0Qc0sXp9HXx2VYNfHIGlb1J4Qgeq4Mz7Ojqm7uXr4y5L+8c
	6q68/U7kQLkJNnG9o0MwrFWNSKoha28QBoxuhVk+RGKnrPpckTvfdKtgC8jGiocyiRxnPUt4bjQ
	BIf2k1U2XTAuG8XKxz7yc2+Wm0Ryt6Wj3tHA+CzcD6MNmtJQko8byqAhOxf+hlDS2MDrwHyNfz+
	HwI/9bjlIa1TyquJ0I7ZROV3Lnk37f6GN94Csjtawh65E+Lk58c7bapfKvzNj2HPTvTehnXCv+8
	k8j6EAFtlK96CG0OTQ/AMjvE25VEfAfv9
X-Received: by 2002:a17:902:ce8b:b0:295:3584:1bbd with SMTP id d9443c01a7336-2a7175bfd2emr101976445ad.41.1768849233188;
        Mon, 19 Jan 2026 11:00:33 -0800 (PST)
X-Received: by 2002:a17:902:ce8b:b0:295:3584:1bbd with SMTP id d9443c01a7336-2a7175bfd2emr101976105ad.41.1768849232506;
        Mon, 19 Jan 2026 11:00:32 -0800 (PST)
Received: from [10.206.103.12] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190abcf0sm102290175ad.12.2026.01.19.11.00.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 11:00:31 -0800 (PST)
Message-ID: <d8c24f26-3ee7-4966-a11b-1e2afcad93cd@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 00:30:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: SM8750: Enable CPUFreq support
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDE1OSBTYWx0ZWRfX9UjSG9ISc/fW
 7AEYHtufzVQUZ1TcDkXz2R3LeSS5CrZB7r4Tqarb6Aph+Jzf7hVTa6SZ3Sl5hVBUvB13+M9Vxxc
 MY+P+2s24uDzEyBeOy7iMUVqKoN0QqAWwHQjuizzt2eADNr6WPaypnkk5OUTMXpDvBLkDJnbxU1
 jFUZ5CSLnlI6SUB4mjIYLfAMYcArg9XnZ01z95EaJMudYZ/p1PIs78heQ8tl43Xmo06FxpVeD9g
 acCOVXwaAVJIcFqcLR96RIa4BB6Xi3jUpvufwSX/zkmpFyt9f9XZ/zPoSHTJ8BdimxsSh4wqTQ5
 ualVtiKMJo6pL7ZoRTW2z0jCjSUI7jaOsoBsUe7mbcYlRdBpCp6RpEAAk/xi9+thKRYQyRXm8nJ
 /92JKzGIgX/S0z7xFLtCo4G2WyrP205ZNxGQgAZNzNnNIdse93yZkkhXFM7ic6DK4A95qnVmTXf
 C8/5UxKZY2CnNEyVhaA==
X-Authority-Analysis: v=2.4 cv=NY3rFmD4 c=1 sm=1 tr=0 ts=696e7f51 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PptT_Mh96ff8s3TZVEoA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: FBn5isijc-0KcToef0MVv0zvmrL7lBFw
X-Proofpoint-GUID: FBn5isijc-0KcToef0MVv0zvmrL7lBFw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_04,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190159

On 12/11/2025 12:32 AM, Jagadeesh Kona wrote:
> Add the cpucp mailbox, sram and SCMI nodes required to enable
> the CPUFreq support using the SCMI perf protocol on SM8750 SoCs.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>

Just curious, does this patch enable thermal mitigation for CPU clusters
too?

-Akhil.

