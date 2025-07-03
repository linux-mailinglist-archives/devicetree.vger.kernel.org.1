Return-Path: <devicetree+bounces-192680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FA3AF748F
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 14:49:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99FE0168228
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51FAA2D29CD;
	Thu,  3 Jul 2025 12:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SdyL6NmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39C02609D4
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 12:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751546945; cv=none; b=GJpqxB8r2SU3W/X3EkYNTS7Qoac+SbvN+kg6sPy+PJ3OJqSWUgMQNU1fVFhu3iZAWeLYtQkPvOdAaYE6pTi3yTXvBZVcNZJ0Wk0YPMKfxgnXhy/oYdD41vd0JffLr/3aKT1p8ZWpcZBZfxr356M8JReKrH3xZ2X0xByJE4t5ow0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751546945; c=relaxed/simple;
	bh=J+SJbENcZzr3wa3LuCkGIMYvc9Wx+YhsJO/WnNNM//0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T6/SztSuXXCou0tbzZvC4x1SInL2Ele+8Krv67I182jYASsWzRJdY5gBryMu9vUqmyt+SdqQIL06fWmD5BwvlOvXDyfZpcsuxONR5tGFfd6Dal4PavnHNhXvZKoG1LqyKZIUlqSP4P53iuVnfhOTuD4vsVOv3jA4NQ1oWJ3idNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SdyL6NmD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 563AtHac029619
	for <devicetree@vger.kernel.org>; Thu, 3 Jul 2025 12:49:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B1BDHD8rdpLsG7nbC4cPoqciQ4K/T23o4koQ48E1na4=; b=SdyL6NmD3SbxUFKN
	+9EdZai3ag+McJUQHc2i6yqr3NIg3YbmjlRx48Dtuk10lcWpqp8TzLHw3eiqnr6G
	MWw0Sa9W2FbHQnXGcTQpVJYPPJuPc8u4rXmHcHJnxn2+XcxEcJZw6rkwJpIGxLnM
	wJnAGD4V8s4RfAtviiJEIVhr2A5DCI7QZlxekX39vcNje69AgTp4QaOd9KN2JLjK
	QZtn40GpiQEptbCgxzqstnSeHTpPhHAkUao1UbGYr9Y2/66N02FfA0DHEZpQfVnl
	k9sKC4QIPElfvFy2A9QCVGcD23yXp6VcE1N3TLIF3YE1avS4H9b6zRI0F+huyEqq
	nXbf2A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47nh9s1qt0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 12:49:03 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2358ddd1af7so18871375ad.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 05:49:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751546942; x=1752151742;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B1BDHD8rdpLsG7nbC4cPoqciQ4K/T23o4koQ48E1na4=;
        b=mO4i1NIZRkvPxx0vMv35HmJY17vsEwYzqbQRXOPH6dvPYBCdeOsXn9Uw/qxPjBT49z
         elwIvjTuktpkDPE47LZN1ZJwczwgRn4q+JXY4g6i1XmIvP7geHzS7eHIqofn0zzXjQiy
         zSEzrPud0emQONb0ivDAMPxlbLBIgmAgYITEKXrbwf+PfZEQdI6TpWHqszL34n/P6qdt
         2urZBOH3raf/2dV2eRgidNrl3RbmILopq6HQsNoAb3KEWj59ct9m+yMamTY3ZS0AqiC7
         ByzlifWo0/2yinLhAuiDmhzUEnu4aF6cssqhh+Vxj/fei81QRUSLyxPw60N8Ipcc7EtF
         CV3A==
X-Forwarded-Encrypted: i=1; AJvYcCXGsSHw7vFYPgX1HS4yMHtRSJWqJrOEwhkkWVCZLwynmOY7qTJru1JsgI/ZWsx7//VCEcJKhSM73Hnb@vger.kernel.org
X-Gm-Message-State: AOJu0YyhKNxALVISMOVzsk0NrtAcgpAer0/jMf8r7pa7HxsEFqkJ3Gdy
	SQswMEK83G/no9A8mjiokN5NF/kE3VJx1bnO/E77YyYL7t1EhCS3/yPRMyTYAVJJ0q0djPDwMSm
	vRSfW3/+z+dFv3+MgAbu9bigDIXZLUt8bcoChFGuNK0ae2zJ1ixxf4XI9ZCi54nch
