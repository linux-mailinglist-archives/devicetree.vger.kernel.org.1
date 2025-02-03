Return-Path: <devicetree+bounces-142546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FE1A25B34
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E1807A1473
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF1720551E;
	Mon,  3 Feb 2025 13:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BICG5pGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5414C201026
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738590221; cv=none; b=RLSy81rF5XQHsK/6HIRDXWThVR6FBqPHzswf/JW1xbdTnvxgIJXE0MRRo5h4YNnLAIRfmZ0qZaw3FkZ73uVn/n64PH8cxvGY112xp2HACy4qoqz3rAt+GZ5O6RSCqzujjuNOgVyAxWp2QDAr2P6IsiEB1Pymn8vIrYVWoR0iw74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738590221; c=relaxed/simple;
	bh=8i3q6T18h+V0jXJztN3xrYKixRjlzGe0Iti+1JurmOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C9DL5j0eHKYPEaRvxMj+Q/M0nLMEdoQMXsJkfMN79DxqVspliqPRNyh0ZkhIU1LVR9lBbyiYhWVX5cUZw3URmj/9T8ksCopnYdD8O8j+03lL/KhwLAL/fyrvYNI1/isK0+teikqeLY+Neq8D6N6uKXjQHnLX+d8XPPL0lwhU3vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BICG5pGZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 513BH65P012282
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 13:43:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V2l6eXMWFs+Hsqn7k3FNi/+Jn6QrNV3T7693vimG88s=; b=BICG5pGZiAaiDdL+
	DO8Ph0gwRoPZuwdDXmsym0fMPFErRQdcbspC7lXhed9B3GzARMOKnKgOZ/eBGBTr
	HZy2MRfMZ4BQeQRV6Q5RHBpCJJMgIO9ip1uSiHENesOCD582jWyLYsXFVqY5a23G
	BaBiX+CdanlL0AY2yXlxbvlvwiKu3VOOKkg/EvNiUwU9hS1gOOJlvsBRTREtCjLN
	qoSgVWjHpoCLyMNvy2bHBCl0e90J773MfAXiGKwsNuASzPsRTeFs7GXdN5OsLBfd
	mbSuzA3PJY9k/qk3/k67L9lULz0laVzMvfMzJGq06WAc9iuU+Nmgnpr+uNmKyip+
	S46cBg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jvsu8f93-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 13:43:39 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e20cb2ce4bso15366406d6.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:43:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738590218; x=1739195018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V2l6eXMWFs+Hsqn7k3FNi/+Jn6QrNV3T7693vimG88s=;
        b=O74EtX8yCDGGjpuAH0jrHryYm3TdJJT+dXwS7IvYmaX03mLi5RlCctxkKY6MiCgDnO
         u+AecbDtf7vRktsKgiLIqHBmG8ibHikoehBZddnvNXumZLCefBRD/KoYvkcMWsBzLjyd
         gQSYg/Q1wsdjRyMATXwfIPC0lu8rlbq4J3bHuEejqTYwwnmx4gujQSsG1ZbN4PjCu9su
         fBrfYf88bEqORNdHROzH+rNi9zHessjhY7GW91X/FKJuZjIvwOjvQ7qIVys1OOvUF0IB
         +zqwmF2bOnLDpPO/koZhntyJ2Ac3HhsHMVNZE1lBi3EqMZsdUX688afwxcAAd+Xc8CQf
         YqNg==
X-Forwarded-Encrypted: i=1; AJvYcCUsfYOIz/5Iebw5+eTuq56cGbRgbYa/kjaDR/7pYnD8yii3pFOpz/Ui9niyqlaLJtFJlPx72Q8CAqem@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9KOsOiWZU0usuvSis0Zcl+6uTJ+O4pR1RcsqQiiT+D0LaYSBC
	TjtOyMwEI7QCUylHWxhE+vWI2542dl389e3mLXNorEiFkywQQ0VP7nyAvI3cZ/kCKwacwTCgxBu
	tRzyRM+16CYzj71uoXZo+IzR51xzG5XusUPcPcsNvBdNNfBPn8auJEOpwG9dV
X-Gm-Gg: ASbGncv4+XZT3lSVbnwIBcplBvwbn3h3O3PfUXen2aZcVenmgIo5momS2q6fp1U7pan
	1MQNDSh54v2xA2bZUd8hcMgL1XBif+wS9riCP2oirXQZ1E9EwFVWMgEd7H+CRB9+8ket7/5ECpA
	XWPIOkD57D93NomIvNofBUNo11bTowQ6QCqLpKLnOHAHAX89F47k2vRpxO8XEUPp0mfaCyI/3kn
	5Yft7oF6rWcCgvU/0kvpTJbvig0HnPygHpti7tMbN4+heliy2bXCYbSNAl+MxBU3RxhmcoMIsSX
	DGkOCsgCVUpFDmpunqzkrD1MVMfIlVvuARuH0q1FZ1T2WkgeVTc0pJ5poIM=
X-Received: by 2002:a05:620a:f06:b0:7b6:c6f8:1d28 with SMTP id af79cd13be357-7c00982326cmr938631585a.0.1738590218056;
        Mon, 03 Feb 2025 05:43:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGET6XktZXKiPlCUHTPdv/fi548A0ODFJnb0FsGPdB69ZYd6e7Ne1QAh6OTPInD+Wckda+Bog==
X-Received: by 2002:a05:620a:f06:b0:7b6:c6f8:1d28 with SMTP id af79cd13be357-7c00982326cmr938630685a.0.1738590217652;
        Mon, 03 Feb 2025 05:43:37 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc724c9da7sm7741943a12.79.2025.02.03.05.43.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:43:37 -0800 (PST)
Message-ID: <e66dd1b2-3257-448d-9c41-9be643652962@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:43:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: qcs8300: add display dt nodes
 for MDSS, DPU, DisplayPort and eDP PHY
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250114-dts_qcs8300-v3-0-d114cc5e4af9@quicinc.com>
 <20250114-dts_qcs8300-v3-1-d114cc5e4af9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250114-dts_qcs8300-v3-1-d114cc5e4af9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 3x_GfLdr5yP1Ab7klNLw_cD0ppF1Xk9y
X-Proofpoint-GUID: 3x_GfLdr5yP1Ab7klNLw_cD0ppF1Xk9y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 mlxlogscore=846
 clxscore=1015 impostorscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502030101

On 14.01.2025 7:59 AM, Yongxing Mou wrote:
> Add devicetree changes to enable MDSS display-subsystem,
> display-controller(DPU), DisplayPort controller and eDP PHY for
> Qualcomm QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

