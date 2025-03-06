Return-Path: <devicetree+bounces-155044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2BAA554B9
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 19:20:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE4903A649F
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 18:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A1026B2AD;
	Thu,  6 Mar 2025 18:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EBQCg9ZQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EB426A1DF
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 18:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741284931; cv=none; b=Uj0d3tbpxAJ+ay9l8Q3BN47FwrmBI7BVHdNcyIVgK1T1Xn7PfohbusR5cFsfRe140G0L3bL3axkMw0xn8fPjo6OWqFb305u7aXEcd00GopTlnBGU5UhDpXmbaQ7M3aT7fb61CBu1+GhcPF/Ni6qERFDmzSmRLhmCKJ/a37+breU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741284931; c=relaxed/simple;
	bh=ZLyIdKGUCZdCoANF0hGm8eDZzZH5GeP2mKZoEOdneGo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q0G2LykP9ouMjPRiHD2IwVjEIctm/VSShV6hpGuD2nZv0OUi3k+OHLDJZwEiH59mBXfOB3j2p4rapO0UA/ZJ+LWId3fARB7CB06CtAYBTbAYrk94/KYWr79sI129XupEfmTkhEwZLhvd2oMykc1L0asPHdNFKRGuvuLQmChFLK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EBQCg9ZQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 526CxDZk031539
	for <devicetree@vger.kernel.org>; Thu, 6 Mar 2025 18:15:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	as/UKDeA98w6SUzgtBI3vEKp52LceqI5ZBeuFm26AD4=; b=EBQCg9ZQqkZS+9s4
	KyaWCwXyU7U5nJKAH8tAFKApCXAWvm6w+H/uWSC/zD9S8O3SDvxIA0yt4vV82qTI
	Iol83y5tw9zBklf1pB32++BubjIfcwYcNtkBA+r3lTyE5AxVXRkLLXEY07z4pVvx
	QO6K81WhX03/O8/6in4MEdzzF5Yi7lsrWuhh29rFAMIvwSpCYrpDFfLIWTYWARP0
	ef2QILau8y3/OGfevxUPy5F+X44savkKuTZwfrjJjbgpwquMDlaZCGeGC6oFGm7E
	AoJZgid2qPGOmtQBNkFubp5dpLLk998FuSJ8uVjaIcpXxFBnF+338td5PYjnWV56
	qkxW4g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4574ceade5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 18:15:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c3c253eca4so24784385a.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 10:15:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741284927; x=1741889727;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=as/UKDeA98w6SUzgtBI3vEKp52LceqI5ZBeuFm26AD4=;
        b=omv3IlMY8Mnkh2BJ8gyd/K0DWhZHyyx/p0GmOmf6FHKqTX6re/tTM7Jkd1HTbPk7c5
         M04cFffmOk2wLFbuOlkH3UiHjdArLRUko1Y580Iyswh5HrgSYOnxpdcx+AE5XFkx0TAL
         pC8lqsnES+Lbh/rR1rFCcr5NfTBiZ5ux0tYZ9UHX+4CobKR9tzQIUnA9GKEJui6yF/76
         kW0mXkKljCpqE/xBYynOs7hCRfaaAEGuLxI6Vz+60q3KZL9FeX5MNhA8Yojh1TzqsRFG
         8cEjlu+P5lqRDt2eErDIR2yhB/8z5OIKxYyJGwKZK+7KzRWGjftVClCayCzWmuxo7PBc
         D2qQ==
X-Forwarded-Encrypted: i=1; AJvYcCXreLYAGHMUEOoepvgS7LZ5ivdyx73JJhEsW5Xmv8T4W75J1skonxL4FEC8EP3kFPrMYf62xAkhRB1e@vger.kernel.org
X-Gm-Message-State: AOJu0YybS83Km26URfKD24bKVjUu2LTm3zKFr8pc1K3xePsXBDQ2lOEU
	Ez1VlZpH045bdXgL3JEazD2vtBN84JrSzbH/oFvQrZNVZs4Cyzmth+fAH3ozOHvmOeydnFfIUz/
	UNp2IL6QFErCX4JN8p7p8sSWHwSZMiLCk0oP7MMmbmped1DdF/oq/EAaPchSXYRsht3hf
