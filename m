Return-Path: <devicetree+bounces-140567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDF6A1A434
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 13:28:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A499162EF6
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC7C20F06D;
	Thu, 23 Jan 2025 12:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ck4lV+od"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB80020E715
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737635318; cv=none; b=BXIIlzuFmrQC0ecIEYGRWJP3edqg2XUdaZpLwwmJzpD1kv2F1PbefKUc/iFDXa1JhyKymfApLWMFLS+QEMF5k0b8+46Kp7JG6K/3Gov6GihY6nuAco35+Lmlx1+GRTHfE3gViOKMqNv4buk7K36wEzOc0obnOBgsHklkLbKxu/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737635318; c=relaxed/simple;
	bh=0YRDsrK9XbKO/9D2PuS/voHlVBAozp2xoEAevNpQd+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sP49pU8za7f+ZwD7gioJhqmu2Oc24cwLTqW5L9gwHHHExTzPSpk2cDRBaLBljZ4SOvIqQrpkNZ5T5vy6v/4J+qtYINfGP53eNlD9Vg+SX+nbYvJKP3uI8vf38TBCM6plMqOCcrT1CnkFMKI/Ee7sp1gqcdPLpJ4jhIVx3FDvnVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ck4lV+od; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50N6Vj8W008802
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:28:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GLTw8tIxmRz1JIxLEhb8seVm5HajBrsQaRQ3GFxfA9o=; b=ck4lV+odlY2Bjwq9
	T/hUIKmtLM/kEhI3gJdeHIujHaifMiSX8xNt4iD6ewXerZnwdNFGSg9sV+mIMESm
	xHbwquFSWzMuVqlVln5jL7ob3DGvYeF1HU+FWf4i7lrRd2WYcSQ4iuP6TzqcTHAg
	Fno6U/D0PnyIB1DVzS1JJCLmoKFAqvhQZhFZ7uqJdzVPnCvRpvQ7M5lFS6VJtCX5
	Xwy2A0QA/A1eN0wlLnaY8k98O3AUuGh0BhPP5JxNaeN5eXrY6tLeNvUw0mCuejX2
	/BD13AlB42KhgTc1GO1waptHeKVdW/woiaqfGbDJYe7ddjLxC2wYLiUp6aZaebic
	mMe9xg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44bgk1gtfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 12:28:36 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6dd0d0e0604so1147956d6.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 04:28:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737635315; x=1738240115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GLTw8tIxmRz1JIxLEhb8seVm5HajBrsQaRQ3GFxfA9o=;
        b=ksvGhSxC+dz8fMfe80hWKX6ptjxQHzf6fFfJwEVWPuxWMKC+GpxsNNSqP1Mw5XyCgp
         BY97TGhLHV5MGKkjDH7gP3FY9+O5Qqcz7EkmbQvrskwmPnIUAj6HhG/XAYpFgTyjKS2j
         ggc9nn/DPO3IdL+Jn2gMvt/YUF0/s/uGO+4PkUV8zNfmWzQouS3HpYdefEkCm1SsoXti
         vlnzqbK+WmXzgud3Y1tIYC4nHcq5wgNjYTlx8TnPObbuwrqpCT4ABVKaJxXJ0MgPCff1
         WR8u4dAGw9uQvnCslAqBB6fLeluPkWqlNMHIfLojP2KsZ++YpFa54kSLSfINdRTh5ssA
         R7zQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtd2Ihskb91BnimBs3QqDDzzka+YHyi8tzYBPeIrTzDbfzFF0/p0w2M4TgPLktZp8U3I2fGPUdgRJ2@vger.kernel.org
X-Gm-Message-State: AOJu0YxwyWdl9RHia4Km+YJcIw/XW+Kt9btTS7AloV2kULQI/bVDaUCK
	vrw/RefesxjtTpLtHuuPiPXlKjRGtwGn5RkmIngCdaJ6YXdwTxji6h6vw+dNuCtl1cqwzQ+QaFM
	lC3W39yckhpiYC0gbYFah/KbSLOMmutpRp0rw+Eyly4E7SgtkMr1785FokH2X
