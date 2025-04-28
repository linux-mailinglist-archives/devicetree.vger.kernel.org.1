Return-Path: <devicetree+bounces-171681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 551F4A9FC34
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:31:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9DCE67A9972
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 21:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF73207A20;
	Mon, 28 Apr 2025 21:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKCocxwV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31D81DB124
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745875892; cv=none; b=LPiOqfFbZSboQfpsoAkaN63i1Rm5KN/IMoiNeNCz8J3GVCtHJDwQ4XVPjxkahl0hyLxvlUIGLYeVoaJuYnnr4Yw4+9C6M5UcdD+jHZOZGL+ZLHvEiqlNuseKYM/Ismc3t1psGO09w1HD5AlkBb1d0MpmVgI/dqhvCqVfA+8T2gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745875892; c=relaxed/simple;
	bh=1uQ1p9HChNwz5v+PF4C2YcBZe/F9h7GtadiTffhnSMc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lXSyJ4v7Pfsog6zy84CjBKviMyZj5dQ9AqbFgN6M/mTTKZI0209HKfuE5vXgumjDaHyyXLV8svojnVG+nHa6R3BmBKDZV6Vqswa0lNVUjUD3C3N8/AaSAy6LRw0mI40HuUKjZtJCC9nSsQqiWCgaYUXvGYwKgtJL8q1PKSzq8+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKCocxwV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SACQUK027117
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	koDjRjQqH2to/vO+qlVb+RlrUwtA9Ktaqvw64q5jU34=; b=WKCocxwVJdi83sdA
	NZE+FOJ/vswHygQx6VSJL5Xx1QIlHd7tfYTKDSlBo7jPIAQNu7lcu7ceqtjrGPY7
	hlUXDxUDGpw1SdievXxOqfI9TDdux+eB0JRRKZGPS7PfU+eZiTryj+WgDFM3Bit5
	k5e+ySLioBldbaOncUMQAjVRU3/S9PCm+63BmrRjVKog3q64kk4YvDo/Z/NL43+T
	YxsIRorF2FR7X1LoYUFvgkC5LPEZG2lAnbZoXv76rGJqDESzkeafaVslOSa/hh3C
	bhPVAhz+03r6+2mJ0Uz66M/DZWAHQLJMV1eXAxvtWDARMJcGneXO3X7dTMnobroa
	Er8syA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qjwtd1p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 21:31:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4768b27fef3so8628901cf.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 14:31:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745875889; x=1746480689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=koDjRjQqH2to/vO+qlVb+RlrUwtA9Ktaqvw64q5jU34=;
        b=LWT4jDQLUACksfVLWZN1yBzDwuoSYx1OpD40gJ48y00qlRQzma6RMS4P4H4sGOCyr4
         40ktBV9Sl0UnPGoDHrzUV5GUl/eD+f//EnQvvsWL5p8bmKZgb3RWkA5Rkz6lRFOGwWMi
         Unyx2I5vzy5F+/t5NU90Zy6PZhVx1wpvCEQ30alKO810mki+/5aegQk1/GBa40qpiyZz
         AaMy1msU9JPhz/VcjY1i4B2UcIIUhmVHX0JLDDPqn/WqMBsYj/8bq8UbAoSvTJnb09uM
         ahQM6hZ0JdpGRLJNBehrDQomOC5mG6/1tCjr6mfKOX+9nv7byoR/8A01LB0iFng/RSJw
         5ivg==
X-Forwarded-Encrypted: i=1; AJvYcCX3aMIQrFO+y8opIyv90Q25LW1YMqwQQIVhA0gEzVse7uo5++Rdy8lREMjtywm/AEUxXoHb3q6QLl0+@vger.kernel.org
X-Gm-Message-State: AOJu0YxLp19OngIk4GQ4sGTAwg2csp1g+/dZ6xwM1Nlu+UJPL7Y1ksQs
	3V4pL/UZCBc5+lsbbTPr3RUqnbMfcYxypAzdzaAAGTkuuFH1lZJCQSrqI/7wWbJNcrWlvLFH1Fk
	rmPJDJTc+P1niHBv7y6toe0OxqCz40iC98o/OU9ljvOOQ+ZX3xyHz4d49BHQo
