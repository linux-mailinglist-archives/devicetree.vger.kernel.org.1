Return-Path: <devicetree+bounces-142243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A579CA249D6
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:30:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB12E3A562E
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 15:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53ADE1C330D;
	Sat,  1 Feb 2025 15:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VNh6dXk/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8FC147C96
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 15:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738423813; cv=none; b=Tc4CwbkFtE2awNarFGPb+/6NTbjgokm4nox0DkuwVTnWXEmfot+8rXA1wLnX0b/KxqUfvY1fmx/UozVUMyjUwe9YdrECE0EHmNWbk/1OIvs3+2oo9Rut7lZYuaVnemJp2xuRoXVevVrP1FFOf7Vv2mhagXyndZnxuQOVqJ+t6m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738423813; c=relaxed/simple;
	bh=pneZuhBs75U2eZ3BgWmrLrinRinLHenz/os8RktLXi0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GZSFV2hzR5ChBcwmkWKrMHrKeoQ1YzFTz9K3IgWhwQfiHmd85z0KUb1ZBJ1cONce+X9nFnnalUW0DS/hoSbK+blHdXjBJ2HLEovADx0bw90GaEU3cc12ANejChmKC3lze21uUcfu/AsTIYYXqLcAXyLOH/JPHzQ0S5aMFlASE2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VNh6dXk/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5115AUe0015999
	for <devicetree@vger.kernel.org>; Sat, 1 Feb 2025 15:30:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mKelcYug8dBYhF4bh8maGBSgnMFBhqrXrUszluVow6I=; b=VNh6dXk/e5B3bEBg
	11J57Jm2YcQUxLQgIlxA+esr9h/JCCwl6AobVeAlUF3m6BGo42y++YQijvU94/TY
	qf7voESjZu2y2P/DrNHQFTERk/UMpIbnQ2zZ2k6MsSSXNlkb90inAEnwJOrM8JZ/
	Nh0WueBnc0UsrrhCZwp7BUFKUivCHgmc6UtB/LXdgL17fPLPoW+3Mv8UCOg/mPA5
	hxdCV9sOhmJVwIiFKy2KwDeuakRSCn3KKAP62kft4yfhoD7TkYZCSG/MlF9GKWU9
	KiY+wfXT6qRqGYcmPFEuP9+798Obi4jLi7p6GCidkKbMEEetxtXH5trGxJQBcf+L
	mPzEzQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44hd7j12eq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 15:30:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b71321b993so53947685a.2
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 07:30:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738423799; x=1739028599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mKelcYug8dBYhF4bh8maGBSgnMFBhqrXrUszluVow6I=;
        b=eh3Oy3F6foeHD82YRdNP5Y9rUyc0gKHY7osRyQN7PeP24Vd8Ij+txMljMG4BInXpOY
         G9egDTIsL+Ip7si1iTCCJA7ovAnzkuyiaNgDVcocsaIfqDZzbGfEplwuqf83Yd7HBcYS
         tWd8dIT1EF0lnLLJ9AcLYAGp5b/6O4l3euRQq32NXVVO50maQaHhi3uxk7L+1DXM6Evq
         ToAG1903kewTCBkK6G6p96DTz4Tz/yzi760UIXueE0aA1pJrMXz+NEwNOe/q0/7SZsh4
         iUdgwMUEi5Qq+RcuTjRSoDuRNzSMaskJdJ4HrPP/Jx2XLaZ91pKkDboZnjZWxgbExesE
         PYGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtFKSQTn9fpokc5B+JyEc2SM5lIO73S6+cbThqDmS3oH7Ya8vfkyXz9jE8sthmesAtLb5CRpC5iQqM@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl3y6ECEY4Xyb3WQX+oKPiBNW3sgGLMKq81HEJcMzFWxjk+kzW
	VGQhhNNS7fZ8ykYf+Hz6q7EE9O0G3aEf4Hugm/X9PrYLBLhxfMqLbOk1YACGktQrYIDWB/a7m8t
	C6hdZ9vMDpppP1b34zgicubC68M98rOX53jt6Ljqn3aj5jV28si+ghaDc1xyP
