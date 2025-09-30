Return-Path: <devicetree+bounces-222839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0D4BAE3E6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F35AA164AD4
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 17:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DCAB23817D;
	Tue, 30 Sep 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SJLUTKd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF70713A3F7
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 17:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759254533; cv=none; b=AxGIEx3cvWGMROdj/LRnk0ZJo9nAwFEBcwlpFfZ5xG1O5G4rtMqDJoueFosJ18DzTBZ0vzKhoBcgkkU+FFx0p/sXhhlVBwojMda8Pzl39nFSpQwP2myqmFLmsqcBBHRgEcFJSV8agCtGvSWmOS7edx+fHUQzj2RvA8WPU4zci/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759254533; c=relaxed/simple;
	bh=4MlEhhaEJFg/VQYMrmuKC13C2/nF6IWoZSw/Ec98vW4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=LSXjAv8aNS4zk5qEcjcNn46q/MhifpJ+V6hfcT3elOpiPZ8pBnJzSPTaLV0Kzr/llxEbyugym9ZIxBYkK1gmSXiaCbGZf8Pt3j8Oxp2tVpQC2ZQqjFYBFogxiEf21Pmi63ugG+/B+FK8VfC748IG1n/jQ4Ru7KWyryJ0LgO9GsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SJLUTKd3; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-421b93ee372so1328252f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759254530; x=1759859330; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mq6R6SU4rLr/GrLGHLGq6gkj6VLshSOm1bf7ZPl8UYI=;
        b=SJLUTKd3YXA1znPNC5ulXtc9RwlcIA/3SqicdMalNHA71uOGxjoEvkSeMDsptq9Aix
         5X2PJhAILHx2R5FDv22HHFYhhqzCHpRFipAsNacuLmGb4CjIVu1OxxhfXrwO8XbZXZ1J
         /atfSSayDl/YCa/Nos13ZsZzGIT2w8zYvnl+nKIXWOuloZwy+PSgopSUa1fnUlTTKMiF
         dIg7HB7HF/Y12K+lbcRPwhNlZ9n2yg08t2pGwY0o0MpE2T20GzQyRl8+pS+6JlKRTywm
         LGC/PJMINTpvB4NXK3DogRagOOfM0Jr32s0trje18tsjEzdNlHjTWAw0KzkRSPjMUb7p
         BpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759254530; x=1759859330;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mq6R6SU4rLr/GrLGHLGq6gkj6VLshSOm1bf7ZPl8UYI=;
        b=aioeKOh5N7MznyVS0yYh2Cl5eyDvEhD5gdHJOtHeKgYfWr/ndQXXKZSrnypfDisR/u
         ggGaA3GNTcDioNm8rzDnMofklUiQlAMVj8293QdIi+jAhCoyl5ltXf21LlgGRt9t3ti8
         te7+LXs9kR6Xojiamhl+xrpVPuJeokNMXos4nIOE6WLMS4KmqhqNqQOArq3v0fs/IH2p
         CawaypUte1b1ZiWrEaR2YqO/0SE49w4ob5YZnxeVGOAEp7EMw8OfBi/0Q4Jd93w63Khm
         FW+YBIYE/NCwFtazIxYgDlX7jrkUkiarVZ/DTmA8XZc9WefvKE1x8aqr3U4SaNwGP+7/
         Jp2g==
X-Forwarded-Encrypted: i=1; AJvYcCXuAcUkWJHlv1EtY0dlqw3EzA8JDXfKlZfAPx2P1tQBSoDbHPp+bJXLr40dc5A8stZbHMlROD8XO8Sp@vger.kernel.org
X-Gm-Message-State: AOJu0YzmHyuiIsmpBwu49euWO5OBpGNvM54ZPhh1IQ1OBoch8p0tzHCM
	KI5dFvblxF9u5Grr6d2ksK0zBTeagxgc0D9u8Bs8Ck8kHYbTxsVPyEpHkFqAPfARPyM=
X-Gm-Gg: ASbGncvlvOOtKV9P2yaBm7TVV16zFwaNiTpSOx/dUHcnsBFpTTjfNkfCxu+55h9gk2y
	0fjt0lHxzXhNtNk4kJupr+pheuaRimZPE+VhxBH5PDmIYB1jAShiUkKWCuX84bT2V+6CI2DECnf
	6VCClJGiu75ChSwSJyKPgANO/d5r1HCX73qyxG5pK1/BQgdudkHxgsVSMTIX+StALFLhwjDynDs
	DeCBq8geAtZxXta2W8lvzYSvk8xJDb338rAFhSJ+JG3BigevWWj0JLJnLSUMB6mtVKeKK/y/bFN
	MqOQJIlfXyA8+8U+c8ay4UwKWtxPoejC4KCUKmjn0B+SMQjwFM45Uj0SCBM5FU/sCZuKHpiyWM3
	X+mBtfz18lnEp5qvQKrCVxNDPnRLJAFLGk1x/uDbV6LiAl7ayQ8hD1o8Pb2Q=
