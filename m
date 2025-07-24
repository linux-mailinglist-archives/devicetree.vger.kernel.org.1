Return-Path: <devicetree+bounces-199441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20847B10A36
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:30:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4808016C41E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1A1265CA4;
	Thu, 24 Jul 2025 12:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AAO0QJrN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E22FC0A
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753360243; cv=none; b=TgEYvZ42u4EBGjYOCC2TUDSl2keGmJWYrF7PgpWaSLHJTCGKP2dtTUgj66twqt0vbGmKyNjCUspCTn72rPeSHHwf7PmvvtjV2wBeSChrM+5Vc+i63WIcV4AjjsC9o8ItdrQPrW1i6QF1FVOulAuD3AWK3nQ8dAe/g3Ref5d2c8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753360243; c=relaxed/simple;
	bh=VjN6lbJbyHpAweB3RWq9GB2CLDrf935zwW4/aLCMId8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qdqZWuaDQgrg+HJQqR2NCIH9GEFs5ceIXREhTocApJQBbHgL/GwbTBvcZaMH+7/n5oMpgtEMt2yhNTlq6HY09DhwBPDJJHCFZbFZA7/WgFhnqnk859Gl8U8T0zaXruyxhDBVpJwYDfUC8flFxeTMmB4oWKlq+mCh0nVpUMOPFJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AAO0QJrN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9d92N014980
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:30:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZPo/Ix4t9i2gm3mSTVtuTKh3mZMxwYpbauxF/Ix+DHk=; b=AAO0QJrNJO5XKt75
	BE4FV6zHQtVErkXSh3ORhRsbtCdaX2aDKQ0MvhG/4AkdB6WtHaUeSo+kdXjgQkoD
	/fWEiRgKCPhSwu5AfUBzMGgbxiAU7NJFrvwSS5V+30+LVLq6EIrrpnTRRmb2XBJ+
	f46n6UCk+jJvqeOQyeonV+yTvpFOYD/b+4S9rL+kWC7MEUJ6yWo6iRyB+Z4K/OH7
	fJ4ukcKtv0fgBqz/3G/DjeL64UnGWF3bqsJ7GKFxe4I00ADMNYUaVXEWj1GtSSii
	/Bvr+i6RA2iVPQ4JyVfaIVJoUMV3TiC5rus+Vzpg0cs0ldQK1i9Q1q9jeQSBI87U
	/1UHNA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483379tuj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:30:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e1d3bc3bd9so14769785a.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:30:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753360240; x=1753965040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZPo/Ix4t9i2gm3mSTVtuTKh3mZMxwYpbauxF/Ix+DHk=;
        b=WTkJIV/MnkDChlwrUgq8zHr8q9eRyuDViQSRdDKwhyoiSrPhea/kXYOGklzAILuECu
         hIon204o1Hpb+W1wlAjUvESgyKTKaVXV+AvuNk8ns2/pcvKXFl1SJQKFTjts4fyCnjy1
         sJ9MSlUqY1Qo/mMpQrBWcU/HRDcgxEGKKiwjSeUmWBfg/+rK2mYtG+cv6pPKuow+ubJL
         O4fx3ZrmynhmqcC3sJbetXvlsOL0M47TXaXlXDT+iS+DxPzFpYF5ytnThDCqRBqLVnh+
         K6HZm1Rx8yFYG6d51YLSjG5Gls9MHhBOiaRiFuFxmoIe1dRDJzwSrwlBEfCy3E+gtMCM
         XFKg==
X-Forwarded-Encrypted: i=1; AJvYcCXwRmOqIe7A0VBmVgfpChD/8mOiwMya1grT96ap25AKLePuf43tM6OFTNVc0MYmuWLy2dyyHwJTh+2W@vger.kernel.org
X-Gm-Message-State: AOJu0YyWaaj8V9Clvuv3Zwxl2vhqKTSHjJ9ly1RnXua66Qg9rKdL6YAt
	PqlLpKL1i2BGHgy5QahCPIKpZFEL+f0so1/O3/opyyuPhpF1R8cT5XUzJEC6A8B15//kNeTduG0
	qEpZF2CaL1irlOKdobT4Si71S666ExpU4s4UsLWHgrxCio2LmUAdOl3sPslYZIET1
