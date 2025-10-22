Return-Path: <devicetree+bounces-229854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFDABFCBF1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:03:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 153B84FD44A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0046C34BA52;
	Wed, 22 Oct 2025 15:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZNHqvOYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B1634C821
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761145324; cv=none; b=J7iDqepa6MWFFgMyj5ohUIwT1FNQiNmoCrW85crgexPNFGOyMJUIu+ai4wfL7k0QLKX407Dyt3ymR/rcxO2TLTZCN7b6TcQQm3FLFvLnOmy8m7nCHY9pa/+rfl72cJPvK4IN4RrvAijc8Hpz6g6UK1flkbGQK4yZB66gNxCHwMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761145324; c=relaxed/simple;
	bh=AS6GTchDJiG/VSv415eyoTU4UvcWXjnpLTn/xX286zk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NziwnaJS8ZM76BHmNONI+YZis4ebYBZMYWJOxCvPmUQrFSkZ0IUtYDByMaup8eaPA0QzaLHQ8BLWzQZXqfKOPlbqZfNWNe2ARuqrXfOtXFVxBX2xmhfMp6878W/aPC7RIxQrZb7o+7dXIDIwvPPznI+0V3fPrq27vsGDdlrP1AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZNHqvOYJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MA6LXt024689
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:02:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WVhUC5KfCy052S9d2cEakHXZ3DpmiRO1eWkjBgLlKao=; b=ZNHqvOYJ5BbO4Dbc
	Xtu+XaBVfr47/MXPRQCupdjpSjx62/yERh6mbpW2O8yd4yIaaWW8qWnMniDLruQK
	wK2m75UquT3XJ07ANajsdglGzqF8O/TZHOelLz3IouGK15T+JcSRqm/vo8eGVwYd
	PsksKp3F30DyhpZt9KbhYkXIiBcJ7ToJOJiLZm98X3C87q2f1bvKdMXiaNT1Iiq8
	aS67Fswl/uIIoiWN+ne4Fem1eYUOX3Njlt2VzrOvCu0kP7VOPmYA8tZwJkBLPYaR
	hxfSqhVw6yQ99FgVMmXn6vvUgiXQ4dKfnzQ4NplpIx9D4wdIfmg5ZLj16g2CF2uz
	sbaNWg==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49wsws7egj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:02:02 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5d08f3bf4f9so616389137.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:02:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761145321; x=1761750121;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WVhUC5KfCy052S9d2cEakHXZ3DpmiRO1eWkjBgLlKao=;
        b=fH0WcUdX2TpLoL51OzRl8IoYbAo8j4OAOmQQUDOas55b8oiGfLzeIH26NOrjU5xaiP
         I1wb4czk7gs6VD9rn9kRoM7BsEjEI5GsfYwGymU7x6yzvj+z8cAG2XRY5y2bGCacieWy
         IkA++YeW6gCTvAXMll4kpPIIfB+WTttx3T6F8a6Esbb5Xzg5Cq9qesHjSmEz45wBvQp4
         zIMHPZdH42kJIdLE/dM9LDIRODSQlzLu1tlKfc/OKB4Z2xtRHM/cXd1PgNO9JpFpUqC1
         GE25woP74VYoEHXvkhPtHAkmqdwfeJYN+GKK2Cqj1b/NJfDq1ZEGzecIS82ckKZkdZx5
         6ZsA==
X-Forwarded-Encrypted: i=1; AJvYcCVkAe24kFJ+IBBVoDfK6H7zQqjjytioqDMou3yy+yh+Qst39bFz62JFG/Hagc/lj+b0eVAMe4wqdD8/@vger.kernel.org
X-Gm-Message-State: AOJu0YxJenHT3pSUY0ojXVuSP+cd6rixX9q/I3fHguMgLoGClW6JGIu9
	/W1RBh7UPXSvLGH+WMZQ3QFz2P4ZHr1Q0GB25+VrguZWXS5K3aGku+Y+uzteAl1MZwdHvAsUrXE
	JexEfYKf+ygl2KxecVeoSEW6NV/lE8vtUNnJ4it7xzZDbrK8wC89SvKZS5TEMjOdb
