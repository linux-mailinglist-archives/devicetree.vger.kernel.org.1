Return-Path: <devicetree+bounces-225896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FECBD1F9A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1B051348943
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48E432E8DFE;
	Mon, 13 Oct 2025 08:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XR+o92d6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1152EFDA2
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760343377; cv=none; b=FIfvh5W9X8uzm3Jcc5XtQ0JZ5+XdBsLgVxlrfTuhw4Oo0hFR1biZvK3V2iSXvYdS3vEDoJepwi82YSD5vN8ve+V6GgbsItWD6ZaxHPA80+7FCWKqqx20mTUikqubaxgc7BdGyXf6Ovl+kwxv6XvLqbGwC20V8WoUMfeOo4kWgx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760343377; c=relaxed/simple;
	bh=OJlBTsvSxOkcP4IulZUo7W/MD7FWB0v5P1QHZlWLCWk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eh4HRUIiu01LBNv54byy1DoSe0okjM7BuawM51AXHqIClUzDxgE3FVA/6KWXiPWT8R1hUOTeccjrOI0EtYsV8iPz3N+xz5p6s203TAd5lETksm1D3tfzB7JdocTkUhySkgRuTk8iuhMi4SgKKGiXggNp1JERgHibQ0RfX+2TRJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XR+o92d6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nUl2022356
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:16:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dtZY/OAN7u0qy7UYIqN06nPgBQTWNhTlY/8haez5SFI=; b=XR+o92d6O2c5jooo
	Z0uAfvPh5+/D7nD43WK8uAyuhQ1zPFHFD5MrBs9+Ino75mhwE2Q5xYFp2DwXhqaf
	0vmYIi7qsUb4XF4WmR8LjfXfd6L+aG/Of0JPB6QNvREf4KqUwjbfI1sFB1SJL38s
	tv2jMN0PxrxNlVXNuZI8I4iDE2B4TfuVcPJR1cJVicKJqVrTkPrC44t0wMZR0x69
	blIeqgKoMuvu6cZ4L6vrFut0XgvHtQf0ShP5+siWpS8UmuvRCfyNMmfOmGNyvYo7
	qPGDOCRFsntFubsrg0fvIGuBdcP4kGrsAaIZ1gGHDUnmzFE0LVbRZTqzEomX4FUM
	nlu/Yw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgh63pg4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:16:14 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8703ba5a635so218664585a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:16:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760343373; x=1760948173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dtZY/OAN7u0qy7UYIqN06nPgBQTWNhTlY/8haez5SFI=;
        b=A48VCRGULTx7+VQK1ZT8xEutFGJ6ICOWaLpjeYgDBsgHmF0y/6xAF5O/Ga+V+67+o3
         +qhgBrVCL3qmm7r19WaAU4f4+q9VlzCa/WvY0cBAPtxg7khO/KEH2PINYo+1aw7FmGiR
         8vaS9okIDtrD2d1G34h+UP7AAp9fo6khW5bgvUCZHVpBuer09q32BrZvmEZsQtk0UI7S
         hVOVQWHKjtOvNdcKA5qd2SZEcetLGc35jaKxQ6bvDGHXu3d9jNvmzNrAt7B5bFOJNq2o
         szMW3zksk3Cp3tcIhcOV87upUQxjZYJtCNHQKpu4aYIOvgOywfBIqN7dxlB0nuk3KoLs
         Am7A==
X-Forwarded-Encrypted: i=1; AJvYcCWiVBNzQIjbZwObySMLz7SlTzCjnkIkfVpFhW3fh77A2CpIYA9xty76fMelNnmLECjaPcsHPkwPU2ZA@vger.kernel.org
X-Gm-Message-State: AOJu0YzTWN0UZNg00k0nTKjOLMpcbuHneFZo1WZJl1JPqDLkWRcTEwnN
	e6VkDjAwWVTBJ0Zbfwz8Ee0PMtxpGE94TzucdlxeOtOSnX5nJIPmkG52zGcfSgyBDz3nI7ZTEQx
	3aHKhrV1r4kxRzM6u2BicfRAosZWmxRDLwqIzY4s/FKp8EJaI6rzzA/TTbEDe2xJf
