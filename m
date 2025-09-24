Return-Path: <devicetree+bounces-220752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC38B99FE3
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBE282A3ED4
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 13:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4968B1D618E;
	Wed, 24 Sep 2025 13:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aSdNBciZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B042B2D9EE7
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 13:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758719722; cv=none; b=OaG6AwU1DBcA/iV1IDPni7BDrra4cknb2rcuCMXcUtXcdZqO+O7rrB7RRz7bfvapMmRUZnugptqRToP7tjl6lxU0HeYFBTs8i0BFfcJTM2myWWKpmTZ/33iO36I2gQam1x7z6olckVvZVhTxqs94GYTFqVY4X06b61oURPSna8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758719722; c=relaxed/simple;
	bh=ZsZyQ7Ql3rqRY8h1WntWXGDU7/FgBAc7YAVNLpKKuuU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e2S7ipcbX4nYuteO9gU9Te0c5pY4Gm9awHFz4NQ7My/PKkTL7SktMoVy3wSwZ/o7ufQM/9PaPULmdhntAxXfeqM5Pwy/ywRSmqYbNEoao7OJrx5oiHwpnBo6WgUXZ1lXW9xKyG1o3He6FR6pMpdtWikwzE6BFM8nBylqUbLGb8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aSdNBciZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCCciu018220
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 13:15:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TwFCyIUYndJk/I4av4mMJ5Ifu5vDiUCjBB5zV4J2loE=; b=aSdNBciZsLiwV62j
	n9AkhY2P7L6z8u+JJaltqeJNw+GDWyfHn06OBDX8sbN25WG/WAfYWVB6NfZbNJ2v
	LEpA6dOGgE5+gr3LuLXzYtqhFXYPvW3HdJ/YtIX1l2iMsEbikIShVciG95+yRQxF
	38zFCVtIlI+AKE/GCCFQhYd0rhoSrUibHp3nTBvg1tI2jUr5+hVs/CJAuck96xO8
	9W9JFaV1fGRN0ZWR19G3LI2L+BqP3XeBYr7nkuMUzoJ0sv3CKw+rxoAIxSslUcoK
	uzRVl9QGWTZpejHi8WpowdT7tL9qo6nHZOqINzER54YaLmM4ORPjwwsXN0uKkPUX
	B/hsOg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk8bs5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 13:15:19 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d8b1b7a2a4so1084541cf.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:15:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758719719; x=1759324519;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TwFCyIUYndJk/I4av4mMJ5Ifu5vDiUCjBB5zV4J2loE=;
        b=e1i0NjGtFOXOi8UzLf13AEpoipiPGVKnqlMPNVD86zDRJ7ODSdEoyoastSovZJoEvR
         VYFeMuslQZl4wiox9dg5ehgrzOzqt2tYVr/r6BKRq/x70jjgvD7Pk6E2yfHPT5ON/pI2
         PY4CDFbs8kjvSeMzYuyIoYgJTbcfyPb+sGcw89rdvgqRp8CpC0dvDoM0Ov7m0NlKyI3s
         JdVIVdH0meM6+qhdZp1c+rvtzOME6DmtOeDkowIE+Onn0KznBq/BOD5wIWVzDNmjF/Zf
         eq+zhp7KqFL9xEnkwOaAYPR2pvwTlzKQNYR2isI5VyGdKbmeeAN8NnhY5ZLuev/IiD9l
         DHkw==
X-Forwarded-Encrypted: i=1; AJvYcCVSfCgpi310XbZNeRp+nivXoByELS2GV17mRWPemPTBt9TqrLGZTy9wA0vIVfpsyVIIOtNb0gi09lq7@vger.kernel.org
X-Gm-Message-State: AOJu0YzV2azIhBHKcoBvSPQbE2WbmAX7oGXJVLN599rM289Ws3O9V4H6
	9fPhd6Es8XF9fySs2nQkFWh0Zj/3DuvV97uiFN50kyOX9U45lgv+R+9LKkDBBX/NIrblyLweEN5
	ju7pgy5CQ8Dbenp8Ty7pPkJbB/dxOHPNnBad6N8UO4ZPJUFA37E96TubIaLa9TV17
