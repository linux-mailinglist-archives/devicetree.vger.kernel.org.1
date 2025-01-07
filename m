Return-Path: <devicetree+bounces-136106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B48BEA03DA3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88CAA1621D2
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 11:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6C81E9B32;
	Tue,  7 Jan 2025 11:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QF0olLCY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476F1EBFFF
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 11:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736249124; cv=none; b=gX/A5gRJE21E3Ac7bH9rS10IkSOWuxYCHyVoyJHJFdnzZf/2ntL2U9KWV2em99/NaC989CBy00yUqP8sfhs95MD40DSXvyQD5BcDDziGq1GpAwjYmMcU+vfG5FCEwupe5t8JdL4u1lks8Rqu/CykNqbY7bOl54znprsbLSoIoHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736249124; c=relaxed/simple;
	bh=OfOEkScPJn2s6J2v3K85ULAVMG3MWr1RZT8sX5h4CTk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a/8J5XeURBsVqirstT9KpmxcH4fc0lFIS4+dfVh2ehOO+ZWXqVsA5aVNv0TztKuZqUqOOwHWSOnwKi4UvU7v3oj+fEFjFNVrLNUF8fIEWrNTUcU3xwWFJUZNOaRBOEEidKxBT9HJVsPvTkqmOjni/4QgRnV2NECIvSxY+h1qbUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QF0olLCY; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so1591210166b.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 03:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736249119; x=1736853919; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7sn2BG5sdvDbcSzNStcu70GGFUnOPYuQtJHvkvNK9yg=;
        b=QF0olLCYJJt+m6wTpwxV4PhaqOhVWSEn21fKNorrOjE+hY2f5z2+2EdVi3IfvuS9kI
         LhvBq1fOaO+I1DuDdwBe/52d0twX9+2Sfn474wtfi15z5FHRT57HSALEJsKSP6VL8rP5
         fkqdLimbA9yNHle0sJ35aLWWxoN5VVXsYyOooCnOQ2OErq8Q6xPPI9KEyjwgJ2Q9Z0jv
         28oYf4vmcG6BqCuRDEnVE2ItlJ/Osul6bgyKPQvevSPgipd1+nEvNPWLtShE+sLQ34s2
         iHchcQzp/GC/PP2+gBSy3iM9FU1sPiFST5OfcGnc3pQ/TEu/1KBE0SDWCc6B5UsV1fM/
         0T1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736249119; x=1736853919;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7sn2BG5sdvDbcSzNStcu70GGFUnOPYuQtJHvkvNK9yg=;
        b=dI0zCCswE5lzVDvfkrks27uB7ayiqZwDcCTRgvMNh6Nu2XJiqLqstZFAlOrHnXia4c
         q9YfIjQB5XChOGFqOuIx6NkHs9N47xfEHOaFzSn+hsKYWzJfHIqeMqMrdCv3lSLg4vVW
         f8aAscrRd8ZVlHsVYoTQNtD+8KTSBv2wfn0CjWGg9GP5uLFsGp82vDmN3tziguOpRfo1
         f1Afs0m9q9WnwwRPCqg4JjOps3vLcM3+Zk/uxuGIsb7oKqbCnoQgUxcLa4srG9Elj2TF
         Hb12Gq53IS/xZ+Y9kkY5/M6tYEbUi4XAPq5Q1CT7a21qTB03whiWhdhaj3s6dV4x79Pj
         eoEw==
X-Forwarded-Encrypted: i=1; AJvYcCWt1jekZCwaqcfkKWE4FkpUCXrL4ieV85SsAgv5gEuYbJTAGKWH5rq3N/lZGWj8y7SQ/fxldUHsBNOM@vger.kernel.org
X-Gm-Message-State: AOJu0YxHrtkMPLyD1zGiGZjOBeDTyp1AlOf1zV8v2nK6KNy+Ie5ihPhJ
	VMr/AEok3USjFuSBbH05sB9aspKfl6maqrw1Q0ppnlRINxZOze1tT+98RNPlK/Q=
X-Gm-Gg: ASbGncsJpwc2jkXD9L411dOiUjzfbpvGNGV5F/TH9rrXXieC5PUbX1DFgHJtmMU1hH3
	LoaXUSJaVURO/vdeB56qaKAaA6vAhoV8qT1AsU2oxyyGT/Sa5k83xJSBov8dEO+8wmJyq8KNWlp
	Kzy4YjKRXQMbr70Uuu9XcZwNyae9XRskXmf06tOOFNIhePnkLwxI0MJFlZwmqBgo8HAMmFMzJr/
	WF21JxeAjYmQP+1ZQAJoK4O9qw8V0VAqSEYsMBBkPOJCmWWilnNSd8S/jbbPZeukYXT3Z2psJl8
	x+8IIK1L0FkGENs9/7IJBPEs1Gfyw/gVxzUvsik=
