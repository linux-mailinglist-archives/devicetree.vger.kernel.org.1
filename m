Return-Path: <devicetree+bounces-221844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C011BA3731
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:11:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 509531C22A27
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8041B2F5466;
	Fri, 26 Sep 2025 11:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uf1yVbey"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C4E2F5335
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758885080; cv=none; b=H1lbFA6ttzJvhkCYPvKNNmveYr+MB4vymiH3XPrtSGLY4rimsovqgdsJtClIeJi87gpkiquatWvrbXWkEs8LL3iTdZ0fyuVrPYC/LsskkdQ+cMGCCTiDFOkGf9whCzpOmy3pFyqiCXkkKOS3bRPE2WlDvLLy6L7CxS558Ph2hII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758885080; c=relaxed/simple;
	bh=bd7ZArgSTg5qfKlLUuJm/pUJecTIN0Du5HvpI/TfbkY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O/ko8ucRCK7wstvQdXi5C+vqzyGGJvkBcQERg2HnzKC1pvxKKUsfnv2VF/KSYr/sAbkIr4hl5J9bwEfwsIr4AoSf8U9GF4DEGe7KpCUqs9nkkXSyQSdNroaKorkSr+YVXt0KMzQbKcGbiDam8+SOY1v8wVoEpuSJqcNhsePKsiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uf1yVbey; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8voOZ029627
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:11:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rcr2rWNKBvfZrpU/iwc0DmhTjy2JSdUVyzxuRzY6YNs=; b=Uf1yVbey8ngRiuVK
	aLs92R3ZGo8hOoMuxaAJSwEobWqi1Bc3XXX/EYAdXYWA3jsGuNfIMruBpJwkgWg0
	34GAQV9esXF+e1lqrohQXUQ14/J7vtwyQgzOWjMo0C8gUYTaEaq7oEKgexC6kjgM
	Lt1+tDaNH8ZGF/AZXNgDTsFTSDkygAsygk2KL1XG75r5p46T3flp4ziQ/HSXv+YJ
	uKGWWMwyKnjT2WHU50t2FZ0fqatKwQMPZqZzUthB+jxeD0HT4rNJe+1a1YeGab29
	bqjFHRdmaKS0J6BB+2PxNMbN0pAhGxgw1CccAjKyIf7alt2u7imEpRFYgYX0NMoU
	R2/vlQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db322kpq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:11:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85a8ff42553so65955885a.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:11:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758885077; x=1759489877;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rcr2rWNKBvfZrpU/iwc0DmhTjy2JSdUVyzxuRzY6YNs=;
        b=ozkcaaSY323cjx1kuQryyAhaIS4dY+oAUt1b2pB9p2xfis0wvahPYLwEjNEbUaMs7t
         ST/xw5tOvryOSgzTXKjeze2xpEjU2kogginuvBWJNL8R8yezIcf9wOk1frto+AcgFolc
         it/rCzMRtfrJLLd2UQi5H/bLBWgg2EPYoOlMG4deSvz8+DGlpqhSWAdTgL6p+oX2gur8
         uBGE5x66GtgU/xvCkXjUKUGZcVQ4Ow9qWBJxXpWurA9VDadnZrqtEvSs25vMv6NOQ9dP
         3FGXof49emOxc99S8FWoc389kWv8rNnRoxSSLgoJ7L5qQFC7GIHwBaoprfblRXxNWU3y
         9mGg==
X-Forwarded-Encrypted: i=1; AJvYcCWRZlDreYapFzKlM3FedjewbBW18TTG+nrtoc0F9T7WFKMuzRNdTeAaFlN/h50sxERzrHv6v3sGYuP4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6u2Q9b46s6bRt/3naxCXg+BRqOHLLpvAEJnbpJk5nspaLPS+4
	VQrtEjN/FpnMir1eB3cnLme0ffAeqYxOcWiWIOSFcL5SqhNACggen8fs+UkmVq+CjMNE7So7udx
	e8jw4jR0iMnKtqxWj/cEvVXx5brjEMpSZy68plvxeSE1+mvxHxEchcqxFx4clN1g+
