Return-Path: <devicetree+bounces-145329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 996FEA30ED0
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D0F6161D5A
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 14:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A362512C5;
	Tue, 11 Feb 2025 14:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f9RAXwt2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C109E22D4C7
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739285553; cv=none; b=NK3wpVcaHEB1V6pbCo+//TllVhIcr4To2MG60jUHiI46zs1WeXyCPQ1qRkWXcMUGoW97PH5Pl/qQP9MDOcKywl1JIS7bfsR1MYDob1qjR3Oh+F686c7rHfKhbC/NRmWyyL/zwxCp7ajDernzcVfEsETI4wtisvAji7ISpY+PaGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739285553; c=relaxed/simple;
	bh=4f2RPjkKMrQdU8CIu7/TYnPjKMJMN4diVcnjJd4Iq9o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JFVHkHQBFhEqiD6VoIPWAZtE3VRhswDGMFCPDUeQjAyfU5IceQ+0pPj4hrEDQXaEuhV1LetuHGwqzqoPmWxr06L3anvje5XM8s8XchRD3DuZc2QEz3YxL94uD3ObMlvT1yL+c2fG+cW9Z78psR2OyL2XA1WYdzn2YjxXvQcuhTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f9RAXwt2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51BDvMGF010187
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:52:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NC7RrDr3j1bwssRFR4cOJwlJoeFxFDUdcGNi4kyOmRk=; b=f9RAXwt2/20tFmKp
	J6IpOWIkFbQ0GqaNR3K81wgebppeNscJFDEbSm0oIKv5iis74TtPyl3uE28a3wQK
	hqsofHPYwB6Zj0J16E2UQC7lY3FSNTVTBCLIjUmqVoP8EGjZGurrSFNslrlksBB2
	LuqdSn4O1uDkRFAzg6no7NfuJpcz4GtZc0y/34jRTQuZD9P+qErW7FmMErMpx7fs
	QschVHFPBPJ1XSBT7JjTp7njWUbf6Qqoopg+HQFLAsgipxjzKvSyNlaNEuEjlC0a
	o84XDEBl4MMjhK1Y8m7A4gFh4n9A7NnBj9uX+FraM0zHXqYCP/cV9wkJzmXB6Snk
	OXObCQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qcs5cstm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:52:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-471ad2e69d6so265931cf.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 06:52:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739285549; x=1739890349;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NC7RrDr3j1bwssRFR4cOJwlJoeFxFDUdcGNi4kyOmRk=;
        b=sHI2kiDxq65pfP4Xig0bJmalZbrBgHcRxotXSCselMaTi7NtjKXzIRHgELcTG7j4Rb
         wscEG4GesmZVF9ytI3rng4RKDkz1Cboruss2yqQmDctc84E0SRCXHKlPISJUh/TPm51M
         5Axc+oMydIBa0lagnrgkLwzbYi8wB+CarkQchVJgHzhXTMHlJhHF20MNZQQlFVXD9rU3
         uZnvV7VxsdRJIJXruTKEqxTp9ts7ckeEHn0guM2Ta/PHDEbFqHPIVbD63i5aLYsd6YBQ
         NiHQ3FG/ANuERTSm1ES6C54gsBvAex1uvgECOaqFrZ3RYl4iLJ+X1SdvDkvSpwY04UFF
         SZ6w==
X-Forwarded-Encrypted: i=1; AJvYcCWcDDNkFiPgtu7/+Em6V1skAxqpG6/QAHNrqqqJumXJ8J8Py0jQHxTVrFS5kacJEGCYj6J4bEr7gy8I@vger.kernel.org
X-Gm-Message-State: AOJu0YyxQD+tveIhJZQ4LSTMerYRokNd2WP4Nwi1ZGUmbKKUe2giWscN
	MpA5ypCOabXl8IZ/SQqktH56GpyZuCIHfOzM/W2MIJRwuI/efkMqvulSHtEjzCy3TmTS1Md0qKy
	KZq4y5wlAX6eaAIksWxhNCPiprRULNM/LNIDF6UBg2hqe0BO98p3wy7uxE2uO
X-Gm-Gg: ASbGncvB3RkkbhkWWsVKsOLnw+eMXk6BfoT0i3e/Azh+Hi2XP+HalbNx5tYw4x0jnSY
	E8K0mr1EOcLAisFvFInkoaeFHs2bPyKV55oEiaCl12EnwlO0f17rbVdqsJePFwnXMGCnyrB7Xu4
	O8herHHBypdCEUf0LKUGZhs/IVnR7hbkRYfQCSV8gmFmdDmEbb/aTzRsfoSfq9vLcDZSV+Lx/ZA
	yLXxPK9dMMR/gnjM1Bgq/8E4hUqn/SI1U7Rc9FToeMoviHcBWc1fq7t6jQMq6p7zfKvFXl6qUUI
	fo03XhzlV++0UF8cBUPcwdaxjxRuqr19vbwDBMpkv9xFq/KKiHp4EzRhXf8=
X-Received: by 2002:a05:622a:1a97:b0:467:825e:133b with SMTP id d75a77b69052e-471a3e2907fmr14233301cf.13.1739285548696;
        Tue, 11 Feb 2025 06:52:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHav7y9g4ni7KetZuMNmffZvEwd5f5Ju42LekRxMQSmqvzhR0eBVHkt1YH9fcYdH+kxrFsIdA==
X-Received: by 2002:a05:622a:1a97:b0:467:825e:133b with SMTP id d75a77b69052e-471a3e2907fmr14232981cf.13.1739285548280;
        Tue, 11 Feb 2025 06:52:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7dbfb2c41sm168391866b.13.2025.02.11.06.52.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 06:52:27 -0800 (PST)
Message-ID: <6e5bb2f7-a23b-4fab-914b-e67911eaf408@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 15:52:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: qrb2210-rb1: add Bluetooth
 support
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
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
 <20250207-rb1-bt-v4-6-d810fc8c94a9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250207-rb1-bt-v4-6-d810fc8c94a9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GGxyTUXab15LKFzuUG98fVIUCrC2JrmN
X-Proofpoint-GUID: GGxyTUXab15LKFzuUG98fVIUCrC2JrmN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 adultscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502110098

On 7.02.2025 9:41 PM, Dmitry Baryshkov wrote:
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
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

> +&uart3 {
> +	/delete-property/ interrupts;
> +	interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
> +			      <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;
> +	pinctrl-0 = <&uart3_default>;
> +	pinctrl-1 = <&uart3_sleep>;
> +	pinctrl-names = "default", "sleep";
> +
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "qcom,wcn3950-bt";
> +
> +		vddio-supply = <&pm4125_l15>;
> +		vddxo-supply = <&pm4125_l13>;
> +		vddrf-supply = <&pm4125_l10>;
> +		vddch0-supply = <&pm4125_l22>;
> +		enable-gpios = <&tlmm 87 GPIO_ACTIVE_HIGH>;
> +		max-speed = <3200000>;

I suppose we don't need a power sequencer for this smaller,
tightly-integrated-via-snoc chip?

Konrad

