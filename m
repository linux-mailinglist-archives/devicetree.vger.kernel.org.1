Return-Path: <devicetree+bounces-121892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E479C8B6E
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 14:06:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3139F1F2581E
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 13:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35DDE1FAF03;
	Thu, 14 Nov 2024 13:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SM2dCkef"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13141FAC3D
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 13:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731589606; cv=none; b=mgf43SLF1hxs/N7tLuTm2aqGhuNqCmkAbLu037aLw5cAkadR/FGFCtjeHCmwrLwVvFlNJ1CL3IUje8Q+IRUaCn3/IP+RVb/FKFqY2p/lcmQ3JzJ9p8X9u1U4rFWiO14GjeDk4kgTZWn48fuBWbBYidEAYqvukDAHCnqptrFwA70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731589606; c=relaxed/simple;
	bh=U0GhA3/+aWy9Xn1Tcitpj/Q/54Mwewvjxq/u/nQPg3Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q4uie0MgkSJiiA8YFaBuPrQ6t1g9uy/guPW0O6izBzJqznsYMKU6SYn6JHPS8X6gUvYA4os3khE6bzlPXhbHHbrhLPOG75CZoIid+ARSAQHvTHrhuO011+NkmRET7bniQ8PIHDV0snaTSSPoPCSuTW0QgVqdfkGHyBJsNdHTivs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SM2dCkef; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE5ut6x026695
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 13:06:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wMKapcEu/BDec5OW1UblFViRGaMfwyVFJ5h9OM1dLHs=; b=SM2dCkef5e1pwVvK
	90I6ZzY1CsiUH4u3o6A6XNTiU5U9mRK6RrD2/yap1XtlussRPRfmD3xu9uE3Gu5q
	jAzIAARwYK2sonkeFVv3LpAx1iUEOoLB1cRGf18cjFESDUn7cg88JeyzkYXqSeTA
	CvKuf+FznLX+lCQX/4CCCmIvmQG5a8rW91+YMT4GjunlQlnjtDmH2Mt5b4UmqrWe
	lSyQELuVYLyPjMI8QgH421AzlrUHJbIsNpoOw/zueMkGsWADawDsjkIOpX/EQrKN
	Yr37/UAohP38R9nnTZgazhc3gtK7v9aDamdXWHJ6iZ6lysn9In0sA6VJ6iIfFILN
	BBm2rQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42vt734xcx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 13:06:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4609b352aa9so1334751cf.3
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 05:06:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731589602; x=1732194402;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wMKapcEu/BDec5OW1UblFViRGaMfwyVFJ5h9OM1dLHs=;
        b=Rs8anAO1YZhDLiJAYcR8x5ayOxML3mbcJ/G7/S4WEwy9kXHmIKu1dvSMiUjiPqnenD
         PBoEXy00JdLKE6tuqzWVkqxuAMB3KbLFQQxosSfVMA2xYgxJlKUC5P3QrYxLwFoHs96V
         2QZ9eeClETax2iO8pVjS9hMT9H1iIaAzh/nV3V3aSAQjTNE4AkcURD4ZCJNxZT10kVCg
         LyRFjTb91cm9cHIr/lDIoiU+RrZ1Ipafj+1Elsq+zYpy0DWysfcipHa/X46DaSb3Dq+4
         qiUhe2O9HWPwnWBkb79GPXwkslIOS4dpvK/zOGLgF2ZzVA/XlL3warpKFCGosxQHyiC+
         p17A==
X-Forwarded-Encrypted: i=1; AJvYcCUqSznH1NDPIQC01hSniDx1VMtcxGKSwi8VX8tHkKmzlUaeernBZC2M+WWNGkl/cOKfrMxUM2fkJthv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw47pzUOHNAYocnrc9ReQyz4TJ+dL7lJ2/V8wEMt57DRCANdnaN
	RL265mUf0IPLtpMMMy/RbpBBj/8nv7Mg88W6FQ6tfgr64eaZWXGJpsUicjeh5acQUj1Ij6CRnJT
	yh6cdxsKNV05STwIAErK4pvPKflh4T33q+M/au9hmtGfJyogcfwN9T9v2hzog
X-Received: by 2002:a05:622a:1a1e:b0:462:b46b:8bf8 with SMTP id d75a77b69052e-46309428d16mr146342741cf.14.1731589601685;
        Thu, 14 Nov 2024 05:06:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8BOxCDzfhiRn2Gz53nrznJn+QmhXe+672DgqS/U6htSiQxQfJEIG0thXCkJW1n2w3CatbDw==
X-Received: by 2002:a05:622a:1a1e:b0:462:b46b:8bf8 with SMTP id d75a77b69052e-46309428d16mr146342521cf.14.1731589601372;
        Thu, 14 Nov 2024 05:06:41 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df2664csm61675766b.7.2024.11.14.05.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 05:06:40 -0800 (PST)
Message-ID: <ef598219-9114-4c9b-8a57-5384ee0747d4@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 14:06:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] arm64: dts: qcom: sm6115: add LPASS LPI pin
 controller
To: Alexey Klimov <alexey.klimov@linaro.org>, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org
Cc: linux-sound@vger.kernel.org, srinivas.kandagatla@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
        krzysztof.kozlowski@linaro.org, caleb.connolly@linaro.org,
        a39.skl@gmail.com, konrad.dybcio@oss.qualcomm.com,
        linux-kernel@vger.kernel.org
References: <20241112025306.712122-1-alexey.klimov@linaro.org>
 <20241112025306.712122-3-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241112025306.712122-3-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: avjlOi33zhuAALVuhBdXVAvGqCiJvkh7
X-Proofpoint-GUID: avjlOi33zhuAALVuhBdXVAvGqCiJvkh7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 adultscore=0
 clxscore=1015 mlxlogscore=786 mlxscore=0 phishscore=0 bulkscore=0
 malwarescore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140103

On 12.11.2024 3:53 AM, Alexey Klimov wrote:
> Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
> controller device node required for audio subsystem on Qualcomm
> QRB4210 RB2.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

