Return-Path: <devicetree+bounces-167240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C143A89AF5
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73EE41895F1C
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FE32951B8;
	Tue, 15 Apr 2025 10:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XH7jPc4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94FBD2951A5
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713957; cv=none; b=fMjIkTrgcSfqjpKxOhbeiXel9OBusV0XTsrMyCWykXwKfeooR14H8b3i8KbaEINsBlprUQ2oxAsloNlJVN5oCHK6nt2qS+ovrIXMb40NLvSOP8y7YC978/rw04fW/drAfbO8NIHALEJmVxy+SMtemXDjAW3IrT8mSbBx83c0rqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713957; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DrPnEkKQPT/5ckxD2F8OCc61CCK3NOxnkVrV1c1fcMgHh830rOK+E56N0SUrgq9KJIWaC8mFT94yw47uT/sjiGEpYpfIzvfhJ4GBPcwVVO6byMmx3yfX9Jwa2CjrxtSuZn2GV0gOLbEQJr1uc0ty0IwHhGbtmScU/FlLS+EONl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XH7jPc4v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tCmj025060
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:45:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=XH7jPc4vp4gfmDwK
	TO8BHVOtTMuLmN4CAgqxHAh9SX/p7J1t/O5/yI8Q6MhUdL9hrhMKuxbCVWKDAh5V
	Q/64NRw/WV1NmaTJmMogfsoQK1yzqzp8GCgCZeryI/TqHoEL4DHj9QVviKau8sCE
	xUvocpYO3cuXeGl/Oi7Jp899emI6rb0K1u8ey9v8pIN8jy0dh2UnFZUU/PmzVaYP
	e/Nvo/kLLWZXXlxCdcuPMY9NVThUoGY1MoPlJuXjmuKPIQ6nNLZjaBEuXiLRhVeO
	XU6MlZjr38AvkxZJM6NEibwreREoF8uJG8zDNIxcM4g4kmv+RLmMr1xXa/NJg5k5
	2sZHCg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wfqr6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:45:54 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476783cbdb8so13736811cf.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:45:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713953; x=1745318753;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=qdw19PKE6AyzIWRH+sCSIGwtlCwI9DEc54NnAJSAYUGOQySujkPGA8v5WU2ujmmh0T
         C+XgVw8xFz0aOASm9iMl5nUo4sYa0ox4dPyWfVV68p8qNuLs4Ra272mcDeKr4U0A/8t1
         Nu9aqoT4+oOmN6j8dkjljXkGSm9iXanEjudFUsggHhwR5YDXeXqzuX37EZXJDxZE9dSI
         x27weiLCIP49D+qtL35BFkkNCU4sL9mlarYZvLbIawd0x7o1GEp/2sVfKkA/48xPNUnd
         0+OAqH9llpkW26MmoqfnnIHtk5xdrW8u7Zt8s/C/eYfE+KJEhBiGlEBVe4owouD6vBKe
         ac4g==
X-Forwarded-Encrypted: i=1; AJvYcCVo4/aCfqHg2sdqHV2zmFoT852/PZKxdcrjCn93pDI8IRSCFsXR2KZhsx3rGXLr7F86KB/qmf3cCsQs@vger.kernel.org
X-Gm-Message-State: AOJu0YzeHzNhpMCVkcelFDu4Vx1ygojYq2zSvQ5RhZeDlsDLbfZeX1KB
	CskcJVAwiAfhMG4Vhsjqmcp2Ed/ytHiiMZ+0OOFdM41dQZsdw2fyTdPYQYl/WZ3qeEb8P3qQ1VZ
	LnytkHDsSCKGTVNq0r/3ydUlv++gYJWEpIlj/kDHGX1OfVE7SKifrt+wqjasc
X-Gm-Gg: ASbGncsigNV7OxaT0+p4UqQh0Zs0cHV7fNxEjsb3LMoclzmF+k2HCC2w1wDKebaBMnH
	8qGkC7y3Gia2ZulnHaHSHFqlX6YSxe+FrR3fF6jdYSc9tm/ZJCyZhydk3wQHQFaURGwUn1Px0Ic
	86I1xALij4PSKISXjaHWaepdaWxVHW3Z15Zgslrw677AesUPAU0BMLRrNzVoAjnNWOs6bN2CKq8
	kkfxRTfki+O1Woq1S1L8kZJMW/aMe6cP+vsib61X10SmuPg+wQ9Vossvfp4zzufEe1TF8IlQMg1
	rsBZdEmAI0J4qcJcPbw4YGMvo9V6298x4WbUI4N08RMKg45vvCb9BzGA25jWqHAOYwI=
X-Received: by 2002:ac8:7d44:0:b0:476:652f:4dbc with SMTP id d75a77b69052e-47977556f6amr87907241cf.7.1744713953552;
        Tue, 15 Apr 2025 03:45:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtG97jq0AmVKUUXev0OOoGju9Bnj1ExWktEy3WliFCLHfb+OHz2kffKsEme7E+MqNNoVnA1w==
X-Received: by 2002:ac8:7d44:0:b0:476:652f:4dbc with SMTP id d75a77b69052e-47977556f6amr87907111cf.7.1744713953192;
        Tue, 15 Apr 2025 03:45:53 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36f5056easm6660326a12.63.2025.04.15.03.45.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:45:52 -0700 (PDT)
Message-ID: <b8b61f72-5b06-4395-8f37-b0036370e0b8@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:45:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/20] arm64: dts: qcom: sm6350: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-14-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-14-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fe38e2 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: hxoHsqFem2eojM3KXseraApaqOEsTYY2
X-Proofpoint-GUID: hxoHsqFem2eojM3KXseraApaqOEsTYY2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=607 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150076

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

