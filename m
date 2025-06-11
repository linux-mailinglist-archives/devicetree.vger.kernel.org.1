Return-Path: <devicetree+bounces-184886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A085DAD5800
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 16:06:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D74017C5F6
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 14:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64BAC288527;
	Wed, 11 Jun 2025 14:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BJy/RFzt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAE3276046
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749650735; cv=none; b=NBVXuRtadCxLnxKsCnWO3BO3We/V8r2nGqQJD79SZX0qLziT8w/Y6Sl3X5J5v2PzYI48FLjyTxiZHLOLFdngfpsnk4cN84g6HCOXSK/O2MXHFrk2+zw5rmewYf6j8lR5tdSEXqH2dl1JKcilfFOAENv1rSzFVvi8E0uUawdy+SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749650735; c=relaxed/simple;
	bh=6G9tui49Pl6t8FhP304AnRe5Leht2tjw78tlBb8NDg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZBwkSvvNw/w0Aaa6muIuj2LTec/KwoV/dOu5MuJLvm8Q7Hl2ntl/9aIIshdh0RRNM6VXC0roa+lzyNPa3m9CK0Ihdjv8eDXnJAUIpyxPDFp6AJ5+BZfIbJXUQpWMKu1wdyygkMJ6pLCNN1rTEuBpsl5lKL2a0zCA/CviIyVtjZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BJy/RFzt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DLbP011142
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:05:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Iob8U7YD7MEMiWqzIOI3EZ7da32JCzTnZeJI7FMOQk=; b=BJy/RFztREifvkwo
	DWm2CpYTJ1Y9NIR0hzC9mPX32l0eRoPB3zi/emMldy7IlVNIYsJWG9QlvtN32yEl
	VwhcOxnv4ayZJIhFOQ5K6PyRoBgFAWRd5b1nCtzQqGVcoscFDzytgglPtAU1FKdV
	vT6ftCHz48QWboVq12qi/dyeziUuAuFy44ShNiVa4MSSfsfeJ0PtZCEl/5nDUu0P
	nYoBFbwEI6loxQ6PVhqen974OBIm3BGQwFlvTmJDI8qenwva4RIsB+OQgpO0cAnf
	dTNB4A8VFy7ZAaeRbi/7L1zdRuDmMeiP4pzW0GAiRMaB8Uycp+DQ33oXpDO7a5ka
	V7R8Qw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ekpvva6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:05:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d094e04aa4so19111685a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:05:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749650732; x=1750255532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Iob8U7YD7MEMiWqzIOI3EZ7da32JCzTnZeJI7FMOQk=;
        b=dp78jx4ivCin46W87Qhr6aB6wNXC2T0UvY3yiuTlTZENw49CSpmfE9bNqS00Jlvr8a
         QQx5Xewtdrx0nPD96/X+yL+I2m1K+NZUBbITsVy2ELMhOR4jn05W1ZD2V0vz3AoOneqc
         YaOU6YWpIxQS6yGgZJczrJIBCLoDTvrF8FVL8Ml2legXVMyKnYPO9tD8bInGdjjYANkE
         qyuC6uwCB33LHsdho6Ay5TPMwWZeM3ZbuYaWH4m0hWNA5QZesTcpzO1QiVIMo5GX2S17
         J915POMvW8z7uXVQ5bZAFTha7XQ6UXj8NygPftjpzx58iGFmMl0sWj5Uv3l3nDST1DwD
         WMYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrKnI6SkSjDb6O8JVictj2C2CHTNkf037QrMeBlVdbBbfq6SO3vnKeLZjEUfEW8vxZKEK+Cdfi7wl8@vger.kernel.org
X-Gm-Message-State: AOJu0YyDGZOmyhK8C2a5PmEqf8Lpb9hmnMYCMmlgYvwxDicPNgzi/CGi
	mnp/Dqm7FtwV2g7ZRs4iWUes9oCmSPohzLo8qlRx5C1K4mChBe0V6Uh5PQk/DmWKjvwCM9kCrhw
	esx14Wr9cMi0Y/p30g/0d87TBix74Eo38oEtbor+4Mv9zf2PB9w6O1nsSmm5VvTPn
