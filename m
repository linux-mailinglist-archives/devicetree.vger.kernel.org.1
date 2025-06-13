Return-Path: <devicetree+bounces-185830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D18AD959E
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22BBF189F573
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 19:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3004022F74E;
	Fri, 13 Jun 2025 19:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UgjwVlGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46B620371E
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749843326; cv=none; b=UC1CAhgvoNxKyyfXbH1qOFi+UKdY34VZexcIbeXXs0gAxAfJidZW5XRop94s0dg25x0XTygnKRGjHoJP3eG2Ze11Csg9m/v1vjRxWYvc0keeXlfAL+Tvmwl1y1smmGB0wc0LBQapPoXX+494h7yadac/crvv1Iu6pKl5g9LhNXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749843326; c=relaxed/simple;
	bh=CxVcCuNKA9XI5R3ASHx9CRmZxlLWdMHDULPSfVRTboI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=SGZEZlmLmbHW4rYzpPNS9hBX0ShfTzmnjc5ruOiEY0Fq1dVqACr+W9v5AT+Tw5YhZwocVd6mHtSpVvQdD6wbesqtwxtYUD8bRetJ5nOF+ra0HsgMKQTIKK8H7L9pX7xQH32mR/SB6XowjQ3oBNXVvJHM9cjwsH423nLC3AGEXxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UgjwVlGq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55D4tpKY006466
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:35:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9sJ9x5HtZOfvSPdgXzzpXNU9n5skLvyOXtJDjWiUkks=; b=UgjwVlGqio9OA9gr
	LUSld1gsJ0VUXSnP7HMrWlvIE7mGDIyaL8djBy1/su/ioLwYrghWKHYlKu2COukL
	O/mFaciNY0UjNTqADQEPxFbNMXIRwTerML5OrDRHW6Ld+zmqhLkbnh/DMJFH+iKX
	0LvB9rb3bSuZGBgOJS7+MXjPTX+ZJw5+c8qX0iJ/vvrQvBi8YQmMxxDXhjoR9mVh
	ZnU12o4mSOF3Bv2HAlsj7KLq2/CwTMGYNMT2AhK6L3RODuIOSNuvkzqvnj4bAyNU
	8Qx6cJTgcpdmRQkEEwgv8eABAUPl8oK1IjPK4WMdSoceI/yQQThOSIcNdNjI67rA
	qrTsYg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476jrhk7f1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:35:23 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6facbe71504so6407706d6.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 12:35:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749843322; x=1750448122;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9sJ9x5HtZOfvSPdgXzzpXNU9n5skLvyOXtJDjWiUkks=;
        b=E9ion3OVjSKMUQ/EJPEPAjzsw2h1GYLfNSiJH2ism0ZKIjAuYkk3jINsT3Nghx6u3s
         cRg2ZcrQ3bsRXNQBn0U3l4e0iAI3j3kar5nqB45xb0IiKASBYSHeeNrEEEc25quUCTV0
         E5lTF7iRnD8Kq/sPCejLjNdgfuFHvt1w3nRpN4ZRbLDbxg6lDOZods+X5ymgHSq76ujI
         mMhiGQHA4RMAStQJgbJuIlXiKR516Efg1eapKnv3IUWbaxXp4vslzwNrcuVtKVXsMZfn
         dcmB+V9vgAFvFHVUtweW2xTIm7EdLjoLx7lDFzUopbANGlyJ85ys2ozoi+Ztc838uZgT
         wXdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGDP93NDfbjBvRgZhWlCElW6/y6V0bvPk1uMlyl2unirTV64s3NttVH2IHmBi0EFftcxsL+GW1skXg@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ7qJE2dTptQ4rwSLanY/t6cPhY/7ePqm6RqDSvTxNmMJxRWBR
	ETiXOMEBtbAalQKaYTzOhf/xk0f3NcReEKoNOsHYpBYT4Oa05znSp6+cnEM30Whi7DuLPNsYVho
	xpNzptj8Z7rzT6qHn+RdmYmo9ZeI29sifFuqNap6dvnHpM3u3Lintebjl7PdKHnyu