X-Gm-Gg: ASbGncsBn8yKYIPnO327tjKj/jF9R000mJRh3PaKFikfvGpykEpZAjkqmWhqLBYITLs
	+mhKEIdweH/ANrXZ1mQvOJnKp2WED6exR5UMWCG2JmRMyoZU9eLa/pkJZ502TvbO5+Bv3gQdKiV
	Y5UId4j/fOVsTivROGNPf53TNJPflwL+A51SIIbn6IZYzvwEtack0q1O+LsWpYEGIANqKhAZ52f
	UNioXDViq+Mf/UhFkUcwep75KHtaYFjofydLlp412IQMnrIrujTN0bt+o1a/vQYPNwXAGcqrXkx
	8sVRP9ZO/X05o81Pkd8jLQkzGPH2oBwjPK7/jrhdyu0HB9dGzxTfzCbGsqDUgXeAVg==
X-Received: by 2002:a05:622a:24a:b0:47a:e5b6:50dc with SMTP id d75a77b69052e-488682ffe52mr4176101cf.10.1745875888945;
        Mon, 28 Apr 2025 14:31:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENWhwgKml8ygNyxQTKheJZ8sJhCkDikYrPeQpN26DX8AIlzvKeWw7xfymuBifBcbXQUgqFqQ==
X-Received: by 2002:a05:622a:24a:b0:47a:e5b6:50dc with SMTP id d75a77b69052e-488682ffe52mr4175951cf.10.1745875888589;
        Mon, 28 Apr 2025 14:31:28 -0700 (PDT)
Received: from [192.168.65.47] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4f841fsm682105066b.72.2025.04.28.14.31.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 14:31:28 -0700 (PDT)
Message-ID: <81205948-ae43-44ee-aa07-e490ea3bba23@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 23:31:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/WIP 1/4] arm64: dts: qcom: sm8750: Add display (MDSS)
 with Display CC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar
 <abhinavk@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
 <20250424-sm8750-display-dts-v1-1-6fb22ca95f38@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424-sm8750-display-dts-v1-1-6fb22ca95f38@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rCU2zBM93zfFFMDOp2eXjCI86xzXBi4w
X-Proofpoint-GUID: rCU2zBM93zfFFMDOp2eXjCI86xzXBi4w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDE3MyBTYWx0ZWRfX9TmBJ57Y/q5P ShzzfXyDvEuCXzPuJMTzL45KFx2cJr53WPvGzIuPkE0NO4oLaegVsYH7+oSu2lgmHmMBVm3AeoC faTkhOgEgSYagOBLpCUntcM4IIZrZkj8ghVSxS90NM1pOHfHSfzZdW9Horz4WgVy8Ffq//7RYYJ
 15Yl6Q6kiscXzptCH+NNR9ulMTFCmPTSrdktboxMvA3gZX6g0y6Ek++2n2smFZ9qvD5NQJ2ICpu ErBoZCHrqONKaqXa3Id5HMxzHBS2M7S1v8S9PU3UTAP8klmXQWSIVi2++2qHMfWwAediqCvcCgn LuJXzNEdPnqr+W5IrnKZBRgTgktHSCpUDlsK3rTU3v+ofm3mAEXxfsNbDydxpWHPurYUVpKfCLe
 graWxmCJkRjzb0D4V/BvIhOG4TeA6it2ctbBgnm13IM5YtTxNpIXT3lFACjZlVHlsA3zqahK
X-Authority-Analysis: v=2.4 cv=c/urQQ9l c=1 sm=1 tr=0 ts=680ff3b1 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=PLh6gWFcBclqXqoiQUIA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_08,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=744
 phishscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280173

On 4/24/25 3:04 PM, Krzysztof Kozlowski wrote:
> Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
> DisplayPort and Display Clock Controller.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

[...]

> +				mdp_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +

The computer tells me there's also a 156 MHz rate @ SVS_D1

Maybe Abhinav could chime in whether we should add it or not

[...]

> +				mdss_dsi_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +

Similarly there's a 140.63 MHz rate at SVS_D1, but it seems odd
with the decimals

Konrad

