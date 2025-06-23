Return-Path: <devicetree+bounces-188463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71769AE3CEE
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:42:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6962B1897116
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76A823C4F3;
	Mon, 23 Jun 2025 10:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F9jigie2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5337323BD09
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750674968; cv=none; b=mjR0b0hXKt5qZzEHcFDQr9l2kK70Qx//N4nmq9GW8h5D8VnUdwd5Btf7t342k8kkbEK8QhZNDBKYX4yuqiHyyOo+kvxnmf1E7z2otIE90EuVZsCOvjKdKoUfa3VIi+zfRtIztJgsfzdSTgaNWuDGBAoWX3mAcZ8/KTkYrB0dxKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750674968; c=relaxed/simple;
	bh=ZGrdGD5S4Wy80BaqqmqkdCLyn23usLGumrbeUKa2VKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BSHCdCXeO2PG0/mhuv3RM2Xu5pgljbfUNjfthXnQWh2XDp4DUoZaVPhqK+/b5m0i5l3ne1BqFH7M3PysmnvN8eCsUOqdeaOdJHV1ZLkYtn8UjHF7mpB13izXXkF4zyzdZtT0tSZyY1XVXhRwfHTOYo+xF3jBL99eh0cV6XTAbUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F9jigie2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9SSSF014937
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:36:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4GfYaxSuIzxVoUOK/O4NdD4H65yMossNv7+zfK6HzMQ=; b=F9jigie28s2Lm4G0
	JUcBqyW1XK6nCWusgni/AvmZGoMX2uSm6ipLZ2DwBGahnf683l1+hrRQso0xQkFv
	I7hoXhosNdUfGFlxjJBQuz61y4f0HaZZwrblXx3zCpbCY75Q/UYtOD1OHXCK/ZlY
	TysXKwrXnytPf2Ziv/8I9gr+PGx0FDsD/5btgAMyzXmwMkLzxL+91JIW3sEiniCh
	Ut6CNb/J+YjXNRocVzqWfruYkIgOrTQG+Id78CFIMYl1EQgXqi1AYsFSAw/Mzed/
	vBgQXL7E0LycGw3VyjvHlmx0vIPzw2oiPe+RB4kBdgNy+zZ+6wNx7QVBZePoH37R
	lexKKA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eud09fp0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:36:06 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a5a9791fa9so13447141cf.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:36:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750674965; x=1751279765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4GfYaxSuIzxVoUOK/O4NdD4H65yMossNv7+zfK6HzMQ=;
        b=NxaaAOHwAn7ltL6g/XEgNM+JmjuCtYvUtt+WAgoVys57lCBlDikxlSpSG7q22c8nHn
         qcFCo+3o6eoq4VSso2cAzdOy6FF0eHKSOAbjS5IW6JaYsAwM3dKTPXpxd8Z7xBfwbEI2
         1M/NUm3VZS+jcYAo/RdiVCmk2QhulFEHUsFeNMumwhjejCLeo5KmrlpA0F9hGO+Eg/ql
         PmJnzDrKI0TFJyvaIpPaDNAzfKEIqy48+1G5Uj0MFbY+dAQSRH5bqc3tBb7dmB3Keggh
         UGTV/HQDmb/xEpid94lpE5xjrYR4clRRCRu2B8b3ToXEL8PLhuohrZ2HdnZeF6Mcladj
         YBvQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5LuXbF3WmZxwsS5tjXzTVpHFzgVxlaUXGf8S8vkgNBl1pyPRdJCYC/FKccMJpF085mtzOBBnomAjN@vger.kernel.org
X-Gm-Message-State: AOJu0YxcjPfm1LUz1xvv+7wQ8qOrxO4H+RptStAiXpm1PrL3gW/cnAzL
	kWIeLagkgzOeRM7c/BqZQtoR8V/8IepPY6/JglCytKNfW8X0L/p8qQEh1I8vPF3q0m7ACqL13iT
	AXbPvQD4sb03hoVx5rdJ2c24bjpX5gPwqA9dNz4pRkebsKfA7QdkCRK8r3aQB3TWp