X-Gm-Gg: ASbGncv3JT5c0AKXMRyWL+5ewlxDJxV+lMzQwe5eB8r/Y51G77qOz6qV4AJfTYK57VU
	nR/05gvTQbPDCBsrjvCNFnxhaFNBrWDI/3NhmAd89bQ7L8Lkt/cNuvX1YdddNC4qx2/lFjD/Ivl
	tLcboaIKjKE8SY7ttoeF5XKEHZ7YMPUdwbGxQY5X26IE1doftHNb4vlLwY0fFKxcu1n7flL+84E
	n7cYkMyElzxEs1g0QLBnq9g3Z0k2pHK1J1rzecfP8cRkmr6lvdVrxfEjyueSwZ1wR25LeKyjISK
	GDuijY/3eAT/qdjbZTJH211RDR/KqOKQ+jrXgeD6xtMJnWpwYD996o2EnvEoot1vsoEioCuPmDn
	L9kRDzP64
X-Received: by 2002:a17:903:24c:b0:234:e170:88f3 with SMTP id d9443c01a7336-23c7b036018mr11881415ad.8.1751546942304;
        Thu, 03 Jul 2025 05:49:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyYfLlo2GEq8Ouln1NSXufpOkD7mF/rn0GS1zQ9TiBnflP/2X+/xtcTxdUhHBM+1ldcd/Txg==
X-Received: by 2002:a17:903:24c:b0:234:e170:88f3 with SMTP id d9443c01a7336-23c7b036018mr11881275ad.8.1751546941924;
        Thu, 03 Jul 2025 05:49:01 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8290e37csm10488156a12.31.2025.07.03.05.48.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 05:49:00 -0700 (PDT)
Message-ID: <ca2db550-93df-4e8e-b0bc-f4545ed4d892@oss.qualcomm.com>
Date: Thu, 3 Jul 2025 14:48:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/3] arm64: dts: qcom: qcs8300-ride: Enable SDHC1 node
To: Sayali Lokhande <quic_sayalil@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc-owner@vger.kernel.org
References: <20250702085927.10370-1-quic_sayalil@quicinc.com>
 <20250702085927.10370-4-quic_sayalil@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250702085927.10370-4-quic_sayalil@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=frrcZE4f c=1 sm=1 tr=0 ts=68667c3f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=kMNwB7i4ENppRu3dD6IA:9 a=QEXdDO2ut3YA:10 a=I8LdOwYyl7IA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDEwNyBTYWx0ZWRfX9xP3vSt2pTl8
 +RHiPA99WIHvXNpUMd9QyxE9lsJBJWEcRIrALfhnaHzQBCT/5KwTnewhQFTCG/6wos8Nvd+tSlu
 opqnF9G4utdPJqFtcS/z1elSlmCz4Y3cryYjXhirkfZPx9ujJ1IFzCpcPmJprvSUIZUcoDg7sCx
 aC+T7LuRa7If44PoaDgveqJnapE66dfszbYZtJGIzB7ZZPluWiLLSVdz5Vw0h3qAD4ERajiptB7
 FGPKPjMPfR/l0dtoid+ZkXw2o+WcOmRA3x0Midtct1IzzZMHaIbO2ExeAYuAwJh8BbQRzeIeJ7N
 Hk2eNiEH+FOoI7dJYxCoCBV90eg65rbC7t5BxnCR7vpD+9NqRA5nJ66uFpqKKd4xnP76juR6kVl
 kcc4fR1P5EDt7qr2XLDN133HCi902uStjQTe2AMbki818O1fE8AQ0MY1JTVRkQP+XjTc6Z7h
X-Proofpoint-GUID: i0Uwp3Z_jk-3ozT4bu3hbeLf5hExhFmG
X-Proofpoint-ORIG-GUID: i0Uwp3Z_jk-3ozT4bu3hbeLf5hExhFmG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=776 bulkscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507030107



On 02-Jul-25 10:59, Sayali Lokhande wrote:
> Enable sdhc1 support for qcs8300 ride platform.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