X-Gm-Gg: ASbGncuKyRMNfQmRe9Hs91QdoGq5mlczyZxP5TC/+RB9pzxTP0eea/7SyTrqFERQXXQ
	TUycgX5mD8DyzNASBbbjvcK+PCzTVqOr5gR5/iREJC1i93j3yxbBjF4hFgPfjcY3PvEFRsK5pKT
	qKt2Xtifr1IHrpz0NR8GLKY5NVDa012bMxFeSfzHZ2cakX4xdRIpDc/3R/wRNYl0N9SpZTnjrSw
	+pE2dM8isl09cm2HPVUCwLsV/MSe2VnRXLBG6j+m4KCeVN73zceMdoosqvec6GanQGr0ZUEfrMR
	rsoM7zT5QAhgZ+6xP/rxHjBNMtdMxN/TciH2YpMVyrKXDsd0sxS/2+y/OoM=
X-Received: by 2002:a05:620a:198d:b0:7b6:d273:9b4b with SMTP id af79cd13be357-7bffcd8bd6emr806167885a.10.1738423798789;
        Sat, 01 Feb 2025 07:29:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUc5dgjKTTrm6WQg/PcNfDDzUg4H36GWDA5vbZTnei8HHKXGpzYGIi+fzUPgn4xgwUNRY6Uw==
X-Received: by 2002:a05:620a:198d:b0:7b6:d273:9b4b with SMTP id af79cd13be357-7bffcd8bd6emr806166685a.10.1738423798473;
        Sat, 01 Feb 2025 07:29:58 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc72404537sm4585702a12.35.2025.02.01.07.29.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 07:29:57 -0800 (PST)
Message-ID: <1850f3fb-bff6-4814-8f52-ea97ebef85b4@oss.qualcomm.com>
Date: Sat, 1 Feb 2025 16:29:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: qrb2210-rb1: add Bluetooth support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org>
 <20250201-rb1-bt-v1-4-ae896c4923d8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250201-rb1-bt-v1-4-ae896c4923d8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: QvQmH0W8vDkzM4hJGjV1lNJM5D3p6R42
X-Proofpoint-GUID: QvQmH0W8vDkzM4hJGjV1lNJM5D3p6R42
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-01_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 priorityscore=1501 phishscore=0 spamscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502010135

On 1.02.2025 10:18 AM, Dmitry Baryshkov wrote:
> Add support for the onboard WCN3950 BT/WiFi chip. Corresponding firmware
> has been merged to linux-firmware and should be available in the next
> release.
> 
> Bluetooth: hci0: setting up wcn399x
> Bluetooth: hci0: QCA Product ID   :0x0000000f
> Bluetooth: hci0: QCA SOC Version  :0x40070120
> Bluetooth: hci0: QCA ROM Version  :0x00000102
> Bluetooth: hci0: QCA Patch Version:0x00000001
> Bluetooth: hci0: QCA controller version 0x01200102
> Bluetooth: hci0: QCA Downloading qca/cmbtfw12.tlv
> Bluetooth: hci0: QCA Downloading qca/cmnv12.bin
> Bluetooth: hci0: QCA setup on UART is completed
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

> +&uart3 {
> +	interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
> +			      <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;

You need to either /delete-property/ interrupts, or define
interrupts-extended in the base dt

Though thinking about it years after, I'm not super impresesed that
we have to hardcode what always is the UART_RX gpio manually, every time

> +	pinctrl-0 = <&uart3_default>;
> +	pinctrl-1 = <&uart3_sleep>;
> +	pinctrl-names = "default", "sleep";
> +	status = "okay";

Please add a newline before status

Konrad

