Return-Path: <devicetree+bounces-200415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6981B14A33
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 10:37:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0A1C17EE0A
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 08:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417C72857EC;
	Tue, 29 Jul 2025 08:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JIUGgsJ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A032928540F
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753778218; cv=none; b=f55EBjzkYWIWuQ8R0u8N/J3A8X/IgFQPHy9H5wiDssHvH2m/o2mKn5l5lIW27i66mwV2DUIEbDsFdRaauVNsG3eM24xRex9TZhm3oD4apj6Nqs/2H0OGENNMt504qIYrJmp1LCkg4WBOHe1ahSzm4ZWUjs9X+VNwMhcLoGnV+no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753778218; c=relaxed/simple;
	bh=T+qr+jLkWblLmI3OwGwYt4XSYv4v9vvX5Kt7Lyc0wws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WWqO8iLqi6bUnxowsl8bNGh4uzlhcTDT09Bmuvti1uuN7FMeD/YectssqQnchDGZ1DUNA+iLxJFdfjuc5Q+SaGAeSvRVh14UfVDsvMeOlMO8Vsj9DrZu5wZl0HobtrKG7nFaBKsO4jM8mjObuN5hVX+0WUYrsHtmSrtxdQSd8hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JIUGgsJ2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T03CtM019418
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:36:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r374LKMpjnu2z/yDiUy93wHqo816rkjcCkC3Ws8MlUQ=; b=JIUGgsJ2Vat1VqpR
	w4fs/R/vXBPfwXM2usLmsxHP9g9lo+yeLcCeU+bwgQCfbDpQVYTE7ky53wP5pHPP
	3jseQShpGbuKPB/Ky1KGXJRYWWUtMrJ7v5z64zliQ8jjEpHsMRDrh8bO6wS8bGb3
	+qUBn3F+Pa1Kr/PAjOszQ7A91OttJkBIM1o1O+JxXcq4w0111NXa3kBO7cBTrV2T
	FZ1fQI5lsdmMlDavJ8YUdA97j+jD4oc/h2QvXmKoZgOxTk/02WDN7ZkTCFnpguT3
	F9N4DDx9xjlVuybG56h4T/7n9I0bKMNUiG1NlLZ2MI2u1K3G0BePEM+63iCfOIGM
	AltDEg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2fajc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:36:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4abc1e8bd11so18163181cf.3
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:36:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753778215; x=1754383015;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r374LKMpjnu2z/yDiUy93wHqo816rkjcCkC3Ws8MlUQ=;
        b=sqgosBh7CYq1ze3BWtrA/7os/w3etN0HU0JLf5+O+8DV38QvpC5tf2oKepYxy0EIEP
         pocd2hNQ8afKHsbIgE+IpV7fygC1WqMGhCeKIB+2QOMijTb/nxP5k4/yna3w5kZugSe1
         he+FTzSLAwFHMhH7rFA2ZOn0es/B6nKvezkjteuku8iNTgCnQ4Pb9AbpobV13t5fBcNx
         COk6NK9hYt+oyK4N3R63rf6w0Rv8vRWOrLvGdZPqo0VMyhvXGJlHW7Tz4K6WnX+BX/ak
         VA1vzdQn//U+0zZ/4F/UKvVHFFCBxbtme9P9behrPey5Ll0+QfsDtSeNfGTbslBNtvTC
         O5xA==
X-Forwarded-Encrypted: i=1; AJvYcCXDWDLzQ/q2jmUMiFVPSXrzuxfnekm1v0mOD/UhwHj8RkNvP6L5typqZR/M9UgK1oQ/05Xw1v6X1zCW@vger.kernel.org
X-Gm-Message-State: AOJu0YwH/Z+K+0deU2dOJa+g54pnuUr03zAWRVfhS0Z40Vfioh8XTXmm
	u18fWTkwlpU+Y8SxFoPP+iI6l5WNEeMpRT6ctAIFsULegr4dW4iejUP7QEOD3LcMo7N1ck1bsEY
	BOAnU3kZnIZ7Y8a3/dSWSTUtkUCjYW8+II/ugXjzpF4h+fibB7ePEJS87qrts8BHj
