Return-Path: <devicetree+bounces-190398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BA9AEBA0C
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:39:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59CA53A6954
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:39:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B9FC2E3AF3;
	Fri, 27 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D+KdFKpk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415E82E266A
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751035193; cv=none; b=Jko83YfKjJH69CVvlvFR4MMlooKhIV29PTDPY+olzgd2x7EIp27YVw0y8THG0b0glFE8n5BckjIkZKR8bjc6eUenxpjO5RyrUTcHfJO/n4x8W8uQUiF/rB1rO11ZZ+Rv4rU/C/mTCJPOqZT/6lFlK8gwAexWbOKaF29USODpv6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751035193; c=relaxed/simple;
	bh=jSO/+p511lq7EpHwGud3WAQSg48s7MPXrdiF0+DnpSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nsEoyRDD/sPuM8UaA2PBrQX6Pi6Tej6gouOzer01Q1kfCm/MWXW8i/WZ3RVD2UmlGlq8wdmQGRTPBOvvRc8bTOOMqGAQJi5rIBkqxgRxGWW3Jb0RUmYGyLGKVKAKYr1LQ/MvO4ycAyiYYqY80gZIGx+0l9idb4bQGq3scygw7fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D+KdFKpk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCDx69028733
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:39:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6++o7Pi5HATRG1pqFXN6d7dbC9+DjhCsOCIwbyrPwyI=; b=D+KdFKpkSvnDfzON
	TpIX7qgNXw+GbKrSIp6ptQZwAzEtCSwMPqca8H4pA10ya5zWiD4DuJj4SsfJxlaz
	rTgBiidMeN1bmoViCfnkPHe9orFxymVRbD2IJU6oguUWowhp2D/WTr1Xdnd5OIOr
	w3BqMKKMjWZzMXMK2EDwmfQmAe+gFnjiZWBdWboaWcCu3cHY79crZR/pEzlUYnvw
	+ZrkTL6PCQCDlkgPqBz/B+VsmPCmD791WWiW0hFyWNTATU5dHen0T0+NcZAprnih
	JP9wErwOodnYIhqIAB98Pg1UAr8XiodFLFqz1Pv3Nf3z9Bowple7EMWZawljQfUt
	BxkjcA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa50fch-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:39:51 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a6f59d5ac6so4943081cf.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:39:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751035190; x=1751639990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6++o7Pi5HATRG1pqFXN6d7dbC9+DjhCsOCIwbyrPwyI=;
        b=UIwTiKluPr1/Qv6VIf4dip16xZ4pCqq7UTGe5/QpSlTnFecQyuzOpiz8UJakmEAuFH
         iuKm9okI+CkQFhzshyTw5ke/mlxCExparvFgqjx6fRsnbe91H8IlX9EnrSUhAFlaQjWe
         7nJuBrPe7mHaUZdvP38bvhVFjzED0oo93xuNLTZasu10NdLOhqYHz/luqj+ugtan3mNA
         6sC2UWw+bo97InG3RwbuefZj3kBHCzK2eK0CfZ8qnGTZ41Id61/aRdh/FnfFknIVpOvB
         pnwBGKiBlrwYoGilxFCmqCZiyH1ADKFuyoIiiSdNCgJf2T/aENCYGAzAnB9e8PGY4ry/
         JqdA==
X-Forwarded-Encrypted: i=1; AJvYcCW4mdoYNU70cVG1m+IArymLPTmrzprx+ynWjgugTzlmQVXvNnUgghdMkC4zAVw8JwFVnKwxhWNCzuRs@vger.kernel.org
X-Gm-Message-State: AOJu0Yxaq6IYtxt6ygpMs5Mx/ZIIU6r8wmlLOrzpT+3AUABgoTin0xLX
	z1mTqlgz1BmfBZnWw87r150Gr3pSykR3IUdGC7YR+byn7t/JBNcBa38zT8gfgJM8S3ubj1lR0Oo
	Hp9NP7g0vfElWsQuHjcnYeW9V5KqL3ZBJqmWMbCd3sjKvzXK0YL+8QWhdlW1e131a