X-Gm-Gg: ASbGncsCIfo3RFvWE5pufbIq7RHnGanfrTXerNI0v3BVAEjB4NVhxDRQTbmfyhYhpUx
	kwzE/aEM092BaK68qSsf85FQG0H9gZgcDAnG0qPJ5Ahl7hxO62mc1ku8IJZxmsyhz96ORZXy6QV
	Z+DYJQ4cjAhaIx81i2oAINKPXZfbUCmTcp+M7LaOB7SsNIHWR19WBgt4w93vngpxx+P9YQwOvm6
	Tnz1Kw6S5g+P7KzKuRZ/d+Xps9TiivESGF1Mm2RvPFf+NX7UwbnEQbWxb9SFr6ZareG5YUhAyE+
	4ngHl95LniWn9naBtLilQV0X7ww08GN9T9OgxlkyPx0LN3LxInw6m/cMjTFOwX3WLS3MHwZc7KX
	yhLAA5RVlyLN8cvvuaI8tWQ==
X-Received: by 2002:ac8:7e89:0:b0:4b7:94f1:7722 with SMTP id d75a77b69052e-4d35bdf0ab6mr48207461cf.0.1758719718531;
        Wed, 24 Sep 2025 06:15:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESZfa8efiSxEuXWBpFzEPdHkSAYRXc+abBpIikFgLyQyl0nwGOhQi4FND05AsXWtX0Zyh0sg==
X-Received: by 2002:ac8:7e89:0:b0:4b7:94f1:7722 with SMTP id d75a77b69052e-4d35bdf0ab6mr48206741cf.0.1758719717686;
        Wed, 24 Sep 2025 06:15:17 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2d4309ab9asm632180266b.74.2025.09.24.06.15.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 06:15:17 -0700 (PDT)
Message-ID: <d650fde0-7ad6-47bf-a8fd-86dadbce235c@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 15:15:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/14] arm64: dts: qcom: lemans: move USB PHYs to a proper
 place
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
 <20250921-refgen-v1-2-9d93e64133ea@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250921-refgen-v1-2-9d93e64133ea@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: DY-Ae3BG0dJZlp5uoWdTWGBXarkWait2
X-Proofpoint-ORIG-GUID: DY-Ae3BG0dJZlp5uoWdTWGBXarkWait2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX4cRPdCS5Rjus
 ItXnPxq+Rn1PgK4cFq4NeAfnOX97AnpoRvh6hC4w4fYSgI8ZzaSBVikGGGACCB1N+G5Dl7lcyH+
 wOg3uSejO8YlOvzh6kY+r8tVwxoEdoU/+FK05ost7ck0y5sD0Q2+hzLSGoeUgb9ILqO8sJK2Oqr
 hLB4ZvAb8WqcOJk2YN4BNoxpclhl8r2zVS7huipLnVqQIU0k02AEK4zZ1wfZlbAZ7WZ5PsVK17U
 O6RkAITIRP9UA0sX82GFPgDpm2ZEFRV0xlgGJa0corkMZoqn66hdi28zeu+hQU4zi3QGY5pahV1
 sYIfO5bEl25C7N9QB2kL4eOz3fLenrFNTZW7B0hpDsLtXDsM8XmA+zyIg7Yi5mIbRGlbJp5dvcN
 LiQWHlTv
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d3eee7 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9b4w7uh9JfneBs45nCQA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

On 9/21/25 9:09 AM, Dmitry Baryshkov wrote:
> Sort the lemans.dtsi, moving USB1 and USB2 PHYs to a proper place,
> making the DT file sorted by the address.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

