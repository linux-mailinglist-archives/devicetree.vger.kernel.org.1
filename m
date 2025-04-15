Return-Path: <devicetree+bounces-167242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A58C2A89AFF
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:50:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4ED31897880
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F7A8296D02;
	Tue, 15 Apr 2025 10:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iDBuKmGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC102957D5
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713991; cv=none; b=scE4nkcK5ylO5Kh8L4Couip9VJQz1wMDXeBQZX+3tkS+Dop4lHBSFKtT9S9H/2YQNA+9Z6B2CO+oxEVWv+jIklPptT8A+6ek/ak4mg5m78uN5/NjYgyYhdVqE9bUS66QTrTRvq1Yc9sRikR/am1DntSZZ2E3NjgkNJFnPJACfx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713991; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tekqWDjLJoA3tbvXDmIWZcinK4UyUiJjB30/TKa/3+6COGIErVz3a2GmFsKV7YCO4il2BdqvLkFmjhENqENBaL2wxMu/eTgt+FGKF/nCy5AG19EUrfXSXKlLucRjO5KSjErnTk7S38yHPXqsPi785Wg3qZrwUdyhKvLo0E67fI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iDBuKmGT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tGnt005840
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=iDBuKmGTnPTAPIJK
	iqB49HYah+xzD6TOGA/vtjxECuaIU/PEY8AR+ZmhS1vzraTHA3ipfIoDx0vxeUTP
	LJxz3HrRC6WhFcrWRnxDCMkoydTeg1Zl7H35OU6ZgYHcLRSpxU3Zzr++8+fHXlA3
	fcFzq3+baH6i71BOo11/OgUnkE8Z6w+zjzAnvUbM1YfFihiekDkJ60ywOjiQPeq7
	0yV+L3g9ncs9+SgyHtaC7fG9dy7fYvsu7olBMj6NcZRPuz3CYfHhtXb/5ghPAMLh
	up4yTdnyfpd58aaTX6G512GmJFPXk9TyHQWt2AUosaMj0F/FEkLvvY0y/4DsAJvr
	2aUVGA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj7x0m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:27 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so16737996d6.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:46:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713986; x=1745318786;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=TfnpLAWNTHbS0xjMASULc9xHH0gQiUE3lXKP0ahtFSjKCziyFUmC0pwHty8el6fCeO
         wx+iWypKP9vLsWdN87KgR5/4/v0ZeRY3wpLiex0UlgAxghRzTOAP12Lr8uTd4wTIxbAS
         ml18FE5rMO0PfxMkDGd5SrHlAMI1KT5e0eaEfiE3is+69jdfw5p5yhy6BJ7J5nYHH8jK
         15aq4osiaILUvas4xA6AJBF4iPoyNG5tfVNLpIRlq0gjZqx0otw9mItWRl51wuVyJxPS
         1exX/Limzrd14r7RETi6UklPsSvio9znUxOB2UJowFN/0WHcwhilSkLyPkjq9NNJZeq6
         98pw==
X-Forwarded-Encrypted: i=1; AJvYcCW3kgR4gVAj0/8eHHNra9SqQK0pVqsbEC5KgFdhWZWgyr41OsX44vOvLfUi5NErx89KbhnOeQRrC8zM@vger.kernel.org
X-Gm-Message-State: AOJu0YzE1Z7wjRqbSRctmmIBKLXrjnzasQwLhoblwQrqUzy4wxhmg5HL
	H9aPlYcZWs0RRAu098FZ85iX6Ijpf/3vfWKYUfuEKGNNwZQqat71JVEZOkvFqA5Ab9+a54lRp6z
	beO3xHR1LUhc0tSjgQfPu7Ukb0oEOmttxOr/0nU9hhVP8fj+FOsfZS0tcIsZk
X-Gm-Gg: ASbGncsGsdBuCMszTx46erRAH0y2lTPai0tcPAdv9gpxtxjf8kGhejnK23w0XnCCfBx
	z07ug+c74bX9jgGRXh8Cd7wrBbvb0uos41U7DBL9lVQk+5j9eTAvJYyD5pd8yOT5YlDWJYIJHB6
	mu2ywaQdX3ansnO5Vk+yk5tFvSmJpW4HAyEBWN+eKZ8UivBS79rdBp06DxNbmCxAM6nki6fKjkO
	9/xOt/3bJCjBxu+jJCS0OBwVqEb7mzaX3qsnpXhRcC8ZI7NBZ88kU0RO+DOCJGLNa6MQLQlomfJ
	Gumo3wxdrlExK7GHyKQcuYjbqYHZ+q4qkiOmi1yO9v0WLKX8fsMz0/FlguzSitQSiEk=
X-Received: by 2002:a05:620a:468a:b0:7c5:6fee:246f with SMTP id af79cd13be357-7c7af0ee0f1mr904973685a.1.1744713986659;
        Tue, 15 Apr 2025 03:46:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqNeiL5ONudZeZEG79p7c+URQGANzTx8RYVhmO+UvRSlx2t8pffd6eodKaeyj2EGeeJC4wZQ==
X-Received: by 2002:a05:620a:468a:b0:7c5:6fee:246f with SMTP id af79cd13be357-7c7af0ee0f1mr904973385a.1.1744713986384;
        Tue, 15 Apr 2025 03:46:26 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ef562b6sm6786461a12.24.2025.04.15.03.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:46:25 -0700 (PDT)
Message-ID: <179419c2-9422-4487-8c8b-b58524a6135d@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:46:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/20] arm64: dts: qcom: sm8250: use correct size for VBIF
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
 <20250415-drm-msm-dts-fixes-v1-16-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-16-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fe3903 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: U_R2-VyHW4Ka6YmyZGU7JEJpzsVmd2Ql
X-Proofpoint-ORIG-GUID: U_R2-VyHW4Ka6YmyZGU7JEJpzsVmd2Ql
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=607
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

