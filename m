Return-Path: <devicetree+bounces-231347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 176BDC0C8B2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 882661889DFD
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67CEC2F8BFA;
	Mon, 27 Oct 2025 08:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TcNoAXd8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A452F7ADE
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761555303; cv=none; b=PYusvsCvjsJS6bBvKVWG8L5LofxES3RqiT5gLUFR6aHS6EnaCu3rSmyRfFbTZTax6ppTeb5vn5z6j7deqIBYTb9iW+3J+ZxRAaC/45zZPxVd7onDwdEVxVtsL6IG0vpWzeKDt5mRPXpFn9Yflv0KMEHN03KzKfacNCq8epKU0Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761555303; c=relaxed/simple;
	bh=Pj2lXVMae3CZfgIfkYrPMpSLLllIWvsBpvG3NCusRVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kyvJzN1lTjzaZ4WaYji+moJVEDhCDV7Le2z6ouEJv2PnBO4d0iA86y0uXxYvrzGH7O22iqnLXFvdgr4qZY0aMph+M6nauxQqfRuAknYZOKAijY5UU8PT/PJViHcj3x4QLYiuwrdkchHbQ/MXXY6mpT0Rd6kpddgqb8YspbDop9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TcNoAXd8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8VuYt1049326
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:55:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x4U2PWY8cr/FMK0vqdnKMcpIi/sGzwjcU4PI70B7rUg=; b=TcNoAXd81f6HQu+z
	0mbjVanHskwYF7PxYj17zlh46MuRhGKvFLUHC0JZQUDEQpBWCu9AnOY+Wi3uNoqP
	GSDxzEGSEcYLShH9embAkR3kGJU3gtVQIiMACbo9KroVyMWE4aFIcnx8b9DXEjFl
	PyE1GhKNPPznZlno2q8MPXkBJ8yYuzNXckOGt05zEMtnhn3Qq7xqh7Bp96T2SKMr
	HwvHroaPw4wz0ntTmGxNoTp3R//aWWIDvEv8tK8tyQ5dIT8l72eXytsrv4JmNbjT
	PbpgjuFKQmpztXhctc//rGu7/j+hBtgF2tlOFtzUjNua/Sf0vWUx259nMxT5vsQW
	RL332g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0ps13ver-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:55:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87ff7511178so58226d6.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:55:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761555300; x=1762160100;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x4U2PWY8cr/FMK0vqdnKMcpIi/sGzwjcU4PI70B7rUg=;
        b=bus+geutivbY0T93ZR7cnrM+8V+5shWYV+hkSuVp6cSwOB6sAPIhCbWhNlGyFI0wXx
         gMuoJD3hJ60pHC6CQaUFUzd4gWt3zCyOFGOU/8oEU2RfYaba/3O0WP/nGT0GSsfN/lzn
         Ux6vq4ALt8eWjmDwrIM4aLuo2WnqZySD0EeRwWDxvBWegK+ozjx/zmq4uwCuxhDVPV1K
         t/EfMwRZFSg7/Fokhz0YuYHwOYqKF6yefSfCPsoNJLIBDjIjj58/tGqq1zdaKCmD/6Dz
         U0WzGd3hR9nluVur9XkfAoaHdMz4mkSb1HCu99pEn8O9iI5+sE8Xy5W62OjKD2LIEydX
         qPlA==
X-Forwarded-Encrypted: i=1; AJvYcCXw9M2+qgYMbo5OGvHvty5/eFPQ0xOmO+2ttKjWNoaHxcdVW1/6z9lwtUmPJL9tXkTh6i8C6stT4UZs@vger.kernel.org
X-Gm-Message-State: AOJu0YyND8Se4URThQu3eaCecqfqAlTIeSmF9X6e9Unb7vPcss737ENX
	1zsOsLDMCQesm4c38ecSfdcWrPoiWiXlMh9IFJzXYw4rOfBi7vbLFMnJn6lYTrLfmojYuHbXPoZ
	TLehHEJb8egjeKBeqW4Hs0FtFZs/2SO4akvyyEQOEEyBfDMKoe2jliY2B3kh5sUij
