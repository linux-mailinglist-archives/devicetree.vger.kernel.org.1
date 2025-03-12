Return-Path: <devicetree+bounces-156922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 778DAA5DDD3
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 14:22:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F0531883C33
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 13:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5450E241C80;
	Wed, 12 Mar 2025 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zy1eqKe6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990CE22ACD1
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 13:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741785743; cv=none; b=FJwiZD3oXvY66P4MlIdQ0B/eVkXiiATleWQ8iko81TXk54D3WaE/npk2T1QjkFv6spwcKNxKvN1QJjHU88sqh/qfhptY+UT2au4+klSkF5LU/Zbuuv819H+vq4SX2uJtb0PvpUWL/gIOAvuJAetOdRScDjWPA2SFcm88+lLhMlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741785743; c=relaxed/simple;
	bh=9Hewtiu8JjbwogqT63eypvNEbvZAQwy6h+Jz1+bRl5k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NsxYujNjaiDBB9lBEF9dclRjlgAMFAQq3ZeF29kSYWrHRw2BwAC5MMVRwX2xxwu0K/wl29S0EgDcd+vGqWauPAPgxoA9oT6z+z3oPA2lSEHbj1NFGapjyryY4+aDv2ZDrRTFzpIagypR6uZNtEJmHIgVk6xpGdW7diYCwTMvS4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zy1eqKe6; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-224019ad9edso148685735ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 06:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741785741; x=1742390541; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s27ne428wojOwsBAshie2tilJzFTOz/pVe8QIl0k2F0=;
        b=Zy1eqKe6vL3238nzqEhyniWfhzISzfYYXRTJ6Qdz7yAoaDs/Ld86gvOGJD11I7d8s3
         ADAB40PZhvjD6zCyOl4TZGmRRfbOQIt3swFB+lDGeYus1vMJIOnljRmpJHp82Qh2D/G3
         TpNHzb2bpkLw14n72Vpp/gZunFdMNA9qBfVSZgyaGTz0cw3vvTQSWFBSTIVZtlW2Vxv/
         QBVS1dIJoUxLds15QUAxhhR+GG7Y9JzPyf3fUNmsHGjfSWmcGgc/Sgzw32ZRRAHrczhe
         WndA5e90KQTdFHkV6deBqcWC0UJyzPd6cgKoUE4xX+Ap2zieowwNLpcIU9RQq/ZxwRjC
         Evjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741785741; x=1742390541;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s27ne428wojOwsBAshie2tilJzFTOz/pVe8QIl0k2F0=;
        b=byMRVg68A3D+emDO0Qy2vJMtfAmFxgulrFfpjHUEcem4Zemr7+1mjB182hRfShRtdY
         24DCMrp4bZWfsJBGkcvkNR8TXU5epE5xz2JBx37GnoHl4qMUbKvJ4wV8CRxFUMb6dwEG
         xE48pNrypS4FjRx0rAsiRv9n0QtppHPbDY1JWXu7j3s11be/k+vVDMwyS96RaoJR1c5j
         32gv6qfdki1fS6X/GHSLNvl1xw18BkPZXUfAzqSycd0moQknDajO/c1iMMyH5SrpWgED
         oeC8W4T6b7kP5CFobxQG56Jzn3xKgReFOcawi9MM/YO8nC3hfYwDLCtN/Eq8l0udabH4
         3OAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWS2jbWI3R4eVMeEE4km5uQ8NbNGJWeqS5dIZ7eDqneCaduxhklERXe+B2EfVr7E2TYNf+ukBxYI2BT@vger.kernel.org
X-Gm-Message-State: AOJu0YwDjeRFgvnM94HeDRU2zKiYmg48ip5Zp6fG32SUGImMII7pcxeD
	B9lpMxNcBsC1NLKxmEzS2ppfjPLAPm7BL1F248ViRyB405XA7B7m3Mu82J+oMehOXf+wdGg3nHl
	R/3BZsD6jekmQytpHwyXGap5Bc0+zx943LQRtBw==
X-Gm-Gg: ASbGncvzT+fNiS5H2m2vP8Ryz9p3uQmkWNFEkt8ZBIkNWFVl5hPVuH7PrmnlZZ6psPq
	H6bcRqEfxNsuCXRfJD8qQpvoSUQZiBCwsvWA1fkxPdA1CPT/dKBUZ4sTPrqvUZuM9T97vVgX3/0
	yRGi1n+50lzakWrD1mmQiDgnm3UqLeOTK4Zz1DgQ==
X-Google-Smtp-Source: AGHT+IGmt/3UktMaOMFJgApftv3nZ067gpwV3LHvs4wr2QCvCVRTWlevRuRQpnJ3GdbEdKToZ/jiLjTzfEOKYcYZ6Lk=
X-Received: by 2002:a05:6a00:987:b0:736:4830:68a6 with SMTP id
 d2e1a72fcca58-736aa9b3cb0mr30689940b3a.4.1741785740656; Wed, 12 Mar 2025
 06:22:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250310090407.2069489-1-quic_jiegan@quicinc.com>
In-Reply-To: <20250310090407.2069489-1-quic_jiegan@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 12 Mar 2025 13:22:09 +0000
X-Gm-Features: AQ5f1JoVaTUjPnEeh2tsJVsCs5mqAeippvAwDr6IKbNgE69l9whq43Fk1D-kCtg
Message-ID: <CAJ9a7Vj=Ni_o94u1B+oouv0GD5DVmST=N31-hsN=SPSbaoqO_Q@mail.gmail.com>
Subject: Re: [PATCH v1 0/4] coresight: ctcu: Enable byte-cntr function for TMC ETR
To: Jie Gan <quic_jiegan@quicinc.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Tingwei Zhang <quic_tingweiz@quicinc.com>, Jinlong Mao <quic_jinlmao@quicinc.com>, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"

