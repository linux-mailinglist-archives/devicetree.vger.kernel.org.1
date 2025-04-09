Return-Path: <devicetree+bounces-164950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F850A82ED5
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E26017A53E9
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 18:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1392C277809;
	Wed,  9 Apr 2025 18:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CIfyPnCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0C518F2FC
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 18:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744223662; cv=none; b=EOxjL1FBEWnw7GU+9x9WnM06kQcQ7rHUshc5nUMqoqSZj4uFlRXGrsEV2iKJoNmHk9BJIN74QZPKClCAXshCd90tJ8lZKtEEGPb06DaeHu2Y28uLvBtqtOVNSlhCGCHY8QAzdOnzPgdNslMCsuUvXwm3g7Ip91OIm4MZDqcssYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744223662; c=relaxed/simple;
	bh=QFB9r7z5dMdlFE+zQao4IfBH8uhmLX9OrvnpVlAWGnY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HwtmrPyM+FpycpSU/o6iFOI+p6tYunynKV1FvXO2Pwv61W6X6+dZ5kQ+So7dEkVjw+zLNRi48o6uzxMMsFTEkkliaIDMFjRkJzKwiuTtrsxum/0pOfnR3GHH6rl2WZYt+6uumh+aFeeTbF2pPnqCdyE4sVCAxnnAdwgB9GTcGPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CIfyPnCW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539H8FMv026650
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 18:34:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b0FeNQoeOgTEfF9ey7V9m+Rk9CoBm7/BgK4wKzyg+To=; b=CIfyPnCWyOqCKAD/
	F/snSCxaK/zCA19PbByK9nd98LJ2JqaZLBihQQv1tcLS5g15WoHbqY9M2HbzNCvR
	CNPs/HbHuJPVzPIXv76WxAxvjxz1dmRy+HUyajlu1qKzCuRzYvjQFOLPgN9Jfh2v
	c0opIGU2tlJF+/+w7ndflFkHrhR+8ilJ5M9r1AxPBai2FuWgnD46Dhbj8SJP/ohT
	Gb8u1U3RXTt/m1GJYEtqS8QtavHb8XwMmSzD0Zwu0XuFqXvMsQpUa2Tk9X17zewu
	St2LjnXmH1KecLa+IKopcxsgoJpA8VrUhQaKRzdvoypFvOQk9WsNWfCsB3KNCLpw
	EPFNFw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgmgc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 18:34:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54be4b03aso175692285a.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 11:34:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744223657; x=1744828457;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b0FeNQoeOgTEfF9ey7V9m+Rk9CoBm7/BgK4wKzyg+To=;
        b=naJ3I9LoDeboSIbXOeyqz6t/WzjgXq6jsj1bZu+2dEW7pRd9IKJZn5B7cmrd0jvve1
         jaWqR1IUR9SfqiPWYo7CKXNQjHIppdf9fOQCiW5rdlFkvij0QkfYkLmQT7HTiD2zuvZy
         a2Vi3CY4bjd4B0L9tqzGGsx29KCnkniui5uOapXZYWyLMJ7sIpg9Q0+xJbFKD1yZBRs/
         R+RySAuOzXJOLM5UpnfPg+HQ8yrdNKpezb5FmFtJCLBy3XuQZOc1l9W8PaXYe/+QaoWM
         ok4kq+gjuy1uKY0onJj6+iZGHC2nWYMEt9YXcSxc7c90FYnEtkGLdG7q1EnRNkiVoPVj
         CDzw==
X-Forwarded-Encrypted: i=1; AJvYcCUcIsSLabn7M5ReQ8Mp/u43O8yGL++WhZmEPu9hJk+BdtcmEpRGKWtrH/JxmZj9bdWZwBgXebp/jdfx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwa1gKexuIXVsoyZ2VCp8aRg94VV1XEvtzYkoaBikAI/E2FLXH
	MkfL19Jk6/nENgzGDsJBaqEkqQpPHzuQgF/mCxPUKi5aaicFybBVTfdPzsXKOI3xsvygWl8SCAF
	c1DFWnSUVWdL2bZG8Cm4wYXRD0JZ1y90WO7Wq9fmty/zfOO+/jOliT256yR/B
X-Gm-Gg: ASbGnctUhIMRK1QTa9fp7s4wvRYTcwv5uf2D2iTWfMZPbc/IWwFgm9QJID5otvUHSFa
	YyTncFCc1yClgV5PdvISmJvqa5BlgvUH7eezcc0zqGn1cyh1jvGL+PYOa3Mw8rJVPLTU2wi4AsY
	w8Dg+rNFqE2I271cb23f3pi1Kzp2emmua2bHa0CE7rXGcdg6rviO1bwmZy27fbd/zLF6Fbvh7r6
	wSyjR3DWDZUkOkp5k37E1ysjkWSC4doFP/OzGtV5y8UJ1CNcDRmtlPgwt8I1Anr6jsEiWGx/pWT
	a7fN6ROEPYJkw3dhE3hzhq61+nubBhgYgPhDSwU5zJWC6o1ElVVLE9tRMw4Sm0vw0g==
X-Received: by 2002:a05:620a:2703:b0:7c3:bcb2:f450 with SMTP id af79cd13be357-7c79ded4340mr169120085a.15.1744223657374;
        Wed, 09 Apr 2025 11:34:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSFUsI0lq0CHivUmmOGJxEdsH9s34vTHIa+QcttBA4nANZHeV7gUbk78k257Wljic2w+r2hA==
X-Received: by 2002:a05:620a:2703:b0:7c3:bcb2:f450 with SMTP id af79cd13be357-7c79ded4340mr169118285a.15.1744223656999;
        Wed, 09 Apr 2025 11:34:16 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f2fbbac4c6sm1108553a12.13.2025.04.09.11.34.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 11:34:16 -0700 (PDT)
Message-ID: <95a8dbc5-c759-4e4e-ab5e-4fd6b9eb4625@oss.qualcomm.com>
Date: Wed, 9 Apr 2025 20:34:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8998-lenovo-miix-630: add Venus node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250408-miix-630-venus-v1-1-771c330ee279@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250408-miix-630-venus-v1-1-771c330ee279@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f6bdaa cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=CBGSpeRjDxRW5wpHoFQA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 2JDD_JbDcub9uMlGV-x4aGdcSPlrLXON
X-Proofpoint-GUID: 2JDD_JbDcub9uMlGV-x4aGdcSPlrLXON
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=692 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090122

On 4/8/25 3:10 PM, Dmitry Baryshkov wrote:
> Enable Venus on Lenovo Miix 630 and specify corresponding firmware file.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