X-Gm-Gg: ASbGncuCsOxYpjcS5NRKtj8EyM7xJ03c7UunsEFaEWrcUkOmymt3lnwNgYgM8PEEK2/
	4UM9SubfJU6ZnxXJGwWCL5c3jCKwBSv8BPg8sKJd4dEDaKdxlpwP5GdIYydMl2L6Ft4RiLDaio9
	zDrn/AdKf9lWEub4MrZxLwfiRMDjuG9WF4r5LXsPS2wltxtq6cymeboAuo7rnXer0ls47IHG+Sn
	AovfQN5An58rC1YzvRLiFM84fiuVAMeYXOU3tDtyhcqrJctbWdeCS2aytmAhaWobEH9XRuBGIWY
	+vgPWJVlWsJgwv2c+FeqnqWKLExkRwYWixMMrn77FjStllByTRRW1QMahCT73Zc/3wNrA4ADHix
	ZHcDxGdE9TBZefzfAC52pJy5r2oLtbkoOk122uvRWWyGAL4jB8HEEY+t/
X-Received: by 2002:a05:6122:15a:b0:556:8b02:f82b with SMTP id 71dfb90a1353d-5568b02feffmr660202e0c.0.1761145319388;
        Wed, 22 Oct 2025 08:01:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGM5zhFY1onskFYnO+4Fv5ggq4wyPuFkBT13ek6QdXSAtiXahagt25PhXd78pcdYze/hqeLzg==
X-Received: by 2002:a05:6122:15a:b0:556:8b02:f82b with SMTP id 71dfb90a1353d-5568b02feffmr659951e0c.0.1761145316876;
        Wed, 22 Oct 2025 08:01:56 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb725f3fsm1354965566b.68.2025.10.22.08.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 08:01:55 -0700 (PDT)
Message-ID: <c56d48ad-425e-4e7e-9489-b3c926e4d617@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 17:01:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/9] arm64: dts: qcom: ipq5332: Add QPIC SPI NAND
 controller support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20251014110534.480518-1-quic_mdalam@quicinc.com>
 <20251014110534.480518-6-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014110534.480518-6-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIwMDE0OCBTYWx0ZWRfXyikA7WNgr8TN
 kukC5GeOrMuopcC45rCp05Ea4fBAJkzJAbwmd+3/15ViKe4cmVJZ8M0j0cggm0IMfYaaa9hr4zN
 vCllD0NM70Ne49JXluKck4P/N6hFe5HzkLFgzGK8DIHiANTD87EzHdgTp/mp0APKRVIuWWCZDyR
 9GYGYNSnSs9wNQq2C7T2MpSBmVkiZXfaIxIEdJs4DJLtyU3+h1/u5q+KNwdeRc2z38qBKmCSBNd
 ECB6qHmb/4YWXmCtFIHx/GViUluDFf6lmuLeaukze/rTZ3ZqxamjYDeErcm9yps3GTe3KrzkyKt
 7TA8bXvTs/xEBA8oigqb1uJVdsVbgLXP7LAH+yAXf/pRyxit7GZcOKZ/By+syeapLZ9utdMtc+q
 3XHW6y83tJ/m7MV2f1gFsjFR0tKlpg==
X-Proofpoint-GUID: 8ELgdunuL_lGnDVzp7EFF42-y_cf839c
X-Proofpoint-ORIG-GUID: 8ELgdunuL_lGnDVzp7EFF42-y_cf839c
X-Authority-Analysis: v=2.4 cv=a+E9NESF c=1 sm=1 tr=0 ts=68f8f1ea cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=eg2IErnvy-Z71prtMQkA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=-aSRE8QhW-JAV6biHavz:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510200148

On 10/14/25 1:05 PM, Md Sadre Alam wrote:
> Add device tree nodes for QPIC SPI NAND flash controller support
> on IPQ5332 SoC.
> 
> The IPQ5332 SoC includes a QPIC controller that supports SPI NAND flash
> devices with hardware ECC capabilities and DMA support through BAM
> (Bus Access Manager).
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