X-Gm-Gg: ASbGncvqZ3qylSzB9uuTMAz07wmwOECfLCO796blK+brpdD4uBbLNBCcBeAfJU2l5b0
	h63rCv4sssnQdHrrIBkrZyru/BN0WqMW8W1uinG5MsaVBW9gvTzV2QOYp1/5seTNtGP0QQWagcT
	cCliwZ5cdldtNZ5CijrhGum4iFzK5JzFyUfEymfihP9pdlNNwT1NKcE0xf25sdISqDmUqxP0NMu
	lrFercoDpHbk79D0hv++0Z3c9XrRSkLchuI0anQDnbXYzY7w9eV9kLmkXVPtZBgqeQ2nnGiyNSL
	ZIdIjz1R1TClZEcT9AJA8uL0FU3g1wNpp+uJGw5kz8mRIlITMdqykWjRq5S9FAoikUuZ9X/kn66
	OYkA=
X-Received: by 2002:a05:620a:40d3:b0:7d0:a1da:3a3f with SMTP id af79cd13be357-7d3a87bfca6mr202127685a.3.1749650731716;
        Wed, 11 Jun 2025 07:05:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsjWsY1cXUFTQcF+ifXByM9+WwgbDrztbt+NRy9N//FCfd4BglmorTmESm5A47wcPzSWX2Qw==
X-Received: by 2002:a05:620a:40d3:b0:7d0:a1da:3a3f with SMTP id af79cd13be357-7d3a87bfca6mr202126485a.3.1749650731259;
        Wed, 11 Jun 2025 07:05:31 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-607783e6728sm7502889a12.77.2025.06.11.07.05.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 07:05:30 -0700 (PDT)
Message-ID: <a848f4b3-43fd-4225-a2ef-9c1b29c3f306@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 16:05:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs615: disable the CTI device of
 the camera block
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jie Gan <quic_jiegan@quicinc.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250611030003.3801-1-jie.gan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250611030003.3801-1-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JcO8rVKV c=1 sm=1 tr=0 ts=68498d2d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=22OTyeyB-Dq4f2GHltIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDExOCBTYWx0ZWRfXzCW+Zi4QTymB
 scLpRV1PPOou5MWuw+AoR9e3BxAMAUzWlj7pv8I1XCu5jUl7Oc2Z4z+b/W4/AqKWZbB6KnQRDt5
 DVgmlPtBDrffT0H5oAU+ZpzSQxWVhm4kqnTOhikRY3fMQ7NXkTUJajNQjIcZ/aoZ9AWLI4tCiQE
 niRHlQndItn2d71JdAtGSOudlNF9Bg9Hvz5NpxWaI5hKQ7c1+LblU/EMI6PtkRxG1JNXVriW+S0
 +/9qPwO2SkQ0Spd5sdaXE4fOEgifPHkeHspUda6Fzp63keV7nT07qVteguTgfohgZ6fSNX/RZXy
 NovVYwuZQeRM7V3m5zbPFrq8gsYGsnHWY09oAvT68de2T1AGWZz3kXQEcjXdlG1K8251acdhOPf
 dwXb0jI6PlRxvbTbsuLQbBIKK+RYnQuN/zQ469cu9JVMFQA6MtsDjW4MEJ4c5O34eDzXaP1B
X-Proofpoint-GUID: 3hejA5g62gnFFtM4enUUfHReWI581wMj
X-Proofpoint-ORIG-GUID: 3hejA5g62gnFFtM4enUUfHReWI581wMj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=654 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110118

On 6/11/25 5:00 AM, Jie Gan wrote:
> Disable the CTI device of the camera block to prevent potential NoC errors
> during AMBA bus device matching.
> 
> The clocks for the Qualcomm Debug Subsystem (QDSS) are managed by aoss_qmp
> through a mailbox. However, the camera block resides outside the AP domain,
> meaning its QDSS clock cannot be controlled via aoss_qmp.
> 
> Fixes: bf469630552a ("arm64: dts: qcom: qcs615: Add coresight nodes")
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

