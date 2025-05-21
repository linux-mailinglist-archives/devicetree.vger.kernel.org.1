Return-Path: <devicetree+bounces-179314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F206AABF7E7
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 16:34:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C3944E68EB
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 14:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CAEE1D7989;
	Wed, 21 May 2025 14:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fRnr9oWe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5211494A3
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747838039; cv=none; b=JvH9R0oyE4vMRKdJdCNYecIr8U5emKFDBknm+W0OW5UxL/IpQGnYA9JnVRoMzRQlfjdVMjjpxnBVwv+qdxdiYW32N1P+8arFCfjyWvUcfZ5k9odbZFe3M9BUvoBHan9MgAcZeTcibnOylKEjsmJK5IIdEW3paRh04YPlIS4QBa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747838039; c=relaxed/simple;
	bh=QXOptH9UISrpzVy4cekX7Ltl76t6VFh+ehjc5O5k7cE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SJ1gvJ7hyVoDuBOMogjAVM9O1DlMhvOgIE5MhxqfUtrm7dOCORyFxuJ7BvyG18HKhlvMt9jWA0Hn80dn124SUGRWEoGa93rhf1LEWGHdnYefJefbEf+NWwYUZf7Au/vN5jIIE9a3UVzM89up9gYd8aRzICF2lkkdw7+O0WC52zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fRnr9oWe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XIG1024751
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:33:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wUiFy+nLG1ZM48+pPyGzOV6fpUXlY63P3XaohGVWgNo=; b=fRnr9oWeIsRBMM+m
	X5nP7aPpXwcMHjSTl3AH0qN47YCywocDnRH/wejw7pTc5xVy8QV7m8yED9QrbDbq
	hleTJHTnI9dHt7bqsncKtyfHJSLsssAegnCkxIpsJ+Si60Bb6OaMnixxLQblvqrM
	tgMZLHH9DpH/y/JNCdeqS/TpTvrx8eN0+hspvHtLWfSZGSLbbLvjSBnQ/rsNybU+
	nVGskHQiHogiD2PQ4rOfBYEiKqx3GrkAN266DrlWdp3+9tijAs5iORq4FYoN3dme
	HRezCJeB5YyrPPikGe9L+p0s2QpwjGARaRXZnlGo5kCRAx10wDiWUf3tGDUQIRz0
	0K8zSw==
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf4u7dv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:33:56 +0000 (GMT)
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-3dc834be249so8150495ab.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 07:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747838035; x=1748442835;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wUiFy+nLG1ZM48+pPyGzOV6fpUXlY63P3XaohGVWgNo=;
        b=HJvBp6iaFmvs9STlIrL5dNhgO9yRIZwpwb7ao+Zovm9vBYS5nDnGL0u40C3kSCQL2Y
         Nx9G9Mk5HickRgO2Ms/Jz6HHr6i4VYtcXp0NM82ufYyZVllSMyGQ0og3lPUqYZeCdwAy
         ZKh/OXpaP/MArBHeA/50tCDU3v2+i5AWC29iFe0sjrrBdtB8mNqAGsnmtWkflcr5tGkK
         GoiOnH+A/SQJMaWh4HlU6zGpQcl0a95SlUQk/VM1k7aozJvsw6S9DVNGe4L1evEwcPlo
         8QW6NBKAraggG76HC+gkDFan7KSvsPwBpvAawzVg1vsey+t7aDea1unieYWman+jSmMg
         TQyw==
X-Forwarded-Encrypted: i=1; AJvYcCVUYVG8KDKIao8UTev2xa3bUHR8NRFEaa4nlP7jzrsltq2Nvw5DgHq0uB9yyQQZIYyl3CXfjioiPMQC@vger.kernel.org
X-Gm-Message-State: AOJu0YzPci4rUF6mtAJBB2h4EP4di86gddrDqtzMA76voo7/NSJqaWqQ
	3CdBQBQULb6sctvpvnLVkQ888hFkou0jc3MVEwAMwwlRDEv1sSkyE+NlzQDqVbKqfWWvqRvIvck
	exoPb3kQ8NkpZJLsovgKis6R4FLGmpuSRikU8QMDAwdtKB07sOYpz2hEXs+jvQ5XJ