X-Gm-Gg: ASbGncu+iCzKTxBhB4RpT6taHpmTz6p7DDlOl0qUMcelg2ePH8LBlJoKfO/5+z7YAH0
	5R10jlNKDawL3+yLaxN6McbL5dsWlBe2e9q609DreFSUmeJpZtx5myTt48VWVgmSzf3pzdGaRod
	stdB2CZMqNjd5f8OghTuEivW+PAhgRYSz64Gt+4XDMl6RbdtJJP8/2K8WBUA32tI6SnmoTGznlq
	TJChdjwm5EqFswcz+Rns8bZ9Qj74H3I+XXZLn8jb/ucAwn2Rql/COYTV8PQAvVYfajkaGtMoVsf
	AmzotuyiUxTrqvHsy50HNBAWumBJAUqEcb/VmHOBDyfT38/kKy+f7tJGq0HZyi1C3K5MQA==
X-Received: by 2002:a05:620a:2902:b0:7c0:b42b:8a6f with SMTP id af79cd13be357-7c4e6113f27mr5816785a.9.1741284927530;
        Thu, 06 Mar 2025 10:15:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmNx8te+j1uVjzz92PWyj08+2d+6UiQY0m4OjJj2WHcxKZhzKnOXQrkmsY19GxAinxOKjH1Q==
X-Received: by 2002:a05:620a:2902:b0:7c0:b42b:8a6f with SMTP id af79cd13be357-7c4e6113f27mr5814785a.9.1741284927198;
        Thu, 06 Mar 2025 10:15:27 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac251a5492asm4497866b.28.2025.03.06.10.15.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Mar 2025 10:15:26 -0800 (PST)
Message-ID: <bb7a05ec-ee68-4f2f-a58a-b57d12317e18@oss.qualcomm.com>
Date: Thu, 6 Mar 2025 19:15:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add device tree for TUXEDO Elite 14
 Gen1
To: Georg Gottleuber <g.gottleuber@tuxedocomputers.com>,
        Georg Gottleuber <ggo@tuxedocomputers.com>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, wse@tuxedocomputers.com,
        cs@tuxedocomputers.com
References: <57589859-fec1-4875-9127-d1f99e40a827@tuxedocomputers.com>
 <5e72992c-170c-48b9-8df4-2caf31c4ae44@oss.qualcomm.com>
 <58d6c774-2976-43ef-aa04-b339df4b6ff1@tuxedocomputers.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <58d6c774-2976-43ef-aa04-b339df4b6ff1@tuxedocomputers.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CBLFzVBgkw-ktkKaJA-_7_pdew8kDCCh
X-Proofpoint-GUID: CBLFzVBgkw-ktkKaJA-_7_pdew8kDCCh
X-Authority-Analysis: v=2.4 cv=bNLsIO+Z c=1 sm=1 tr=0 ts=67c9e640 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=k_7xeDax66UQ6ye4qYMA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-06_06,2025-03-06_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=938
 suspectscore=0 spamscore=0 mlxscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503060139

On 6.03.2025 4:22 PM, Georg Gottleuber wrote:
> 
> 
> Am 06.03.25 um 13:50 schrieb Konrad Dybcio:
>> On 6.03.2025 1:25 PM, Georg Gottleuber wrote:
>>> Initial support for TUXEDO Elite 14 Gen1 based on Qualcomm Snapdragon X
>>> Elite SoC (X1E78100).
>>>
>>> Working:
>>> * Touchpad
>>> * Keyboard
>>> * eDP (no brightness control yet)
>>
>> in case your panel as a PWM backlight, you will need to set the PWM
>> output pin function explicitly, see x1e80100-microsoft-romulus.dtsi
> 
> Thank you, will check this.
> 
>>> * NVMe
>>> * USB Type-C port
>>> * WiFi (WiFi 7 untested)
>>> * GPU (software rendering)
>>>
>>> Not working:
>>> * GPU (WIP: firmware loading but output is jerky)
>>
>> Please tell us more
> 
> Oh, this is already an older thing: with kernel 6.10 loading
> gen70500_gmu.bin and gen70500_sqe.fw leading to partly slow and
> stuttering video output. Sometimes it rendered black edges / borders to
> KDE menus. Surely I did something wrong.
> 
> I have just tried to reproduce the same setup, but I couldn't get it to
> work just now. If you are interested, I can try it again with a
> new/current kernel. (which is preferred? linux? linux-next?)

linux-next/master is good

[...]

>>> +&gpu {
>>> +       status = "okay";
>>> +
>>> +       zap-shader {
>>> +               firmware-name = "qcom/a740_zap.mbn";
>>
>> Are the laptop's OEM key/security fuses not blown?
> 
> I'm not sure. How can I verify this?

If you took the ZAP file from linux-firmware and it loaded, they are
not blown.. meaning secure boot (not to be confused with UEFI secure
boot) is not there and anyone can replace the entire secure firmware
stack with what they please

Konrad

