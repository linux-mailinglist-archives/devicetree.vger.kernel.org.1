Return-Path: <devicetree+bounces-124321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B09A09D8597
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 13:47:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 733F42893B6
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 12:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 470441993B5;
	Mon, 25 Nov 2024 12:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KQ46rnD0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E7821106
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 12:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732538837; cv=none; b=YcWODxbuaV9vAAn4kO0kISm2f8k84KlJG8ubVVynfsEZk6y4Qd1UOKjuaydOgBkii1tSyq5HRFP+m+84868c7ijE7WAaqMqKc6DzZtos1wwfbD5JOpHD8as///zbpyuA6/Dnk+dihtLfe28U5o1KDBkqbEz9Hhvf5e/rZhXLqiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732538837; c=relaxed/simple;
	bh=wDVlE+3a7Q0/blgX4dDF0Ww+r04zZ7/v7CBGXQwyzO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WLzJhL32z8TJsLatPqXZ/LHVkFDetD2YJWp4qhBW46YI+oaqoZJzvmM4IxhPAi0siL95SO1eIxO4qQfAvt6ZIuWlZHQbJT63J4XxR7lDWfQ5DRUZwKmbWVWsV9Y0F4F+ZULLV/Ps56kyomBHwc/NCjKdEoo26j/nkyG4f3BTWHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KQ46rnD0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4APALGXv016629
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 12:47:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zeeoZnPBXUwuagoh6GBKRIxYphnRKtHZMwhi8JnP0Bo=; b=KQ46rnD0BE1BpglA
	PXbvcmE2LBT9fkSgDXPHQnCNVdVkcuDa9uI4ea+NCjloIHX2gzldWIAbG8aYPo6g
	qoWzOqInIEa3EG482lZCBlj5bCGUvLzY8PM8G4bUichgOh5kHgPUzSeHZ5QHZTJ3
	02FV4Cg6/WjZOZsOQtLuvFdg8ZBjw7No1ou/iUxXyhLbpxIdbSFqGFi4bP61ko5/
	uLfaeFZpXVLR+YUqkyQqwftQs/SibBdZyPQX0wV6tMzSC1h7r+angXi0TetxuAxs
	RdM3d1qTuAHvd5QKs7JBPfKF6BdFUbHJDhGB3FrvE3RnapGvWyJvi3Qa8ziwXDk2
	/nW2Hg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43374svqmg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 12:47:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4668f02aeebso2816471cf.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 04:47:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732538833; x=1733143633;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zeeoZnPBXUwuagoh6GBKRIxYphnRKtHZMwhi8JnP0Bo=;
        b=JbdjWDBlgEp3kQxFrX320vEUSPe546exWPP221w0rWuQul0bUQ7UNdM9BcDFW/HlRw
         J8bripNXDxv2aT64toSAcIgYegJ4w+Q9KlLNqB4jGPBt7NTlF6ZQlB5rMDAU9y9nhtbI
         RgHMTG+h9RzzqMqwFtZULdgIoARmqGEIOaNWsQbifRe1YqtCHAfrNR9xHByfNbYtqJos
         aVshmkftTw8vFT57ALKESIQcQM7khz62RMKReh+Qigf/m/Lp72G3kBoO2RAqdJU6IRhz
         6JsnkVI3AnWfB5Q6wZJs2TIdz+e9IHoZtIrnJSJor0MdmLrj9JQtLtC9jQaOoD0sr43u
         mdAw==
X-Forwarded-Encrypted: i=1; AJvYcCXHyL1XjphTqEe00t9yBSknMvNzALsfLJwo+6hXfuaRH7UkCah+CmTn8ZATD5bj+k7PKTxbin8sJvLA@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx1uUHc8IIjBRuGZeUXTEmvG7nepv7lmH+FgYJt9K90+PHdBe+
	EcelNNoBBDH3AAkfFGj2t+lBJdeBUC1ysm0c3lUKLSD7MVwB3qOGB8svnm4vX6G8x2xNOfV4kNx
	noB883NWW6u7Od0aDvdvx1fx0WTPibt3TsbGa1Kl4L6dWb28+eVoLVqMjcDnIhNZS8+Ol
X-Gm-Gg: ASbGncuivXS1zqhdG7A1OZnKiDdYayPBxR7S5ag9MmZuOo5FfCOXsmgYfZnJGEClG2s
	C9fTcQZRDVK+ykR9uIoZCvJap8IPsR3TYK7ndzRG4TiLFqS2XZ2BKe6OxnIVvaiP0Vfzr3jyKg8
	An0eOpsl4/t3wnV9x1JH85SABGiXWTkHUfuFwC21mbnuHGvsrr8CpWgBY4sRE0Mj4zV0HQT5Q7D
	Mgl87Q2gFK/PaxGNeRxRnFlWOvRTw0eG408zO3kVop3bU3ztUrglkuJkRWDHSdIbMJhnktakTRo
	M4HLey/641j2qfxAYiNsqAwEOfxu+4I=
X-Received: by 2002:a05:622a:1a8c:b0:460:8f9e:c48e with SMTP id d75a77b69052e-466a160e606mr367071cf.5.1732538833681;
        Mon, 25 Nov 2024 04:47:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/w1GtAxnHY4s+IA+xiplqvA3f7+lUW2gwSCR0W7ECr8U4ppsyLgiI4IDuAcDWm+Gf2BpnTQ==
X-Received: by 2002:a05:622a:1a8c:b0:460:8f9e:c48e with SMTP id d75a77b69052e-466a160e606mr366941cf.5.1732538833276;
        Mon, 25 Nov 2024 04:47:13 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d401f64sm4069401a12.70.2024.11.25.04.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 04:47:12 -0800 (PST)
Message-ID: <421d43e0-6a6f-45ca-801c-908c66bff158@oss.qualcomm.com>
Date: Mon, 25 Nov 2024 13:47:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qcs8300: Add watchdog node
To: Xin Liu <quic_liuxin@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com,
        quic_jiegan@quicinc.com, quic_aiquny@quicinc.com,
        quic_tingweiz@quicinc.com
References: <20241125093503.1162412-1-quic_liuxin@quicinc.com>
 <20241125093503.1162412-3-quic_liuxin@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241125093503.1162412-3-quic_liuxin@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Rk3FMzN1PjmpngO6WnlLmuPUSvWG8F0G
X-Proofpoint-ORIG-GUID: Rk3FMzN1PjmpngO6WnlLmuPUSvWG8F0G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=827 bulkscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 spamscore=0 mlxscore=0 impostorscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411250110

On 25.11.2024 10:35 AM, Xin Liu wrote:
> Add the watchdog node for QCS8300 SoC.
> 
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