Hi,

On Mon, 10 Mar 2025 at 09:05, Jie Gan <quic_jiegan@quicinc.com> wrote:
>
> From: Jie Gan <jie.gan@oss.qualcomm.com>
>
> The byte-cntr function provided by the CTCU device is used to transfer data
> from the ETR buffer to the userspace. An interrupt is tiggered if the data
> size exceeds the threshold set in the BYTECNTRVAL register. The interrupt
> handler counts the number of triggered interruptions and the read function
> will read the data from the ETR buffer if the IRQ count is greater than 0.
> Each successful read process will decrement the IRQ count by 1.
>
> The byte cntr function will start when the device node is opened for reading,
> and the IRQ count will reset when the byte cntr function has stopped. When
> the file node is opened, the w_offset of the ETR buffer will be read and
> stored in byte_cntr_data, serving as the original r_offset (indicating
> where reading starts) for the byte counter function.
>
> The work queue for the read operation will wake up once when ETR is stopped,
> ensuring that the remaining data in the ETR buffer has been flushed based on
> the w_offset read at the time of stopping.
>
> The following shell commands write threshold to BYTECNTRVAL registers.
>
> Only enable byte-cntr for ETR0:
> echo 0x10000 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val
>
> Enable byte-cntr for both ETR0 and ETR1(support both hex and decimal values):
> echo 0x10000 4096 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val
>
> Setting the BYTECNTRVAL registers to 0 disables the byte-cntr function.
> Disable byte-cntr for ETR0:
> echo 0 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val
>
> Disable byte-cntr for both ETR0 and ETR1:
> echo 0 0 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val
>
> There is a minimum threshold to prevent generating too many interrupts.
> The minimum threshold is 4096 bytes. The write process will fail if user try
> to set the BYTECNTRVAL registers to a value less than 4096 bytes(except
> for 0).
>
> Finally, the user can read data from the ETR buffer through the byte-cntr file
> nodes located under /dev, for example reads data from the ETR0 buffer:
> cat /dev/byte-cntr0
>
> Way to enable and start byte-cntr for ETR0:
> echo 0x10000 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val
> echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
> echo 1 > /sys/bus/coresight/devices/etm0/enable_source
> cat /dev/byte-cntr0
>

There is a significant issue with attempting to drain an ETR buffer
while it is live in the way you appear to be doing.

You have no way of knowing if the TMC hardware write pointer wraps and
overtakes the point where you are currently reading. This could cause
data corruption as TMC writes as you are reading, or contention for
the buffer that affects the TMC write.

Even if those two events do not occur, then the trace capture sequence
is corrupted.

Take a simple example - suppose we split the buffer into 4 blocks of
trace, which are filled by the ETR

buffer = 1, 2, 3, 4

Now you suppose you have read 1 & 2 into your userspace buffer / file.

file = 1, 2

If there is now some system event that prevents your userspace code
from running for a while, then it is possible that the ETR continues,
wraps and the buffer is now

buffer = 5, 6, 7, 4

Your next two reads will be 7, 4

file = 1, 2, 7, 4

This trace is now corrupt and will cause decode errors. There is no
way for the decoder to determine that the interface between blocks 2 &
7 is not correct. If you are fortunate then this issue will cause an
actual explicit decode error, if you are less fortunate then decode
will continue but in fact be inaccurate, with no obvious way to detect
the inaccuracy.

We encountered this problem early in the development of the perf data
collection. Even though perf was stopping the trace to copy the
hardware buffer, it would concatenate unrelated trace blocks into the
perf userspace buffer, which initially caused decoding errors. This is
now mitigated in perf by marking boundaries and recording indexes of
the boundaries, so the tool can reset the decoder at the start of non
contiguous blocks.

If you do not stop the TMC when draining the ETR buffer, you have no
way of determining if this has occurred.

Clearly using large buffers, split into smaller blocks can mitigate
the possibility of a wrap in this way - but never eliminate it,
especially given the extreme rate that trace data can be generated.

Regards

Mike


> Jie Gan (4):
>   coresight: tmc: Introduce new APIs to get the RWP offset of ETR buffer
>   dt-bindings: arm: Add an interrupt property for Coresight CTCU
>   coresight: ctcu: Enable byte-cntr for TMC ETR devices
>   arm64: dts: qcom: sa8775p: Add interrupts to CTCU device
>
>  .../bindings/arm/qcom,coresight-ctcu.yaml     |  17 +
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         |   5 +
>  drivers/hwtracing/coresight/Makefile          |   2 +-
>  .../coresight/coresight-ctcu-byte-cntr.c      | 339 ++++++++++++++++++
>  .../hwtracing/coresight/coresight-ctcu-core.c |  96 ++++-
>  drivers/hwtracing/coresight/coresight-ctcu.h  |  59 ++-
>  .../hwtracing/coresight/coresight-tmc-etr.c   |  45 ++-
>  drivers/hwtracing/coresight/coresight-tmc.h   |   3 +
>  8 files changed, 556 insertions(+), 10 deletions(-)
>  create mode 100644 drivers/hwtracing/coresight/coresight-ctcu-byte-cntr.c
>
> --
> 2.34.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

