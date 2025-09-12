Return-Path: <devicetree+bounces-216492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDD0B54FAE
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:35:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F93E1CC7DBC
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87CEA3009F1;
	Fri, 12 Sep 2025 13:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ffQiWbGc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7CF3009F0
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 13:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757684110; cv=none; b=Q1DVKdvLhxkhEnNVE5IfyEOUthp7hMVEtXdHkUQ1Mxu0py/HBYC7VQ+/qEVp2LyXZ/jDzqDMWC5EXLEXNos0BxwkAn5DZoqFg4xTFW1X6WCUPlNywIktBO9I20qdyLRV9ucbDy0QqNd9xisfyfCH6xkWAPGsOKZqrzkZf35Ht5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757684110; c=relaxed/simple;
	bh=Mw1uqYx7xqErJ7dWKzMJLyxHHuWnHuDvctPdOSnJ6Uc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Idg5DBTSSikUQXe018KcQy93osdPjdGvxaSlZ9JxhqagoXXvPtt1Dgsb5yvaRskxfD/N2EVQ/RtVTF6y8ch7wuUISV6OObDNvZg9HPydILcK9I1rqYurVgp9dimdgJtDnboHw5fD2hyUwSnIpUCBTyR5er9/Apq1LYFoGXlnuH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ffQiWbGc; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-ea3e8330e8aso388400276.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757684108; x=1758288908; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Oif+Qq/ko4e9IqPBpRdx3M/nH7onkOEoHN9rr45t7A0=;
        b=ffQiWbGc8jBI0/MMekKJOTGkZ8I5gVMNordx3lAAXmMexZijDRX/sDFrNJ3Ypu1iEM
         SHIZsWei5E7e5pkXjsTysVPt0NtxGHy6FR8zcwp58R7e0lasL+xCANzO8/WS6UeP4JRn
         pmf9tutWHLs+bL0uBzV9ttQ0x0eOTZaJs9Y2Lmx+5TKgq+ox+i2/MePnp7cUx0WpPOBD
         yOYNJudMtypBBjyesWYlU2BRbqBWFzvMoqCwhzkGiTvzxGY01RT+weROfGd9SGZgv/R1
         862GSVo1ZFhrPWa+Cji/qFWzofTLJ9zu7FAMnQ6yF8f1FNFXAfO9UjKTlI715jxsXB4k
         VweQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757684108; x=1758288908;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oif+Qq/ko4e9IqPBpRdx3M/nH7onkOEoHN9rr45t7A0=;
        b=qiaxyZ2z4WaZwJUIBpRkSFg0ywcjdu0ANgkq0l+HtO5YdHw3wMjKgy6pJxriwGKXn7
         tVpQRcDxJqQkK7SU3v9RH69hIAZKQwwgGA8VANR6eq1Id87DBmu+jfzDL8N7ZTEmVJD/
         FJvOkxB2LMaEElw0FSaU9IztIVNWQFPwW2nIFnyyvYXhvCuBsroycsdBgULT+Rg8V28b
         9V6UINXCiN454yUZAKBKYoSyfal7+LkVNtIjZmEPp1pu1e8a+kZItENlr96QdNqmbt7V
         DCLh5gbwxxDf3fXJqEziemARa+09jYeyc935kJL6owXTXPGoj7D7xtlCKLwDG/bf973b
         r1YA==
X-Forwarded-Encrypted: i=1; AJvYcCWQygQT0RY4gY0yk0Bzr0ISRzcQI6fZYG0WqgAz/L2MzQmLpNLdZYiqoaO/XwBXbMTU4MYjYRPi/yUR@vger.kernel.org
X-Gm-Message-State: AOJu0YzG3zR1pVPI5xe5FxDsvR5mYQAArZc+kSSDgvVbWULTiYS9EV2d
	nxyXLzbPTmye2sljAhUyuF/v/CSX+t+MwE/198yNZDQI0Bfqpxybj7OPegxl7PsJZTeRP2wcC3l
	XrAvSCRJjR+544374m2ipxLxTOOZrUmei8IH4LFyTBA==
X-Gm-Gg: ASbGncucJboxF68+ogrWKky6Iu44rYw/QjHO+0ykgSncT0g3txqMxIcO+jDIX9zpa10
	o9rG5XCrRWLXvAN4Ha5cGoWcQRNcqu2DYGcYu5DuQENtr+veHq3LLJ8CVcxKGsv5GXpGqSzbE41
	UxjN9xHqeH+J5/EGPymVgZi9syOmHXB8bC5E0Ss92J+QrOOGy1u8A/EQ0Z2pgE8unT0gwdy5R0J
	+2+ztaiPgu59l0zIbQCtSfU6pUIYQ==
