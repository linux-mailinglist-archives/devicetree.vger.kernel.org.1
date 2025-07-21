Return-Path: <devicetree+bounces-198362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A898EB0C84E
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 17:58:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5017E1C20919
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 15:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E222DFA5A;
	Mon, 21 Jul 2025 15:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GoXhyD+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371312E03E5
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 15:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753113486; cv=none; b=e0ZRMYC5lUdEB8I71q5phIgRah3yPUf3Z8Nohb2onmGjznykLKdfhUONIVUzwGvP0t6Slxcl61JJMLMr6VpS6PqbmOf3Zh6dI2ndp3YUNsxa1bx+znqQ22inrJbBOD/mjRZAxHo7h2NvucWF6hdnfmpGXIq16G/SJ8NLmeau5oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753113486; c=relaxed/simple;
	bh=Aeb+cBaDP6mCJ/kvpMM3pvMOYo5DtWUCf8qOisApiNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CzNN1/HNKlWtZVCzUbE8Gx48pcMHfr0lK1RcnUiMhWQ87n5Cl3F7POZ/pr4KKa73KMcVa1ReYiGg7rQhP760+XNnpydsaiT1TsAe2nlIwzBZwzr8sDtK5wjeZBigo95RfAmtSEHnkciVe/37FXrKywcXMszDfXj/TCJ/Wu+KK4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GoXhyD+Q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LAI8Pn000902
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 15:58:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7eaykh2jpr4tDzQ/ml8eASCLk5tz1CCA/grPwuJlCtA=; b=GoXhyD+Qx6sZ84f5
	Lw9+R7ToqBXi7jfqR+wvz34jza0wQeaCbxhOP36MJNguhVMXL5LymKf9pLVjeR6/
	/csboVapjS5vGcrZ63JRIA0EeuTNuLM5rdUA6kw2hA1eYMEdrUunMSFtxkacgLnr
	TaEEXoguHDC7Dc+GUcFnb7NEmhfFYxaiXzdLp4a6uRXLGPat0uqdYV509Tvm0VQH
	fgRlrUs6+Lj6mrt6aBXml2tAAMEykShAi7Jw1bT3fkV94eHfxAPv0pqbIlUIw5Yz
	FLqIS9Y/Knt5/TBTOeAMEiCxIWvHtJ1rib1DWX3iSseOPWDJpUYYO4r/t/uiMeuJ
	QyPHqw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044ddywq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 15:58:03 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235e7550f7bso44569225ad.3
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 08:58:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753113482; x=1753718282;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7eaykh2jpr4tDzQ/ml8eASCLk5tz1CCA/grPwuJlCtA=;
        b=hl8eeAaLURxxJ4IGodp/TjbjA3ZdYj9wea3ROdjOdHvY1H2oySgjhtqutIY+Y8jiLw
         h6UtlsFi6RUZf6V6Gq5/IecJASnOgvapWrJxwPY0SAUSjfFNUOFIkKSZCGwMGUypP03x
         xKk3CiXENzU16FGZmYL4lrOS3pMSzJfk0QztXnJLWuJoOQmXtCo3uz6NCPyne4MlYasZ
         I6xaX+VF5eVVE8aaTjNag46BAtdKv4fMJbQVLogIhCHmFsZMTW1T/IaGc4cSL/VJCCk2
         PbO/UlCYUv9JuS1JXEnP+Fm6+fToDJXwO8UTxpoQl/npsv1OUNo9WxqyxUNlnKLVBxOn
         sJBg==
X-Forwarded-Encrypted: i=1; AJvYcCUzkV2evgm3Lij7uw8yShSRiqTG8mBWJyTt8wlCaBRLuR4r/B1hflIAsGBC2hHm07vnC2aZB2e+E++s@vger.kernel.org
X-Gm-Message-State: AOJu0YzgVfIVxL1df7117t0xPXYO6i8DG4zvKGpClq5C+6dUoR8ZA0To
	F72rEjSe5e30gv43XNN9M1gUjOu5tMs9n+eBCJ2YiU6TDCfUhfuipoTGNMAXfmXhERw8Uggmtsh
	3/D6/LC/zPZPn45cXgccgC2nhXVjpDcTfXfRJ5JZiKvYXYdA9pZOgzrpOmDuvh7Jl
