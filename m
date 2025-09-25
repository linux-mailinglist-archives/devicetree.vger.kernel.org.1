Return-Path: <devicetree+bounces-221407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D45E8B9F52E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:46:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77B8D1BC3AF3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE4D81C84B8;
	Thu, 25 Sep 2025 12:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Shfztjga"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CC81DE4EF
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758804381; cv=none; b=lH1L/QkP0ATA1YgHQ1sprvnkEnPvkK3NE7eqZGb8iX1yHCLuJIkGDOyU3BH2oVrId8Am5Qo8oH4abE6Z4DMmPXZ6GZMYA4kGbIxJ35k93MLEQuG+9qib1nOyDkhIWO4fFvPXLImig9fetCy/Zd1XgGHHGNFzGLM98StVDQC7AzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758804381; c=relaxed/simple;
	bh=b7+0FUqc0MYeklzSPwrXmiQ+m53hAJ9Fa27fFR/T4ws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g9m45nwK/HoeLM3a2+OdMjzjjKPKYDOLRgFHva3fQEpnK7s1yKBuaRUCE2zAGE824URAZysjB6/E/UMwSkig7Z3p5Qo9/GpGObVUVIRNVyDSOKHTa0DqJQYti18F8MuvsJ8Mx/vTbHHGJRc6YE7oZGdCyfI1uCyOgdyeBtpmTeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Shfztjga; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P8FdDG018220
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:46:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eBfKcPb+IOlBSzmdNVDaaI4Kshn4SPqfBYjmmQnheSM=; b=ShfztjgaO75BgNn7
	pLyJaT5YjczOEprODBf+Zz6e0usexCvoR0H9cKQyrREGlXfUGh0dn4TO7ywgxrWz
	AjunhbAt8yAiwjGQHhbH3MFe2SdOMgGiIx22evpvPtXw33leinyF6xfEhXLR0hnU
	ZocwlauamUiMIqfeHWJy/p80t754unpPNXPxppmT9xXr6GX9kpGIN00Aou5qQtDk
	o41cb8cnsNBYT5SKyv7jQRDjiA2I/LmDNykiEqXdqkriDfQ9uUHu5XwZW200+DtK
	C28cIbm62A2fwLs4r6l/+nY1NcAees5pDcntdahKmwZsSFwQHzi/1JS/h2cr4L6G
	3fW6zA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkc2ec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:46:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d40407c6acso899111cf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:46:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758804378; x=1759409178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eBfKcPb+IOlBSzmdNVDaaI4Kshn4SPqfBYjmmQnheSM=;
        b=v3+DmKIN1s0lvZt6w5F9B8C/w5lOgxw29V9LOJdnhmOGQivJWal9RsndSHybErducp
         TNSaXxhrCWJWmhWiiMfTtmPNvZeM0rapAYUCuH9H4Q9df6SWoL6UHYWuxGMsOfKjSub2
         tV8uZobjpyFgFdZq+UEvXJsNN+zDqz8d/cxmEXkLbHRsjONn7nXoXgBX2giX1QAeTizU
         BhEN1XkAHjLQ4ruRP05TntxwoyFU6WatdNcBeDj9vCGVW5GgAglSyfHT1Gq5YFaXyC58
         CbQdcO2iTm+KU1FKmNuZUlW5GBvb2q36nLGH0TU1Q5nQ5ws+xwPzrQibL+6Qwh16T2fs
         NFJw==
X-Forwarded-Encrypted: i=1; AJvYcCV4jYsCq5dqbS/05LFoqAhh7irBBYuIqZoJ9Ikc2EFIaNLjhKt13CKfmpUSGm1wut/sxpSRaq13gNry@vger.kernel.org
X-Gm-Message-State: AOJu0YzoVE8JRcWjBa0Xxi5futx3EyvR5FKjXhXQyStu5CAeEPr15Ezx
	cmJTYX1ipEbrqVdhebZy8ShZdY55YDIFFuemSwQ7cQoS9So5tpvSjJ1PbGKKQbwwkjjGZj7p81M
	fOL6y/CQL4KTU2UXDGaetkiCQtHin1n7jt5x6yYqusBpxgeKi1Euon3L2frs1wXNj
X-Gm-Gg: ASbGncs6HMMh7HravICIyl1TyhgtmsvTWxcjLbES9nvZio/G54XS2avdwLm03iIwEhJ
	xPUwG7y/LAP8dlUu2S49msI3X5r0AZfhQSW8x4AWOF1nMqWuE9y2hzNqzNVg6f3rXAUs5zFprEB
	pvfzWSkqoQUK3wZF2ij1GzDZknfjXZKB4dnpK8+ytuwkXFmS6gf2shQc8y0wymyfWtq0ir6Yfeu
	QsFL0r83PYP3r0OFr1izRfSMwTmi7toXLe07dUBTOGOqFp6hnt3+JkQegBnnIb2qiCFUGPymvzk
	VSRxJQMLXEyTNn9JOKJt8lzQOGL6asdK+uBf2firKHR4u6xHpleb3vvznQdVjcYfXGrIsU/tnUg
	6OCmUo28GjLFRoAI/LHZVNQ==
X-Received: by 2002:a05:622a:1905:b0:4d9:5ce:3744 with SMTP id d75a77b69052e-4da4b048343mr30697651cf.9.1758804378060;
        Thu, 25 Sep 2025 05:46:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEd5JvjjG2pBr13XQCrzkjzaC3gf49ULTcdScWZxwe/IXNnSmnRT5xxpfNzh8Shpav4MIBYKQ==
X-Received: by 2002:a05:622a:1905:b0:4d9:5ce:3744 with SMTP id d75a77b69052e-4da4b048343mr30697331cf.9.1758804377616;
        Thu, 25 Sep 2025 05:46:17 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d1210sm163567166b.9.2025.09.25.05.46.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:46:17 -0700 (PDT)
Message-ID: <623d9895-4087-4419-ba6d-b03c55b0ba50@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:46:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] clk: qcom: clk-alpha-pll: Add support for controlling
 Pongo EKO_T PLL
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-8-29b02b818782@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-clk-v1-8-29b02b818782@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: i0zbqgnTZVCv7Eqj6DM3p35KwvwqvnFc
X-Proofpoint-ORIG-GUID: i0zbqgnTZVCv7Eqj6DM3p35KwvwqvnFc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXxktdUanEXLI4
 Tn9lP4cOWDVDJCpYRcumgFgZhh4EQvXSBdJ14vHdChziLA7xh02zYBbC9UTIy9Y4wxCBkUCd09f
 gxiBCusEUj2X0d3jt3FtKgMXaS0ZgIoT87PW6DrfGnWItBFxEVUbhgOM4loxEkuV+12G/qfX2kA
 nM7NyGno7b95xnv7Xwo+5ycMEg95AftFESrhUXGpjtK096mx5IlylAxm5qCAmRdmhdW9u7sJ5p8
 z8YPNu9VY0fzPwTDd2v5y5CIlZKm0813mBdpg35IGUdr+TnP/N8rQqyhYtQbHvjcvP/AcUJNtmo
 jQfCtbonA0rsaulMN+DY17gI0zGtPpM8mev/k06C9EYy0DgRd+hduW19Q3943I2gtNrrW8XCVwv
 VpOd2grA
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d5399b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=J5jK6kj7L5UlLF6NqaMA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

On 9/25/25 12:59 AM, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add clock ops for Pongo EKO_T PLL, add the pll ops for supporting
> the PLL.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

