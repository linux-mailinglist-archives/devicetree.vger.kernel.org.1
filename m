Return-Path: <devicetree+bounces-235982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE99C3EE54
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB1D93B073A
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD777314A67;
	Fri,  7 Nov 2025 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C58NAE8b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GoeUXU8b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1EF313E12
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762502896; cv=none; b=lu7QG1Ale3Y/nPSsq6PY4RkwlZVl+rHmjTpTRQ3Pa4RxKPPXsR1zLjCuCImF3gtb+eML54wiNqb+mCbC3fzerdFFRQT00p/RQN+5hE4wQaQ1Kl8hKwfGPmiGHTn2Z6lrCJGfOpIpNKUQHSZl1asPynqQlkAfsSzXx/kfD/pq4tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762502896; c=relaxed/simple;
	bh=ZxySiNKOJ7Uo6dLCp72RFEbCgvn+qak+fhlT0zBaY/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rd58pOgpTgfTwiUkELljsKO0YEFxv3Pgo9ZXq4ENe3+P8rDmNxMzYzzxOCIP2zgtXJRjYVEWJKICaTj9eUoDgSwf5o+sN3Tg6WQ7974InOSdDNHufFpNuTyHZZLZHWgMa2t1SQCfGCMESeVL4pRGd+YRIx3PWporZbo9MBtafSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C58NAE8b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GoeUXU8b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A73MjfM1864656
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 08:08:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yVnCGM8cdwol4pZjBWecGHgQ48zUJyNe3I+X4UXo7pA=; b=C58NAE8b9p525Gky
	G2vFjZSFtFQr3c+PAxlCUvzMVaYoP/PefDeocRMcpiHbs5HD54E7lHnSOvwiVifa
	K75kEGN+gTBqZTKBJJ41RldeBRpy0E2Jc4BIZz3jslomGfj9kqy5DD+mY4U4CW3W
	Kyt+rPtSc2GTDYJ2Zg5z+yYVysVU0PG5iePyjsHFssLedj6auI4TurEv6dFT7cQM
	CqeRe07SU2fG6LXxlMo+sfZBsqnwOSKr6ysAr67GSze/qo86hW/rqOzRPdDpls/+
	+zqD3GPPt/0gVrWpDXixUbBwPLklm6UP9vJVzEVO8Uc7eCoRZs9nw96xZJ5JmU/e
	jZy4Pw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a98ta0pth-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:08:13 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3418c17d21dso601352a91.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762502893; x=1763107693; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yVnCGM8cdwol4pZjBWecGHgQ48zUJyNe3I+X4UXo7pA=;
        b=GoeUXU8bgRdGQqU1ENxSI+7jyvWoKR79vRApM5MsedxNyHL/tAQaOvEE2Bb4VHI9Tf
         ht74fuSWN28Q/nKQfu0mSNT/G9YOWMr/QHtksekWmwPHTttQY7ANgIn5xCeJkmp8cHqu
         PY7vrNDXPcwYIjLs5G1uGHRwBw0a2ymqDZ9c04RwszO7dpFiDxk32uPJTEnQkB7a0vui
         V1B/pdFnWql4WhVnOMBPSo0Y3sYO8ko4MU9Dv8XMYvFk768JHqUxouhX3K0mhm6ccDwa
         +R7MHVVFz/xllTCRTteN0F/THa5a2b0CFG8jtPmvqBzTL558JYPN8uPxuB+5cf1EDtra
         GHgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762502893; x=1763107693;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yVnCGM8cdwol4pZjBWecGHgQ48zUJyNe3I+X4UXo7pA=;
        b=IFTWTk35x4Z8nxoKIUPv+tXvcR008XSUuZyF68E+xjVDU2nqSPiT5KyEAAgmqmB89P
         6dJxPRQ6pdnS65FUYKfiy6YFeYkKTQ2hEwlz8/fKUNUyLrwMIJFGQmfUzo/BIboS0AYr
         Mb3/Wovo+8z/i7ah8gJhNiM6mcKBRdYQbXdyxCYJFp6O7O/1PMh4sMsXxKDtMoOe4b4i
         3N/NDXba2p0TrGbH9dNFXEWXT2wkDiiSJ/VElfooPpBpeUqYValNuG6NMfPcdbba2uKD
         laXARnOrcSe6bN3FuPKE56i6lIhldfd5AUnNawWQHdFF7OxRGuXgp+pUn+NgM+r2tnLO
         KU1Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+tlL8WB45IB0tzNGMsK4KQcG4KGiy3N49Tn+gUwN6h/r/cHG9d0PCY/u1zYbRCdrP69+lVa4Cg2IW@vger.kernel.org
