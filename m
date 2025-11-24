Return-Path: <devicetree+bounces-241570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F80C7FEC5
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7C4F3A8B3D
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D4A2FAC14;
	Mon, 24 Nov 2025 10:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WCCUC1tQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kk7w7xVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBF92FA0DB
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763980404; cv=none; b=s+PCPjk1X2fLZMsJ43Bqep2M0H2M6hdfyStWySudyPZ1dbafCHqm6o0djysbQbynHOINjfv2YZZJTbOYcnRMK+P/Ud6bcFMTsZJgtCaegdC9PcqCE7NIN/WHQldHCUsk4l3I5YeZZmy0MGxqwEMwjEjunSNXzZsZIIbjcsesCw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763980404; c=relaxed/simple;
	bh=rwGQrTGfqAo8VsyubJvBZi0mJzUDt0rYT8dIchGYVIM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BAgdQN5/eWd7UrrkjQktzsswCsEGUw2KZVu37ICoLRLuAK0AsmqVhlu85TMQwGSpdLl0OTYcHVJbCyY92DtH0BYMJtM4hoe2PFLko2mbsPrbd0DQqF7qo0syN74EXvjJGsJ8D7krDDNRueGIkUe+lOPh3HP2dD3d7l1iPHfCYRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WCCUC1tQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kk7w7xVe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8sNre2921521
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J0Jm2grvSgkUN3rYx9rkJH6YHqau0g7/jl3IwGSFlUo=; b=WCCUC1tQOjbN2r8+
	2Vdl0bGuAvsPaW0lQUsaIs6J8sxwmpSU4hcbl6mrgCSDd6CcI4QJ7txUR9+30xUD
	AkdHKdBid5ASaoBIH8xEuagoeLqs7ZBkbZI5Xo/WnNj4Ra+sRyDmHIVqVd13tvco
	JwKcqSiawBHYIA+1TroSgmpaYkgI6fHWaKG8DSXh9a0SIzVJIyFpzN/UUT0rn0ry
	Xm582wlyarZLnKgITP8NcM0lne7LentQ8yrNSsXysgW6aC/Pwefiywy4vpmmD+pv
	ijolZmrHmAH9p2m0Lf/awhy9OySrUryU2PKox1KClTX80Ztm2ijyySxBmIKYbzWi
	GLq0/A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak69smmvh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:33:21 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaa289e0dso21172291cf.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980401; x=1764585201; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J0Jm2grvSgkUN3rYx9rkJH6YHqau0g7/jl3IwGSFlUo=;
        b=kk7w7xVeRlaKm9n0cbLZ1rjE4Boc2gjoRgPLus8GJ/Yg9Qn+kp2VgJvKl8DupGG+zq
         ECNwUK+5ZAed1xcC2zSSqZv49OOJDo17lopnDHnNO5+Ghk5GAXve4pZ/cgfXZ/QtoVHm
         R+Tfts7H34q+i4Y51pmAp0n4FW+OJueKxuGkOJxL05srJi01wiFfRM/0XY/UrLlZZTUY
         TynWPfAGWrFSMWIeypV3JX8ZCevKvSgmxVnV/HU+DhzyDI71Vu1Tzocr4dpYkJkSWGXY
         LZm/KBD/T0xUjiWc++KCEGRSSEmEbv143Cr9TFAclFtHpRhNKFc0MbcZd5FRHwIGy9Bb
         zZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980401; x=1764585201;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J0Jm2grvSgkUN3rYx9rkJH6YHqau0g7/jl3IwGSFlUo=;
        b=ER1kwpQglKIxDvOKK3pCBpThP5hFm9XEFGt22LRMD3q5z1HrdfqNxbQiQfssy3Hsof
         +sFrC1eRfa5MUO9fxPisUlvh8hKwL1ph75EqwJ5V/rIZSeoTH9LRjJ+hN7r4r+gA6slS
         pBXNf6r4/uL9YfYGW4snSje8NwlMiHS3T2zYVrrr7K18YTCPtS0RF5SoGwrFcr3ulnEq
         pHGNkT52L+I03KLQVYE1dtQSZUnXMpr49BKuoUvQ22wvyeFqaeIcvHuZ3UGtk36whbD7
         tnNPLKlVYtVjhbLBWpHGg33G70yYHYKM0hOzYvOUxM0mTWKG3kePzfbqQBmaEF7EKtx0
         RWPg==
