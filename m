Return-Path: <devicetree+bounces-224532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31301BC4D31
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:33:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFF8519E21B5
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA5624887E;
	Wed,  8 Oct 2025 12:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OwWibGsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E37246782
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759926797; cv=none; b=RNzJY5E0rbt4MZKImIipMiYBpasv4V1EnWReNUVSKiE2uUJiG8lNQdE/R/lbt3FyXexNA2YNb5QUBFkc+dUVE2XOIe06VZnWDHzF07YRdtwI9TiwYRaWZPlkstcYz3nncnLRnF4aV5uqJjOufEJRYkdv4hKxGrncKoXCTSoyHb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759926797; c=relaxed/simple;
	bh=//8t1NhDDv3aZbpcl1yQGBSqtJZBajxd+nNDjr8+aZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nPEZpop50Wak/Z4RlukzmXM8l8k/1AIqlFz9NB4I5FyLSg8gOGoO5TNBMLtCzY/m0liPm7zIQ+rEX7L+sW5K+Oklqs1xiDgWi2wDsDwqVTEwIbKCPZWkvkGWJgMzGuWnVPl7RHUG9JYr2c2kPDethNbJ7TSiXGJK4cYZSHM2I34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OwWibGsX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890mWc029962
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:33:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z6wfZSf95CHgtI1KREXLOgXa2xinD3Ro5IOxdVOqt1o=; b=OwWibGsXastOCWwr
	cudCgCHYC3kFVxy/+gifKXtSuRoJA12pH6krQQ/9vpIXomveUt8DRhn4APEXzvLk
	/PjS8JG/Y9rHRb6Zo2AKnO3FStOc4wtM0hk0LkczeluGOkwKBc83qJ3F4OC0y1Sw
	1wZBz9HejLtzAyp72fBgzF3kbYFBH2BlLevmJgdfXH3KhIdU0K7+EUGkDr1ZlNro
	qgZXCpyGb3RenY1eURE67+op9heoga2pHXrtJkaBPj07IanynFy4Ofc0i9ILfbKU
	uJDL42//AcZJx77rVT7ISV9NAJbQSVnZurZSkzSSihW3XPF71TIaGRZ+DZvwejfo
	2XnlAA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgtg46-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:33:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8572f379832so183528785a.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:33:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759926793; x=1760531593;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z6wfZSf95CHgtI1KREXLOgXa2xinD3Ro5IOxdVOqt1o=;
        b=av7QyD9Gz1BK4b3/6PzUdYr9tsd1ZbDE4n63sl+j1kbOOhikuFHUmwLVpNJO5Gt2pA
         j0C0WyexNn7z3fkJ0m984MLKFGwiPcr/dE7CQwbmdHOC0H7rJTQW9gyDpDVjaBC4bEVc
         tEvJNLnyhTn/OXDYwg33foXaCzGcB86wWNPySnlcJvlTMepH6f3xk0s5R7LVpL9Wyamq
         BEJyM4W+hc7TL4ZC3yRGPltZPuANEcfxgN7hAprnkvtH1q0Fj/FojnbNuuUsrM55MxjY
         L78/kmatNYquofCvTVDZ9PPAJsCynGJsUvgN+4Mb4GLo+oEtpeTKh5klrNPrgPLjqK1Z
         b0Cw==
X-Forwarded-Encrypted: i=1; AJvYcCUqZD9+l0peYzLCqv8nDwEcfpjrTvrtOxq6FZ8kgjHOSaK94AV6jHE3yRyCZThBna2+Nr7rOj+SiU0D@vger.kernel.org
X-Gm-Message-State: AOJu0YxqULCYfR9kCdhXm+C4B5evm6gkqnEoZ52NlyU/hXLv8+EJOojI
	XdFc2XTOSOXlrLaj3CN6X2PYLzkp8yWG0pYrAuhtq66u66diJuvd3vZJh7YAT/rjz6ioIeHb28Z
	8c06CQM/GoZQGd/1p9Sr1FK7Z02alxVDCerwWSq31q1wAv2UXzxcfyOZce5BTqDJymqGx5OVo
X-Gm-Gg: ASbGncuHYLRwczLpWk2McUHsb35SyRMeUISRH/gk/0buja/Pq9vE5d1MQZTmqetgaWx
	/wvOPowge3Gi1JBZ+aWFzZk9yRttLLyOpAY1Ibm9FFksEIkimD/AJNEjjHwOlvMosaQmJts/Y42
	8Xao13xFEJEhOoh/BNvpc1olJNsGmdBpYM9/KA6s9vI0tsL9EdSr/haE7LwNCES1/pe71Hx7DBa
	ebYJ5PZjbFsz6YYe4NtJNAKaP5zaK/Q2bzGVtqp4ADg5Vi0vUrL5ViwOMgoIAK9HAt5TDbfPGZJ
	yie9/agSTYCHvsazknL2lmY3jPDGxMKa7+hfFtRndqI388yzmKO7Im2mHPwF/C+v0kNp5B3/tZv
	ODnFQZNRn6llKL3fR+RhZsn1m320=
X-Received: by 2002:a05:620a:4456:b0:85e:429b:b5ae with SMTP id af79cd13be357-88354304602mr338462085a.12.1759926793221;
        Wed, 08 Oct 2025 05:33:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAq5uquGqZ+wqlPlamUADJJRHAYrFogaML2CeN1PWbZyjBahtgdInWklh6rUXYPttev4j0qQ==
X-Received: by 2002:a05:620a:4456:b0:85e:429b:b5ae with SMTP id af79cd13be357-88354304602mr338458985a.12.1759926792743;
        Wed, 08 Oct 2025 05:33:12 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b57f0asm1648527866b.77.2025.10.08.05.33.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:33:12 -0700 (PDT)
Message-ID: <24544f3e-f9c3-4650-a300-a786ef589be5@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 14:33:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] arm64: dts: qcom: ipq5332: Enable QPIC SPI NAND
 support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20251008090413.458791-1-quic_mdalam@quicinc.com>
 <20251008090413.458791-8-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008090413.458791-8-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX3LPPS4arAjgM
 Gig7l2WrPHCdfaBHl+0mx63Sd0To84JKRH8Vrbue8/7Lrmzwm3Zk2HqwWGKri9b2C5Q08bWEmsI
 QrvEEVtRXBAvPpkPYWTPx8AstVefodvshZaWfe4ZBZKhwTd+LeaCtNUvsXSTezMSVrdc1d2VAfh
 tB1T8OPSy/gV3aLCHFF3n1Hfk3J/tkyWG4XpTwF6V+CxHRv4io0V6jB43wVZA4ejjFmSXJpKkfn
 LkNEfPuNBdXirYryJilBSstpChIv0InaHlJUC3moduaS1jToJJOyneSIByJx/NnTUnGi6v0Bz9q
 bOUtPBHuYLcVwMP0qgNcJA2mlsjWk90qPRrigvUaYG6H4RZ5wrGAeENku0F/GnG2nwFNNf0efzc
 M/PyNX6xUTTjXougD6DeD6c4m4T7QA==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e65a0a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Swz0U_bwno74A2bXjT8A:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: BbTWYeeC-QzLYWHBC1z6jIwuxvfeU-3d
X-Proofpoint-ORIG-GUID: BbTWYeeC-QzLYWHBC1z6jIwuxvfeU-3d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/8/25 11:04 AM, Md Sadre Alam wrote:
> Enable QPIC SPI NAND flash controller support on the IPQ5332 reference
> design platform.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

subject: ipq5332 -> ipq5332-rdp-common:

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