X-Gm-Message-State: AOJu0YxTdsmOa/G4q4drDT8zFAFq9MuRJQIuvOKOC8CRXZxUv1Y0NHhw
	Bu1kPL2y3fGHyOOSJvLUrv6L6MDVdfeE5DMlwf/QiITmulcn44TIWaVrybK0aoP832HJG+vWF/g
	kiWZkHklQVc9E/v9lEl+OC36RHX3VdFHzr3XMvZGVyb8GkF7iqOTPaXdFyRzUixod
X-Gm-Gg: ASbGncse8g9P0d4uVsFHaScY85BYFfkE850DZZVZ1FER4G3n3bFhbAjKYUUUG3FHyCF
	uA+Nr2aKFXGddlZieSdjgfKRIBzDensHUMHCXIRRrhxfa/aEHA92Z23616ZNnk8P6EAAFA5UISu
	efrJwXXvdO9nE0ykmKmqCChBUPrPQye+iKz+SHLXcguapsGbIdaCOKSXVaHM5kUd4LnKOf/tFM5
	PsbCJFZdJSDwAPnhML1+m7llgqIKv3FqeX5ImZowESb/Zl5XNN5UL/clzPgjJLqVqMqg6OhN7qu
	1qb75BKKD8e12tbRgc2ARoeht09fkoI7J2U8XqaD+tMBm/DwxMsGeekflJ1N9MImev+XLZhGQk6
	r2S0oGBeVJt40vrRm
X-Received: by 2002:a17:90b:2f50:b0:341:88c9:aefb with SMTP id 98e67ed59e1d1-3434c4ea126mr2240872a91.5.1762502893238;
        Fri, 07 Nov 2025 00:08:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1FwVg6yQU1EcNZvCXM3C9fT1xMu8vEORqyrlogZ+caF7N9+pZ1qv8BXFFp26cya3NewfKAw==
X-Received: by 2002:a17:90b:2f50:b0:341:88c9:aefb with SMTP id 98e67ed59e1d1-3434c4ea126mr2240800a91.5.1762502892681;
        Fri, 07 Nov 2025 00:08:12 -0800 (PST)
Received: from [10.64.68.86] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c3357bbsm1837440a91.12.2025.11.07.00.08.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 00:08:12 -0800 (PST)
Message-ID: <ee2ddf1f-0403-414e-a77b-9c20431c50fb@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 16:08:01 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v16 14/14] arm64: dts: qcom: qcs615-ride: Add PSCI
 SYSTEM_RESET2 types
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Song Xue <quic_songxue@quicinc.com>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-14-b98aedaa23ee@oss.qualcomm.com>
From: Xin Liu <xin.liu@oss.qualcomm.com>
In-Reply-To: <20251015-arm-psci-system_reset2-vendor-reboots-v16-14-b98aedaa23ee@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA2NCBTYWx0ZWRfXyFC7wlOkZHE1
 PbkmSsT52Q/uG0FK5tWz/rLc62WsX4E0Y0emiWIPVYaFeSFgWeNEvACagEZxuvjTXqgMLaFKQbV
 pun+B8bDpVsoIG5xRG6jK0u5CV6CV+sgN1OfsV0LwnzPvALTN0kgAtxOI/pkguutNP8Qk7E7luZ
 MG1ilSfs4ZvCuZPLNrVE0V93IO1KoqHsqxk0rFArwa7Apr5pBVChaza59HsnwscWICV9VxFtung
 b89lnO7PRhm3GnkpUHB5Fy9nMWBxWVb/6Z892I43bxxvhcALo/8Aa6/y6mJMb3XknzHsge2HDua
 KoOK1yB2EFpDbUKEQID1eixB7XszlzC8g2Q7AUEQ3tL5Ax8Rf3kIJJlA4spTCvopsJXh96tXcAb
 EW5r956rAPucXtqgWGa0Cs20TEVPzQ==
X-Proofpoint-ORIG-GUID: A35pGhsd7zVmizdOQQH8aPKWp6qCjDbu
X-Proofpoint-GUID: A35pGhsd7zVmizdOQQH8aPKWp6qCjDbu
X-Authority-Analysis: v=2.4 cv=G9IR0tk5 c=1 sm=1 tr=0 ts=690da8ee cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=n3IlsZjKbDuTWdq3ZzcA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 clxscore=1015 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070064



On 10/15/2025 12:38 PM, Shivendra Pratap wrote:
> From: Song Xue <quic_songxue@quicinc.com>
> 
> Add support for SYSTEM_RESET2 vendor-specific resets in
> qcs615-ride as reboot-modes.  Describe the resets:
> "bootloader" will cause device to reboot and stop in the
> bootloader's fastboot mode.  "edl" will cause device to reboot
> into "emergency download mode", which permits loading images via
> the Firehose protocol.
> 
> Signed-off-by: Song Xue <quic_songxue@quicinc.com>
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

Tested-by: Xin Liu <xin.liu@oss.qualcomm.com> # On qcs615-ride

> ---
>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 7 +++++++
>   arch/arm64/boot/dts/qcom/sm6150.dtsi     | 2 +-
<...>


