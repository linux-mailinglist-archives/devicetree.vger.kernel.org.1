Return-Path: <devicetree+bounces-142553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B52AA25B75
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:54:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEFD2161B5E
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98C92066CB;
	Mon,  3 Feb 2025 13:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FrQQsG/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9462063F3
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738590735; cv=none; b=aF1EctdZWIRc3wzprxXYntya+eFnmI8nJjNMli4CR8mQqtk7MpPiyN404fWU9InpCWvg5N8v8aevr6zFk9Mv/iDjysOKEAInirbvtfpQf5fQJQfVgrpdQG6y7DnRcMHtFt4vy35TExHYOOmXvZh3ScICGcG3K1nQPnK+M5U9eUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738590735; c=relaxed/simple;
	bh=0DrWhNzMf72SyAS5mlgolmfKR43YKw+/djS366mUj3k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LttWOig07/Z5Mg/iiXe6WTzWkh+MxbAE24JbdErKUEOWMoJ/NCAwo8oBlLXlQijghOTop60uGz6sneKfEHLieNOY87aM1NvdXzaAcpmRNUV7oUUOk9sucJdjklSDx4+46TDc5gS5g/121vxNb2bBUVZ0SRW9E53xVTwPlijfIJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FrQQsG/i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 513BESB0002245
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 13:52:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pkSYbDqaSwny2usVYAuISCwLWlA3g2QgJUmnqeBMSg0=; b=FrQQsG/izShyy9H9
	1UTtnmuTDFZtS8bqaCaxbx3HQPCRNeZ5KMcOAMKF+tpJWNfTyFLTuX/lDRPiqxjo
	iWjdCjXeSi12T9ZrDkHatJznA3miLC8aKRFYF5SRCe6HzRuPAu4wq6dJx+m9kT1F
	OD3ISQ8GWUFwenWUSjZTLI4mTtdbx5yXefbt0dq2qsl5PyeaYMmt1qcvC1xa1GsE
	01c29dcq0uHpPbtu1eC+cTUmuK/K2EyLkLb/uIjC3M6NUKlbFAnaw2whVDxBasOB
	m3aCPRq0pbxrKKeR6ah3xjhXe29PCzj8WIBTb6/Bdw+y6qOLsTBJ/HrSe34TfAo8
	Twgb5A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jvrkgh11-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 13:52:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8e7016630so8518816d6.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:52:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738590732; x=1739195532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pkSYbDqaSwny2usVYAuISCwLWlA3g2QgJUmnqeBMSg0=;
        b=OnYQaJkltQ5xCgYEIu0k+xgOaNu5bRMa07D4GATnEsSklD4h4B+VsjtEsISL7gZu06
         hinzKcNYRfxxY2fbgQCRePU7XYuUkE48lRrnLP5E4jSsHZNceDp3kYz/6TWlZb+GBzYl
         93X8vhC8LAdy11zaKwvsgU/SFgxflsfRRmK55Rv09bwMiT/75GuigW1QLuusfpbZb67B
         5SAbXMgkhch+GIGTp/rpKmZAETCEqlJGc3Bq5GR1pb7u1vDH+DPkRVDPruwdk7/Re7CS
         cILd9s5OUT05ZAbHjC8OudLs/bB1wp11UdqPUQTjGmTsk+inb+3jJsqjbkwUSh7HFsVt
         BSFA==
X-Forwarded-Encrypted: i=1; AJvYcCVXEHcxFF6rVSbKWVsRSrANQ9fnXha0bUFc6dAaNlk1NxsAJmba/kkSgu9uCcPUJeg8TIrl0cb8x5dw@vger.kernel.org
X-Gm-Message-State: AOJu0YxjH3+hGSZSP1yCxn5GbgLaFM7E1YoDrwR1pG2yBs4wzCUwgYBJ
	rNObpsWjm3K0Pqw0ZFlfIIL2K9fZQvPtB+N+FL8gGX31U/4m7IFBjYnEMKM3XThGwFWVlHjPWMo
	5Ecym0uHS5xXBvODHvDFjGcj+Ck1fv/+E2lAHmgr8oZWJKcTjmAUXl0Qaq4lL
X-Gm-Gg: ASbGnct4WTU/ybXLm2MZDdYCU6T2lQqeZnjnGQzr5U4xVx0kQHd4aI80Q/qEEX4CR+P
	wM3oObO3pUMkNrnhorpyDtUWb0vJEkekAfoX++SEK6bL9qXbR3Q65OiVnzKdgzKL9kPnFFe+BJW
	uRLhiBBpLxfLWaCckZnhmiwfM4r7WCrOFLNjGUpBh2qxMOkoTrDalzvdMulGw6HYWWTlurQAZEl
	drOyiTIw+qN7bhtApoWB/ICMfjW6IBVN22FRLUPVYI1C+HrRaO5CkM2W0Izxh46HWDVMMeFdbN5
	Pm0dMi5VseQI7isNDxjcC/aw/pwAXCx1vJvLOt/N24CSXut8ZFpdtmEMEvQ=
X-Received: by 2002:a05:620a:254b:b0:7b6:e9c0:9c3b with SMTP id af79cd13be357-7bffcd0a31bmr1196151185a.8.1738590730963;
        Mon, 03 Feb 2025 05:52:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHt9A1Ywm1nPEK63UqBS+e6UYwlx6nzIpdhoFy2TYlNeJUUhk8BGO1TQBd333vNW/v3P8zaqw==
X-Received: by 2002:a05:620a:254b:b0:7b6:e9c0:9c3b with SMTP id af79cd13be357-7bffcd0a31bmr1196142185a.8.1738590729156;
        Mon, 03 Feb 2025 05:52:09 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc724aa0a8sm7559984a12.55.2025.02.03.05.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:52:08 -0800 (PST)
Message-ID: <21b4813e-b5c1-40d7-b536-3fe65a53affe@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:52:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: qcs615-ride: Enable ethernet
 node
To: Yijie Yang <quic_yijiyang@quicinc.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20250121-dts_qcs615-v3-0-fa4496950d8a@quicinc.com>
 <20250121-dts_qcs615-v3-4-fa4496950d8a@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250121-dts_qcs615-v3-4-fa4496950d8a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CGFEHVfT2qbUs6ytLFdzcdYLnEfLsBro
X-Proofpoint-GUID: CGFEHVfT2qbUs6ytLFdzcdYLnEfLsBro
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015 mlxscore=0
 adultscore=0 impostorscore=0 suspectscore=0 mlxlogscore=709
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502030102

On 21.01.2025 8:54 AM, Yijie Yang wrote:
> Enable the ethernet node, add the phy node and pinctrl for ethernet. This
> change is necessary to support ethernet functionality on this board.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