X-Gm-Gg: ASbGncu7VRQifXdtPjtodWANKMpOy0T2ajxq379zcR+L/YnG4DLk3ZSRWVA2XWyVhId
	AK/+z/Nr7kq2ifxjQvMPo4MPI/AkpYXwuUfsgsxMmg0KM3U0XMlvlWDjQS/9a8Da+bVVy64S6DP
	EoiXP8HOBVBBFoN522Ha9Boyr18BTHmovESSNIV0MXPAcJBUvFXMsIKEH1Ts++yqePoBurBMCVt
	hzJlv2AfzBlKljOOwobCMdC3r4Bm530n2tLMh5fLGbf3MEUYqsHi3XIVlZTZMJ/1AjkAF+sP/eJ
	vwaE6exdDwqpmHhAk6ESLegWUDaJ0lBKmQXOoAJWJXOnVEpN
X-Received: by 2002:a05:6214:2301:b0:6d8:8d30:d4b0 with SMTP id 6a1803df08f44-6e1b19e5766mr147835886d6.0.1737635314782;
        Thu, 23 Jan 2025 04:28:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3/TKpEykJOGjhXo6G9k8bgTmMWSzmnljE2Ub2LT7T+7N61XFs9fBW21d5VgxvSqlhfDDliw==
X-Received: by 2002:a05:6214:2301:b0:6d8:8d30:d4b0 with SMTP id 6a1803df08f44-6e1b19e5766mr147835606d6.0.1737635314275;
        Thu, 23 Jan 2025 04:28:34 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab63b66ce19sm418787866b.174.2025.01.23.04.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 04:28:33 -0800 (PST)
Message-ID: <cc2e9b61-ec05-4b42-bcfd-e98a55082391@oss.qualcomm.com>
Date: Thu, 23 Jan 2025 13:28:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] arm64: dts: qcom: x1e80100: enable rtc
To: Johan Hovold <johan+linaro@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org,
        linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250120144152.11949-1-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250120144152.11949-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: q_OBYoLsfy-8ssFgZ5TparXMWmLngYJ4
X-Proofpoint-ORIG-GUID: q_OBYoLsfy-8ssFgZ5TparXMWmLngYJ4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_05,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=809
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 adultscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501230095

On 20.01.2025 3:41 PM, Johan Hovold wrote:
> This series adds support for utilising the UEFI firmware RTC offset to
> the Qualcomm PMIC RTC driver and uses that to enable the RTC on all X
> Elite machines.
> 
> Included is also a patch to switch the Lenovo ThinkPad X13s over to
> using the UEFI offset.
> 
> The RTCs in many Qualcomm devices are effectively broken due to the time
> registers being read-only. Instead some other non-volatile memory can be
> used to store an offset which a driver can take into account. On Windows
> on Arm laptops, the UEFI firmware (and Windows) use a UEFI variable for
> storing such an offset.
> 
> When RTC support for the X13s was added two years ago we did not yet
> have UEFI variable support for these machines in mainline and there were
> also some concerns regarding flash wear. [1] As not all Qualcomm
> platforms have UEFI firmware anyway, we instead opted to use a PMIC
> scratch register for storing the offset. [2]
> 
> On the UEFI machines in question this is however arguable not correct
> as it means that the RTC time can differ between the UEFI firmware (and
> Windows) and Linux.
> 
> Now that the (reverse engineered) UEFI variable implementation has been
> merged and thoroughly tested, let's switch to using that to store the
> RTC offset also on Linux. The flash wear concerns can be mitigated by
> deferring writes due to clock drift until shutdown.
> 
> Note that this also avoids having to wait for months for Qualcomm to
> provide a free PMIC SDAM scratch register for X1E and future platforms,
> and specifically allows us to enable the RTC on X1E laptops today.
> 
> Rob had some concerns about adding a DT property for indicating that a
> machine uses UEFI for storing the offset and suggested that the driver
> should probe for this instead. Unfortunately, this is easier said than
> done given that UEFI variable support itself is probed for and may not
> be available until after the RTC driver probes.
> 
> Hopefully this all goes away (for future platforms) once Qualcomm fix
> their UEFI implementation so that the UEFI time (and variable) services
> can be used directly.
> 
> Johan

Thanks for working on this!

Konrad

