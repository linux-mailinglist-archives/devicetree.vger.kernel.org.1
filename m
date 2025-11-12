Return-Path: <devicetree+bounces-237475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3651FC515B0
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AF87534B934
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F6022F9980;
	Wed, 12 Nov 2025 09:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j3xbodKG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BGeXR9b6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE68C2DC76C
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762939755; cv=none; b=YcI8GQkYCiQd252a07OT/dJh7mzkQMCDywyAMzhxmTnRkoE95Dw2fByNtXGFWhDL6pYEFUoZJ36PYeBr45nP6JuvVJda9HoUaBxkb+78ZnshI3Tam1Snt8H58qm4djkNXJpfgRmFClRZO7hM89FPgy2VDPGHutDA0bJcsRv/oes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762939755; c=relaxed/simple;
	bh=Pm0KcGLdkUyYMLvnx9ZOl4Og/wEoF0xNClvZWZLEXWA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XWJi+LumV40G6ivWiBNVnRCzoyz6uu6WrhDwv9CAesZ6TbC4eWw00qtj+QkzO5sX3NCpUzwo6/TlhY201eR8Y4Gsm1c6jxHMubgW37mHfszi2f4RXQG6i5+NrsyEd18bMNsFShJKONqKs8Q9pFoa9zFwcO7RyTlSUKsrmxLEbNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j3xbodKG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BGeXR9b6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9Chx3510697
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Th69YKPq2o8N+ogj+emLojAGgDHwBfgYI/xXUfF0z4k=; b=j3xbodKGGdYS/RVC
	JvpIgMvofdY2F5xxtIvNLjjbc2+3PkZ9ZPtun3h3jWl0SGhM8jFfXGNPkltsrZLB
	lp/by6zszbPcDeXGXo9QCIW4e6wVuoUXovJTHTcf4BLY4y97twD3v9EEca71laly
	tIS6rxoBDXzjYjT4F5U4idZ3iNZ79+Q4PiAWDWxAZGAAfcyz/u6OJ8s0DT5p7KXd
	VR30pGRsl2O5rbyOKexAS/XHOSkzKDu23fTXzW65WSZYyXuchFh88C+X74r1imN3
	sk2hG4AE9hrvko6lKb2zXpO7bzEqu0ZRI72A0B4gwPYKwP9hj8nyig+QJee7jQ0V
	lxZqyw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqdgg1xx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:29:13 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-882384d1cc2so867036d6.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762939752; x=1763544552; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Th69YKPq2o8N+ogj+emLojAGgDHwBfgYI/xXUfF0z4k=;
        b=BGeXR9b64Gez2nQdMZA7mj5cy+bDR4rgjRcVSMmcc9woJ9gzjsFGwc8XbXtWKvWphV
         2VizsfeJby/573uAcF756o616Kd6elwigngP7rKOTBT4kwtZ2Q6lYEoGPhrVZ5xSiGsm
         7NgUxilSdafs1L22WW90BbsY2iK0QjbpZIgqofLtWigTWbYBZjpWdfjv4J0OjGb5Olsi
         IN2XsVDWq22rexxmDyNQoimHDl8c7EtjrYDvzKMc1J0bDMWmpJz3J7TkXvZSyOiDw1aL
         tI8IJdUw0W8cxBPOv6jfsKOwfnqSIS4JeQvwa0eP4sWZ2ddUSgRbXARAaYv6XCpkKfWo
         y+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762939752; x=1763544552;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Th69YKPq2o8N+ogj+emLojAGgDHwBfgYI/xXUfF0z4k=;
        b=FJVj4P5k7evhBh421jYCBoXC3Tha91Vr0tvA5JPG/cTr/UspVeJJ1D8Y4zndtCrnT2
         K7raGSS6O7nd8LlAKyvRjRPDz+AvQKSQ78AJSGOIDN7tDZFbL/YlbD8lMhzbMX7B3BW3
         ozi/vKo3g0bSF9zSefiBUuDnUq9tUMK8NWgy97kTi4LObmyRx+E3EQLgf4G68nmXbqfL
         2HahAURHBpMW59yT5uwDlydK/vhf4oCodhMZ2/n1r1eAPy4AttLAy4ujv5/X0oHJvU7F
         KwKa6Hs9z9WBgGGnz+QfkP8hHLrPq/hhAPkXrI//ApL5qgMWnDRgBCdrEmfyXnta3a77
         S7Vw==
