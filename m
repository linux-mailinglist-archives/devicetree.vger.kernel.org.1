Return-Path: <devicetree+bounces-194128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B584AFCC39
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 15:35:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4A681AA7367
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 13:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48652DCF64;
	Tue,  8 Jul 2025 13:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lxpQsEDs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EEC2DC358
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 13:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751981726; cv=none; b=oE2fifJ0a0lxPZwcnz81HtD5Kpa9jhKoIbcaAD3PAjmVJE2+TMpmT+ORVnL6M8XvJonEISp6gKcn2dTaTAfUtqOkTZgHj7nG7qSRjob0Fp9/X3PV/eEjqM0hIsh2UAVy//eLGzHMDXGzWCEc5ngHksS0HvNmx0GO9uRHJ9cToHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751981726; c=relaxed/simple;
	bh=sdwE2TVMETQv0lnaZK8FIqzkA22DNUIr0KqoTetmc4g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HAJB3M6dQ0qqu8uoVPNDg0Ije19OmjNE4Do4Un3OB59aIXgwhYWhitaS9hv8QUGAU7md32XzesEr1tm2zMn9tNH2yyKoEIgo0YiaSYe/iNImT8HeezALTbMYhGkYbuSihOaKPBfRKPT/VzXZDOiwrwIfwtD8sEUnDTlgY/luZdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lxpQsEDs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAO9e030357
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 13:35:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	au7Gd+bh35WYq3bg+QnE4G6bdktpjK9eW4ZKsorDzos=; b=lxpQsEDsgkgHIcp2
	nBDQhPovOPOmc//dR3UxhpWsvKPQhJuAQps5rKJeX1W1c4e/Oe90WSJbR1IdSp3C
	Xi8G/9kuQtX/0kHYQhYiwGWDhwmysmqTc+cCLFJn0cPmCNCJtUf4qeoZyVfFxvEf
	LwyEVuf1aYw5XfBIpWgsNgSvTJuqPkHuYUMp2Tf/EpDG9xxfHPXeZiyHJt34rUbh
	AcbCB5hsuC7mg0CAP4OtdRfdL4lQ1w6lNvVY6ISP1MqoAEYP/2h6T0Fq7cZ8nZfA
	M6ta3Kj/X9YGhCWxjlQGU86jSPQXdrCAaM4qad4qvlyAHgSoxGCa6zrCXd2kSx1D
	1XSf1w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47r9b0ue6f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 13:35:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a804126ed6so14179981cf.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 06:35:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751981723; x=1752586523;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=au7Gd+bh35WYq3bg+QnE4G6bdktpjK9eW4ZKsorDzos=;
        b=wTpjQQxarHpZ9MGry+NagBdfUgg59SKYmrgXp3H/wA1UdS/e9LtOeXv/en7Xx/qVKs
         0BNjYBDyTCKOKbIGuhS14W1gFRVgWDNz4it84e1GtjoCFtf4PE5gO1ARP/duu3Wyc/Es
         zTHq5u3sIWsnEcD7fk5GpYjsqy6jm45H+y3IjB5lp5wFUPMyfoVo+EYsZya14gr+QqAO
         tLo3B2Ykspps78wj25ocbWwiTl7d2DlAdgG8TZZONEkkQRIpF5QRRgDAPbE3Kz0MASw0
         tI33RyPFAbd2fi/pBrImT03vUxsp4nDVAxim04D5H1u55DpCO0MJtHOOG+eccQUv2tPU
         9+9g==
X-Forwarded-Encrypted: i=1; AJvYcCWkreKw6jQeOmlUg6qSZpog/I9lCroHiO+54Hn/HBfhL7dOwvVSs+MOUDxkLERe9Th1W9AZtyPK2tsT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt/gEN1Yfaj30cVxXIXEkxPxhfd9qsB7AzYGAaaKgirW20qAh9
	1Q6eyuscI6mbdehuqT+07bTqn5cGjs1EYe2KpDRQsj1Oc9cWR1a6F6sTKy5FugL8fFTFq3eJgAb
	WxIywPvYotMcxKNN42mbA6n+uAEDYuNRdGG8Zk8ty7teH331FDVu1QD93GTurCLoTtqPpuI74
