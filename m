Return-Path: <devicetree+bounces-170608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CC9A9BB24
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 01:17:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7CE377A4FDE
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 23:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A514C1FAC42;
	Thu, 24 Apr 2025 23:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XPXtDxfJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AC3148827
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 23:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745536649; cv=none; b=Jd1obzEBfAxLWHA5B9iwa8Y0f16KuQ7jefs8zqqAfKIot6Gs44nEG4okbzQC8UMdQpZXiQODWMGTMFN+3DcJbs8xslH05uBZYcB7lYp4C+n7VJIl/IJnVSuL1GxlteZGjP9I+QxC4c0pKmoj0GmYn4VBWHO1A6UBHp6IHgHTz20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745536649; c=relaxed/simple;
	bh=xuBNdBaDtoK9PUIk07YmwqOIvCjfqiMbpRQh8zcCEnw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LqrG8oz7dMF11Ot+xOlgCxz1OSRM/ALCLBcP+yzihP7H+DH/Mv7i635d00rnQSytc51k5RmJjhoQ9CC82jxRqwhAxQ4UcsfZxC2x8VHUF9+ApRbbidDemJhHiRDSyH5/RVrX4Pz4IHD9ZAuBmRJpiUQNjLSf//pKWOonOKvI264=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XPXtDxfJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OJmfZ0025211
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 23:17:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zi78O5WbxVRKiMoABrInJVSACYsCJLLIPTs7LoDla78=; b=XPXtDxfJGoyg9mvS
	1PWDaXIin5QzK7YNqN8tHHx/D2LWbLNohlhLjX6R4WAPRSRMlIJe6kFEfNEiZotl
	w87emtDd5bead2nduArq5DR1V7TaDEgqYpxlx7FNjzbXJVCBqXDPurMskSBfDi7M
	PIan4bURnzV+kSzblYrqd3dF89r5SiuplgF06xc9cHpzLqOzpf2RTb6rws3B4jrl
	muEpUp8WvRHZ1Hwi0ACniTzl0/QDxjX7OjkfDuZJgHr0jPDIYzXPe9d/4mXWIwBd
	HoyvLJikSrqkXtl9JV92irgnKYBKu8KAqvGJ7NqyVfW0rZJd0NeAXyERQVxaiTZN
	xPL8Ug==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy73tf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 23:17:26 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f0c76e490cso3349386d6.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 16:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745536646; x=1746141446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zi78O5WbxVRKiMoABrInJVSACYsCJLLIPTs7LoDla78=;
        b=jWd6XnU77G3ukBCtIelAr2m0Tt46vI1Jv/Ctzu7feGwdSOKOYlcR9bWfuinLu80+QB
         I9+WGaIfHyAj8q/ww86qM+i7NiZaOBeeP1t8T+brFvzFzKqj/0XgIfX2j2Isu6dxF++D
         nYeM+smejXlJ04uPV4jIZAqdkjfmNKb+3OcsHyI9MeqTVzL4ITbPyiCk49TQ6lv9xkLm
         oCis0Jo8NgHzdO3LZONHsskQnyyBfRM6GNrsRXCEMxfyLI1xCP7QaW8GJBmcLKohS4QF
         gD4HCqQjBDGUFXjOb3VCJ7dim8oabXOwYwnn+pRopv4fHHWRRYo3H1FYcFLdNX+vDv83
         ldJA==
X-Forwarded-Encrypted: i=1; AJvYcCVsdslVxOWHXTWmSuzV+O8AFCxHswALbmPvzxCoE6J3FmFTPS9NzWwQtIIRLFF8yeFKT0dGBWXJ3c5t@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/tXzkkyNIbPNtb5tAzLLb6MxzTcW8kQw+ODANHqgn9ABWp3n0
	14Q36AKrEjiSV7VHmBn5ZPigu4w3uyRpNMUGyBx0Mxqn4HlCujaWG+DufKuBMu031q3XCaRfcfs
	57kYDCPWQjesz1LcX/y6t8gwCLOQGNnGXrBLmDLuSxkgndo6MZ8kUWO5leqYP
