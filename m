Return-Path: <devicetree+bounces-189013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10543AE65B0
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:58:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D8EE3A7F0A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 12:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF6C02989BA;
	Tue, 24 Jun 2025 12:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NU63bKQL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5127228A411
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750769822; cv=none; b=TX51YJ7mGndgGW/RzP0yQMyQSHN+yr60NftyhIM11hUv9jGjHAU/cPwXh/dQAK0FJGr8wqy79B4SetY3tCSgxIAVw8ZfEtbNIXCTTVS8Xe0iA7z+FHU6ocscKM7P0AhRjDGdlY0MjFbZ0qSDv/IqUoXxmDAQXANeS3EB+dm6pQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750769822; c=relaxed/simple;
	bh=N+HKK2qiEo4toQruchw0ESiDROQO/pd4T87mTB5Xuf8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CkLte0TO/5BYFCdStd1e6JGrwEohDS17C2FX7shmaoKU/SQ3NLbwKeCmvJZmBeju/5pcVigYDzb2d+vLLObQcRxhSfD8lESN9A1Yfdux6tIqoyyHe5I5g0csNJYoUBZDWCwUB49ppQzvgog2s5CYTkTQRfRfDpCh4USmTegNvkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NU63bKQL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O8Y7Vl015936
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:57:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vGrSPNV0AkW+/pxO0NzMJP3MsnaMmBqY4s/rKDI8CE0=; b=NU63bKQLaxX/u574
	FkCHrn1L1VKjT/Aqzhh776KsaQ8P4h9FQ+vCUkxdiR7BFSLfj9GTycKVUnsLDivQ
	rn7e6dkDMr1brwA89079MtqRChDsXq+eY75WDhX/VxD5F5S3kPxU0qbbmJ//Acj0
	HBoLpRN7NtVrDRSa7L8wn5Y9hSiYUMTR3FAF0NzKFh8FAJj5xbruv+o4CbwpPPZT
	kF6uj8Rtk7GE1ZTFLCHbvg2BVO+nZABS9aVZBemYGV0mLx+T3EHlk+ib39eOB/Tp
	elfcldVkIJ9j6cKqi3TsmGvaKgcjZxzrNA9DslQARKfImb2pVp2hi14KJloJR1qH
	kfvMYg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqjmfc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:57:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a5ae436badso12148811cf.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 05:57:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750769819; x=1751374619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vGrSPNV0AkW+/pxO0NzMJP3MsnaMmBqY4s/rKDI8CE0=;
        b=gWbIJOMS0X2OO9x1SuPfo8LAW2hPL5Hgia1hreaoJ91LXt1cB6v8ZhG4V0lxKbwhp+
         JW8FPDhRhMKcf5QIMblpMIKA8LAMoCkSC65FwghbC0lsKeKhxdmih4lJtX0Lol9Tt1Uo
         foPq0uLmHwvuhJbugutqMyLpVJpg5YhpJCqt68O0vsBEupwHb3C6BjVLUuKO5G8rAD7q
         yBYHVMByf4CVD9KT599DJI4hZsXEk0jGKCDRe4UnklTZsodfP9Q4DeV4n1wcs6+pkjTT
         PZD4GXqQF5fxupuddk4IZPvuMkA5gRv+BkUh8aUVuoqkXfE43XTIe5pEWLLlPGNFE3vM
         ocFg==
X-Forwarded-Encrypted: i=1; AJvYcCXguU/bN1xSMMmz7c1BWMn3+lsPKmvhdaKtI00vv5f7bjbIcqU7wJOWWvcNBmXEfR2htexok08znu16@vger.kernel.org
X-Gm-Message-State: AOJu0Yzuobf8CSVvcFIt4E4peFXLaU7LTPedpOFHgF0sM0nNc2f4kfaI
	fydhvG/7+ONYTyIBOZEcEFkIxUeLGi0blRxrUKDsoBAB0SOkj/CDVXX+QNkGwwiF8YBoBKlgbBi
	4V4o4GN5vsn2q6fyjLTJcfK9DII0vpWVzpcjFvw1LtnUY297NWHBP5xmr4xf3gRd0