X-Gm-Gg: ASbGncsu1Tg0ucRWuoJsYtX6KHHIocOn2xIgVpWDpcExER7ue0ZsmkOw0SLX/qUI/Qq
	SvDU26AG2hsgSV7W1Sr8aVu68QEx5EEUSZyoR9X9Dyz33UtYRlQCe3g6OnkNNxKvZMOB8+6G0Bl
	njHywKV7FwfiB6u6BkmEoloPAIAJaG68fihD/sWT/FgZ7i5rmwWjk40FQaxZE+liCVyrjgNxECe
	EKdUVjjuRo27djbVs/G6zmTSYvflgyPFit8CRY2jiZHqfniVw6Uu6ZFSgxiC48dA+N8fA/3XFsF
	RtGKQMGbM5emweUlD5CXmFAT2gVEDJhPBFC08Cg99qMoOryuhomzKR3dsZyOUwmcNsJSl+U37lP
	MU5eqTX3420JQR7mn+w==
X-Received: by 2002:a05:620a:9633:b0:7e3:3029:44c with SMTP id af79cd13be357-7e62a112c00mr308566585a.7.1753360239358;
        Thu, 24 Jul 2025 05:30:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4hC5mZlym8Ol+EKXuySdjS2BLHVDFr6pVPZuR+2k3WOI8gV0/mpW3MuNGzlmCf3tCkTQPQg==
X-Received: by 2002:a05:620a:9633:b0:7e3:3029:44c with SMTP id af79cd13be357-7e62a112c00mr308563385a.7.1753360238812;
        Thu, 24 Jul 2025 05:30:38 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47fa4bc8fsm104236366b.114.2025.07.24.05.30.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 05:30:38 -0700 (PDT)
Message-ID: <860eb914-201f-4ccf-93e3-95596bb73730@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:30:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sc7180-acer-aspire1: drop
 deprecated DP supplies
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
 <20250724-move-edp-endpoints-v1-5-6ca569812838@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250724-move-edp-endpoints-v1-5-6ca569812838@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: uMA6mrPAL-U5KtuxH5fu8uf5Yu8Dbv3V
X-Authority-Analysis: v=2.4 cv=btxMBFai c=1 sm=1 tr=0 ts=68822771 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=As10ZbdmuqajYgUSL9YA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA5MyBTYWx0ZWRfX+FqhbWTghw5C
 yhwl9azUGp5fH3GWZ0twgxR6siAeW1KgoKKzVTISU4+zXOpp48PFzq6lSrd2lqHBbUb/5MNpxPq
 radBmjL9lmYDdJ/prEW+x1tSHJ0PbMlEJ9VxtH3l5VlzPgephKTuKzX2nB90nwzhFIVnl9pJEMt
 DkP/ft7ov68UZ9yRJqpZyxsMfuvsM1WOUmb0wmlgk9LLo2B2YzdGoEGk2nsn5AtX02G13By9YoQ
 qWDtwilGLmkn6r/a2ncawMeOd4Y9+tXjJeVaeBDWCUcsefY+LtrECg81zRW3D3WuAiOGeTApTSr
 4Rv+0QDwNG732oDuFnaQYlU3ZLr4SwZff6wwruDtGh3APesmtXbUu3EeQCfnnkqbBgA4Ia2AnXJ
 lBmIcgFLyaK++rNn0ig4WgCIRMjWV9Ec4wF5KIw3GgKz6PfCpSKrxEpsVUR9Xsqg0ZC5nLeH
X-Proofpoint-ORIG-GUID: uMA6mrPAL-U5KtuxH5fu8uf5Yu8Dbv3V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=609 impostorscore=0 mlxscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240093

On 7/24/25 2:23 PM, Dmitry Baryshkov wrote:
> DP supplies were migrated to the corresponding DP PHY. Drop them from
> the DP controller node.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