X-Google-Smtp-Source: AGHT+IFWwL3OmBkLMnlz7uL7VcuwGSis12CpJmftU7X9TJAiNKLravUOGrhixS5GMO5ETLsekrs9fQ==
X-Received: by 2002:a05:6000:4282:b0:40e:31a2:7efe with SMTP id ffacd0b85a97d-425577f4cb8mr509794f8f.14.1759254530117;
        Tue, 30 Sep 2025 10:48:50 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:248:54ff:fe20:c34])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb017sm23545897f8f.3.2025.09.30.10.48.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 10:48:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 30 Sep 2025 18:48:48 +0100
Message-Id: <DD6BOLBXKBYP.2NVXRXGJ9W3IG@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <aiqun.yu@oss.qualcomm.com>,
 <tingwei.zhang@oss.qualcomm.com>, <trilok.soni@oss.qualcomm.com>,
 <yijie.yang@oss.qualcomm.com>, "Tengfei Fan"
 <tengfei.fan@oss.qualcomm.com>, "Qiang Yu" <qiang.yu@oss.qualcomm.com>,
 "Manish Pandey" <manish.pandey@oss.qualcomm.com>, "Ronak Raheja"
 <ronak.raheja@oss.qualcomm.com>, "Jishnu Prakash"
 <jishnu.prakash@oss.qualcomm.com>, "Kamal Wadhwa"
 <kamal.wadhwa@oss.qualcomm.com>, "Jyothi Kumar Seerapu"
 <jyothi.seerapu@oss.qualcomm.com>, "Prasad Kumpatla"
 <prasad.kumpatla@oss.qualcomm.com>, "Hangxiang Ma"
 <hangxiang.ma@oss.qualcomm.com>, "Vikash Garodia"
 <vikash.garodia@oss.qualcomm.com>
Subject: Re: [PATCH 00/20] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Jingyi Wang" <jingyi.wang@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.20.0
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>

On Thu Sep 25, 2025 at 1:17 AM BST, Jingyi Wang wrote:
> Introduce the Device Tree for the recently announced Snapdragon SoC from =
Qualcomm:
> https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdrago=
n-8-series-mobile-platforms/snapdragon-8-elite-gen-5
>
> Bindings and base Device Tree for the Kaanapali SoC, MTP (Mobile Test Pla=
tform)
> and QRD (Qualcommm Reference Device) are splited in three:
>
> - 1-3: MTP board boot-to-shell with basic function.
> - 4-16: More feature including PCIE, sdcard, usb, DSPs, PMIC related, tse=
nse, bus, crypto etc. Add QRD board support.
> - 17-20: Multimedia features including audio, video and camss.
>
> Features added and enabled:
> - CPUs with PSCI idle states and cpufreq
> - Interrupt-controller with PDC wakeup support
> - Timers, TCSR Clock Controllers
> - Reserved Shared memory
> - GCC and RPMHCC
> - TLMM
> - Interconnect with CPU BWMONs
> - QuP with uart
> - SMMU
> - RPMHPD and regulator
> - UFS with inline crypto engine (ICE)
> - LLCC
> - Watchdog
> - cDSP, aDSP with SMP2P and fastrpc
> - BUS with I2C and SPI
> - USB2/USB3
> - Modem(see crash after bring up)
> - SoCCP
> - SDHCI
> - random number generator (RNG) and Qcrypto
> - tsens
> - PCIE
> - coresight
> - Bluetooth
> - WLAN
> - Audio

Were everything described as audio enabled and tested? As far as I was awar=
e
some devices required some soundwire rework to support soundwire microphone=
s.
Is it finished? I don't see this linked here, but you state that audio
features "added and enabled".

Do we understand this correctly that, I presume, everthing that is more-or-=
less compatible                                                            =
                                                                           =
                                                                           =
                                                                           =
                                                   =20
with previous platforms were added and enabled (with renames) but not _all_=
 ?

Probably some rewording is required.

Best regards,
Alexey