X-Forwarded-Encrypted: i=1; AJvYcCV1UWuv474pnbFKPHdICS1nY+s8HDseP7vV/xciuqV6IHKqV5rpADTWMStUevvmKbdEcbisdbZM57zZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwwzO9trK7UQIfXNjfybUcHpqGm3agPXFY+2SjewEfuj0MtzouS
	5VV5Ioplezjz2QKSepfRzffKxo9+jnc1ByLnwP0hgmSPmvJuuvFaweLUEKANn5qBWlEfzwET5y5
	PzY49SLlq84qBqigR4ETE98bxh22AaHxQdhNHoxBU6N8H29ny6SSVI9KedtcWUreo
X-Gm-Gg: ASbGncuocRx+AJRgGALcpMU1sPSMPhSx7JdmDIXbZWXBLlLs5Qi3kv+P2LjZtj9nr/4
	T6GLRBGKPgxI6KnNKsjK1aYuOb0pbadiU2XMKuAlZHPtzgtsdn31pTm7Y3jys8Wip0Wo85zDqB7
	J5eUz4CZ9WhqRDe+w8BlfDfSVpAlaqlGKV46M/uaEBQ0AF57Yafd3hLD7LKOi4PZCX55+GTox/Z
	anOqgq6nKRJqg93tELBKC+UDK1GqoHEy/2tOdB9PQp54uEYqbPOfshm+35iolZamj3LPy2icXLa
	V1SHiLM68BEFqdYbGPcrWcj6lrM2+UDZOjTqsbiXHzb8oYeRx3+5rP23Shtg8+2twpwOHyK3TJ7
	Lh4g9u+RWWF8Tggx7yHdCIJQCXz4JtfqbGoymz5GtQUUr32+wRRoJ0jMW
X-Received: by 2002:a05:622a:1808:b0:4ed:3cfa:638a with SMTP id d75a77b69052e-4eddbd6f1bdmr17958891cf.8.1762939752213;
        Wed, 12 Nov 2025 01:29:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEqlHgXC45rT8J+7YIfCSleUn1AIbYKCpDCT55SsVNBiHkKcHouXI74qE3/rDIrYIBNFZHQdQ==
X-Received: by 2002:a05:622a:1808:b0:4ed:3cfa:638a with SMTP id d75a77b69052e-4eddbd6f1bdmr17958671cf.8.1762939751809;
        Wed, 12 Nov 2025 01:29:11 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf7231dcsm1551653366b.31.2025.11.12.01.29.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 01:29:11 -0800 (PST)
Message-ID: <9d959c15-5b19-4173-9a02-4dbeed2609de@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 10:29:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 3/3] arm64: dts: qcom: sm8750-qrd: Add SDC2 node for
 sm8750 qrd board
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Abel Vesa <abel.vesa@linaro.org>
References: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
 <20251112071234.2570251-4-sarthak.garg@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251112071234.2570251-4-sarthak.garg@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dtrWylg4 c=1 sm=1 tr=0 ts=69145369 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=UtbPLzXqTwk2hxi6kqQA:9 a=QEXdDO2ut3YA:10 a=l-yEoJkE5-sA:10
 a=zgiPjhLxNE0A:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: B6s0y3-ucawGsdYe-hazEN9x9tZoNWBI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3NSBTYWx0ZWRfX8KoHJ22Qr8w1
 ryRVmj5a/t3iGTddVXDNPtDAi9Sq7/c3SBPzVzEOUalbDFBbxSZADrtVd2wMObWmSQHEhXQpEPw
 JQAs6McGfIToWPlPaXZb7UmWfWMAYPQv+LiSbL0IV7gKN7mPfm7PBCJO759ASXU7JeEijMwpcxZ
 gM9XpXYJAiNZZZiTzmDdVkjdPKPok3Ds6fe/3WBIXtzYRCwsWpxR8yM/zlBDmnTaNfUk5sKkG4j
 VieZTqX6z5DDkDxqhels4sloYpk0u/TUPQTP3vGorq1W5gjpLqk07nHlMDZn6NAu3R3Dt+RqOOl
 XnREBVfajMmTDV2wAToeJ0wp1lkdpGIdscBYMY3y6XCOvj51upyMZ7nQfhRmJYOHDnURMq30T0l
 w9pj1gx9gP0kOqOB0FfOeI/Dy/J7CA==
X-Proofpoint-ORIG-GUID: B6s0y3-ucawGsdYe-hazEN9x9tZoNWBI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0
 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120075

On 11/12/25 8:12 AM, Sarthak Garg wrote:
> Enable SD Card host controller for sm8750 qrd board.
> 
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