X-Gm-Gg: ASbGncvNX2nIjIy7abVM6Nr0WaFXJoKKlL8KKrd9J7XSxiUHPaYL10+lcIxyiJxeiCi
	IebOWpByb70B9VkyfZY7z0HZ5IGEADtS+W7PA8IHrZwfJD7QDDTdUM3qaoTSBnCaAWfwJQNTy66
	2WwFa5p3DA1rKO7drnZ11zL4eDt7J+n3ZRzQ5e64ITjqSAOb5/4laV4/C9/YkHr7t163P8j8j4e
	rK/x/GAqW50yHNoeyYEDVXoVe7gCzCJ09Mq2kywX4LT9J0nhQge/VrBqzl42d0fpT1nD7jRyjPZ
	noz1mc9vPHRdLi6mMEeeniKI8DJoDeMMIEe9Kq9ssqLhmElX36G+g5+LmHL4oeKkLOrHxB/K5dC
	15TSHX/Amj0Tp26B+rMjfwKbc5PRXd3lEO1fyNz53c9iBDCIL/YxPOqLa
X-Received: by 2002:a05:6214:d04:b0:87b:f3de:4959 with SMTP id 6a1803df08f44-87de6fca992mr179760796d6.0.1761555300162;
        Mon, 27 Oct 2025 01:55:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjXyLo7t7IGIUz9QcQc7pLfxebqJLF3z17+lxxzdsBZme+VkOVEPiJh584W8J7OE4nTGI7Cw==
X-Received: by 2002:a05:6214:d04:b0:87b:f3de:4959 with SMTP id 6a1803df08f44-87de6fca992mr179760726d6.0.1761555299748;
        Mon, 27 Oct 2025 01:54:59 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85413b88sm686752666b.55.2025.10.27.01.54.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 01:54:59 -0700 (PDT)
Message-ID: <053e3b32-12e9-45ed-b1d9-576de89ba10f@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 09:54:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: lemans: Add missing quirk for HS
 only USB controller
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251024105019.2220832-1-krishna.kurapati@oss.qualcomm.com>
 <20251024105019.2220832-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251024105019.2220832-3-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ju78bc4C c=1 sm=1 tr=0 ts=68ff3365 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=XwfBWbWjICH4QB9PVrQA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: DvM2grmwk1JKcT_VAVImWSaD1y7NFW1f
X-Proofpoint-GUID: DvM2grmwk1JKcT_VAVImWSaD1y7NFW1f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA4MiBTYWx0ZWRfXxp9iNmovQLWo
 F2kndk9LRs5M4U79qJpQD0UkNuujCP8CQCI8SBSx7HNBQDZHUL9dPFt2bfbSN8vu4r8kwCzTzwd
 u9ozcK19k9IWj5LmYwLHzzhkg1Zt/dLOXF77uiSs/Zuy+ScaQAWJl6jVivU+i/O/zxCgU9b0Nyp
 vJhBwviuMLBI/PF94H/zjaTWHEnCe5cDCi/M3NcD7rtBBMfgGTlixLDpgtn6kfmihR+0DzJcJw6
 KefeROnGcq8W4+FWe743M8UfN4rddPMDbURLRrZKqjdHfOGnUW0FaacHsTFjqfm4mGlCJmvF5dB
 MZ9bbx5ahUFW0gvVdD1/F7Nn6RaZi716RfuZf2BUzsGtruvpMbZmsXoMEot4q5UQ+wB6d3kf9E5
 LNf9RxtL6JyNqfVcXUh57ibDodSzzw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270082

On 10/24/25 12:50 PM, Krishna Kurapati wrote:
> The PIPE clock is provided by the USB3 PHY, which is predictably not
> connected to the HS-only controller. Add "qcom,select-utmi-as-pipe-clk"
> quirk to  HS only USB controller to disable pipe clock requirement.
> 
> Fixes: de1001525c1a ("arm64: dts: qcom: sa8775p: add USB nodes")
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

