Return-Path: <devicetree+bounces-141076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95466A1D50F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 12:00:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F27333A4CF2
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D47E1FECAF;
	Mon, 27 Jan 2025 10:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pyQ3DmcB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110261FE479
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737975580; cv=none; b=rCRMoW8+S8cTiGKJN8si+bWrG2XNSFD0ji4EQZ5cfE9qIYdIoKUvl3gTYBrjmAZpNGTGrFs8NnuApyAP0hHD+zg/zyonRj2khzgYakupxY06h3yMUB9YZ2cwVK97Rsmj9aK7S/rfT8MTIqA/ZUQJCNqIIc3KpDVRA8Fc90YlZuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737975580; c=relaxed/simple;
	bh=nWH+iekn7GkXcLKxqEi35vMR591l7VPFOcdswndn04o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cey+W9uwXfJS2686zTEFLbplA7WnidUawSdOEyHEiCvpum3z6EuRXQWwvYFFbG1a6iZU0DxDWDz7waKmBzd4+uwVOiusqMTJkABwDDo6tPf2pEq+blBoJqtUlHWj1PaNT+kXRmA5Y+1RhxutiKw1VqieJwivzAyd1n7W/NanCZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pyQ3DmcB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R9m0xN028379
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:59:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hi9XeSmMUDXqVaHmXu4tsv7y6mk68YgQK0bsrMF+iyI=; b=pyQ3DmcBT8FzPZc6
	oUvxRpcYSCUv5CAehvqOXxyortEzGh3m3fQR8wWmKBDJAQcIgZ7V4cjz84h/h9Xd
	ADfyfK3DaTZnKnWfM3C1pXyosY6k6wWIPr0bJmdCNBkdp0ZHecDvPLDu9MRdM5C3
	rX9Jj1MYzShMxbF0Qp9EkJNYGGKywraaZO69Rrru6OmRdKy4VR0ofPHCftVtwyy2
	eath2WwPExPaInuVcNheTkxZT0t0D52T3WQ/zjmiacgkpUokgNopXd6rwouvSejS
	s7d86Q9fikP/j/BlAgiAsIi/eUQ4lNLBCavt8OPMFV/PB8AbM7/stTq7YQFeNFgC
	nAYC7Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e7tj83wu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:59:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46e4842dbd0so14204641cf.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 02:59:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737975576; x=1738580376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hi9XeSmMUDXqVaHmXu4tsv7y6mk68YgQK0bsrMF+iyI=;
        b=QHRt2Yugcp0ozUmfzo6iph6vSTIejQgRbfQTwnT7ZZa4HyBmtW0MqySqHXIxBLTVl5
         vvfjKl1kSmt6Mw4YadXhsMXkKSSLJB9dDQHDg/U+eIWe0tUuEWaj9BEnOFykAoaLwV0J
         usXEGuH9Isi7GvvIB1hMJFDxVYzcpwu55LviXd5sKCoakA+m9KEFqdLKst8kJP3vSVV0
         3XqfaFs9R6SU2tv5Dgv7jChzZh0IdqAKkUboWcgzWTYAaKNep3m2EHfrDqzg8i/aw0Lo
         Ek5Z2GR64rBYRFIgtqlIKDUcCm+tVpAfkryKruYq0nAPMtv9mVMspReRaLohI0I2HoGw
         Kepw==
X-Forwarded-Encrypted: i=1; AJvYcCWHwbyNu8mn41Hek+o8bsWy6o4KppIxM5vZvws8DIxD6t3V4zpq4t4KGSiKsq5YY+TYsffFZMkYLQNU@vger.kernel.org
X-Gm-Message-State: AOJu0YxArdpuwYMR+8EX5GihD1Uadvv4AnBg5G4slrFWVPgDWc9J6kjC
	MmslVncQisiC6kgXt84f1uxzIKHVpS9MR3uMwNkRuFwb1Iv+zZhUu0HMUNf4AJbbWSPug3vFtb1
	PKHuKF/deYlLsHCZCTGfR59fzcxXpGKqgmqANz4SRAIf0pZFr7nk6jIeebrJW
X-Gm-Gg: ASbGncu17Q/dz4HT8/FbiYkmIXtz5gAS6OQDvcb50PTGbYr+Il3ETi1JyobbFhtX0X+
	gQ2IbMMzXdUyrrHepBtV9T9WDAsQgBCgtYveJzyhCg3UWIeHzktJ7D7CAE+hfMN1/PxQyRyFGK8
	v+JXlgpHGiVG5oMMLE0GQFAKOPQrQ801NZDYcL6Ss7IsWdXHXHygjdtmiV4fG3X2r88OGCrMHrq
	RUaopBLl4qJ5axi8bNxXwqsD6vYfxGVDOxxCKkMhEm4zM2jhMzDWUYcEGjswLAQhoJrGsuhH9/r
	e+EEyI/ihDfF7x1yvsVaCF8p0jAsdlDaYwCjWLifsU7NsxEbwOV4vnKcFhw=
X-Received: by 2002:ac8:7d13:0:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-46e12a15fd7mr218924321cf.2.1737975575928;
        Mon, 27 Jan 2025 02:59:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEBCS9L9ozzBbArn6w5TjI3xjX+UztookUyf3Hez57UlQAKPnFdDbeD+TstgcpSROj1ybiaAQ==
X-Received: by 2002:ac8:7d13:0:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-46e12a15fd7mr218924211cf.2.1737975575510;
        Mon, 27 Jan 2025 02:59:35 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760ab26asm561293566b.111.2025.01.27.02.59.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:59:35 -0800 (PST)
Message-ID: <662396b8-fe56-4610-8868-09e57c062fff@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:59:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5332: Configure I2C APPS clock
 frequency
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250113003348.1459042-1-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113003348.1459042-1-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 2DXwQtXJqSzIcZiUHxQ9E4cyQpKRPK6i
X-Proofpoint-GUID: 2DXwQtXJqSzIcZiUHxQ9E4cyQpKRPK6i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 suspectscore=0 mlxlogscore=977 clxscore=1015 spamscore=0 mlxscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270088

On 13.01.2025 1:33 AM, Manikanta Mylavarapu wrote:
> Set the I2C APPS clock frequency to 50MHz in accordance with the
> frequency plan.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

This should be done in the driver instead.

Since it already consumes a clock handle, you should be able to
simply sprinkle a clk_set_rate call somewhere in there

Konrad

