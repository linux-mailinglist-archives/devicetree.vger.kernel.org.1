Return-Path: <devicetree+bounces-173924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D023FAABA91
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 09:22:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03FFF3BE1EA
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 07:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A1E28EFE2;
	Tue,  6 May 2025 04:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jk6s5/zG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73A829AB1C
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 03:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746503804; cv=none; b=EFnk22inxaBfwdXGxZ/z5/Mp6wqMADCZrzCC5stK62wIoNA2k7BO9V86A+lz3UPb8oZmJ61RCQPaLA1h27dg3L7+i0oyLlqKI4hL8qb+oAmCE0rWvCQardrx/BsSFknvO93CyR2cVvXXXNNdrnYAwZndwZCA1i3kh9RD6ZiON2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746503804; c=relaxed/simple;
	bh=u7pRzJBbcRwGvzkiy84bVPWls9kocmRvIycSKA4alPQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O1AARPKwH5zwwzj01HLc96+a/eZ4CAVCEKg2JBRaMJ4O2gfD7VqCUaal1SQMT4v0PEO9xj3yuMZhNiAYaEpztW98cpxpS11BTQI5ToHMEb916R6Vfa1+q7Q89GaMqgaw3VNB2E5FWe3G5K2ayVZLQP/unG3v+5Cu59O9Nz1zBCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jk6s5/zG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545KTsxQ008097
	for <devicetree@vger.kernel.org>; Tue, 6 May 2025 03:56:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VssZjjWMJWPdqdH0IZ5tzinbZ36xyqX8Vl4pC5FcHbw=; b=Jk6s5/zGwEMAY4Wd
	QQk95+qYd61DbVhhjMhLFFLQkkWFtQC366KwcuIumU2MRBzuUYx7Kc8dZlptXhLo
	6siRUAWY3DGbR9whfyyu3qdgeKCHQyhLxU9qL0Rq8B6R1wv0jAlPLqOzjFAJ+Hns
	JNkPOnwGCjqyjNS9qEL4ImJDJ0IGKSUidDCCUxdUpSdbV8NBVnTNxSV8NXOULeKe
	G+JLPqZKkOOqfQivyncUWjN7cEQKKftsD2UVf00IL3OSkqfbEgXILu6frjl9jJYH
	i37D3bbOWmXG2XzdbdGTLrYanZ1cuewNDbdGjfrPeeI3UHfMw0Kwxyqu69vcoyep
	7qy2Hg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46d9ep6acc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 May 2025 03:56:41 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-73917303082so3402935b3a.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 20:56:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746503800; x=1747108600;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VssZjjWMJWPdqdH0IZ5tzinbZ36xyqX8Vl4pC5FcHbw=;
        b=QMlZP/jZ453mS/n+SHMPzPstqj9NvENQYBsPz7YgJyG+lTpIOIx6WRmyhzi3S2LF8y
         vyQS9CPSKj+2zTq+ifOty6DW/qLWmfwsKYOfmNYXJ7EF57Flalffdzf8sTBHCY7W2aWP
         aSpgynOvcrjJrGJet8byvyq4xzYFqbcjljVctQ0ciF51hPLjKuwCGdYfUTDG58dON5mW
         Zss+qveZgvyFfe93TdHkfbvhhjDxQzq72tMETonCcQu2hq9qYBAuiF1aXOhtoELtnJfT
         KMD/B20pY8FZ0RnW1zdvkbLVwL5jkOuMCXCp4IUlzBFInRwhg2BkuVBC4BlDdyqsuOrD
         JiiA==
X-Forwarded-Encrypted: i=1; AJvYcCW4sufwzDZZOJY9ng5ngkumvi/zsMjTc3v7OLfT8/6/GIaUCCQQiqymSJPGLcICxMochgj7/vt3lVfq@vger.kernel.org
X-Gm-Message-State: AOJu0YzZkZFGfVkJk6FDDGIKNptCUSngjFOSvGd10lYFo8KxwF5bSR8C
	trap2PgJD+VOZR0CV39WMM6wg7KbHap5c8++vMtBO92976dOeS3fEPjQWGgKjVZxfguZRezd0Ii
	1gxXNNWHLPLDJoF3fqMA0tvjHL0SOIX3neJTdEacqUi3Lnlg0ry8ljYDP0Q3Y
X-Gm-Gg: ASbGnctcXIhRZs3skCD+aRW7JOjBLcTcdmubxoLTtgQPniUAtjDRDexCUmJLalMDmsf
	fMJkIJsGqkxiC9WqeLx/ESDD++cDN9vXbWIOW/EZS9uGA74gjtKcbzvxt6SvXFBH360xsf3ojWO
	ppS0uVp5SVJIeP44Ybe9/EBIP2OgEjsLeHaLnHINKJbpppZNIqk2CICSD+NEZsk9uhP78lbIB4Y
	g9iLpHgs/pPoSE6/bSidgf4Wy5/WyFlyn374Zw+sJkIELsYMgQCWdrdSkpqThqV986x08FhD5cs
	t7n1w0amRnlnnpudrIyKussx0MxpNL9yxt/lLApbEcvXVFYQbhS7Ag==
