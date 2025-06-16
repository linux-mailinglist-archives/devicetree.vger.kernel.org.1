Return-Path: <devicetree+bounces-186286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FFFADAEE8
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 13:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D3BE7A8BF1
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46FD52E62C8;
	Mon, 16 Jun 2025 11:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k7iYKOZD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF96C19F424
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750074278; cv=none; b=S2PvwbMcHngV1RT5qIIMouC/Y6cyl4TdAFt/LDLZi87hXXnwlgyJ1tPWOfPJg4DUeYcntRirBjqH4v0NCh5pm18yrOGT+umKDzV6v3ZvZkHEKrvsENbBoYVbeZb2QDGQbkpcTSgbQ7lAKzOHSDdk0m+J4cOdmM60sQiI3dDQVuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750074278; c=relaxed/simple;
	bh=SqNvndz7A9Zt7yPcqFNmLJBQM6AtUHxshTQy3ysSsRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fR48CuZWuGYxI50vMvF+LSLLoaUejMZNNXV1djgLmBfLI2rd+ewJatxP8LZVmmNiSNkmmW6pRXRkjiUQXI54slX9oYreR28s2WatKEohPy76GF6INsCC9gsGO2gSIJid8nWYrlVEFRoatjNGFAL7eV4P+GRZQ5jybG63gHhd094=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k7iYKOZD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G9D2CZ017789
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:44:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aBwqXHaqOGLYdlWyP5aCWSTDntNxsctiiIHM3sIcSwE=; b=k7iYKOZDjeXvftUZ
	VcALSh6MEOv7Ws+8QQMfj6hShQ1cOCO0aAmoBlLrHaBr+u0FaQYtxsTiMugkxAp/
	zn/NaEg+D5Odva3c+e9YiJx3ORTAGELltdL0orhh1ogbEosFqMMYfSgECKGnvz06
	7YZnzDoXYTQgRCr2jt7hsQOFLLDZYOwyoPvxS3/j2iqvbEBlQUiDA7wTje0MtvOz
	+9w8SSC4mR9KmoOh0CeGMvCHl3b7LYb+z7i9V0TrUisEXu7FYHofMmMect8sCg9l
	Xgf7CfSuDk8VxSYDKbvA7lLG8vzbftMsGXQN/KzNQcKpcE9Vk8SXZA1SY9+lbF9K
	J+JMNA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791ugc7m5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:44:36 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a5ae436badso8926181cf.2
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 04:44:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074275; x=1750679075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aBwqXHaqOGLYdlWyP5aCWSTDntNxsctiiIHM3sIcSwE=;
        b=IniEXw/XbiKijZtquEy09OpLsq/nBUcFGhe8tlk0sr29DkwEHV3BzKYOJ0ZpYFeM4v
         M62BHPhwh46B9Kji5TGvly5ceMGmjD62BhTt5b2fS91/V/4hn/a+UVbOK5yWlPE49r5C
         TDC8Ny7Qc/EpEa5xS1+3LDratFELSPrXvIFefFn+6KWA8dz9QqcitiY0NS5eMj080kSL
         dhOZ03miMaVc1LEBBDmk5YE4JGDbQFaGkWNkseCg1PGILeEFyqrps9Nb1PxUiuV4idXE
         r2nM6UhdSbih5EjzdCpANvHOSTgd+7WA/Te8BflVDq58/sxxapjHa22Yy6BmXO0vRTp0
         KiwA==
X-Forwarded-Encrypted: i=1; AJvYcCUEDk42bZEdbkXM4zb4VspyOE3ytsNJ79Poik04Sy1TAl9CjIci/3hR88LGTs06Bo7ohF4twG2k2w4X@vger.kernel.org
X-Gm-Message-State: AOJu0YwIlyPJZqTXfe0ND6Hgtxm+FB5mqsynCeTc0eUzAYZ33kopogaT
	zr2nKiqxhVsSzqpvYeoMSRbJk9YwwwMeOsIj86bLSKEM47jvbgAg5NK3R+gPkEftWE1pjjIl5jm
	8b3z3r5bHgQYdLEeJ7EPsn3nBq9yna9giGdDUK/xp/ZefCRgPxZOVD3g4+g1sHzBD
X-Gm-Gg: ASbGncta2ohg2LyHKBlKg23qsCJOusUsKiP8LvC+HHsO4WDiMfrhjyYaCOv6BGLHXQw
	sgKFoGvzKx1EdwkGrym8uAszCloO1wucZeVwgU9RYqLncM2kvkvsIE+R4lq3/haNCpf8QYcdIZx
	qGOzX9pXisdZJ/UmRBCIDdMrHIbxKwa2A7D7gww0ZFeuxyux747ZFg2gIswr20UUyoC0sG8fxLZ
	O0hN2X8546Ri+4eRtIfbyraQlgqvHOvUC8XuXF3KznBqKZM8xzj5xqcTLNA4SmhAmnh+DKOcTPu
	M4DfMMYKeH6VZDK0Nt7FCv2b8yEGprBB/P+3L5th1vAsT0iRAIFiCei0mudWSLIVIIH1VR8kODi
	tkgQ=
X-Received: by 2002:ac8:5f53:0:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a73c5a460bmr56637181cf.9.1750074274661;
        Mon, 16 Jun 2025 04:44:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLYGv6rn1SzgWDD2ehrxqokbIF+2wTCG5SWoRKjsh1D8V6/aT4j9BPofzMk3ijGeS/grAFJA==
X-Received: by 2002:ac8:5f53:0:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a73c5a460bmr56637041cf.9.1750074274262;
        Mon, 16 Jun 2025 04:44:34 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6097ad640bcsm332234a12.25.2025.06.16.04.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:44:33 -0700 (PDT)
Message-ID: <bdb171c3-5395-414a-88cf-eb002af96804@oss.qualcomm.com>
Date: Mon, 16 Jun 2025 13:44:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
 <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA3MiBTYWx0ZWRfX9yid0Ngex0O7
 4kMOmC+ezkQUUBy0m0GMuPLxOvXTufJ4l4zYP7WO6wRja3BXpm2OOXN/Cr4wn2gxfz0hJQksOfc
 W+VD30AndgoDtdNfhOayVNG+SHDk6WRhvO+De6LSmXvgGVKJAPM1IIKqucr7McFascRRRLg6F9b
 MttL6dVqy1Q80GO7uRfK5Mc90Puh1DfRGF+cxQ58eGskIhzj0gAg/WCuVhC9nPhr7cEFDwHTTNF
 9Wn6/YPeBOV/X0ImJp0NtF/WNXVYE3PZKK3cTQsiULU+/k0riPXMZ8LLJpKHXXK/PfXZyfc/ug6
 71a+ndPAaT44FJmQsVD1kvZQdDBxOtAkRQ3ToS4ksGGw3PYYjxbc5xRk9daTp2syNHlLUVQRbJ5
 BYNySFfHpnp3j4xUnLewTpBRFgmtShNfaE6BwLt9b5mp8Pk4qZswxi2/r4+Ds74NXtugd4jD
X-Proofpoint-GUID: H7lLsreweO71I7uV7R8BGIbGyo1L27V6
X-Authority-Analysis: v=2.4 cv=NtnRc9dJ c=1 sm=1 tr=0 ts=685003a4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=cispc58g6-s63dKQH_wA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: H7lLsreweO71I7uV7R8BGIbGyo1L27V6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=850 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506160072

On 6/16/25 11:45 AM, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Riiight I thought this was effectively reverted already..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