X-Gm-Gg: ASbGnctbO7alJBmRDyTCxAp5dSirWiPAOkfl6EW6i3y84ambpO6dhG4WFKsYVb4Ijsn
	rkiupSFTnmUZUmXXeIuxXOF9ZxYb6WwaOteIWu5CMXNukLntkiN5A00hoxMPt9EkK0xvYuzvtAn
	QXLJEhM4hIAeeSC9QLY1UklQ9EIkmUbHa3Dlgagn6PVB7uj0n7XlHz8s2pB8JNAZAr2SNnniADJ
	zGXDyruge5oPAFU+a6vz92QuucCljizPwsmU+RpBGHuqKc2GGBOG02ngKvAWSMRrO/ZTepKBrP+
	QHCBiKtIju+o7aoKmjjRifiSgtSBf1xLciUESIXGQ6TdUhPi0SNKxpPRWKmaafffxy8=
X-Received: by 2002:a05:6214:21a7:b0:6e6:9c39:ae44 with SMTP id 6a1803df08f44-6f4cbb7cb69mr2191186d6.10.1745536645871;
        Thu, 24 Apr 2025 16:17:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDZmAS7DYVWeiSkMuy8GfwZYTNe5JvZjTC0/L6j7VV4QyQaPwFxEfacEvvuXKFduP20LB3BA==
X-Received: by 2002:a05:6214:21a7:b0:6e6:9c39:ae44 with SMTP id 6a1803df08f44-6f4cbb7cb69mr2191016d6.10.1745536645591;
        Thu, 24 Apr 2025 16:17:25 -0700 (PDT)
Received: from [192.168.65.221] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff4e7sm361610a12.22.2025.04.24.16.17.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 16:17:25 -0700 (PDT)
Message-ID: <c6a7278b-9c11-4cca-9400-c8ccbb1473a2@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 01:17:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: add UFS operating points
To: Neil Armstrong <neil.armstrong@linaro.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424-topic-sc7280-upstream-ufs-opps-v1-1-e63494d65f45@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424-topic-sc7280-upstream-ufs-opps-v1-1-e63494d65f45@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDE2NSBTYWx0ZWRfXweu8akQgVoQL 9a3lO8L6y2AjR3CYzmEVWKdBVy6txZjdjOtIzs5ZS87Wnuki0AQyzLU1ThDYNZQnhq6+zmCvr1/ Sr/TNQHwpJiS3vuwfrZimx4AqTShCojA9SSroXjMYuESiMJ8KwN202JX8V+8WjPMRylXl2gpKUa
 hpIdYk7afKFaDqQwhN1UOrQKWHA5tD27vLaRyWOEEZC7clhDsYYNWbuuMcOu/oAD/13dOXYNf7i WDwM1px5+heV9poT/XXUlb7Cbe5KkAJ/re31Wb3N7xd6SgZ21HTh0onX257UhEfGDWQ5l3+UlDi N0c7wkJOy5gj7jkFwKXlA/V7ANDHksg0f1S6tKdJiVid7qb8sa3AruZXcMliNrIqCBxEXrinlVN
 7zi4+A8Mdxgh1XYQBmYxWM3oTXSmzyxoQNXo9A615l4s27IyO/cTKEk4pAoM4wxFI0qXuM3I
X-Proofpoint-GUID: SUvU6ota5mayUeUxUFIfrR10a5kB0Z41
X-Proofpoint-ORIG-GUID: SUvU6ota5mayUeUxUFIfrR10a5kB0Z41
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680ac686 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=DVEdH54ji4F9k0XG-nIA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_09,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=993 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240165

On 4/24/25 6:31 PM, Neil Armstrong wrote:
> Replace the deprecated freq-table-hz property with an operating
> points table with all supported frequencies and power levels.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