X-Gm-Gg: ASbGncudC0+HLCWRslZY7emcc0o9NVaKh5cMNSYB8PcjxZkfUbIOiqq7TLziwQSIpR7
	LKXNgNf1VgCOBqjY1pFXlHbfvpj+Uw1vUyXLbopSII9EnA4MEKYO5roDoFSbw8Ge4yjZQo4x+A9
	74HRg5T4OHH/sOatKyi2VwxvpC0uXpBAEXwGlX/w639lEUCYhcox0p6vLXEN3JwIETLASbtEEpf
	2haZktmi/3iFZQIwJn88w1SMmJzZjO3o9rjIdqoMe6xjNLFuGKGC2sMFrsaigVJYvA4/tFuNQcC
	ktdaDU9d0YrJ7ck8nzmICKin2H3p6K5wsgYAn4aycURfKZUCsNlYN2XJ49Ql6w63Du0E4uO+Jr/
	yL80mydCXCZBsH66c7PdOgg==
X-Received: by 2002:a05:620a:f05:b0:864:1d18:499b with SMTP id af79cd13be357-883527b50e5mr1874644085a.5.1760343372870;
        Mon, 13 Oct 2025 01:16:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOrHcqxp2/qm6jjWC7xwfUjcVZZpvm7/3rrvDLAl8BX/cMX7CbtLqrEuXtw/C2eVcHparQDA==
X-Received: by 2002:a05:620a:f05:b0:864:1d18:499b with SMTP id af79cd13be357-883527b50e5mr1874643185a.5.1760343372405;
        Mon, 13 Oct 2025 01:16:12 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d61ccb09sm843421266b.19.2025.10.13.01.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 01:16:11 -0700 (PDT)
Message-ID: <d7d8bee0-db62-4ed3-a418-506887d54810@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 10:16:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1-dell-thena: remove dp data-lanes
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Laurentiu Tudor <laurentiu.tudor1@dell.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251012224909.14988-1-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251012224909.14988-1-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H/zWAuYi c=1 sm=1 tr=0 ts=68ecb54e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=vs_YNVWh7-Gz6y0r928A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNiBTYWx0ZWRfX5FxOSsVOx1to
 mEmthxGzHWlJivAVH2kMWAk+sEOtScj2wCZhp5pesdnZDCBI4nySJqrkDZ40otTB2aSjMzJVOnu
 ulxNBDHUd5yVAlEszUR6U2VbHpr+ee+rcNkf6PTOMMJ5Jy7b5sGwwRgzPVOokPQb+hLUItHhfO1
 p0JiRjEvKgAbkf0W9beU46LxLFe87PNwS1y3CapoVDItatGHnXfRqcHMhiIMI5lZhTYUfj3RZ11
 IO8142Yn11eosE/xjJvNbQqPZ++t+TbjC9yj2VWojkek/B/hEygKMwPpTMciq9BQ5GD6MG46nO3
 vZDoHxOsuG7IYhzSIUnrCTuqIJ8dOJRWyX6HpXiCuXd35dTt4czaLOvz0JhL3FVxfBv9aaw72oo
 Oa+vMUNzb8lj86woHDs6ZjE1ZJghkg==
X-Proofpoint-ORIG-GUID: l30CRG9KgMl1H7WUH5qrDAE15Pz5ys3Y
X-Proofpoint-GUID: l30CRG9KgMl1H7WUH5qrDAE15Pz5ys3Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110026

On 10/13/25 12:48 AM, Val Packett wrote:
> The commit 458de584248a ("arm64: dts: qcom: x1e80100: move dp0/1/2
> data-lanes to SoC dtsi") has landed before this file was added, so
> the data-lanes lines here remained.
> 
> Remove them to enable 4-lane DP on the X1E Dell Inspiron/Latitude.
> 
> Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Val Packett <val@packett.cool>
> ---

The commit message could say "enable 4-lane DP" instead, but
it's okay

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

