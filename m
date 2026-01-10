Return-Path: <devicetree+bounces-253497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A82D0D904
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 17:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8752A300A359
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 16:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7A134888D;
	Sat, 10 Jan 2026 16:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HpjKeBdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CC7346FDB
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 16:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768061640; cv=none; b=G5x6XxoJ87Cr7TBxTAELdL9uRnDoR35vnUKAYxf+j+UMTYMiCBt1tGql3kdOQkZUcFckso4l6JlIrcOP0YBGXdaaPRc3ZncE2j1eYa+4cHDvw6XS5yQHm32Uctshp9pY5wRIjCQcCUa1KWwhx/XLzYmY/msdBlGCFppaeeAdRpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768061640; c=relaxed/simple;
	bh=CZZIXy+M3Hwd2R3IUz/gMxdE6SMi8+NpZ+MFX6odPrI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=musWoFzzZoKC4BxiUBf5MTlvOiSoKgmvfWLlm1/9sRBLFu9Ghmo/K5CPAU60y2Q15T532VG0FGBOpQMDpFgYC4mvFCthacuGaijsQudifUnPbA6AqoNCc4R9y2f9LnzscS4zck5r9X536Hba8j6edmUgoOunoYDTwX3d+YFZ2XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HpjKeBdG; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b802d5e9f06so751831866b.1
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 08:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768061637; x=1768666437; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Za5zkOXc/pUTKApHzs7ZvT3Vilb+ymesEJJeGab5uBU=;
        b=HpjKeBdG1Tzm60BS2k4E+4mTnOjtUQs2/CueCPGiWyXiJmSSabTBO0DvQhD7YGm4S6
         yi5zkvKBoFnjOpyy3683AHEP8+odRx3EpTrXSQ1S4Jrm4uLbfBHxly25l7h7hV7bcFXd
         0NmXlCodoh+eVzWUB8vVbuOc4miE9xWuUa1WeZOILX4BWNKLDt4qfPfa++INvNYFdMfd
         +E9hNxg7awFj+5+4Uh9cBlsFQO8o75df5+KZ0QVyapa3yabm2SGKRZg6M3isjAhIymii
         YDeUWGn30HxJm/1bUjyP5vAuWRUeMn1CCSRitnnPzGZn+lOXq84sw+3IJIjE1y05KJKa
         iFAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768061637; x=1768666437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Za5zkOXc/pUTKApHzs7ZvT3Vilb+ymesEJJeGab5uBU=;
        b=oI39br8oGYC57579ujlA/E8aBEB9Uc0Ri2RL8FlPzq721IUYywVw7h/3tc0pst6pBR
         iSWNUL+lkj0RSWJENNXOYgyOV+PJApwI1wCCaqhk63uYdEEKfSCUPmp9qLMKhP+YMVo6
         3gs42ZjfFxSWit8CxPgK3vJMHYtWf9QnoUK06uDqlZQu/RyTQKj8B+qSuss0AinVM2De
         XMc+rnziIDcV+00KgdyfA2IV7IaHR8l5qPjin8bGiqHBXC42dIcYyg14AptrAGvBjqs9
         QzBTDBNYm8kFW5h8qmAgeW1Tf+T0C1o4ya7z/tkjrjloZoM4buSY9WKkg+OwNyhFCN9O
         UhiQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5t1nP2BTrHjYGGScmf0Xd9X6srX55M4pyUif38JLbOi3B6+x4c1MGz2CeFJsx+po5Im6WaCrUV7OK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0oLj8yQO0RFg+p7X+PSTQgSmko0avpfdPdBkZDhdNGvIbjAaU
	L3nTnjO4zWNeez88cjt0w12aNILjFBOtm/7m2BoZpkZ2YsHQ+SGq0uFhd0BVLhhJv7A=
X-Gm-Gg: AY/fxX7wnRNOdmGH81xwvjK1Lv1z3/qbagRHmr5QUhkzDfiKCAzwdi27JyfGxiZiL/p
	bsI4OO6zptXSBwpgUmXcgJWFsk/56OeznBJ2PPa9wBzqKy085p7KZPYwjDsd6rRcjH9zrpanoas
	SSA7X1mfJ5zuE2pnyReRSXQcA+44Qbw+a16V57tEgkyhXULFX9wHbYNKNn3V1yYQRBCFj9o4HMP
	ci84Zg2FDc9aa3A2ddZ9pr7YNM4f6lXZ4AM3DvqiKc9hRTBmFxaHtqr5z7qYPhQWnH2RcwxMc+x
	M8xe/JaPwvDv1oFfRfyRqMEIR6eEO9G/AqSnPwJwR8H/sCmKw4EgQIs06ZtRV7ABsHSDIKzPnqn
	E6YHQtk/hpihH7ZyibGPV/q5XulxqIUgHHP/zm6xiYsGW1E4PN62l3CosW5oV2JIr0c36IHriOu
	8vPAtnclRH+DuOvNZNQtnA0zwvEWly6SSqDaZfADPTcIwkeF9hXCL/6FdzkO9AfucmGkDNU2PVi
	Ddp