X-Google-Smtp-Source: AGHT+IGh9M3EnIPRVcMQNI989EcvZxMCNMXogDiQ3BV0jMzT1VyZYyESdCgc7jwCzo0D83CZJZ/lXg==
X-Received: by 2002:a17:907:9722:b0:aa6:6fa5:65b3 with SMTP id a640c23a62f3a-aac3352c204mr5521668866b.47.1736249119218;
        Tue, 07 Jan 2025 03:25:19 -0800 (PST)
Received: from ?IPV6:2a02:8109:888d:ff00:ca7f:54ff:fe52:4519? ([2a02:8109:888d:ff00:ca7f:54ff:fe52:4519])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895502sm2397516066b.63.2025.01.07.03.25.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 03:25:18 -0800 (PST)
Message-ID: <66fb0c6d-472c-4131-bd25-83266cf497e4@linaro.org>
Date: Tue, 7 Jan 2025 12:25:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/7] Add support to load QUP SE firmware from
Content-Language: en-US
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>, andi.shyti@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.or,
 andersson@kernel.org, konradybcio@kernel.org, johan+linaro@kernel.org,
 dianders@chromium.org, agross@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org
Cc: =quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20241204150326.1470749-1-quic_vdadhani@quicinc.com>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20241204150326.1470749-1-quic_vdadhani@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Viken,

On 04/12/2024 16:03, Viken Dadhaniya wrote:
> In Qualcomm SoCs, firmware loading for Serial Engines (SE) in the QUP
> hardware has traditionally been managed by TrustZone (TZ). This setup
> handled Serial Engines(SE) assignments and access control permissions,
> ensuring a high level of security but limiting flexibility and
> accessibility.
>  
> This limitation poses a significant challenge for developers who need more
> flexibility to enable any protocol on any of the SEs within the QUP
> hardware.
>  
> To address this, we are introducing a change that opens the firmware
> loading mechanism to the Linux environment. This enhancement increases
> flexibility and allows for more streamlined and efficient management. We
> can now handle SE assignments and access control permissions directly
> within Linux, eliminating the dependency on TZ.
>  
> We propose an alternative method for firmware loading and SE
> ownership/transfer mode configuration based on device tree configuration.
> This method does not rely on other execution environments, making it
> accessible to all developers.
>  
> For SEs used prior to the kernel, their firmware will be loaded by the
> respective image drivers (e.g., Debug UART, Secure or trusted SE).
> Additionally, the GSI firmware, which is common to all SEs per QUPV3 core,
> will not be loaded by Linux driver but TZ only. At the kernel level, only
> the SE protocol driver should load the respective protocol firmware.

I gave this series a spin on the RB3 Gen 2 with U-Boot.

After fixing the compilation errors, it seems like there is a consistent
hard crash (the board freezes and resets) at some point during i2c
controller init with this series.

I noticed a similar issue with this same logic implemented in U-Boot.

Could you clarify which xfer mode is appropriate for the i2c controllers
on the RB3 Gen 2 and maybe give this a try yourself, or let me know what
other info you'd need to debug this.

Thanks and kind regards,
> 
> Viken Dadhaniya (7):
>   dt-bindings: i2c: qcom,i2c-geni: Document DT properties for QUP
>     firmware loading
>   spi: dt-bindings: Document DT properties for QUP firmware loading
>   dt-bindings: serial: Document DT properties for QUP firmware loading
>   soc: qcom: geni-se:: Add support to load QUP SE Firmware via Linux
>     subsystem
>   i2c: qcom-geni: Load i2c qup Firmware from linux side
>   spi: geni-qcom: Load spi qup Firmware from linux side
>   serial: qcom-geni: Load UART qup Firmware from linux side
> 
>  .../bindings/i2c/qcom,i2c-geni-qcom.yaml      |  11 +
>  .../serial/qcom,serial-geni-qcom.yaml         |  12 +
>  .../bindings/spi/qcom,spi-geni-qcom.yaml      |  11 +
>  drivers/i2c/busses/i2c-qcom-geni.c            |  11 +-
>  drivers/soc/qcom/qcom-geni-se.c               | 445 ++++++++++++++++++
>  drivers/spi/spi-geni-qcom.c                   |   7 +-
>  drivers/tty/serial/qcom_geni_serial.c         |   7 +-
>  include/linux/soc/qcom/geni-se.h              |  17 +
>  include/linux/soc/qcom/qup-fw-load.h          | 179 +++++++
>  9 files changed, 692 insertions(+), 8 deletions(-)
>  create mode 100644 include/linux/soc/qcom/qup-fw-load.h
> 

-- 
// Caleb (they/them)


