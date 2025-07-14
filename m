Return-Path: <devicetree+bounces-195991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 751BBB03C03
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:38:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBA0A3A4B85
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72ADB244EA1;
	Mon, 14 Jul 2025 10:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iPJvzfiv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05329244668
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752489510; cv=none; b=Ca4WW72EYl36h5aQrbhPKc8Z6t37gP2wMmyIJcA7gVHT/DLqNttdx/4AFfK6AY3UFv+wcKm3RE9ty+xzlLRkNoX/GVWnn33fJM9Yj7af5OGRsrOuOhKB3GxGgd0SvOo/UIH/txKEmkR+jRGLIZaiFk/tOcJPntEgUqKzw0sCpqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752489510; c=relaxed/simple;
	bh=GZ2HGTWvnUJlQg65o+LqMmyqo5eSrqABc5KMQTX++6I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n316r35jJTry17c7qR0KNP6t3/SYToYXXLZ8fxU6qK7JeGFNzTBuXHROW7G7DaGTYtJ55MUzUgCZDTmcBTJ3RP+XuZvfbOeKHJHAOFe6uU44zU+dyEoPoTojf4MQ5dTgL6xYaG6OKH6q4M3XK0mDUoKoDeDnXlhHeuhmWJ765og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iPJvzfiv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E9aJD9007777
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:38:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L+pEamc9vV5xI2V2tpf5IYZyBkoyhwgtCvGmaF6cxpY=; b=iPJvzfivcslC8vxF
	9HUN3hO3mzFF0ee/o0RcLf+koZZ0vn4aaILSc8EtMtXNLduA35GhRDuQG8oi/7u5
	GtSqOK1iB5MHE3z/HSMtsqrake91ZwyYx94wK3F4DTY6hAt6E5IFQ7ACAmw9sb2X
	zKtdp8Vh9eh64wSe/qX4NBj4l/oUbjUFXcv3/RWi0d8Jb5xyUHGDwd7jmbB2XM+g
	BQ+ebwUaVSa4PxKGYxqTHqNRsII0irpgYgdYZ/b+9wuAsy+CSxYMBNzJKNiHNiBH
	LmxfDj+0nXQbN6NVfhjvjZfqMtT+rwOOY89Rogh/xlLVF405bVjl30MfjVRDrWSc
	9q3GbQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47v56a2x8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:38:28 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7dea65840b8so33367185a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:38:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752489507; x=1753094307;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L+pEamc9vV5xI2V2tpf5IYZyBkoyhwgtCvGmaF6cxpY=;
        b=wmf27Qu4xRtAwYox2Xnj+U/iZyrD4TU8++K4JDTW1vHSKCNscGSIpKnFSNzw6oyjkA
         qR9HsMDa42llZeRGTqwg4xqgEf+tjmHc5mrU11oLHJl7QMtKRs+wO1bxlpzFE9I+udbO
         S+4QlBIRy1wfRddcXAegFsNtjN5w+zt3K7BbdNRZfu4+0U8UqH/lzK+ZLkZpo5dDzRQV
         dbhN69A86lc3ho70XUPfKlKEwHGK5H6Gm9XRXqj9ACQHziG3AhsFugdYwTauhN18Xb3v
         0yisY2P/NHrMLQYG2GJEHqQzMmlQ58CPvyc1lQfKafKAEDM9zfAKLUt7PvMS/H4wqnQu
         r14w==
X-Forwarded-Encrypted: i=1; AJvYcCU7rUzA18Ix4WGWHRiXdrcQopFvsDmeHrZ+8zoVNuilQHVSwGgC0hqymb319i7eayAuNdABt6lLABuN@vger.kernel.org
X-Gm-Message-State: AOJu0YyWS31CRDbOlsZGg81Orb64eKfESC7v4okcDR8VRZA6nPb/I+jY
	qOYjp1IWCnRotvXJa9N585RU+CBQmAXh+3gsOOAEEeX+sBRGrfmOa6T+JEwVzI6WyfLEGwm5bsM
	LSHdWjxjRl5kY1Rp6CVa2JuPD/zJT2To+Uc9FU2ih6P1RqH0v1v3NTNs88xnOs6Ol
