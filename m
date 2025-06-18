Return-Path: <devicetree+bounces-187308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 534F8ADF7BA
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 22:32:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E76EF177A6B
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 20:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC9E221ABCF;
	Wed, 18 Jun 2025 20:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DtBzThqj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D5D21B196
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 20:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750278735; cv=none; b=bd5LqoXmMdRxzjfeCs6xt6u+HQZDKrKzDuhmUobt0TVBiNXKEdiL/chZZ8x59krZjowtWwvU4pu/XaUcWM2gf6mTb9Eq0j0swOqoJc+WFpH9J+1IRGWQBy+2ypsqvYp21MFV0DGGIuaRQ9/o6ngNeEo1xIaxtY56hkAa2hgtcAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750278735; c=relaxed/simple;
	bh=O8JroxGk+Jl47yBcZyk/78kA/+EH2JyBWKCuffMf9Pc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eVFrrdUtkIxP381pR9kyKe8+lU9QbwFBWtWVXAAgAgmcpdljWqjejcL9C47AfjJWfDsmCOIQkjbyFB+Qk7WMgEFLxw+JKcDitaxDU7VrwBQe12ancSdEpQ1Wnesz66zN0cSJ1387H032Hz09Mfo7ClgQIgFx/SJLnNggyjqGPCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DtBzThqj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55IBuCKt024069
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 20:32:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EMKZ3B/JFyMsqt76FuJhG6cvTI0uCazGHj/jsvOr3G8=; b=DtBzThqjAAGEydAA
	4yOm0mXb5jy69JUxdDEGkGv8z+tEbEEtYbkZkns6WF7FIfOw0xUc2szZ3eqBNVrX
	ggrbdMDtWe02i+argYLRiSN1PJHJ1vqO5ZV2yf1x2xdqE7z7BfEvnXqxJ1dq1kZg
	BGSnev3ZIWRilKIgD2rbcq32hM7Dh1uTfefIPLm4iO6CEm59luN+n2c1QzBtOr23
	NHenCZhycNgI2GLOAQCLv0fxOo+M4qNJYwlZwi+qjzMU8jd6OuM+UkEkZXRmtPw1
	DlMhjdw5JPF35Gnpe+x04kToPvNGlR9ae0lgoT3l0m2r4J6qME7n9mQ460oyCuM+
	TIuuKA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47bw139j9w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 20:32:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0976a24ceso2403085a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:32:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750278732; x=1750883532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EMKZ3B/JFyMsqt76FuJhG6cvTI0uCazGHj/jsvOr3G8=;
        b=C4bgbd/7YvXDNPcJCYhaG/K5J+C7UhHJoCUdQiBmHAGu4HIVnxVXD9chc15379qYMn
         WfY2XbPyLe9KmKjjkN2u3gvPtoH1QGYchSL7AKg8FvrL2Oq2hfX2cb1VzdkymWnPaJt8
         0e/X4e1rbsHChsuLw7CtLZ1il+egHhUP67gABBL+URaW3LJCo4wYK5jtd3l2wO5cScei
         D7zx5MgDPi06amkFo9XM9q4ajyQYA4GzUj2/CZNA8Unbme3fH2FSQrV9lseRVmDa+VL7
         TUhq9VmahuZWOLAdQlp7VfdrkucKd4VrSNd8UlyXn1ehDHs149Qm9Rieiz3e3NLVnMPr
         MsRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWBJrpjZG9j3VS+txfTtEKJiq4K/XB6mew00NblTozYXj+TBcYFS5sRxu7x9Otq743qzvLNU2uJvtt@vger.kernel.org
X-Gm-Message-State: AOJu0YzXP+a/goVGn9u5gOICEI89CdnybMzyuCBkh46AmkBYQn47WB+0
	OINBmBcUyVIxKEBwvXDYKSqg8LeEgySv78qHLFE2UyGc4O+8vtBkIpJHTF2slyM130Yg1Cd5hFw
	41781IhEdJpV+QLXxV7mc+UbenTKGkML4FSW8r9P4kHiyzpmr5dleJZt8k59krY65