X-Google-Smtp-Source: AGHT+IGATGH4zT90wO86AA8WBiOnGk/LXDY5uDAcwdw9i5ErydnHz9qSPT6Guu/RQKz7ZbqSt/y/uvpf3m3dqjiDPL4=
X-Received: by 2002:a05:690e:155a:10b0:62a:42ce:b7b9 with SMTP id
 956f58d0204a3-62a42ceb93fmr411217d50.1.1757684107248; Fri, 12 Sep 2025
 06:35:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908104122.2062653-1-quic_sartgarg@quicinc.com>
In-Reply-To: <20250908104122.2062653-1-quic_sartgarg@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 12 Sep 2025 15:34:31 +0200
X-Gm-Features: AS18NWCooWdb8G6qEjRwFzci8cfjJRbJFJ2Ea7ro1afYf_iz88sxBWUweu1ZDLI
Message-ID: <CAPDyKFptA06Khx-9HFf9Vt+OUXRtVqmb++HQ3ZbZD0rjRkOsPg@mail.gmail.com>
Subject: Re: [PATCH V6 0/4] Add level shifter support for qualcomm SOC's.
To: Sarthak Garg <quic_sartgarg@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com, 
	quic_pragalla@quicinc.com, quic_sayalil@quicinc.com, 
	quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Sept 2025 at 12:41, Sarthak Garg <quic_sartgarg@quicinc.com> wrote:
>
> Add level shifter support for qualcomm SOC's.
>
> - Changed from v5
>     - As suggested by Krzysztof Kozlowski reintroduced minimum/maximum
>     in dt bindings and avoid repeating constraints in free form
>     text.
>     - As suggested by Krzysztof Kozlowski/Konrad Dybcio update commit
>     message reflecting discussions and previous disagreements.
>
> - Changed from v4
>     - As suggested by Krzysztof Kozlowski Renamed the property from
>     `max-sd-hs-frequency` to `max-sd-hs-hz` for clarity.
>     - As suggested by Krzysztof Kozlowski remove min/max constraints
>     and add default: 50000000 in dt-bindings.
>     - As suggested by Konrad Dybcio moved max-sd-hs-hz property in the
>     SoC dtsi.
>     - Retained sdhci-caps-mask in sm8550.dtsi for now and will revisit
>     its removal for future targets after thorough validation and testing
>     from the beginning.
>
> - Changed from v3
>     - As suggested by Krzysztof Kozlowski moved the property from the
>     SoC-level DTS to the board-level DTS.
>     - Revised the commit messages to clearly explain its board-specific.
>
> - Changed from v2
>     - As suggested by Konrad Dybcio and Ulf Hansson redesigned logic
>       to introduce a new DT property max-sd-hs-frequency and override
>       the hs_max_dtr accordingly in sd.c file.
>
> - Changed from v1
>     - As suggested by Krzysztof Kozlowski redesigned logic to use
>     compatible property for adding this level shifter support.
>     - Addressed Adrian Hunter comments on V1 with resepect to
>       checkpatch.
>     - Cleared the bits first and then set bits in
>       sdhci_msm_execute_tuning as suggested by Adrian Hunter.
>     - Upated the if condition logic in msm_set_clock_rate_for_bus_mode
>       as suggested by Adrian Hunter.
>
> Sarthak Garg (4):
>   mmc: sdhci-msm: Enable tuning for SDR50 mode for SD card
>   dt-bindings: mmc: controller: Add max-sd-hs-hz property
>   mmc: core: Introduce a new flag max-sd-hs-hz
>   arm64: dts: qcom: sm8550: Limit max SD HS mode frequency by default
>
>  .../bindings/mmc/mmc-controller-common.yaml       |  8 ++++++++
>  arch/arm64/boot/dts/qcom/sm8550.dtsi              |  1 +
>  drivers/mmc/core/host.c                           |  2 ++
>  drivers/mmc/core/sd.c                             |  2 +-
>  drivers/mmc/host/sdhci-msm.c                      | 15 +++++++++++++++
>  include/linux/mmc/host.h                          |  1 +
>  6 files changed, 28 insertions(+), 1 deletion(-)
>
> --
> 2.34.1
>

Patch 1 -> 3, applied for next, thanks!

Note that, I took the liberty of amending patch3 to change the
declaration of "max_sd_hs_hz" to an u32, rather than an unsigned int.

Kind regards
Uffe

