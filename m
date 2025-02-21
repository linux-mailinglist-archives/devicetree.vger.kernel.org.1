Return-Path: <devicetree+bounces-149621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 160E5A3FF3E
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 20:02:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8ED0425326
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B74A250BE1;
	Fri, 21 Feb 2025 19:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kbAgZrHq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5CD11EE006
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740164560; cv=none; b=WBzWLHSr0GvAhhcdD+MCDkLNWTCjUYrI/6FSQRvQ3Kufmw61BXR0WlGC9mtcVYfExogh/u3a6G1TelMizBRd1y1gQcavZJvojFmCMPtY7ikDDh5d9FaayTOkOhDUnSta6fRRn2nbkAx8sQsAwW5MHNaqFUCFe9ji8/LxfYGec2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740164560; c=relaxed/simple;
	bh=n/JZko0Q2c1fHbsl7vbB+LWtijblHysyQBHRB9ZsLNI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pi/qHpG0iIn+ct0+ZclyULlz8eraZ9XcaXzIzQCZFbzOSNqh9rrmNQVIOqGutB2ZHp7J8K7t2MC60mjSuYbXaJHsduysDlOrFCGE7ZN+lTZuj9S+KV6A2XntfjSvY70jOHjBtnUQGxugfs0/jEJnMU3lIgiaBZvSMybqXdAR1dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kbAgZrHq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LBgb1Z031359
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:02:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jXUHcu9DayNto7ymR3uyNf54ZcDvUwEq950xuI/kfuc=; b=kbAgZrHqf61Y5OBt
	p2whb+S7th8J5hQuMTTqz3E8PEJs2GLcG++37ZRGwZv0S8l+Lk5FB82u9aRMWshb
	7EAtdQoOGsb8YsK0uTlhHUEHts9mNEknMXpWE9aCrmOTF2+/KeP+aCdpu3NQj6Mm
	1Ao+DzREX3ksyJ0hkJ+ObyeUgJJnHNplLrv2pukeEn1mjfhQi2dPLXN53aALZCFF
	v09MEHpJO3EBGu+5bSNZQOLWgAR0vcq8wTskNTYx/0TaLjciFVA5inPE4zAB18Lm
	ij9cS0azaqTb1sHTw//BVBpQUqe5ytTScCUtunGS62GAU0+c/fhcs4RIb6IzH6zM
	h1euRw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy5jwj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:02:37 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e66e017ea4so3520676d6.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:02:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740164556; x=1740769356;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jXUHcu9DayNto7ymR3uyNf54ZcDvUwEq950xuI/kfuc=;
        b=B62sCRw1IgTcz2DLxLKbO5wg2TI2CwvIm9Cf6nJK1U8YcelaQ06Ml3O1TfIz3CkF13
         lpwU3xF3uRV8FUYl2Gh9cojTSAyyAMMUzNN+573U5LmQ+CJK7nTEgX6XfM/5FUrWNAfA
         5zVpJiH6UtsaOBnIbHusd8+3vL+YawSreCBn0MGgBMRgW8FUwgeltaILTHlT7QR6NkSZ
         FdbK5gwz1s9zEubN0oRWro2dpooOAaRRaZN6DMZHQA50SLtoIQrKQ0Ihq1KSYzQHRzbC
         4SN/OBFuBNJl+1+/31sJ8S9dUTAe3wu3c2aqThNvJVBx6pY6puXINepgWA00ISNlVHtl
         5K9A==
X-Forwarded-Encrypted: i=1; AJvYcCUzv/+7rz7eljy1hnUMMOy0rKi0BWjXje3QpBPONXToXEqtcvQeOjuxoa62X2FD/NFUMhVCE5qwyyFz@vger.kernel.org
X-Gm-Message-State: AOJu0YyALl/1QyXrRmIHWQByB9p9YEfFbOd+Tbd6D8RgZIKZ/POgGKRo
	c0fx0UPzeSnImcqViVmnTmkjoVaKMPljvjOcl+LdGuWzSs2I6kmLNjmAi1EDd1su5Us9yyblLjV
	SJV19B0DRUbqImJA9oM/SC/uVItGtx+BzyfbliaDJrTFxW6yZKQVzatsnNaR/
X-Gm-Gg: ASbGncu7cypYlidqTcPo0ooNWGzknwudRs8LrLgXueIJd/uS3UnMO/agPAQhWwPA+Cp
	OrEfHER9vn4Fr61v7hDZ22O8cB/QTJkpE0sLNXOPK/0eklfPK6s4SIITHjDF0gv7y+XNrfpfCd1
	nils1cuc+0sNsT+sEfYxJvAKR741K6xJPQs0O+PSUPF/XC/tmf6gU6kB9oO2aHMLOA1IvuVA2L3
	YN5QGuuxbUI6KXYgMPJbVmvS2mXuBL1XesbfGUjEUw/aLXLcr/WaPlvE1LcG6Lk/Z3jjgYNUd3L
	A/+wKlF2PY5lUpMHovLO0JHgQuZmGFm3f22ghezzNFH5eDUinGKQvf/vYqfILR8inzPz9w==
X-Received: by 2002:a05:6214:2029:b0:6d8:a091:4f52 with SMTP id 6a1803df08f44-6e6ae9b0dcfmr20623086d6.7.1740164556637;
        Fri, 21 Feb 2025 11:02:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE5qRbDSww0JEuLalVZlTMKrNMzC0dySW7mKPi0WVxin9L8+a5WmP+vAvs+2tMupIZ5hkHWFg==
X-Received: by 2002:a05:6214:2029:b0:6d8:a091:4f52 with SMTP id 6a1803df08f44-6e6ae9b0dcfmr20622856d6.7.1740164556271;
        Fri, 21 Feb 2025 11:02:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba53281cfcsm1696084266b.79.2025.02.21.11.02.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 11:02:35 -0800 (PST)
Message-ID: <2056de62-6b71-40e2-9e3b-077a8b54c77e@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 20:02:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v5 2/4] arm64: dts: qcom: x1e80100-crd: Enable
 external DisplayPort support
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
 <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-2-380a3e0e7edc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-2-380a3e0e7edc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: QkxsC9btuXYRv8wAGXnkdP3E4ajD934K
X-Proofpoint-GUID: QkxsC9btuXYRv8wAGXnkdP3E4ajD934K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=698 spamscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210131

On 20.02.2025 6:42 PM, Abel Vesa wrote:
> The X Elite CRD provides external DisplayPort on all 3 USB Type-C ports.
> Each one of this ports is connected to a dedicated DisplayPort
> controller.
> 
> Due to support missing in the USB/DisplayPort combo PHY driver,
> the external DisplayPort is limited to 2 lanes.
> 
> So enable all 3 remaining DisplayPort controllers and limit their data
> lanes number to 2.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