X-Gm-Gg: ASbGncsvXvqUE9BKgnBPv3nqVp6Xz5t5LqZE7pBkyIvgU4XLX6eaDGUxnj9LCu9mlBb
	O79f7hTts/Rj7rXao00EiImAliA6eOAHwVH0x2Mx68DbpL6eVILPfx16Px0JZQ7Fv6p/h8lFrkB
	zsrK/Rg5q3dgE0vxkn3yOro8/s57w2C8zwHawtbviZIgUFBBei/EZmro9Scnrn5sVJ3RrP9ParU
	ZeKwE/vD4Hnd4gWjyHFoJsLrov0mCKtYIxM5qb6uruRgf5uZjC64EcsVzNAC1Iy/df/Gh2E38WX
	4j9ibhlHWivrk4hCXXxCx0OrmZ96x3vZVvK5RCyLULtn5rc126qm79BWSJn5f/rGcbuiJkb8Zkk
	UI0A=
X-Received: by 2002:a05:620a:430c:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7d3f1bde64amr37693285a.11.1750278732207;
        Wed, 18 Jun 2025 13:32:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/MIIbr9GmTJBVslf38SMQbyK7FgY0tGiofcr+MItIMPe4cF4Dwk6UkUrq/85UyafeLZyU7Q==
X-Received: by 2002:a05:620a:430c:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7d3f1bde64amr37692285a.11.1750278731799;
        Wed, 18 Jun 2025 13:32:11 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec8158d4dsm1101150666b.28.2025.06.18.13.32.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jun 2025 13:32:11 -0700 (PDT)
Message-ID: <57267306-1dc1-476c-8e4d-02e75b1b79d9@oss.qualcomm.com>
Date: Wed, 18 Jun 2025 22:32:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: use 'pcie' as node name for
 'pcie0'
To: Gabor Juhos <j4g8y7@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        devi priya <quic_devipriy@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250618-ipq9574-pcie0-name-v1-1-f0a8016ea504@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250618-ipq9574-pcie0-name-v1-1-f0a8016ea504@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QbBmvtbv c=1 sm=1 tr=0 ts=6853224d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: ICIxcWtRXVFm4YtoyKz8H_nxqbV50c0B
X-Proofpoint-GUID: ICIxcWtRXVFm4YtoyKz8H_nxqbV50c0B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE3NSBTYWx0ZWRfX58v1b5afEfH+
 NWuipl3FLGuehVTzMIKoX16PryXr8lFGk9786391fZQA16vHR75RW6GmyYfmbF2Ll8/YS2WTrQe
 07n2OpbgGxbsIBHmX9IDHey6Nf4VUiqOEUFLwz482bYQkQ8VoHOyureuwPHOkYYfC9PUdyZbv9o
 7jlPXfHDxAAK1h1CAs013qDZYku+F7qA4MJxpfqGiPRLD0td8jV103H7MQl/YAiP5ltBwfqn71p
 tGwQEKBUf0b9ehQTPR/4XKzuZ9agSwVCNZKeSy5AIacyVZnPxIZ3Fn2uo3UNZA+BDT/ijBp5dEt
 mOind+GJ0gbe9JNFcfO0iVpLVXMtAy6DvI2FYJS3MMG8pwCghktS4NFpElPPza6a8nSesuRcF5C
 aXZ4lfgayCXcQLHJm9qfma1YbqJmKV2qjA49w/sFIwPH5slvwI/VNk9Qthk0V0PyQaFoInym
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 malwarescore=0 mlxlogscore=797 bulkscore=0
 adultscore=0 phishscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 mlxscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506180175

On 6/18/25 10:14 PM, Gabor Juhos wrote:
> The PCI controller at address 28000000 supports PCIe only, so use 'pcie'
> as node name for that. This ensures that all PCIe controller instance
> nodes are using the same name.
> 
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