X-Gm-Gg: ASbGnctmiFow6H9bATdf7TctE0G12Sgnq3ZFtC0MdJe29zcMbZq8h70CHNAZzWUg8pL
	56QEAlp3p5YzwPHS9aM0+fnuQWNE6mprixC1u/DhPRUdg6n5XdodLaSqhityxkPhPSgJpzKqL4l
	Fk0seTSU5G2NVwvapgy3pR7yyuB/CHB6V9oK+lAezV+PKhoGFurX+wRc1XIb9N/Kcn0CZROeofq
	kOgdc7TRq1MN12KB7wGpKfWH7FkHj1tLxw2SJOjhzub9lB9CaSMJMqQqAfZXefI4zrRHYTV1WHm
	KQT0mqN5kaF40M5tIBThi0wZNAEeNRGEONr8irvTH+gByEm9SQqpOF7QoZqxjAQL9QtW+5yynbF
	eH9g=
X-Received: by 2002:ac8:5885:0:b0:494:5984:1022 with SMTP id d75a77b69052e-4a797ede8f2mr29221771cf.11.1750674965151;
        Mon, 23 Jun 2025 03:36:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUp42df1AyK7Fldxd7syMMacQxRLPJ73fL2nISVg9GUkcQPMWOuG2N96/HmW8znlbsAgOkLA==
X-Received: by 2002:ac8:5885:0:b0:494:5984:1022 with SMTP id d75a77b69052e-4a797ede8f2mr29221471cf.11.1750674964665;
        Mon, 23 Jun 2025 03:36:04 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c90sm698271566b.62.2025.06.23.03.36.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:36:04 -0700 (PDT)
Message-ID: <00e367e6-56bd-4ce6-8a1a-d74b90609a7f@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:36:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] firmware: qcom: enable QSEECOM on Lenovo Yoga C630
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
 <20250621-more-qseecom-v2-3-6e8f635640c5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250621-more-qseecom-v2-3-6e8f635640c5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Rg35lDMeQIAQIReeS-MBrDuGrAXbf6f-
X-Proofpoint-ORIG-GUID: Rg35lDMeQIAQIReeS-MBrDuGrAXbf6f-
X-Authority-Analysis: v=2.4 cv=eco9f6EH c=1 sm=1 tr=0 ts=68592e16 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=_iSA65KrAhrjOTfTvEcA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2MyBTYWx0ZWRfX/dh9XFx+b2z8
 NRCmOoS/mroiMt5cWVhs4xNxHA0U5VKzjKjshRaP/YN/p3lg1hKbv7ts1gJZ5ZxGBGReXwPHOEi
 2tRRwR9sQ2G4c8A+awJm0RTvAhc2+aKyf7Rs3akgwMJIFX1RAnhlCr8GzNjk47VTvoV7Ye99Yt0
 EDLOEr08j+OGYs2a5SuS3TTVz/TsbG2uLm4kFE9838HcJZDygCTNTd/gfFS5TQ+x07z2kKngfr6
 Nt57thLeK8lNGOt8924T1GMvx2JoGnRw9jioOrY+Xu/0qFEZ+wIcchi7IckcDR8XXP5Z2micoEC
 IBX3/jB+FbXsQ9eQ0Lf16urTFluMraG6sNHmRvLeNggsWqzq2PHNKtsd8pu3sB/fkQno3GNILFA
 gvvkl0S8wmoZyeRutMq3clELemc00STf+bGD+H3IIJF53j6T7nnvUfGjaAtDXDXFTN+/waKU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0 adultscore=0 clxscore=1015 mlxlogscore=759
 priorityscore=1501 phishscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230063

On 6/21/25 9:56 PM, Dmitry Baryshkov wrote:
> QSEECOM driver end UEFI vars access works on the Lenovo Yoga C630. This
> platform has only one storage (UFS) shared between Linux and SecureOS
> world, uefisecapp can not update variables directly. It requires some
> additional steps in order to update variables, which are not yet reverse
> engineered.
> 
> Enable the QSEECOM device on that laptop and set up a quirk, making UEFI
> vars read-only.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