X-Gm-Gg: ASbGncsE4mZMIvpTZ0d1rOD7kOameJ7kM7CC0hUcij71jghHzglQYHs2jegNvLsM7/F
	yPYCPWV9Fu1jE7WczG3hD2l3Tz2itpINJim0ltgIb+CXb2tO5mNS/ox/5WTjlqMo7wmygCNSqsV
	pLfhyovvDKd6dlyWxfUqN6G28F0uuw7anzr30Ua+ADawwefFbWKNbcOPCK7HP0BS1CGh8Pcr9gW
	mkn+dXcNW3fB71AHQ1YOThOjH0jr0+ZoFicEEXzjoVF2pZFDLzdfufynGIB9bX4kXyOFpzOHR28
	uwooFDQ2DJbsoOF14vUMA7+p68/WLJUotHXDE30I9ciVYDJGKDayfDhiHfcetfXJOTFWzA13YKq
	Zteo=
X-Received: by 2002:a05:622a:13cf:b0:4a9:7029:ac46 with SMTP id d75a77b69052e-4a99779aa26mr87767001cf.13.1751981722800;
        Tue, 08 Jul 2025 06:35:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGX1XpFgWzBh5b3kelydKCB/xI5OEVjo9gU67wYMsPaB750Y8UR7hb8TdcGBNORBgDHXBEW1Q==
X-Received: by 2002:a05:622a:13cf:b0:4a9:7029:ac46 with SMTP id d75a77b69052e-4a99779aa26mr87766791cf.13.1751981722380;
        Tue, 08 Jul 2025 06:35:22 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6958586sm891855266b.72.2025.07.08.06.35.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 06:35:21 -0700 (PDT)
Message-ID: <048c4cdf-8942-4250-bbfb-3f6a255a5e30@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 15:35:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sc8180x: Add video clock
 controller node
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20250702-sc8180x-videocc-dt-v3-0-916d443d8a38@quicinc.com>
 <20250702-sc8180x-videocc-dt-v3-2-916d443d8a38@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250702-sc8180x-videocc-dt-v3-2-916d443d8a38@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dYuA3WXe c=1 sm=1 tr=0 ts=686d1e9c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=gRvX9a0DaF5FQXGff3AA:9 a=QEXdDO2ut3YA:10 a=pgX1na8PQfsA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDExMyBTYWx0ZWRfX7K+9j7ZlcXan
 3TzHXbBdVIpX7EHVHX3t6NTHuFXR4iteg/4EAIipyHaAfmmtC7zv8XV1pW61+1WN0WsX4+lq39k
 dKyaqjcysEC0mijypbIBtMBdRWkYzKMo0qcG8L77PWOQcU/q1kjvk6pD80SrZKgEfKKtezDsnrx
 j9k0zdC1ndwH1IVcWBmjcgoG5bDUAtM23lBZ+6OMagf40yyoKmU3nVgbaooH7cUbks9vowq/XFQ
 lHqZyLDbypYlFSepFjUr27PCPYw9fpxHxAQTG+qcw+jdIuGoTMqIYez3CPrctUg3EvJUh9NJnVq
 hh7H73DBk1SZrYJs244MJfXAVcu+oP4Jp7tqPKGb0AN7vvmmKI8MA5h+Of9x2RYDbokUidDZtSE
 7Eb12AwT6yAsa1h6TSEiOhsi0MiSuwnAUXXZ0ipJlDB2kl9WuEoNuIN+YJFgMGcJ3IrNnm73
X-Proofpoint-GUID: vscQTZ1gfMU67MBfnm0RLm6UgdGNh-Hj
X-Proofpoint-ORIG-GUID: vscQTZ1gfMU67MBfnm0RLm6UgdGNh-Hj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 mlxlogscore=826 malwarescore=0
 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080113

On 7/2/25 5:13 PM, Satya Priya Kakitapalli wrote:
> Add device node for video clock controller on Qualcomm
> sc8180x platform.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

