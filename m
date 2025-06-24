Return-Path: <devicetree+bounces-189012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD05AE6595
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F484407D82
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 12:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7503E299A83;
	Tue, 24 Jun 2025 12:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o4tnesdl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7373F2980A1
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750769639; cv=none; b=dn39VZ++MepJeaVppoW68MkIjfErknRF0pV8Fa2DzUVonjMoVnX54/71fMucVfMfHOxBWlbHwJmz5BHIg4LTvkpl6JhG144vV+OF0QiPWfl+r1VF/3jmKNBpJXjYyg06xZlc0DTKCTfPcDnTL8NoooZkZOy4LRXW9VOnXkobXjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750769639; c=relaxed/simple;
	bh=tNIhnvuJL34DWyW0/9wKkWvSs2dn5yOqIFqGyBcGiyg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dc/9CDneow4ZcvlKzzpeZAs14mAT5D2fV4r23P2I3SshX7PVGGdaFWKwunOFYAgKxjpcSEAI+XCut0dEUT00+JuKHR6TfUemvo4FB5NThdKbcOdsElJN26oAFqHXN9h6YhImaQKyWLXo93PWl6PbRsY/tdREDttaJmKFXs5tB60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o4tnesdl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O7l234002810
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:53:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aeRBeFnF4lcno5Yc+pip1PsV/E+s7JmR6bAmZl2QfIw=; b=o4tnesdlmoD3y7mR
	b6XNGNjqo0V7b/+TfJAN+ogKd3ncfjFkTcV15lfI3p9oIMlYcQIUK86QLPJ+TJT4
	8Q1UpadV094/L0EcG+k2MxAR+dmqUN1bfngUhDMHwMluNioGvcgDWnHeOPkObIBO
	TaKiTdtyp4gCQNnA+Vd3jtLnrixgtxaUlN+reItPQHSKLk0OIpWrvEylFNnHeQFN
	icUGN6iRk6xrQ30gHkx5FmiT/eQuZfx5NQS+5u4HVaapNtqaO0ILpQLEtFioDsES
	VkDZ2FbUJgPRkUAh65jOHiUCkNycO2vcvRiBvLMYp1uN9Q8fXAlOnzHz+7Hazp38
	SobelQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4nexw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:53:56 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d09a3b806aso131319085a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 05:53:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750769635; x=1751374435;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aeRBeFnF4lcno5Yc+pip1PsV/E+s7JmR6bAmZl2QfIw=;
        b=QfJ4KpGoP3gMBduwsGcNhVif/WcB6/Ods0WWkslhLbPG/sgJgOnkhhQk5ttfcNbt4v
         Wwh8X/u2kmeHNTS3Dy2+MLjFCrjYiN18mbGj8s6CrbB9z6Kw4VjnSEiR5AwCPQLjE2Ma
         rJNJkLQ++DZSi561n7odYbcVJBFnV6mWXImOkVT3ni++F48q/KzZtB4yThD4tR4U7mhc
         RiBwGKvvmd3vlhKWo3RPZE/tODwn8mqUL35VQWXSHt8EL1O07OMOLQ1JQ96EkOQqJQVT
         OsIo5ou58h4jnYmSjEz8Rf+RlA8mNZdn3IfD1tnnNkrp3tsTWz4DatlhO0gWlmPmRad1
         rIwA==
X-Forwarded-Encrypted: i=1; AJvYcCUg7hgPw3zoCc+60xRH5ZZLCMPGiwRBRUYlhNrgx+O6hRlXJVjakQHZTR9mnJIX3NO6sU0vEgHJDGxo@vger.kernel.org
X-Gm-Message-State: AOJu0YxRjI/2yX+lJG5/COUorFXOuHGH9ZpaybZt9h84xsUcib4PMvcS
	QJRQc9nhCh2PqtKxbvK1Xkdu0o0CcTrqmZNuYrjKgyGu2DBOwXNb+r7u95Y5hIbZkfyk3rgjAPE
	fce+5QVO0eLzjPGVMD2OMQ4prXCQ+1NcG6zoTDMoZ3mf02z072os48BgsnYxX1ZsEheCvjWs4