X-Gm-Gg: ASbGncuaj+iSCgM3BMVWKrQdsb+qQOZKRCnMh6EECDzvv7qmPRzqBu9wAnl55987DMU
	a+GIPVFD+CxZhFrCHfYLzBwfrwBqnVy7DABuFJUk5X88e5RPZRQWTRQm7RbjRr/rjPpZCwVtf2S
	rerJqD6sVCOIdW0AqNPeTiEsm68PVyXSLVy0vOHepjshl0Gr6zQFQrHZwZ6nGOWcAdJ3L4VbSdT
	bHXlSM+RGpS3rs4r3sIvKgU690WBYQIiyTybnbEBiKqTFoHNwfdvvLGwe6hG+HEzgS/k99lyEfB
	XyIq2bG20TdeVIfgkHOGd+6mcbekLuoedyUhy8HzKDou9+OManiXkl+UTHVGwwq281azZ+jFmKD
	WzJU=
X-Received: by 2002:a05:6214:3986:b0:6f2:c10b:db11 with SMTP id 6a1803df08f44-6fb47793f60mr2998836d6.6.1749843322530;
        Fri, 13 Jun 2025 12:35:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEp+7e8UZQ86JloHzUxMiaR0mM1Dp9awUto6a7J9KV3sbTs0TzjrH3O/HbjpeZUBgtEA5FfSw==
X-Received: by 2002:a05:6214:3986:b0:6f2:c10b:db11 with SMTP id 6a1803df08f44-6fb47793f60mr2998516d6.6.1749843322057;
        Fri, 13 Jun 2025 12:35:22 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec897ac25sm174065766b.157.2025.06.13.12.35.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 12:35:21 -0700 (PDT)
Message-ID: <91dde259-d8ac-4585-8c22-d3d772c2c340@oss.qualcomm.com>
Date: Fri, 13 Jun 2025 21:35:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: pm8921: add vibrator device node
To: Shinjo Park <peremen@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        "open list:ARM/QUALCOMM MAILING LIST" <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20250613193244.17550-1-peremen@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250613193244.17550-1-peremen@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EovSrTcA c=1 sm=1 tr=0 ts=684c7d7b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=EI79PUSdYkFRhqYvSFsA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: 4LqWR1tUpdXKyfkDNbVX_hZVeQmgLVG7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEzMDEzNSBTYWx0ZWRfX5pm+3cRVYrYY
 I8FDq6POYAJEMEIPyapbrx0c4RExBml59QOTyAvSxxw/WBoNT7XIgfZd3t4gciICS5NcMNX+Bqo
 zDx2ttBZqOCdcCjq9dqY3k/xfhkAjP99WfzF1cUU1OoLXsvtWybdRznp91Zlj+TWgcP0Fpi2n2x
 HUCFb/9FgYV4Uieo5Nvb9r48DVeW/TKF7Eut6NF7zJzbVIMas4xN+BsXKok0IiDX6agSWzfvZ2N
 yyYwQQDVMHJFRLfPDCn4TxcSzawanuwr5ZVSjSQAySYCLQpU1aKSumT6/tIZ8B8MNXLXt47a1Fu
 fFak+Pkm+OQoEGOwfw6moMPyndxZPdqLHWjjZYkuX4l1e0ClLwwXHkl3T/E/eFmMK5JL4JmnVuJ
 BnFPPNC9ygxU7QLvXgbU5zheikEuPiW2UKeepGXBZj3EWZNfm54N2IDWWArhD04CM1myNW9A
X-Proofpoint-GUID: 4LqWR1tUpdXKyfkDNbVX_hZVeQmgLVG7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-13_02,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=820
 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506130135

On 6/13/25 9:32 PM, Shinjo Park wrote:
> Use the same definition as pm8058.dtsi. Since vibrator is used only by
> some devices, disable it by default and let it be enabled explicitly.
> 
> Signed-off-by: Shinjo Park <peremen@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