X-Gm-Gg: ASbGncuT84q2gL/KkDZM3l5f6xW4opObuKjwFVE27kvjT4jUXWUdDRawWOH7rftgoqK
	VBDLE7bm0hitmaXI+3qWu5K1QnG5q9S/S6CDlhMIMBYWcnMjy3hqswtNv5wo29eFUw/TDAFXvW8
	dR3ktI4UEZrGX9XC+KGbr7uqAyKdvJoNAZbijSwqJuGdK0WTlZnqAGwiWD2oT8myhVCqSak4Vmj
	Oeyou3zYGv2BVz7+6Gcv5UscXPBL3zbLqZaJz3L/A6Bl5/KZNxPii7VJ1YENpmKzvcluh4wP4D6
	kl1KyLVfjxfrH0FYATHreVl00qbMkNQK+2gcC2m9Fx9s5OfXvu+DYiI+K8PS+wHdaImr/13SvgH
	pr5k=
X-Received: by 2002:ac8:7c45:0:b0:4a4:35f2:a02d with SMTP id d75a77b69052e-4a77a1e7146mr97581011cf.7.1750769819247;
        Tue, 24 Jun 2025 05:56:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHyHh81fVxV7HHXyMJ4tPlwaAkz4BjJUrdJoA4XGyb3qT8OL8kxhikzSXPBfp4fMeHgjLsSA==
X-Received: by 2002:ac8:7c45:0:b0:4a4:35f2:a02d with SMTP id d75a77b69052e-4a77a1e7146mr97580791cf.7.1750769818842;
        Tue, 24 Jun 2025 05:56:58 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0b672e340sm33610366b.180.2025.06.24.05.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 05:56:58 -0700 (PDT)
Message-ID: <cea1e9b3-ab14-4383-a710-50bbaa509f1d@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 14:56:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/8] firmware: qcom: scm: add modparam to control
 QSEECOM enablement
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250624-more-qseecom-v3-0-95205cd88cc2@oss.qualcomm.com>
 <20250624-more-qseecom-v3-6-95205cd88cc2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624-more-qseecom-v3-6-95205cd88cc2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: SM77bc8dkjOGU8n0LC8yUcYzAa1uNTOE
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685aa09c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=jdsnN0qd_4ChqkIFV8EA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: SM77bc8dkjOGU8n0LC8yUcYzAa1uNTOE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDEwOSBTYWx0ZWRfX5xOUeJYEmL8D
 3h1uKg3IbuXJR97pYgYoopKvvuv+z2vr/Z4PTx6HMVlWIbUhnYNRg1kI3aZIS3lTqrpg/oRxx1b
 2yPiAfRk4LpD2wKFrdBKvc/sW85QMngFUPRPcaltCRes7qDKgwIEemR7sofInAjFVOw1hIBLl0x
 YdZWE9TtLp/m423Rg78Z1lrnzVUYbp/N8qOZDgCRlhgDCANk4ulR/zpMlk31R4Ovb19f2s9NH1W
 LRcn792Is+MzodBXUXbkt3fV2FpK44SnU5pPGpxO0BycxyAgycFi1ydOyu9tgz3ud5iL1N+OX0i
 dtc2JNNzkkZGhGKed38KL/sUiU70toiL0uTO0mjj1sfHOdlbKPe6FYfmmdwzT+qTvqE3uKyLGcc
 xCH9kweFHSC1UBi6zPEaHd+Qb2uVYd6fkltXPNrwDsfHeFh0rIF6cOKTWo5Hk999Nnb+v/2+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_05,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=901 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240109

On 6/24/25 4:13 AM, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> In preparation to enabling QSEECOM for the platforms rather than
> individual machines provide a mechanism for the user to override default
> selection. Allow users to use qcom_scm.qseecom modparam.
> 
> Setting it to 'force' will enable QSEECOM even if it disabled or not
> handled by the allowlist.
> 
> Setting it to 'off' will forcibly disable the QSEECOM interface,
> allowing incompatible machines to function.
> 
> Setting it to 'roefivars' will enable the QSEECOM interface, making UEFI
> variables read-only.
> 
> All other values mean 'auto', trusting the allowlist in the module.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

