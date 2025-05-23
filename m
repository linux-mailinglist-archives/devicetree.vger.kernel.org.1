Return-Path: <devicetree+bounces-179911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B86C2AC214E
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 12:42:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1B859E53CC
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 10:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80C9228CB2;
	Fri, 23 May 2025 10:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZHeciPz9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F14222596
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747996968; cv=none; b=dEIayVWChb0FT3WejShXPJa+7ixY42ZdIyvt77+3w/5/UDjqyf9SeHGUmxSrHMDzARZqijwydBTz9FzXxCgaGI4gb2CrGviY7FgmA94vhkmuUlqVhnI0AzT7lbK0zoZrLVuVGt2p329OGUer+a442+fTMo395nZ+JpEYMKadvvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747996968; c=relaxed/simple;
	bh=456kWQgMQiXthflQvHRvF7kbUDd02oZHHsitcEetP38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M8+Zt1nKoocp9F7YCy6SDEFU+S0EdTJi62orHpd5wmcamSpd9K8o1FRvZgCfpJBTP9+p5nJNpDgc9XF4QWfz+CdJ8I5T70PUAT9YsyUsi9ZOJi3xRuT+No4Kr78GxN55nXMUgXjXfVz/AoIxsyUcvucfJx1QG/kF1djNWDhm+qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZHeciPz9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54N90kM6032446
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:42:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LCAeZFLp82SExSfCYAPh+KpsalxdX3ZnKotmtE0jVds=; b=ZHeciPz9YmkKjKg9
	rWkXERx217f2DSRGoeo4sCxABuVTH5XJ3IjqclFHV8Xm31yirAVgk3ySaFVH3XPL
	D1b2Tq8pE5Y1hr7JOzHGx5LjfAnEMB3D43IgS3lxmWf4NccaLJYfOjbaJlL8mM+8
	xo6st78Y2voZnjkc2L4+Y/5BUX8320oR7/dwGY3Fqqd7QxvIy/SrqMK5sf7Dv6CM
	RxLFzt/Gr/tPKeKMBPt0W5hgocUFnG0porJNMZ5mPoS1lSwszMr+OCHjT5l+bBuf
	uQJuUn7M17b1ckuzjzkieTEgbsGWGm070fYm7gtUtOgn3cGQeUhgm7yi2Pp0VlHu
	f/tobQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwfa1sce-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:42:45 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8c69a1319so3865276d6.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 03:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747996965; x=1748601765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LCAeZFLp82SExSfCYAPh+KpsalxdX3ZnKotmtE0jVds=;
        b=ddU8f6opru4i2V9OaVIcwIPR+9isHvL29R4DRtvk3Qij6z0fpnep1raX1i0urvtrKC
         2O3iJ4v530RlD7VW11KiJ8Y1slZleOH2liW6yeNVrirsnDgcIK3dwe7SDcMfCM95dexn
         px5Z1B9uBGvMnRO3aQ+PvgakqbL7iovF7mX//awaYZS9MFczrAn07RkBZeP0ov4lkZxI
         oMtP32XL8TWaoaeQS3Gs6FQUX1rII7zdtYg1a+aTG8EtwT64pbzzXJ6FIcx/Rsd6K3CI
         qgLXuhO2uGcs7YpVwkHDyppGzD0/vKSwz42+RkLhy+HEEOFnKsrfiCFBrhXzkNDbwtwq
         HWxg==
X-Forwarded-Encrypted: i=1; AJvYcCUBR8XCv2oCjDjrpiPZP24jbL4urZUVdwAReWJUJDMShL9KvckR8deq12MYaYMu4svc02laYGjBBPlS@vger.kernel.org
X-Gm-Message-State: AOJu0YzdT5b8eUMCZ1HEfa/xX50cWlI6JeCnLomNn4l29O/NVa3Bn4z+
	o4V7IILpMURlFwb2V3SyIke/4X/3nWUPfFt+dumpVm6eH6pv6vfgStzjhtgBWREwHAmw4IY6iPI
	VxKFSvFsAzecFOYgOQK1gR1Sx0MjkP6dXKl4GLpSha0XU+BZ8LquCntbv6IEs8Jzd
