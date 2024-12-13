Return-Path: <devicetree+bounces-130681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D0D9F0A37
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C74BA1883196
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA2B1C3BF7;
	Fri, 13 Dec 2024 10:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EG9tTFfm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881D379F5
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734087504; cv=none; b=tEO8PU0HWid8EuUORbAt/BanqS9logW+YgZJEEKCVXsU5nEx5AOEzA+TgdOaHqz99WL16W3j6BRXqqvNDyirXAb7reOBGFebvM42Tvv4QLWlVsTjfcG6QMNnjjwW4q17qOsfSFwRm07RnyTst1jC9xsn8glBl4BD6IxxX3MrQ3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734087504; c=relaxed/simple;
	bh=qPegP8LQZPlLlcXjJutGC9jbyKdfJn1J8L/k3V4SUjk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CXU7jclsswU1T88KMpsDRlaG9FsVB/FFEfjssixy/44Kz0SfOA8Z8iR3Hp39hx8E8QHSLa2t+o2yux4TyM9Zz40Z4y3kIRKZonl2NtdtYco/Um6IHtTdI8xSjg/juY4THoSx+b4oYK/Hb42UgBZnNO0FrcsQSPfwsoYYufIEGQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EG9tTFfm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD45lWo017223
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:58:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCJavJQ71PqZHCYPa//4JL9cKiXxNPidx5M706eMzJ4=; b=EG9tTFfm2TloFuR+
	3E01OEJ9VK1ZzJceSpF3cGNO5HdcGNeHBhrWFukSPpRM2uJfdmxyAz9oHcS3UlMB
	t45WovcXkChj2msq6YYuXdTNft7aPcHmOEqkhpjrUBLwUFzoB9AlsDAJ44jRcct2
	mdoHuRUhDLcUV2RIEn7ixNK0gKNQ5PDy+scUaVI7pxp/7S0IQem0JBLydCc4J7Yg
	DHtIRYkyAx56ZYeRkDzwLQawVflhKcHX0YoxSKTGIkHPrt4mxH597yZWOA8sa3qc
	wCyW2Rg6bsHtrdCOq5c7O9bR8A1u0TwZnwUL5AVU3kw1y3lEk+DNL+uSUENP2XXB
	8s8QBA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gdkn11pu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:58:22 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8f15481bbso4614796d6.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 02:58:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734087501; x=1734692301;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zCJavJQ71PqZHCYPa//4JL9cKiXxNPidx5M706eMzJ4=;
        b=dCpPwPM/nlohJgX/kpmINWYvuSkqT4OyWndeqxjdBKipPbQOfHxTIGZelSKlqdz0tL
         BqK4FQierEL8CiqMoLgFlvsA15OSAxdW/ciJRx2k0RTTZgICEbYOg668a0d3VgsUJh10
         jvJmmW85gv5YWflCu5iDJ+kFKX+eqwqF2g9xDk83pbilDU0w5DmWsUlQzM6w22EPqLxc
         URnkfdSssndGdhB/M6+/dhSJ84P47+hYLPqMo12EdC8Im64m8EPx3VxpDU6KXIuD0ETT
         dlg2kKYh28sa6su+6UESvR+plMX+00OhyITgaeAtaACKdHytndAJe+OSL+CfOg0Q+/8+
         5arg==
X-Forwarded-Encrypted: i=1; AJvYcCUYoYagofkd5SYYJbcTOekQPN8vZJ2QXu70lZ3S/pTgaNh1+SMOSZe1LJp8ZePl1IcHefDq6Ef57JEV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/IwSkdfjNyOaT927ZtxhHtZqZqgjlSYKxPVocstzwCBsdliKU
	L5/b0nQ9Bg/q4+rIomOAgEtthFOJVqkZeTpHK0XGxRREiXMvskV3uPxMMTQPeZjPZPRKmECIe5x
	g2IRGutlBWri/+pR1HOg8BIRsNs8PRqTuy5rCJ2g1AD6KovkETLOBFzx/Rup6
X-Gm-Gg: ASbGncugQ9kybLlAQfBSv8b1fQ0XNe69tVkgwRN4Y9Lr0G/ycW8+tQFhoid5RrBm6ak
	dsv8cuBEaYgz0XbghPcO10BfIlOqg8y1MEDBna2EsS0YkU9pZkgfo8aeZIIqdPmJIImBbnbEylY
	smOgrE29I2t2AkCy8gK9Vpt0GHci41FAjml8LbFz8gd2agJgGtwypZwevvjjCBYa5iIB3FDIs9U
	nPJP5pX1/uvWHiDaewSANoeDdMkz9g0i29J1Db7gRsdtIVRQ2Z8YfUWs1ueg+xdHsBiEPX6LzCG
	Q0GgvkxrsRJLVDuBHxZ/Ppo0ZeOZr2bEQEEX
X-Received: by 2002:a05:6214:f0d:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6dc969a9b25mr11838736d6.9.1734087501505;
        Fri, 13 Dec 2024 02:58:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsGI6dtYfqNBiF9YOclKzsnUndifeUSlM+bUU1xm7lXts86DjAKnT5BGz3KaXNPyr6IOpU9g==
X-Received: by 2002:a05:6214:f0d:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6dc969a9b25mr11838586d6.9.1734087501091;
        Fri, 13 Dec 2024 02:58:21 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab897873d9sm23026666b.191.2024.12.13.02.58.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 02:58:19 -0800 (PST)
Message-ID: <0cc06b94-806d-4e63-ac57-9d9aed45a3e7@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 11:58:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: qcs615-ride: Enable Adreno 612
 GPU
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        20241104-add_initial_support_for_qcs615-v5-4-9dde8d7b80b0@quicinc.com,
        20241022-qcs615-clock-driver-v4-3-3d716ad0d987@quicinc.com,
        20240924143958.25-2-quic_rlaggysh@quicinc.com,
        20241108-qcs615-mm-clockcontroller-v3-7-7d3b2d235fdf@quicinc.com,
        20241108-qcs615-mm-dt-nodes-v1-1-b2669cac0624@quicinc.com,
        20241122074922.28153-1-quic_qqzhou@quicinc.com,
        Jie Zhang <quic_jiezh@quicinc.com>
References: <20241213-qcs615-gpu-dt-v2-0-6606c64f03b5@quicinc.com>
 <20241213-qcs615-gpu-dt-v2-4-6606c64f03b5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213-qcs615-gpu-dt-v2-4-6606c64f03b5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gyeBwojiwOE9AcmrX7ff-BYYkPSIA4Uv
X-Proofpoint-ORIG-GUID: gyeBwojiwOE9AcmrX7ff-BYYkPSIA4Uv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=684
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130075

On 13.12.2024 11:35 AM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Enable GPU for qcs615-ride platform and provide path for zap
> shader.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