X-Received: by 2002:a05:6a21:9203:b0:203:bac4:c6d4 with SMTP id adf61e73a8af0-211823a4329mr2315346637.29.1746503799835;
        Mon, 05 May 2025 20:56:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbSVcvrD6TYRv9+C6F5mpiHYvymOofSleVgeTUg/fKF5J3cksoI1+ZjlKYg+zGXKNK8MhJTQ==
X-Received: by 2002:a05:6a21:9203:b0:203:bac4:c6d4 with SMTP id adf61e73a8af0-211823a4329mr2315313637.29.1746503799526;
        Mon, 05 May 2025 20:56:39 -0700 (PDT)
Received: from [10.152.204.0] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b1fb3920f6dsm6456022a12.10.2025.05.05.20.56.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 20:56:39 -0700 (PDT)
Message-ID: <c9187ce5-2ae3-fee6-8b94-19792a981130@oss.qualcomm.com>
Date: Tue, 6 May 2025 09:26:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [RESEND ath-next 2/2] wifi: ath12k: support usercase-specific
 firmware overrides
Content-Language: en-US
To: Miaoqing Pan <quic_miaoqing@quicinc.com>, jjohnson@kernel.org,
        johannes@sipsolutions.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: ath12k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250424005703.2479907-1-quic_miaoqing@quicinc.com>
 <20250424005703.2479907-3-quic_miaoqing@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250424005703.2479907-3-quic_miaoqing@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EOUG00ZC c=1 sm=1 tr=0 ts=68198879 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=nnbtXsLSmtPlU79_SnMA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: mhvumvM_EDsl6o_UJppB8lyfF3lThi-Z
X-Proofpoint-GUID: mhvumvM_EDsl6o_UJppB8lyfF3lThi-Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDAzNCBTYWx0ZWRfX7Jqf/RIO0f3a
 vKjhJ5pAuAI6NcFiMS63sEO2/gSTRRJ2OF7VqNOJzEO7NGoWPZKvdHN8nlg17McR6AWgqow9gBK
 ZTkYT4bzcL0auHfyUmSMyUZ+6jt4/QFoc128borMoV6Je8iX3zvLiN3DaGIazGTEdyaXfUnU0Ac
 JXPhLKW2MIAt5y+qJZ/0czUC3e6AWIuS9MBlUKb8uAYmrzyU9ilnEn2NOsHNdrHdIT6OB2BJg+Q
 LgBIFJjsqHrhgzciuYHEvhlAE/POrqS+jjUfTkMaqfBJLzwNbS7RHziMj2ULFpSUnobTlUpWJLF
 dnxBl+x+xoPaBqkyLoQ9QfS0ZcL92KkfBaj+hIh04bqAaOas6LPqQffaYr3BE9nktgQDh+8FYPJ
 d1ieqxnKvyXWUlEXYEdfhS7U8ygSYrOWr5gcjH4MbQ5/1xowdPu032w7dnNb2l95gPsh7LiK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_02,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxlogscore=722 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505060034



On 4/24/2025 6:27 AM, Miaoqing Pan wrote:
> Introduce 'firmware-name' property to allow end-users and/or integrators to
> decide which usecase-specific firmware to run on the WCN7850 platform. This
> is necessary due to resource limitations such as memory capacity and CPU
> capability, or performance and power optimization for different application
> scenarios.
> 
> Currently, there are two firmwares, both files can be executed
> interchangeably.
> For example:
> 
> - ath12k/WCN7850/hw2.0/amss.bin,
>    ath12k/WCN7850/hw2.0/m3.bin
>    ath12k/WCN7850/hw2.0/board-2.bin
> 
> - ath12k/WCN7850/hw2.0/ncm825/amss.bin,
>    ath12k/WCN7850/hw2.0/ncm825/m3.bin
>    ath12k/WCN7850/hw2.0/board-2.bin
> 
> The former is the default firmware, suitable for most WiFi 7 STA functions.
> The latter adds support for commercial-quality SAP and optimizes power
> consumption for IoT applications. And both use the same BDF/regdb data
> within the main board-2.bin.
> 
> Tested-on: WCN7850 hw2.0 PCI WLAN.HMT.1.0.c5-00481-QCAHMTSWPL_V1.0_V2.0_SILICONZ-3
> 
> Signed-off-by: Miaoqing Pan <quic_miaoqing@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