X-Gm-Gg: ASbGncsvvTAJYRMbaVFEc8q39LFoZYwZ9oR+ePxS/1PFScrumXmtC33wf4CIkZBsFO7
	5BDdLLH9SoywBxLEGhNjN8Bwppim7mkJj3BFoAKM1zpInDgn3ifgDxw5g46M7o51tec5fTGnyZA
	eYL64izJNrp64/ectjZl0wNGICfg0MH0q2Y7Dmu8IIdCZ8Q/i6Nyp3uUL+rdkRNuq3MtAMUczLK
	tiuvWVkRinlhKuf8jnrHcenhg/6+BxbmIiyhgxi71pM32JpW5losjN/xJ3Mvk1ZcP/Hg7rM/iYx
	xHXoCkEBWQrN/xl0kbl6DjQ3/k4j/lTdkdc+8tfrQ4PB+UepngrZ4zNt1OnXye4E5hpVM83JZNT
	FoS1DauN4TSosyDfd15v7
X-Received: by 2002:a05:620a:890c:b0:7e1:5c99:28ff with SMTP id af79cd13be357-7e15c993e83mr330823585a.5.1752489506590;
        Mon, 14 Jul 2025 03:38:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdHimNvkqNJF3cWwL5W/XfGk57FmjaL47RCsELpgNXpxCvIvqKwTIbW2FY0d+dH8dVZxn3QA==
X-Received: by 2002:a05:620a:890c:b0:7e1:5c99:28ff with SMTP id af79cd13be357-7e15c993e83mr330819885a.5.1752489506030;
        Mon, 14 Jul 2025 03:38:26 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c9542fe5sm5779560a12.35.2025.07.14.03.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 03:38:25 -0700 (PDT)
Message-ID: <75cab14e-e57d-4d1f-aaf2-ca75dd37154f@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 12:38:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] PCI: qcom: Add support for ECAM feature
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com
References: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
 <20250712-ecam_v4-v6-5-d820f912e354@qti.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250712-ecam_v4-v6-5-d820f912e354@qti.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tmoWF1arahuhFCKczs17YCHZK90B9NxN
X-Authority-Analysis: v=2.4 cv=X7BSKHTe c=1 sm=1 tr=0 ts=6874de24 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=obKXXINtG9EwW41erPwA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: tmoWF1arahuhFCKczs17YCHZK90B9NxN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA2MiBTYWx0ZWRfX1pbkUxJaJtyH
 mhoacfDzyZJvT9xaLmrM9jelGL+FfplzMs3tTwdNEGO6Sy14nYW2b4MfaVhu8m6tkM5ZPu6ramj
 vxaTpn0O9+TcgiRGFsndxGDl6ylWIvYqUAwOnexi9hzGJfEy3RFTKZ4CvVZPhR3JjB66Zck/nnC
 JSPdxi4RtXI21cd6GTL1DK8CglkwzMr2qC022YzCLHEGBm6tj+zy+/2hKajlVAVQzNWG0kktV0C
 gYvkloLkBDrJC7/XdVk94QJB7beAjigWdZfkbXRZ3WmZH2lmb7rHVzCbDSR3BykQcyI8kdbgPsu
 1aHUnGn+kmANtRQAhWwXoGrmb0yl//AX+Nzpin18TMDmJ9Pfvg2ojRnpqoqhn15m/v9l+TqSDbF
 CmsYYYjGFP/ZYiCgehgdg+YqY+AMQhz3Zt1vSrPyaJX0Vv30nKykjHSyHwW0/SMfWa/i6xVS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 mlxlogscore=686 suspectscore=0 phishscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 mlxscore=0 lowpriorityscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140062

On 7/12/25 1:42 AM, Krishna Chaitanya Chundru wrote:
> The ELBI registers falls after the DBI space, PARF_SLV_DBI_ELBI register
> gives us the offset from which ELBI starts. So override ELBI with the
> offset from PARF_SLV_DBI_ELBI and cfg win to map these regions.
> 
> On root bus, we have only the root port. Any access other than that
> should not go out of the link and should return all F's. Since the iATU
> is configured for the buses which starts after root bus, block the
> transactions starting from function 1 of the root bus to the end of
> the root bus (i.e from dbi_base + 4kb to dbi_base + 1MB) from going
> outside the link through ECAM blocker through PARF registers.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

[...]

> +	if (pp->ecam_mode) {
> +		/*
> +		 * Override ELBI in ecam mode, as in ecam mode
> +		 * ELBI moves along with the dbi config space.
> +		 */
> +		offset = readl(pcie->parf + PARF_SLV_DBI_ELBI);

I see that the offset is supposed to take up 12 lower bits with the
remaining ones being reserved. Out of abundance of caution, please
add a #define SLV_DBI_ELBI_ADDR_BASE GENMASK(11, 0) and FIELD_GET it

no concerns apart from that, I think

Konrad