X-Gm-Gg: ASbGncvSprO4Udh6hJejswpUPQFEABKLWf7W0rRsk6FLEhnuJ7nO0NbAuYaAYmlysnZ
	vTEezc4+L6SpW+WWqOOP4w6nzBFJEojHlCRCfRDFCHUqWqaSG6fdrc4oPkvLh8q5vjQAaV06GtR
	jdCB1p+ld7lNrz+ygKWQdCGsimbrlo9yacasFxDm/Cg3KuRAKUeoU+Zc2vTpxNklZuiziZbN+xQ
	aCzt9Qv/GkbTt9/l2ZQT0pBEkOJ/A7a7I5Omv++3c95QHor8iYz7SG3+J/mfSyLbIpHISFM1WVK
	vMB6d8jmXKOQjoXPSeV0PpLLZR8A9PhAzYYkKQ35d4XV/NgLINX64XGQLGlRZAgKubostzsFQLP
	t0UY=
X-Received: by 2002:a05:622a:414:b0:4a4:35f2:a02d with SMTP id d75a77b69052e-4a7fcaae8b6mr23642521cf.7.1751035190088;
        Fri, 27 Jun 2025 07:39:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuy8/AffggdD2ijir7SSC61h9ZP3G9ScwXgZoEL4giSxm2FwpM/5LVBxTCOJODiCEQ/gqwLw==
X-Received: by 2002:a05:622a:414:b0:4a4:35f2:a02d with SMTP id d75a77b69052e-4a7fcaae8b6mr23642401cf.7.1751035189635;
        Fri, 27 Jun 2025 07:39:49 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35363aed9sm133238466b.24.2025.06.27.07.39.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 07:39:48 -0700 (PDT)
Message-ID: <b7759de3-4701-4bb9-bce9-1dcbacb13265@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 16:39:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc7280.dtsi: prevent garbage on serial
 port
To: Casey Connolly <casey.connolly@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250626132333.351351-1-casey.connolly@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250626132333.351351-1-casey.connolly@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685ead37 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=cEcZy6ERZyJA_yEnOZsA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: QGAR1SPznZpIb7oGCTxbwIU3OHSe0Fbt
X-Proofpoint-ORIG-GUID: QGAR1SPznZpIb7oGCTxbwIU3OHSe0Fbt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDExOSBTYWx0ZWRfX5sCHJJ2Mndmm
 N2B9QP8QOWkS24idmAR/w2m7BXyBnCNtVmnQbheYiGI4D/PgSR7ZRtx2RVAEa1vCB7ASKPI5gb2
 /Luk7vtR9oqjpdjrRpkkalwIF+7T6qDKTd/6TG8OLKrdalkshyCRvtYyzOO6wFGfjmOhrDkk0bX
 4NsI6Y1teGWRf1iWAHZd1W7jPi8gArbKfhGlh2OX5HvJ3XQ0YNXpE+y+Ts8XlDHYOX6ttro6TQz
 2OT4cr/HIQvByXc9/IopjHFaJ5pr4xygok+78NmbbJvp9tR6Y8oMoCn57SEFHTHNtrCHVLNdzf9
 GfvIQd7pgtoyeA2+Dv8Zl7yxDJuiDSfropRZ4/U133RLFVnCsmwse/QZLulZUToadbJDopT1A4Z
 IpouolfOJLUYQwpvoK5yBKuMpBBDEcq2W0rLQM1Ums6Cz38Y7apEWuY5tqsosBMIAF9NvXwx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=819
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270119

On 6/26/25 3:23 PM, Casey Connolly wrote:
> During early boot phases there can be garbage characters on the serial
> RX port unless it is configured as pull-up. Add the pull-up bias and
> mark the rx/tx pinconfs as being necessary for all boot phases.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