X-Gm-Gg: ASbGncuzLv1mfJED5PAqs1MZ8RIz/+8LoLt4oWbObw3jNI9OjfMOxOVFA9ZjQ6TrkZr
	AxELuNPBqjIHpTQfYH3QX6scFmCTM4+EPPjTs5b5IDwYbGIWtZvzrl2m+6p9oy8OCMm5sJTEgPR
	Bclw1Lg4Ej9KJlAKkwBHYtPms1DZpBjds2IaA+E0s/rAW4IL/Rj4Dzqg79hd0tGwx5agHfV4oR9
	QNLvNKID3PAHBz7QTRyOzts4h7HAh4xmp5uEJxqtqucyFSjssAIfd4mz10iZBDfVGOZEhHkpj+u
	UEWEODGW3qGMWF9fmOrLdSVe7jEuCd1xRn4kqrHua7f0D5i3GURtekwahSfbowzDyA==
X-Received: by 2002:ac8:5893:0:b0:494:b4c4:8d7e with SMTP id d75a77b69052e-49e316c9d81mr12126381cf.12.1747996965166;
        Fri, 23 May 2025 03:42:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFq2kM7kdp58c5VQQxWsvt4Fk8p9sTB5Vk0qJ9v0IYSVdBujAZqX9KngW23ZFp2R9/vvMDpoA==
X-Received: by 2002:ac8:5893:0:b0:494:b4c4:8d7e with SMTP id d75a77b69052e-49e316c9d81mr12126231cf.12.1747996964760;
        Fri, 23 May 2025 03:42:44 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-601f1c598c2sm7287366a12.78.2025.05.23.03.42.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 03:42:44 -0700 (PDT)
Message-ID: <e9760d43-58a1-44a0-971e-8dae68f920f8@oss.qualcomm.com>
Date: Fri, 23 May 2025 12:42:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qrb5165-rb5-vision-mezzanine:
 remove camcc status property
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
 <20250523092313.2625421-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250523092313.2625421-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=68305125 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=sPE8S47I3oryDVgBse4A:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: FPIedFmLgwNgq_Gyw0rcvNurhM-lqZ2f
X-Proofpoint-GUID: FPIedFmLgwNgq_Gyw0rcvNurhM-lqZ2f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDA5NSBTYWx0ZWRfX26PDAsOl7Gjq
 dx9mbQXz9PzXrXim1VHmmPArD3zsdgHUSqiUZCL6d0V+tp1U+BRo5tbApWeA4BV3IyI2jTCFjpr
 R8N2Rzccp9muyvSknkw1Fh1s1ve2TBL57CmSB0hChEiRA0cbGuuea/p7oGfYfhKdYOKnMgS6xPf
 vyOuB+f+TRFA2M7AuC3V/Cm5tTeB2P9zevGCm5ADOAOaeW/umoHIuNpLVbp2OqQmeC3LCtNMboX
 bTm41ysIHtqizkDb6mZrUXXKPGbT1iI9u2eqJE3JmAPLbzt/2+H6xxRhoGWKpNngvGNriz0bl84
 dhdtvOObmByS5MPXSj0EzByNBPTjOAN0fLimqtMIBXlo7qpg5D/jodZBrBBjLZo8cUDgyuQyqs+
 HqZ4Af3B0j/okOHciDCRsTQLioKhUAuvTvHuW0WR78816g7Hhv+2HsfYsxUGRXwjuvdhKKUq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_03,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=880 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230095

On 5/23/25 11:23 AM, Vladimir Zapolskiy wrote:
> After a change enabling camera clock controller for all Qualcomm SM8250
> boards the explicit control of the clock controller status can be removed
> from the RB5 vision mezzanine dts overlay file.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