X-Gm-Gg: ASbGncuvKGUwcqcUV3xW+y5ClNvEjDFMoc/nTiD3c09YPItRw8iBVcN6OlCTzZm2NUL
	Lgc0TMPmYAttNNs+Bfr7EuXMM74ItV91RUCUneQ68vHDpx5R7DE/A5daxcuIOLPBXfa0bvRtlp+
	4FXGQitTkb6bfns//k4j2+1WrapIUVRqSk4Z39df+GaJWDhWqxEb4jUYfCt+3KrruRp72Hv9jGy
	bLoNlosX9ta5EjyyqkN96DpavEZ2I8xDtjDO2wMKnrqbg269hkROpYguGOgWqmDJrtr5MCGfgLU
	nuYvm0I6liYi24DykgdNRqqKyINgp+bw/E66gxGI6Y47hyibRP9Vfv+/SNdJK0FbpZEOsKW4SvM
	hp7TrBDzl9BKW29Ae3Q==
X-Received: by 2002:a05:620a:f13:b0:7e3:2e02:4849 with SMTP id af79cd13be357-7e63bf8d71emr899893285a.9.1753778214664;
        Tue, 29 Jul 2025 01:36:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEU7rBqgyFONH5D7acKOlxV8sWmc1eoBfy92nD47LvfQVhjNvsFThVhIRvJal0LNgXqlJO88Q==
X-Received: by 2002:a05:620a:f13:b0:7e3:2e02:4849 with SMTP id af79cd13be357-7e63bf8d71emr899892285a.9.1753778214293;
        Tue, 29 Jul 2025 01:36:54 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af63589d146sm541281966b.35.2025.07.29.01.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 01:36:53 -0700 (PDT)
Message-ID: <5cfcbb73-859c-46af-a9a0-cc2cee7066e6@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 10:36:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
 <20250729-hamoa_initial-v3-3-806e092789dc@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250729-hamoa_initial-v3-3-806e092789dc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: wrdJrRz1XPVfMHYYcO4ZJ_QeolNTDl7n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA2NSBTYWx0ZWRfX+5X/mlm+xVe1
 pFj2nN4FtAsWMV5Rrpz2ptb0ujfW4m67b6EoIpEckr3/U26c9fKQkEwxJjWRAHU1A/LI+oGBMI5
 jn0qd7wprvXgsNaxKW49TsTb06173dgK9yzjSBkaOF1LPH89cK7zpPwkPznDhdaeDKlu2cESHpx
 7YFtgb1b7dfJiTJlreJkF+CFYyjZCdKSGLtqlqx5CGjjs6zj49xmkNGZiJmXVHzsNTijNg9kLaV
 JSMHDk9KAZ79dkeHxe66Z5sZpaoeU13QMJVCRxukkVrZxgjxrn2G4pvQMKOVqsq2F3Zyvb0Yolf
 bd5HBqxy4l7VxToqWc4rN5mBijIKMx0zpVgjq40QDEQEwu0BKGRHmksuVxvrx83ceveCahisD3W
 IyvM3iBOtTvGIPxK63k01oaed/mP752TGb3Ks1MYM75DJ0Q74fi1KHKZIGIS17TJy45YwL55
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=68888827 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=HFdUuuCF8L9kRLeQQEgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: wrdJrRz1XPVfMHYYcO4ZJ_QeolNTDl7n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290065

On 7/29/25 3:31 AM, Yijie Yang wrote:
> The HAMOA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1e80100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> This change enables and overlays the following components:
> - Regulators on the SOM
> - Reserved memory regions
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - WLAN, Bluetooth (M.2 interface)
> 
> Written with contributions from Yingying Tang (added PCIe4 and its PHY to
> enable WLAN).
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