X-Forwarded-Encrypted: i=1; AJvYcCXXYvv8nv/DWIPDeyXBvMLbDeAguQtUHwAEtHb2FTtT3i//4e19KW+VxVddIzqv8urtMCPClFCE65fj@vger.kernel.org
X-Gm-Message-State: AOJu0YyMHX4Bouy6BFDFj76w6TyISKuiFjUwl2A//MiyQMThSuJfJLOT
	DX7TjLM8fJikj2GXyV5r4LsWqy3ym9UfmJ/ZDP3R3Gu4+NC/8jUsWQDIBi2qidcK8YqrAsoc7gh
	ShFE7TFIlepKD5mhQMIFAFka4D5cFqMjG6UogAEfPD7BF6VMASIy02bciSmnKk2kp
X-Gm-Gg: ASbGnctQV7LSuMHq/J7tlbJD4GpPDXrio7zzpgwWcO3SYfjkuoN2SMxRP8RyfITuTM7
	0b+T241wJyqGM2+6VDkC/JLJSsSi329h0dUGQcpNDb4ZE1FarhyhrWeISCmTajsis0MxKrQAzJR
	GfdbWN6CFrxsQvo/iKXiruCgxdyfsBvxZ0J9w4Um2rls9pj2A9lYQkbkwudijznWDu9TwOAzQMv
	sPJ2TWaDeNPYkIyx8hqfw44B7M350hm2q4a75LAJZl8Mn7QZk9KMGbSiK1+UkpO3XpnM4ro8z4x
	HsVjNO+3xPvDDh+L8D4bROetIP8XT/aLfrhjIXtoalYNZIiiYu4D5g1gG9Qj/SPsGwCvbi0DyT1
	3AreD9i+RVAEDfNDDE7vh3zdGu2I1KUUshA7FnSnAxO70uCqSc5iAF9cAYkTanJa0fzs=
X-Received: by 2002:ac8:7fc2:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4ee5885a9e5mr113117591cf.4.1763980401342;
        Mon, 24 Nov 2025 02:33:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8qI/bBiQVltXN4iDi+AWrAjaBjGs72AWTsdoCpGxXcUrId734AczoUQkVRTUfqATBAW+9VQ==
X-Received: by 2002:ac8:7fc2:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4ee5885a9e5mr113117311cf.4.1763980400942;
        Mon, 24 Nov 2025 02:33:20 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d80665sm1228920166b.31.2025.11.24.02.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:33:20 -0800 (PST)
Message-ID: <35cc8bf6-4927-47e4-8f68-97138263e7a7@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:33:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: lemans-evk: add additional SerDes
 PHY regulator
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-2-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-2-73ae8f9cbe2a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PNMCOPqC c=1 sm=1 tr=0 ts=69243471 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mAYSrJZFqx11qOWNMfMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: ptgbRNPZZebq0TIndKyDq5H2zl54-JYh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfX1Ypi/kwfeR6P
 ynoCbU33JZtyXvPyWpv5Z9WisGZWJvJ9Lp/dRphLElJyxLRr1u/KJECptksBAVVfypRX5Y49LRC
 4eawixNTDo+hIPazOYAFGSgGpx+wJ/LRLRgEljv2GKGwvh9pyWL9FNzUQEEov3LA1PScwrATIbU
 OIZHeVIVTRftMcEe10VzDRu5V3E6Wo37GDSufEKDskjIxc8RH6/cYzHbwuxFZZnab78LgB2CVH3
 OkWc5KcNSDMr5aB8c20X5E+epyvtP3cPU5VYjz1jyqkJSj7Ji/C35MdsXnlwV3zuIffHO/PC93s
 G+/SZPCgje/b9tULLB/THFBBOClsFYtNV4mfHXLnWzAc2QSDH0Yyz5ArQMI52mSg/d2umGbBtlL
 U0uQq0GFCn/zpuikumU00fGDG1aw9A==
X-Proofpoint-GUID: ptgbRNPZZebq0TIndKyDq5H2zl54-JYh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 suspectscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093

On 11/24/25 10:25 AM, Mohd Ayaan Anwar wrote:
> Add the additional 0.9V regulator for the Qualcomm SerDes PHY.
> 
> Fixes: 71ee90ed1756 ("arm64: dts: qcom: lemans-evk: Enable 2.5G Ethernet interface")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