X-Gm-Gg: ASbGncv43JXUpB+DHAfdm9/0P1RZ7TVq+4M/c7hB9zyIaGSlOhnK3hcvK8h4eMgd8hK
	uQp0MilabIKNcfgUiFHwLEH7kk84S8HqaVWMrin8SEts6LIqQkt3fyu0Iiu+i5sE4aHxNPiBZuj
	dC/Kh3LzdRqCg7m/fcPPKsVvG0reN7sEiA5nhFHGUGqVVeVLlBWtjVckTbmjbDnIYCUec5rMiF2
	y5sJsAP7CLXLFzGW6EpoPDhkgauhu1LoQSkMl/nHGJvH556JQ8oaNxNoAg/RHgDZhQi+FsTsJEB
	aOo6+yljgwBh/Q2EVYw8+I/t3rJy8ePgNv19B2WZxCmZlfX0n+hsVIXlLPWUtBu5XlKejGif3JF
	X2gM=
X-Received: by 2002:a05:620a:26aa:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7d3f98e252fmr757963685a.6.1750769635209;
        Tue, 24 Jun 2025 05:53:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHm26Atmzo8lMPkhFJw/P2Xp8LDJYbWX062GO4T8ZPwBCNOZSuvof419wfPyXwFJWWZBsaOMQ==
X-Received: by 2002:a05:620a:26aa:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7d3f98e252fmr757961685a.6.1750769634731;
        Tue, 24 Jun 2025 05:53:54 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f4975a1sm1007741a12.68.2025.06.24.05.53.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 05:53:54 -0700 (PDT)
Message-ID: <9012d2f2-b9b0-4fca-a047-5b5adb921ccb@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 14:53:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/8] firmware: qcom: uefisecapp: add support for R/O
 UEFI vars
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org
References: <20250624-more-qseecom-v3-0-95205cd88cc2@oss.qualcomm.com>
 <20250624-more-qseecom-v3-3-95205cd88cc2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624-more-qseecom-v3-3-95205cd88cc2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685a9fe4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=aztlNrSj1wai7b1BO2MA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 4zA6xdlb9r3d2Sm29nK5R8CHD2gjYsuj
X-Proofpoint-ORIG-GUID: 4zA6xdlb9r3d2Sm29nK5R8CHD2gjYsuj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDEwOCBTYWx0ZWRfX8+/O6lQyWfOd
 Gv7Y3ZYN3UgYeMvgEo0/gHDMb2xa1b7vx3XGpcDKb6A5WAKBmmLf9RZhie+Vlr391fcbKy60hy1
 kLexrRJh1cCQHZzBwAMhwpgHEvUEMjCx0bEB0h8JRp4Lybo7o717JWCEPo4z9eZGUm5dPcQxt5e
 lon7UooeQyzBzMpC0aM2pMGIVlUTDLjbMDLczSEO3h9jE2hXIUTufHZu1mAaz5CLNNGTHTs8m7u
 PfMJaIGHlIg4bHUM3lEC6gbUFeExLjlNv7SrMIHzjO3aVyF4ACYhU5oLd4J+3En2TXyUy+TGYZ9
 9ZfjRA4mzx9gI81Wc6booqaFhWUb52CNa7Y4wej3igrB0Jrr27WeuUSu6m8BmtBfuJWjZWBxDhL
 Tl5Zzn5l54ZcOZz9OTAVK7k9+sR+80gZAfdqtxs0WtNS+yAX04lPL9aXD2t7bJOaChbuv13F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_05,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=911
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240108

On 6/24/25 4:13 AM, Dmitry Baryshkov wrote:
> For some platforms (e.g. Lenovo Yoga C630) we don't yet know a way to
> update variables in the permanent storage. However being able to read
> the vars is still useful as it allows us to get e.g. RTC offset.
> 
> Add a quirk for QSEECOM specifying that UEFI variables for this platform
> should be registered in read-only mode.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