X-Gm-Gg: ASbGnctDPl0ctkvNifswcUl0ELEr2lD56/Neglj/FwLgef6UbfbAJb1exOF01WYT/2c
	+/w9p9ngnwGnrwD44oiUx7U9k8L+MW0F5tsRJFoufJEWibGzDsrGr9gErpwHk2UaGoAxRbtxyFs
	uck2mnOQ40qHQKX6nM02pWo3SFL3XYCX74Z9A/xNDSdyDFI0K3cnp3qj9x5IxnXTZjwr++cnqqV
	PkQICOMJ/T6RxMK8lcgq1P/MTTO3HerSezu4HmWVwQubaW4/qt5GIwxTjgpJKWflf9lWJm3STAH
	v2QcFFexEA0o9Im3kPPsmStcc1fvDsggEr+UoV+M1IGJ+zlc6jhMoR6LJ4pb0/KMD9eYsv2xfRA
	CeVLXXXrZh2m8Spn6+ayGow==
X-Received: by 2002:a05:6214:2aaa:b0:78d:d2a3:e170 with SMTP id 6a1803df08f44-7fc417aeb77mr75977716d6.5.1758885076825;
        Fri, 26 Sep 2025 04:11:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUncsz0oUwgZKiYxfzRIDd0uKhIPnoKttRfCdalmtC0fYaRM319M9md1ZwC5GW5vK/9VMu9w==
X-Received: by 2002:a05:6214:2aaa:b0:78d:d2a3:e170 with SMTP id 6a1803df08f44-7fc417aeb77mr75977466d6.5.1758885076416;
        Fri, 26 Sep 2025 04:11:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3ae3080sm2768826a12.34.2025.09.26.04.11.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 04:11:15 -0700 (PDT)
Message-ID: <4fa73f32-c3b4-4dd2-941e-ec68eef0bfbf@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 13:11:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qrb2210-rb1: Add overlay for
 vision mezzanine
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, dave.stevenson@raspberrypi.com,
        sakari.ailus@linux.intel.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
        robh@kernel.org
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
 <20250926073421.17408-4-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926073421.17408-4-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d674d6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=O5mpf8q3-rr5ASy-kiYA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: LV-zuinDcVfhCPip74tDCFkZchN7CKbO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX1JRv00PaTmIz
 FJow3pTAvihuB+UjwVwHZtaQM7i10IuFlUWaFDWw4VPOc1Se8xWlC04e80F8CGtcxRO+2rgKAYJ
 LhYgKyM5Pt7lA3kc5wzvLR03Tjf4HR1KijQAEPZ9/PzPHUmyGPTZerFAhKINDfhtOIcA2M4Sg6X
 +9cdP1T3Ld7N8TVZTbuN65jGYsCgC3VLpMc/MiBw9DrJOtJfMTojkJKc05XIUP/+MQ803WAkPAp
 WB2rbGRVPTnrSsdDpvL9b03JRXQRu10x0UUTnCLSQ2f6zNDSCRzCNmznK7e/8h3BMw/6VMBlcCx
 gIRrj3WvsdTFUEJ2PmbbmgFBkxmHEfEsK3FIl+d5zq01LgJmFfLz4soFLf5E3zstOVcOIoGO1BC
 7UghwfNlbSuSCAk+yJxXv6ei41cSQg==
X-Proofpoint-GUID: LV-zuinDcVfhCPip74tDCFkZchN7CKbO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

On 9/26/25 9:34 AM, Loic Poulain wrote:
> This initial version includes support for OV9282 camera sensor.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

[...]

> +&cci_i2c1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	/* Vision Mezzanine DIP3-1 must be ON (Selects camera CAM0A&B) */
> +	camera@60 {
> +		compatible = "ovti,ov9282";
> +		reg = <0x60>;
> +
> +		/* Note: Reset is active-low but ov9282 driver logic is inverted... */

The comment no longer applies

with it gone:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

