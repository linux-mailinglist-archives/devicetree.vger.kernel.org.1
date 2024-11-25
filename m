Return-Path: <devicetree+bounces-124390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 468499D8AA3
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:52:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2C2DB45817
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 15:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13A0C1B4F15;
	Mon, 25 Nov 2024 15:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N0kwbz3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35751B4F0A
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 15:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732550127; cv=none; b=EYd+n8/ezcwQJk8w5GS+8LlPqfkBKTAGRObeK00208wsB/v8ZBVyokcD24tDfNWVwOVHQ45ZmY6CUdlGRQ9K018f6G29FzDruBkrsnvg3zt4mbYWfCD9BixdsRMMi0B03kFgwH7cLxV2vx2U3Axt6WQC598Rwalw9kwvsHFAvDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732550127; c=relaxed/simple;
	bh=iw+rPfggrY5VC4rUJfukTlhjBi05xw7ms9YCcpumBQ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z+Tzmtw7eTv4olig9SE+mmWElxcU2WutGBpoD23z8AHmm0tjPvNIjqbqKsVGb6GqWXyEW406OZ0+puqwEM2fYcQKIjNkjQ5pO3UeWrYwzrrYulSO/5aNl0deuG3xYHA7g9003RgLdyr1oMHPZbznJ/0Yc3dvtw506FFbtWnxHos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N0kwbz3y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4APAokp2032403
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 15:55:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wOGRZpFoHgxved77btthetZSo7CITcrNrmZpFVCz+PY=; b=N0kwbz3yQa0D5wBe
	Y1XY3mLBumti9Np4GsU6E1NKNxq+pvlHnfHb2ur17ld8kMeivjf8XK8e/F31bl8b
	lJTiZWOJpJ+mK5BzvPDhIUPTSiu+TzsPRNgHN0UHFWNC/uQiQOY5z3OdMbAh2YrH
	eDegIpTTx01YR29o/u6ori3Qh6QbYgOI+QvQ5+QM9tkJ43HixzkkPB4fCtQtFSEY
	q/t9T/K3I9U5rLtkxPNmpUFCtWUjOp6DMVYe0E7eweCUhV2rL2uMKkghvA7U3p+W
	LraoWnc06DEsbkmQFBZWcECs8YT/JYYShviDW966JtyY3KcBZb3c06CC5Qhk+CWm
	hcDaFw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4334rd5ksr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 15:55:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46699075dd4so2012441cf.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 07:55:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732550122; x=1733154922;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wOGRZpFoHgxved77btthetZSo7CITcrNrmZpFVCz+PY=;
        b=PRKut8l8GRETW046O1Q1GDhK5osPMbyAdty2pLX9EXpi5SOCJ5NLqqB9PkDqYeWBMi
         CW6E7JV4GPnwZeW3VmG4QHSrzlr8yzmGOrPi2hGbva2QIzkQwCBXCXJARygiOSswDjjW
         yr+zQujJVKtkC5GOunL1nojrpGWbWtOKr1bSQRED9OHNrjX0nJ3+Rob5OuhaSMWJIsdZ
         CTp3kxLgcxSH/qu03qZmS/fIpz+HaPVRaykZnrLI05kwydBAnyEy9QM8XopjWPGebkEj
         2vHL0hEWkRnB+hCJaKbgga6cW+hsWX3c6Na1i0Swrv6c5ipxdpY66yqI4x8uIso/7UOD
         mQKg==
X-Forwarded-Encrypted: i=1; AJvYcCX8xa6t1vWG/tMBwvTAacuBVtJfsddZZ10y0NT/UhWH9bKGV0BESH0ilE3PA5ll6GAjLiihBElqFLNB@vger.kernel.org
X-Gm-Message-State: AOJu0YzwgTxsJtk2LGg3BCm0jrKsZ5EpzmpIMXxkY/5FhvyFFlbT8FDt
	ti9RRU9DJTZS1rlZgZMbQ9tRsdRsvKr0Q0mG/HlyHzX5R5OPj/QemOIQIMtMZvtR0a9d7X13Pet
	1k4WLPXymiCAuc41x+QU9XZPYznRjcb3BSoqovlMKSyjXL3sRDVQvB6E28lqM
X-Gm-Gg: ASbGncuds5aCZ1+ci8ssUNEHhvedk5DxH94g+fVBqT4kN5ciCHaW+TfodCafP0vgv5+
	Zv5yKUCxSO8HseoeP823+Eo5XNkXONKVFPpXlvRHeLRN4o4ciQfnaDC3e+DIT1FvgYF6rwhQtCt
	22OKCBOQw9k/Ik0sIWKa8HzuBJ6Ol1ujVaf7ehQWU5YFoIq0XvouYUih4fydB2+m5C9tqgK9WNU
	JuxfaSzJ82587Pr9xRcnXowLugOuP6xOMp9F5KDods6o8RIzZxX2kw65Km7wbPUQ/1Dlbn3gqJa
	UZ287hPeA3It0UpvP1TW4wnLMwY0EEc=
X-Received: by 2002:a05:622a:5a88:b0:463:648d:56 with SMTP id d75a77b69052e-466a1631b99mr3846571cf.5.1732550122529;
        Mon, 25 Nov 2024 07:55:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvYEgygVYS4qX3kr5MvnR4AXZaywoeI2KXLjKEA9NYyrbjDttFDrc2jND/pxdsEt55oFzgcQ==
X-Received: by 2002:a05:622a:5a88:b0:463:648d:56 with SMTP id d75a77b69052e-466a1631b99mr3846321cf.5.1732550121992;
        Mon, 25 Nov 2024 07:55:21 -0800 (PST)
Received: from [192.168.212.126] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b2f5322sm479277166b.70.2024.11.25.07.55.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 07:55:21 -0800 (PST)
Message-ID: <71ff8a13-843a-434c-b5ac-3ad6171eb7bb@oss.qualcomm.com>
Date: Mon, 25 Nov 2024 16:55:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: Enable USB controllers for
 QCS8300
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com
References: <20241114055152.1562116-1-quic_kriskura@quicinc.com>
 <20241114055152.1562116-3-quic_kriskura@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241114055152.1562116-3-quic_kriskura@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 130LCtV__S0UwvzwIA-8pZDYNCRDrnKM
X-Proofpoint-GUID: 130LCtV__S0UwvzwIA-8pZDYNCRDrnKM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 malwarescore=0
 spamscore=0 adultscore=0 impostorscore=0 phishscore=0 mlxlogscore=603
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411250133

On 14.11.2024 6:51 AM, Krishna Kurapati wrote:

subject:
"arm64: dts: qcom: qcs8300-ride: Enable USB controllers"

> Enable primary USB controller on QCS8300 Ride platform. The primary USB
> controller is made "peripheral", as this is intended to be connected to
> a host for debugging use cases.
> 
> For using the controller in host mode, changing the dr_mode and adding
> appropriate pinctrl nodes to provide vbus would be sufficient.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---

With that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