X-Google-Smtp-Source: AGHT+IEUIfkx8+lGVACl9YjDlxYymQluSPmgIIVsmxsUKIPlcHRtxRGZm5IY8ly5yIKe9vinZeykRg==
X-Received: by 2002:a17:907:970c:b0:b80:1348:226e with SMTP id a640c23a62f3a-b844532ae89mr1390302166b.33.1768061637487;
        Sat, 10 Jan 2026 08:13:57 -0800 (PST)
Received: from ?IPV6:2001:9e8:17d0:db00:2109:890f:3eab:3c56? ([2001:9e8:17d0:db00:2109:890f:3eab:3c56])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8701e1d467sm79351266b.70.2026.01.10.08.13.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jan 2026 08:13:56 -0800 (PST)
Message-ID: <2a39719e-e73b-4558-95fa-d54f94c43220@linaro.org>
Date: Sat, 10 Jan 2026 17:13:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/8] Add RemoteProc cooling support
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>, andersson@kernel.org,
 mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
 amitk@kernel.org, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
Content-Language: en-US, en-GB
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/23/25 13:32, Gaurav Kohli wrote:
> This series introduces a generic remote proc cooling framework to control
> thermal sensors located on remote subsystem like modem, dsp etc.
> Communications with these subsystems occurs through various channels, for example,
> QMI interface for Qualcomm.
>   
> The Framework provides an abstraction layer between thermal subsytem and vendor
> specific remote subsystem. Vendor drivers are expected to implement callback
> and registration mechanisms with cooling framework to control cooling
> devices.
> 
> This patchset also revives earlier discussions of QMI based TMD cooling
> devices discussion posted on below series by Casey:
> https://lore.kernel.org/linux-devicetree/20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org/
> 
> That series introduced Qualcomm QMI-based TMD cooling devices which used
> to mitigate thermal conditions across multiple remote subsystems. These
> devices operate based on junction temperature sensors (TSENS) associated
> with thermal zones for each subsystem and registering with remoteproc
> cooling framework for cooling registration.
> 
> This patch series has a compilation/runtime dependency on another series [1].
> 
> [1] https://lore.kernel.org/linux-devicetree/20250822042316.1762153-1-quic_gkohli@quicinc.com/
> 
> Casey Connolly (2):
>    remoteproc: qcom: probe all child devices
>    thermal: qcom: add qmi-cooling driver

I'm glad this series is getting revived. It would be good if you could 
explain what changes you made to my patches somewhere.

I also remember one of my patches adding the DT parts for SDM845, would 
you be willing to pick that up for the next revision? I'd be happy to 
provide my Tested-by.

Kind regards,

> 
> Gaurav Kohli (6):
>    thermal: Add Remote Proc cooling driver
>    dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
>    arm64: dts: qcom: Enable cdsp qmi tmd devices for lemans
>    arm64: dts: qcom: Enable cdsp qmi tmd devices for talos
>    arm64: dts: qcom: Enable cdsp qmi tmd devices for kodiak
>    arm64: dts: qcom: Enable cdsp qmi tmd devices for monaco
> 
>   .../bindings/remoteproc/qcom,pas-common.yaml  |   6 +
>   .../bindings/thermal/qcom,qmi-cooling.yaml    |  99 ++++
>   MAINTAINERS                                   |   8 +
>   arch/arm64/boot/dts/qcom/kodiak.dtsi          |  36 ++
>   arch/arm64/boot/dts/qcom/lemans.dtsi          | 138 ++++-
>   arch/arm64/boot/dts/qcom/monaco.dtsi          |  92 ++++
>   arch/arm64/boot/dts/qcom/talos.dtsi           |  23 +
>   drivers/remoteproc/qcom_q6v5.c                |   4 +
>   drivers/remoteproc/qcom_q6v5_mss.c            |   8 -
>   drivers/soc/qcom/Kconfig                      |  13 +
>   drivers/soc/qcom/Makefile                     |   1 +
>   drivers/soc/qcom/qmi-cooling.c                | 498 ++++++++++++++++++
>   drivers/soc/qcom/qmi-cooling.h                | 428 +++++++++++++++
>   drivers/thermal/Kconfig                       |  11 +
>   drivers/thermal/Makefile                      |   2 +
>   drivers/thermal/qcom/qmi-cooling.h            | 428 +++++++++++++++
>   drivers/thermal/remoteproc_cooling.c          | 154 ++++++
>   include/linux/remoteproc_cooling.h            |  52 ++
>   18 files changed, 1981 insertions(+), 20 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>   create mode 100644 drivers/soc/qcom/qmi-cooling.c
>   create mode 100644 drivers/soc/qcom/qmi-cooling.h
>   create mode 100644 drivers/thermal/qcom/qmi-cooling.h
>   create mode 100644 drivers/thermal/remoteproc_cooling.c
>   create mode 100644 include/linux/remoteproc_cooling.h
> 


