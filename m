Return-Path: <devicetree+bounces-162373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E456A780AC
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:40:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E3437A25B4
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3535F20D4F7;
	Tue,  1 Apr 2025 16:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a70nKcpy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE40420B814
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743525636; cv=none; b=o6Ud6qrMa+GGeRPqpC2bhJzl7c13z2xlnGWVmV3FzVmxZDBfub0F2DatPsPuahazUCHsxFm5iK+XYkIIqNxZl8au64/w4aev4Uvy6METhsXsmJz+PEnlz0QzHpfR7OWK8JpNygphGY6giVmVi+i7/KnFCWuob2BaJj3ilEQpEZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743525636; c=relaxed/simple;
	bh=UHpWWs+DyipNZHEV2Nkr4YRS5WpwRh+UNqWpXhbSsXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vDUIkoOVggAhvYuACl6W9y2K1A3c/ZRaE9NkP+guQs/o9rrGImHe2qHWZ3nW6rsRPAYb89zHq+v/DOxHnFRvYrFkqCQm1+B2siizd6ok5PyQbVwUNW5i2hS9tvYUIjrqvQ6M4ZIV1Ys3CrD/mT2X2GsD98YdFCJQw17+M21N+W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a70nKcpy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531BQdSI002553
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 16:40:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/379CuoW3tzmnDJsyDy/0ujjjwBPjP0Zru4t6cZwrYI=; b=a70nKcpyHh8Ft3MK
	dAD1X5izfpBIhtoGopYSOCahmi0n/Sq6Nkx0hsZlFYduFuTaETSouFmSZjc1AZRl
	V8xXi1mMY+bsO86eCY+XYoKBOwdmMXaWGW7XRGrDRAZV8ud2Sfemshdks444K2vo
	TpKaeqxWM5f1Yuo49+LWgWJr/MbdgaSYD9UCDNGB2y5GQlFel6gOn3skxSyAvo60
	ruOzjxomi9pBdxTKhTpduCIXfzjl7FsG1KjkjeZ93YqL0QF+1d8umK/JpQSLrHIE
	6k7uwa3BW7PJyaWjbJ62qeWSvkfjx2cLZTkh57ej9u+8lWJw6urK+hHaUyy5SUs7
	4R52yA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45pa5brk6q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 16:40:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c547ab8273so29713785a.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 09:40:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743525632; x=1744130432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/379CuoW3tzmnDJsyDy/0ujjjwBPjP0Zru4t6cZwrYI=;
        b=xVQvJ64lQM85eXK0Wp+BrZNJ+AE1wUoTu9CSM8yPY3L/q6Gp4S1KP5pq1jnDlUGuv/
         AZB5EwjSwm+mNw2dd0sJ4BOFFpeYIBJDuody4xVAXT49dRHKlgCZqJtUnN232N2MyBGY
         z02u11p59f0/CY1/iph8iClpIC7fadbHyIN+5nmacdHztSqvF4H78sRd6Gx6epNeG6au
         bJoOobKbHzC0UU+c65F8wffAx/o9XqYyM7Rp5CUiqCkxf7ZQQuNV5PkgJu48ZGFUCBDj
         fq4IBH7aITBeUHi7DGqbdAsK9JhdLyye2tw4GcpAtW8sWu0YqSj233wkSuT6F3tmCLBN
         K4QA==
X-Forwarded-Encrypted: i=1; AJvYcCVUlgImTzqgoV/jKshOr8o2y2Gk3YG8YtsfXAcJ0lNit4L72xitF9oW/Y+Y4LEGTf6JuKPKuRC8kROH@vger.kernel.org
X-Gm-Message-State: AOJu0YyTEdzeaDYU3/TpJNXJ5uimLbxmCiK7X/YDHrV1Ee3UV0Mx+CGg
	mxm1O1HZgUjvuY+2U3uYVY00/IUVEZ6x2soVXz15PjsYjwppnZ1+PI8GVvy88zTpMYp2eoUc5sG
	vMHeHzajX6eTBhSPI4VFqSFJa08m8CA2IEDy83XLj16Wekb8HxW7YGIfR12yG
X-Gm-Gg: ASbGnctXr/GEovnM5JGMx8h1qngZyiTSqVpoW5SaC6zVCIs8Y5TUodYlw8PK60vBinI
	W1qKnrXpNQaV7bN1uqlN8nz8xtmB5tY3VoFgU1UEDyOdcihuJf4uEy/iXS04p3JrKm/P3XpRa28
	+VYd2tFvEIveOfciOXXk8uYgv04nGVl6W0L8fTh4EFqwc+UQJOne1CtD2qCADDhP+NlIOTztHXi
	udA96IjcEPC00LMDPXvDJAb9PB9yIh+HXTdNrU2gOflvoSl6RQg9Q0hymHx3hK8QFaIt0sp7HRT
	4MziXnmCuMTsSBFz0OWtbePhYQU+5vZeWjtk4wTcJawBcbtc6wfmtyWfKU9lhgl/mJwSjQ==
X-Received: by 2002:a05:620a:2806:b0:7c5:8f40:3316 with SMTP id af79cd13be357-7c75c904636mr166845685a.6.1743525632705;
        Tue, 01 Apr 2025 09:40:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKdu3svWPD4gijx0TLoynI97bgyGfAj18omhMqo9yqcZrBylhTXjcw7OpbvttjPcNFzPQb6Q==
X-Received: by 2002:a05:620a:2806:b0:7c5:8f40:3316 with SMTP id af79cd13be357-7c75c904636mr166844285a.6.1743525632324;
        Tue, 01 Apr 2025 09:40:32 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7192ea05fsm784381966b.86.2025.04.01.09.40.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 09:40:31 -0700 (PDT)
Message-ID: <25bd3c63-5231-437d-8e81-9e2198dfa0d3@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 18:40:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs615: add QCrypto nodes
To: Abhinaba Rakshit <quic_arakshit@quicinc.com>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250318-enable-qce-for-qcs615-v2-0-c5e05fe22572@quicinc.com>
 <20250318-enable-qce-for-qcs615-v2-2-c5e05fe22572@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250318-enable-qce-for-qcs615-v2-2-c5e05fe22572@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: bfcFXUmIysReJb8ccgGuPOGST-ekOoRU
X-Authority-Analysis: v=2.4 cv=YqcPR5YX c=1 sm=1 tr=0 ts=67ec1701 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=rugxzkDQvrqM6iDmQMkA:9 a=QEXdDO2ut3YA:10
 a=cf2_AmsjeD8A:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: bfcFXUmIysReJb8ccgGuPOGST-ekOoRU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0
 suspectscore=0 mlxlogscore=696 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010102

On 3/18/25 10:43 AM, Abhinaba Rakshit wrote:
> Add the QCE and Crypto BAM DMA nodes.
> 
> Signed-off-by: Abhinaba Rakshit <quic_arakshit@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