X-Gm-Gg: ASbGnctdJf6duBCTCzBPd7ZYaiq2AgYL5XR0EAxaAEzFcej4yu0x4nOIYrOlEqxpTXL
	qCxpzTsQcNAOAFvuSaxOVDrC28kB0QRwlxx1LJe/EmxUkEt3NSB2Bu+nZ4SpHLP/qT9oMW/eQNZ
	O0Lo+rpo2fBIgE+WIIiClGLhnb76NODS7KLJD5BMsP2lCNmEMXI2m3QMFuW5YrDIzFnjwCReEX+
	2ovFr2LEupwaupsWA7QNLmRux+nKv2eAo9HvNel7hzT8CA+wDEtbGbwn+2w2GUE5yQ9jdacc4BD
	tHfvGJeserscTraBc48s8wtYNJtrVzbXYnNyNwFuAR3rwLTj6SnkPYQlkyTkvxdrzswl2zTGgqn
	ymzvfAOpjdF/d2xxCGLqQsTMXgq0b7SlCR8pmcYxRyvu07DciINInZv7kxwdspgHv
X-Received: by 2002:a05:6e02:160b:b0:3dc:79fa:ed5b with SMTP id e9e14a558f8ab-3dc79faf12fmr72495835ab.11.1747838035072;
        Wed, 21 May 2025 07:33:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENjzKcO/YaBHBvHOlpxJ9X3Vbs4m/bWka9bn8wMR7PBaN5TG3kpnsx5SHud0+v5nhdvewHBw==
X-Received: by 2002:a05:6e02:160b:b0:3dc:79fa:ed5b with SMTP id e9e14a558f8ab-3dc79faf12fmr72495475ab.11.1747838034711;
        Wed, 21 May 2025 07:33:54 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c7:69ba:b852:d3f4:8957:5a1e? (2001-14bb-c7-69ba-b852-d3f4-8957-5a1e.rev.dnainternet.fi. [2001:14bb:c7:69ba:b852:d3f4:8957:5a1e])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-551fb37e9b9sm997757e87.135.2025.05.21.07.33.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 07:33:53 -0700 (PDT)
Message-ID: <e34a9a27-de57-4cd8-892f-6a3fcd447b9f@oss.qualcomm.com>
Date: Wed, 21 May 2025 17:33:52 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/6] arm64: dts: qcom: Add UFS support for qcs9075
 IQ-9075-EVK
To: Wasim Nazir <quic_wasimn@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com,
        kernel@oss.qualcomm.com, Sayali Lokhande <quic_sayalil@quicinc.com>
References: <20250521140807.3837019-1-quic_wasimn@quicinc.com>
 <20250521140807.3837019-7-quic_wasimn@quicinc.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250521140807.3837019-7-quic_wasimn@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dNJdpmMWV4lxeIjsMWqahGmAXWJUrO5z
X-Proofpoint-ORIG-GUID: dNJdpmMWV4lxeIjsMWqahGmAXWJUrO5z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDE0MiBTYWx0ZWRfX7ThQt2i4p5RP
 MxU9RZKinCc4hnH6HZAY/EPXqFlY0vFVt8PGrtGjK44DLYjMIi435snF1GXR09OVXqHgYfVDbzj
 N9N4bkgqsvLost6Zq3HxKKtW1tdLQduMBNsDwcC6df1QRC4cX1XoynW7scJ7Iz7GZXhfMSVww9H
 X20EO85mO3MH1sHWWLmDitXVUD/Vcxgxxbvkd2zl3/FjDFF/PMP+tNjk3sOOfqNibVK/kxnEdIY
 74gf6/KOi+9jk3hn1n8YoNU8Q3+/FutGrPWQrCNaeyqBjGCbpw0bjgFexfq/NBC/1Sv2kTKY65r
 LBD6DVoNWtOGjX3lW+muGXEvuAb5Poqkdq1Ymu9FoeZYUVY1MbOkiX51LgxXoXdJ/bsHlrzK/1O
 BCv3pMMA0jVjpHjsZjFvECpBORw6AKN7eV+siaIautkYGC4PGyc9oXh0t3lrqV0Uf8oR7Pvf
X-Authority-Analysis: v=2.4 cv=R7UDGcRX c=1 sm=1 tr=0 ts=682de454 cx=c_pps
 a=vy3nvQW9C2dqy/lMnN3IYg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=oWHj3RyY54zUyjr8eeQA:9 a=QEXdDO2ut3YA:10
 a=mHQ74H5e8mo-RpSg_uaF:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_04,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=868 priorityscore=1501 spamscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505210142

On 21/05/2025 17:08, Wasim Nazir wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add UFS support for qcs9075 IQ-9075-EVK board.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>

Squash two last patches into the previous one. Use Co-developed-by+SoB 
to denote all contributors.

-- 
With best wishes
Dmitry