X-Gm-Gg: ASbGnct7MwZb7SIikXcxsasMlcPx+DdbrgRhfuN+WE8+c7Fe6ggEqmn81vg/cj2L1o4
	hllx/fIUYAAkKR+UmmYVd9FwfLVRL/r7xJpzYF0P2qUV1JLBikpMAu+uVvYVTVqgCeleF/SNhcO
	RpMpsXzSDnb1n5pCdbPKYGPxrQ107gfwR/dEJ1rl6+cKH9/bm8oWJeXhpnsWWGpvUjoe688YCR3
	i9S/YzIusINB+FJoFnB/aSHsOBMAI4Qni6KzhbE1KuHVdtPiqx+n3if/SR5+hCupoqkHUierZ5S
	TJXZZ7fhuvSaNoBJRXtVfx1NU3D8U47hzeW/zIGPaADabr9EMzta7S2tJ+l6ebPleSvXCEXiGOl
	LRcnckIvWklJR7mjPGWIVNQ8blnEJbFxA1ttLmpTPJuaRsxTnIN3E
X-Received: by 2002:a17:903:3d0d:b0:234:f4da:7eed with SMTP id d9443c01a7336-23e3b84f72emr209498155ad.44.1753113482585;
        Mon, 21 Jul 2025 08:58:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfxVD4xFyUDm77aId4Mxba2CamnraZ59KFcCKOXsR0AXPmtHwmcTsp614S8u5McuJQ6G4ayg==
X-Received: by 2002:a17:903:3d0d:b0:234:f4da:7eed with SMTP id d9443c01a7336-23e3b84f72emr209497835ad.44.1753113482146;
        Mon, 21 Jul 2025 08:58:02 -0700 (PDT)
Received: from [10.50.52.170] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6eeb9csm59786515ad.186.2025.07.21.08.57.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 08:58:01 -0700 (PDT)
Message-ID: <32facbb3-3cdb-42dc-9e65-3daa0b3899a8@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 21:27:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: Add glymur pinctrl driver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250721143037.20983-1-pankaj.patil@oss.qualcomm.com>
 <20250721143037.20983-3-pankaj.patil@oss.qualcomm.com>
 <21c75060-eb8b-45f8-bddb-816fce787240@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <21c75060-eb8b-45f8-bddb-816fce787240@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=687e638b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=TZC3DJ3nR-gMiTPXGEMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: lcPnE9OVO-3Y7G2JauuFI25LENmHpxAt
X-Proofpoint-ORIG-GUID: lcPnE9OVO-3Y7G2JauuFI25LENmHpxAt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDE0MSBTYWx0ZWRfX7eAh5kd8Dd/Q
 b9PIUHPY1YDyIlwre9ZQye/oySXr3DbdatFBXSDg3jVnXohbqolw+TSyL4i3cyJ/vJ/7kpPSjkh
 2Wteoe6tlFxrT9QTdluOiooEKNg4d4oKxFoplyv2M5o26/GEnKKMCJye/BNh66zNmz0Lk0//GrG
 wWtZ8yC6Y7wz5+AyqfD/Id6IZm+1zJ+g59QlR5+yot0k9ZTACRhyaPMhDuvxbSWiBNB3El1gKPf
 uMdiXuTs6ksnyN96qAV8Ak+Ub0N2u4rBjs8CSC0wjUboCZjpHQw9wzneDPg2dr8yNVbxCiW59DA
 RWYwiOu+rRM8g9hJ6Rq3vQG847XMwXMdUdCs6thDIKe464BRAYJZf0vcAZQRS9ESTpR9Lw3qAu+
 ewP9xRdOGY0r1Gv4r/PIqsJKhwQbAwz1GGySshCgYGvOtF4wEA9JBbvPseRGuQpNaINZN+GZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_04,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507210141

On 7/21/2025 8:21 PM, Konrad Dybcio wrote:
> On 7/21/25 4:30 PM, Pankaj Patil wrote:
>> Add TLMM pinctrl driver to support pin configuration with pinctrl
>> framework for Glymur SoC.
>> ---
>> Changes in v2:
>> UFS_RESET macro updated
>> Removed obsolete comment for msm_pingroup glymur_groups
>> Update gpio count in glymur_tlmm struct via .ngpio
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
> As Krzysztof pointed out, your s-o-b is not part of the commit message
> (include blurbs under the --- line, which Git will ignore)
>
> [...]
>
>> +static const struct of_device_id glymur_tlmm_of_match[] = {
>> +	{ .compatible = "qcom,glymur-tlmm", .data = &glymur_tlmm },
>> +	{},
> Nit: "{ }"
>
> (no comma, as this is the sentinel and we most definitely don't want
> the list to grow beyond it)
>
> Konrad
Fixing the review comments in v3,
Formatting issues in my setup, will take care of s-o-b in v3.
Thanks

