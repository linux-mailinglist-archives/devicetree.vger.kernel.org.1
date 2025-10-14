Return-Path: <devicetree+bounces-226396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D6342BD8465
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5B2FE34FE8F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 08:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE7D527BF6C;
	Tue, 14 Oct 2025 08:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zo5RysR2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FAC202997
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760431818; cv=none; b=OBKw5csOS6I9zR6/MikChRShsYqFE60iPcoStz2lMGRt9v6ipfEm/lVQPdDqxCADXjxshBKtHO6bh8r/WP17Au0q1hPgGsT491JkhzNleECT1V6Ew0RHnc32H+g0qfFp3xqwIIFbyE0eoYR7eyEjZsSMhIv8x759bu0eV4TY06M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760431818; c=relaxed/simple;
	bh=Ev8yq2QjwLEFLAMs+VMUIoDBcm44QvbV0Ol5FrupKII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FOk2cE6p891aJyLx4l8W8WuCtxebexlwv4NDQ7YdJ84JehRYUvH/Lii//StX1kWjQfzL/ZmaYUbiPbnDQPULBGrIHd8VuzfntnshV30tbCS6F5g3JgxhkMPOn4+mLnsdhiLS1/iN08QWYjcYNFADDsQuPh2DVinuKcq0G0Q9t+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zo5RysR2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87JOo030981
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:50:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w9f+nU3HFmyw3t1LjMr87pwsziNsqNNp4ZBv/CxMUqQ=; b=Zo5RysR2nSJ1P/l9
	Gv4rXznAsDaXcX20UGMwXmzOTYRwOHAUfdoWz3N8frLH2mt7IAOFnzDkxh6XIeqm
	yoq/eBKKmMwhq63IOUPGZIS4Tsj6WdX15Q+p4sAJfdMGbW67i39F0LWY1+hcEXzD
	aXiRH9H3/Qe89sWS4f0orvxqRob87W8ZKGRCcgl8FTNzNhM+0LTaPOZiIkYPpmrg
	PyBDYZ/n/VBw3ZUL5M2s/RzfPFL0SqmJ5Agjm8VWBR24S5sbO/WDAnMu4Me09D0K
	IfinSpluojMyeC9hgCeELv8VO4TAhKhtCupAA4KdQLaFrFhbutWvSx99M7f+hGhm
	Y3BR6A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0qsef-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:50:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-883618130f5so289058085a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:50:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760431815; x=1761036615;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w9f+nU3HFmyw3t1LjMr87pwsziNsqNNp4ZBv/CxMUqQ=;
        b=ey/acPBU5uJRtKkrJ3HQqCTiiBSiYdpbSLM1nHhBU3togHI5djp+rB0euh6tCtAJIr
         v70hPV+VYlZXJGBAGrOsdN4If1+4DHuNiKEzi4ZHE1S5K0BcGrQf+AwrcuGYdUAIa98q
         U6N33mFlIkzNWZOpvVXgVFBB5PYQiVIkmdqIY730n1WBEhs7THyb0Z87Mj93kJwHkOIG
         SKqQvMqSJtuGX6/iNnv/Ap+ZXM3s8GjOY4Z219nRhLjevDISRnkuobaPiQRjKWXwTWme
         aRqyBXLFbGYzGgjIYkN5exz8Z4uMQwtJBKF1iH/HWaZeNKStGFlMLBdYdzXaqZIAn7TP
         hnUQ==
X-Gm-Message-State: AOJu0YxTSPukuvadqHri9wjPaFb+/hycyE9JuYl1LYJSu7wMoK/iQuGp
	//av4ReWAmJ1fQGjrnfDcGsSqt2giDOp6PrdK28i3vXb/rrcQABh2dwaB49aWqJnjz6o4IEoDck
	sZJF502dUOuuzgkyLPDQl9Lv1FUhGo5ZQVL0KF9Fi6PM1DvxPykRfXqlPndtjCzTw
X-Gm-Gg: ASbGncvkEVyrpQMFsg7p3XTCRwz60VJsJVzaZdEpWzzjFcDZFYzrP0+0nHz4H43rQc3
	mJlwvCQnAZ6ZClEoLO+ZxbPqNJpGHApu06ljWnjJj4mIm7Mi+hUkJSqflDerl9vXQOznmVJ4TUU
	3UL4AnoBCBfxdk3nrHgnmSWg0Q2sWMmLVcNRk+y5S/ziEee20KnLkpVIyp+QGNE+UAreh+FTmvE
	hLgI16J6i81rCbFaVjcegQIgDSSxSK/s19yhYpY11vuoSgMchJnXUgQjyfyHIXsdmw4k3jjbHYe
	iz+MZDkP50/S9FW73c1J34qWQ7lQzQpSzazXY8fmmzYkfgeKL0dQs9Qzc19jk9+vDF6A43IgLt3
	fWWX27LMd6uu2HoFsDmh6vw==
X-Received: by 2002:a05:620a:44d3:b0:85f:89:e114 with SMTP id af79cd13be357-883527c9c39mr2343739885a.1.1760431815038;
        Tue, 14 Oct 2025 01:50:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGncIKVFHxsfaJ6UTmQUqWxi7M6jn0t0eJxUvQoUPR5cx0i1d2AEnVAwqZq7xbGoqN/fnaSzQ==
X-Received: by 2002:a05:620a:44d3:b0:85f:89:e114 with SMTP id af79cd13be357-883527c9c39mr2343737385a.1.1760431814478;
        Tue, 14 Oct 2025 01:50:14 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c12a08sm1122876166b.52.2025.10.14.01.50.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 01:50:13 -0700 (PDT)
Message-ID: <096f3063-ba79-4676-864c-d9d9312a7634@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 10:50:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: apq8096-db820c: Specify zap shader
 location
To: Valentine Burley <valentine.burley@collabora.com>,
        linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com
References: <20251014084808.112097-1-valentine.burley@collabora.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014084808.112097-1-valentine.burley@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX9C6m7qkyC46x
 T1Ieum/QbfxpVYHgyncnU2rkBD088dm3Jx7wnKQK0yLa09BXFpizTmTK09DkPxw329qUdPaq+XW
 8dt7tt7s/7XZD7CHx/SLtoWmhEFnCCORf1Ix13ngwFbAwaZ3xYUxe7Jn+29g/dlPadsUzEdlA6C
 IwIagtltUjpjMUUEsWUBWzO1FKvQF0RmCywe5mPh4bcDoT/EFResPdJMbwctLzx+LilJxTkSA95
 naQ8FL7xsIta9Xx48U4GRi8nBahDRzw044QrmDIxEThgBI4UWEp9gjkm0j92+lMVEp5FVsibLXW
 23rx3Y8ks++dJFAydk/7AlTZbyC26nZGWmpcuYX6uhoTLZDguAmnZUcxHFVwsT7ax3ZxD/ATwMd
 jjmSdrvaue/npiQ1KN0wjOTT8pr7cA==
X-Proofpoint-GUID: qb8wqyXL3rNAOTjHbqugDxjSuOWIv0Jj
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ee0ec8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=vzHCU5_V8cFStwcBz_4A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: qb8wqyXL3rNAOTjHbqugDxjSuOWIv0Jj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On 10/14/25 10:48 AM, Valentine Burley wrote:
> The zap shader was previously loaded from "qcom/a530_zap.mdt", which is a
> symlink to "qcom/apq8096/a530_zap.mbn". Update the DTS to reference the
> actual firmware file in linux-firmware directly.
> 
> This avoids relying on the symlink and ensures a more robust firmware load
> path.
> 
> Signed-off-by: Valentine Burley <valentine.burley@collabora.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

