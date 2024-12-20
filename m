Return-Path: <devicetree+bounces-133022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C33CC9F9013
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39C02164938
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E751C5CAC;
	Fri, 20 Dec 2024 10:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hAxU+lgF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872AD1C1F26
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734689849; cv=none; b=nK6uwA1rRHrMojdUoRov4Kfg0XI1w7iATm5u6P4PDGqACx5VnnCWXXKOYLaDZUCKZGYnQBDpHrzdXBZL6eEyp8WakyYC1xegmiP933CIoIWEmGhkcKTVXneUnf0v+8/phpOEw6QkgxEyGERIL2PspmA7LFqJ+MK5HDX3cJtGJSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734689849; c=relaxed/simple;
	bh=SFDPgxVu6wtDC2GsMxKEW9jpJd3//ZBI6GCKoD59BXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ihL3zra2nBzz8t/VnjyIkiFqQ2sQgbdPH4pFERXqygoDLY1K8DiSg6MyIIWxF9MRf9iLiyfXiSklu5l12QUowbEzRmkfKW3T+zU3Vta7T+0/XJtao82uUPKi3AhPBPlR7+tUoBBMZfiuss5VNsTv1B2tiBPK0X/juowdu9et5Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hAxU+lgF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK6lbxr001414
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:17:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wrpm/RvJv4pqacQSl95wP5M/EJZnFTnri3TZQLQlVCA=; b=hAxU+lgFGE2X/6wu
	NdYIb+VZLP0ogvuttHDlq34Q1iUgb07Fn+CSka9QhOucMSGFyfoqogBKHhL4iMcn
	qpu+ifJCdiFiRQq41YqstBOF4ThFX+LNjitowUzzSJTndh4u53F1DAVsRZsRhuFO
	nse171owuVycrLxtG5JIagm50Mf3w3jkZxAr3+7WTmAGl+RlZgsePv7IrUU6xnm6
	xoPbMxsDscCTiVwPUp2Z7g6mh+d7Qomrdj9PM0qoG8A/A30Mz70IrMrOsP3uRSVK
	EBzE9VElQU5N2by+dMl/VpMuYrDEH28sknxojrHeDYID0053jzZIZX1bKxaaY2MN
	9vnImg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n3mfrk08-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:17:27 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d887d2f283so4548296d6.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 02:17:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734689846; x=1735294646;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wrpm/RvJv4pqacQSl95wP5M/EJZnFTnri3TZQLQlVCA=;
        b=Yr6igMx/abMNgaOKgP0pdQX2XERncCu8+SqzNlGkpTTaupNXYzXeqRfbOXFTthcPzm
         K1/5iGBeictWp+yHgbxZjc+wR2j4yrEohOmgRZYVtOwdbTz6xhRFx2QC3v8sz2nx06zT
         6wHlGBL0tybK/1PyRUOp8sm7Gn5UZrLQodkiAcGU1d3Y0HjDfyGS/CDA5d3/dzqLJ/ZB
         fwegVkhlnHrP1OphagAoB90n4F1bjqcx3i7Xjnm+1bVUTpAT6TWPwYiQxeCotAfW74P8
         BuazVqke29f4R+Yv03TcWN1ZhdZbUPcvNMbDEA0sQ0IqsB+H9mbrfqUj8vfGDtQQTCzY
         qKAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIlh7m4xoQCAJRB/wKaCtqaQ7vPATDtqGhpY8fsfrty/1kjexePMdq+WY0ClCheyxFo+Ro1XcQ5nBY@vger.kernel.org
X-Gm-Message-State: AOJu0Yza2DklJ4/h+n9Top3kbNikm26kNLd42hFjFV5beQr3ooRc0XW+
	7lDC7cyWSLgmhbJReFgZluanQswXlsTJOOkqi4fIgW+m0esJBYek8yj8tSl/+RUfXAMFzHEY15D
	pGiPvST5afA1etnw0/nx/HEU+JeGYwnoef6tULgrQyA6KyeoSeeY+fK0JR/qB
X-Gm-Gg: ASbGnctbIN0k13ShPs5Qv56nLVwsyoyfQPpjqk6ha3n9z+OCwQhYlw0PnFYe7cUPrXA
	lMpgXn9VFgcdUvCPR/Kg0HmymV5ablZhmipzKii6+rXQdW682YdK35aJBKzKhTAgZ4Liv6VA97C
	S5LphSeyJLyN4586mNrrGxJRE5HuVJ57gg6X76uico9Li6jk415xK/eKrIeaH7et5ejY/KiHTjD
	k6NW1903SM4Nr/SBKeLX9/aj+n5RUq4BZOM4f9qMJDw56JmB7RaQjUjjRDMgBHDRCBrLuM6GCJD
	AgO1HRtMiINhjufZOi0hlhDS1n7AycweYjw=
X-Received: by 2002:a05:620a:4455:b0:7a9:bc9b:b27 with SMTP id af79cd13be357-7b9ba733805mr115537485a.6.1734689846366;
        Fri, 20 Dec 2024 02:17:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHWt/HpECNmTA7E5A2IgoO13Yn8mzdDwcbQ+XpPB87YicCL8ukox//oEwyNPqrgS2GNb+JyvQ==
X-Received: by 2002:a05:620a:4455:b0:7a9:bc9b:b27 with SMTP id af79cd13be357-7b9ba733805mr115534485a.6.1734689845814;
        Fri, 20 Dec 2024 02:17:25 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f5f4sm159878766b.6.2024.12.20.02.17.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 02:17:25 -0800 (PST)
Message-ID: <ab23e0ca-3c2f-44ab-b6d1-cfcf63f29f74@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 11:17:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] arm64: dts: qcom: qcs8300: enable pcie1 for
 qcs8300 platform
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20241220055239.2744024-1-quic_ziyuzhan@quicinc.com>
 <20241220055239.2744024-9-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220055239.2744024-9-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WAIInqfgNDh3pc_IP8cCH942lNRVGjKv
X-Proofpoint-ORIG-GUID: WAIInqfgNDh3pc_IP8cCH942lNRVGjKv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 malwarescore=0 phishscore=0
 adultscore=0 mlxlogscore=670 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200084

On 20.12.2024 6:52 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe1, board related gpios,
> PMIC regulators, etc.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

