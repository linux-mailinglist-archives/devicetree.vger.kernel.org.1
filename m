Return-Path: <devicetree+bounces-142043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 499B3A23E01
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 13:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABA4C7A1ACB
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 12:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35F51C1F19;
	Fri, 31 Jan 2025 12:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NLVsKmkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360051C07FC
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 12:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738328121; cv=none; b=iVY/ryjt2eq7/L1VG/rXHEQDMv7Lv0gJn4lE5GKPTUcUKZXsEAQYYERVTtsHidv2Dw+l7kRbfmgKSSevXlcFwPOQ5CbCQ/Io3ya/2eTonoGZZzw44pGorzu4BH4Gz/gJcWrbx5MLSOb/A3Z1NI1pTDHkWGkDUz5Dm9NGJlqvYAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738328121; c=relaxed/simple;
	bh=4voU1ARq8K+IDYbZ16Vqqk3bx5a+nqiyeDrprWrgBcY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KCVgGmuxnPR83jaGzGmq/PIqHz7IwbxHJ3mUvgFkoUBaSs3sy+IV47pTH0vu2k8jjkWkw/K5xQ/h1OMwA6uXQJieT0BVguAoXNG9C26jEN9jnNd5hSLFtST+EPCXqWNZ8Ioc0JXIV5gk/m5kiLvmuAWON0yu69IDEPYhX6WrjK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NLVsKmkH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50VAbXHM018144
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 12:55:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m9XMNZsakzqgTSXYDETlQtlmDuyrsoxJIFMvbaSU3N4=; b=NLVsKmkHYSjWbIqZ
	MQB2yb/RkXJ+u2FIffEgpN/ZExXvwyIemQ+6691RcJyl/9n8kY5T/cCxMRpjKo/Q
	7HhbtpLczLSwt+QntfdBrp2xxFaAqqQ6cQPy+MyGAgECFSZUeso++p+5FCQOuUdP
	WHTQ1/EPEspWuXWmAXmcBkQp8ZQByrmdpWOQcjMFTpNRr1Ur3Qo+LI1SGkR0Py7S
	pa4HvKqDU6kED/UK7og9kcobg0tyYQ2r16xzyGiBIBBpteAwA3RIfKj+3p1ktUuG
	0g6T2VS3Wtq7tHHksDPdVxJR+r7frxUmbAcV6QeyvhB65amBETSosToY1t34qYtP
	SflEAw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44gvx9gaxv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 12:55:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b71321b993so30395785a.2
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 04:55:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738328118; x=1738932918;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m9XMNZsakzqgTSXYDETlQtlmDuyrsoxJIFMvbaSU3N4=;
        b=VTbcsZP8xn2d2syzs9nw9crDRe0Arsdrz2R1gyKua+x8lYFdRYwZ6PKMlu03OA33h2
         PkUDUjtIWEPKyTUSGABuZ+h2Bve9tCPsW+vSMdpXZMve5zdEL+z2s8DiYs6cAp/N1ajd
         MwfJjouA2d7RZjIgRXOut8ld9NR3Aq0ix22wq1/YC2q392xSn4T0QayQa7yA5rh+aXK+
         7kRqnLTistpXrIBnhQDLhVZLKpv4TeXwCH4w4Fy/6+5OqyzeB1XBLJol1KbXH/NB/Cn5
         lYGZMxhSk0O8aF8aaa021whXHtBAPohjTPufAtajKpE533IN2x78ySq/s6lYb9f4XX1S
         8Czw==
X-Forwarded-Encrypted: i=1; AJvYcCVd0HFK/JnBS5fycIvqDtWaF2MkkdhgDPq3CMiitHxpwxtC65Y6dXOPIrtEIRiE8ykrRPCZ+3dJisDo@vger.kernel.org
X-Gm-Message-State: AOJu0YzoXfzvW+NBWQMLnAJMjTuIdTPkhEpHN3wO/yX7vjo4lFnKsM3R
	UAcVQ3q0+vvHwVhGCx4ogVS+Qq1pfzGF7xIPSUNSS409EhLYDU7Pxh852qgvfp4eQ3hrrJc/om3
	dQiApewBZhCfhv5APeOwd55qJ4PzvOzV0BXrusAV0lYJOAQCCfa6nzbbV+1lT0POCbOcn
X-Gm-Gg: ASbGncsLLE8LH8fJ4kM2FwUjQ428EvRF2aaWsvCOtWASX0GMR9PaK39d7ASsbNatV9n
	KFb7781NtuFckIoMiSScVQTuXZ5qIcJSczAUUKfrbtA7RwTDYUwr2RgPJ1QiYJ8dlT4M2ZGQNLk
	sdUmzlDLJRWJaoYOtMy5gZ39M1DFLsy7Dw6SzKOk69xTNdnRO3hibvyV7CGmFsNZYG5Zfqs/TEw
	ZBDOIkMoc7gvGXDgbFV1qXA09Md+3GDO5pbmy9EUrtDmTqa3ZymMzbqPW121UENSqgRjutrlE5O
	7DqBUliCbxMDKVJt5FaRXIIiT8JGBwtCdoOvTUS7b5+ap6gdOn9D+bpV2Mk=
X-Received: by 2002:a05:620a:1a0f:b0:7b6:dc4f:8874 with SMTP id af79cd13be357-7bffcd8bd41mr600533385a.12.1738328117964;
        Fri, 31 Jan 2025 04:55:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMVxyaytYmw+jjx4Ac97ZKB2a0FMxruFitQESJaPsVpyHuARSgtzgS3LBseJLa814PhTou0A==
X-Received: by 2002:a05:620a:1a0f:b0:7b6:dc4f:8874 with SMTP id af79cd13be357-7bffcd8bd41mr600531685a.12.1738328117549;
        Fri, 31 Jan 2025 04:55:17 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc724c93d9sm2787473a12.68.2025.01.31.04.55.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2025 04:55:16 -0800 (PST)
Message-ID: <53a8feea-27a5-473c-8d87-852008b88fc7@oss.qualcomm.com>
Date: Fri, 31 Jan 2025 13:55:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sdm630: Add missing resets to
 mmc blocks
To: Alexey Minnekhanov <alexeymin@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20250129212328.1627891-1-alexeymin@postmarketos.org>
 <20250129212328.1627891-3-alexeymin@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250129212328.1627891-3-alexeymin@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Sk9iWWYnqKcAx6UQkNwMlWT5vZOspheC
X-Proofpoint-ORIG-GUID: Sk9iWWYnqKcAx6UQkNwMlWT5vZOspheC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-31_04,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 mlxscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0
 mlxlogscore=925 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2501310098

On 29.01.2025 10:23 PM, Alexey Minnekhanov wrote:
> Add resets to eMMC/SD card blocks so linux can properly reset
> them during initialization.
> 
> Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>
> ---

Thanks!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

