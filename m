Return-Path: <devicetree+bounces-229911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 739FFBFD924
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:27:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCAA43AEB80
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A69E62853F7;
	Wed, 22 Oct 2025 17:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EVWQCw0r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DF4286D56
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761153582; cv=none; b=aEG7VjzRMemklDgHcH2G889u2+13YftKrjeB+9TQNsnYHmZyx5D5xyYux3CUlrhCvP/wZLHn1tfS4hLaZRe3OYZcIr31On+am7Ni56N0U0JPvx/6iW/DjvhIPkjQcA+JrkoXXZM0VjWAZCrqh1fFjxp23u35/A8bx+0/PaXc+gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761153582; c=relaxed/simple;
	bh=gOQwJElKrLlL+KczaQjBEU0WOC+y5P4gVQMiGU5ncQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ca6T67DQbAiAe9Isqb9Y4eqggrGAymXxlKQRJQPU49DibfRai2WunQ+0m2yeluyZqfiMUd+Y61xiaMbLWriSdMmuNiFHxbu//5/+BH3fsB8NZoceObwMxDhJAiaDJ3y0Ccj6381Gy3hvbOH+rXUKa7RNJ3bYwrYJFGnmKIZwrUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EVWQCw0r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M9SGfp020413
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:19:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1ObhDx2qKilPXrpU/ecszP1sikcNLUfUe5WUKxrKas0=; b=EVWQCw0r6O7WujXl
	Q7FsvceaN/p+YMzjCUZ4WD3SMhwUnWNjLavMDJ3l1HEdHNImw46Lpo7YhZKWXwiK
	Lu82CGQH94Jqkjr7o/2FhaU6kNo2EoZHdxgW/bBNdHUaTlTX2U5Vpiodr5iYZs2q
	EXPAXYvoOek5eCLpZRicIbRByJEvSGhdCyUSfBT406E1TG/oQOGRH6wwiRiR874j
	5njdBEGx2LmXDej1Tw/mpNx8s9fA2px2uPk4uh5RiAe+B94TU8W2RxsxMJwdokkx
	JtAiH1W7GYHoi2W/g3qz4lPTdvoUHyTkb7o0ATLTSKQ0pIpKO1oIHBTizVYyiMGL
	0SjH8A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3445hqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:19:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e89d7946a1so4156651cf.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:19:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761153577; x=1761758377;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1ObhDx2qKilPXrpU/ecszP1sikcNLUfUe5WUKxrKas0=;
        b=GKGm65cc5owz/3nC7N64+lBOa1vDWrGX6WteJDjbbfhw8o0b6GrxD5Tr52J9V41af3
         Qs95EG4mKEjFGZWYEXkhYinS+c+BBmXsL7E7WrUTQFYiDq/vxVVsTmiViGuQwkJ7EOWK
         h8EIa8uQ/PKZIG9x26QnnhnaxSjvy4eEcQ23by1JX31UOsSwg5woxuK/f89aNqj3QAwJ
         bCf2+2Z16ln8iOcru+ZFDMBev+sqYZy4weRVmShVUrf9kAZIPh99lCrd/4dKnWB9d+qA
         1/aNJy6O1GNv+JEBkapZwjvTfEP7Vi53OqvJFHWZAKNurm5gPQyScSK3pOFkeTpxMvXB
         TyMA==
X-Forwarded-Encrypted: i=1; AJvYcCWA0H5l65kseijaT/UN155DzkaTCoH5Warn67SuTE+UA19+OVH9AEJObRzLxDkdTm93v/8wF/k9Up6M@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9QaHLAxj21d8rd4FVUGXyeLFguYvc0srEaq8d8pn80X2VZDqO
	XWtTgW6uz2Jzbi4qp/Z/BL0oMH76w1FZPDpVvdcpMXiF1QIvaREQug4erbdlnqQyqsBps8/mZym
	iyOQW2bqj0r9RmQ+NM+z/EMKcIUiAPttRJ7nXg56EwB9bbSHmU/JaQIwKIDyUrCT8
X-Gm-Gg: ASbGncsK/NuDCW/WkC0YhcdiQC5YqRemrxqht+sBP9jYGzzjqIDdAlFHnUqIMWcI8SX
	oe1Y2YsEjdLrFi4r/WGYPEscsaYDqjk/c+b0V8ww/yR+TYbZaG0ZHhwp/7G0LVlvZHtxqxHkvRE
	YBYCV37T7S4TWqLHk+W3SKDNFBuooEt6iJeWnt23QfUJXVhNC+cbYV+V3Xqz0JBUvSm0H7aUh2c
	8B6TuedA0Ga+lDFOVL+X8gTfI4CO5/xQW95gQt1S/yTV77ybOY8RFXo53cWJAvEAaXcsMDSLcxu
	xWzbKq/UJyU5ubHaCgVKcQiYkHemGxzgOxPiO+zXZaDcmL4hAB1i/TB2zM5dFZTZvUFvZem2Z6q
	KaP7PFN2fQtbEE8+gFr83C5FW+ORt/Xdw7P3nbOxxucPOBACmi1t3OXfU
X-Received: by 2002:ac8:6210:0:b0:4e8:959e:440e with SMTP id d75a77b69052e-4e89d35aecfmr132575411cf.10.1761153577584;
        Wed, 22 Oct 2025 10:19:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1reHXf9fw3+r5fcINDoVpcwTbqNCUu/7wsWRAFjR33coa1mmho1pVdqG0TLpKriqCc6KFvQ==
X-Received: by 2002:ac8:6210:0:b0:4e8:959e:440e with SMTP id d75a77b69052e-4e89d35aecfmr132575051cf.10.1761153577093;
        Wed, 22 Oct 2025 10:19:37 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65ebe4a5ecsm1389504466b.81.2025.10.22.10.19.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 10:19:36 -0700 (PDT)
Message-ID: <32702920-19d6-45dc-bf1e-8a90b1b8c9d3@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 19:19:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs615: add ufs and emmc inline
 crypto engine nodes
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>
Cc: linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org
References: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
 <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-4-2a34d8d03c72@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-4-2a34d8d03c72@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TJOYpn_mpxgyLTpmsHS6mZzZ8FYT_VZ0
X-Proofpoint-ORIG-GUID: TJOYpn_mpxgyLTpmsHS6mZzZ8FYT_VZ0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX6IuD0BVsGZDK
 Dis4CxblHMCKGGgYmBkCy7WhnFCF+TWx2S2QscW7DnozANYmtSYJ6IU0Z+BtkXHE7lBNj/t8vWa
 Qa22WfzSb2bSNpEj51kdBnKbTxqXtq/7ksfVKPBcuQP5bqLRXxRFqvc/o2XU7fcML13N0Y7TYpE
 w3m2Mxz3Cb+imCS3HdQXmj7KE9rEzo+/t/kp7kN/Ih+geqK+QWHMPQGUFwt3HoZiBdNXYMpzwPZ
 DCxhZjy+djFjy32oNlcpnFmXqlprko5R6QyF3EC4hkFYqOL52ll5i8s4+qfALBec+K9A1lDFAOX
 quaDJGCkNn4IpRQKZnhs0MLVgOSGwgWWB8Z3rdjXQ8fbnUERy6zaIo/q4amWz/8JLgSKTiiMpX9
 L7abXyfGhsqyxix72s5Pp7lliY1GLg==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f9122a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FCLlhkshBCn6XtExdV0A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

On 10/9/25 8:18 AM, Abhinaba Rakshit wrote:
> Add separate ICE nodes for eMMC and UFS for QCS615 platform.
> 
> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> ---

The commit message lacks a problem statement

Konrad

