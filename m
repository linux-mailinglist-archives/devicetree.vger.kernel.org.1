Return-Path: <devicetree+bounces-250570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A459BCEA122
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 16:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EEE73010AAE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0482D321D;
	Tue, 30 Dec 2025 15:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wGui7GhQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DD81DF736
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 15:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767108847; cv=none; b=t+scR0O2iXAkU+7jK+OqiO8xd7e6qB0s50sCMgYVfLWmvZ/0HWVCeHiwPPBdkC/Y+KI+ZY9Ai3dJJyjhm6Jsj1yMkUDQCrg56Q0WObqSMnFPCkZT3aDQd7b5CnCgp26m+aH7GyyTlMw0pmz/VB58dYI1EcYuOFmQCrqqWx9eqcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767108847; c=relaxed/simple;
	bh=cJNaMYuuC2I7/+95x8jcQiPUFjMk3F+7PHyjW8Lo1tg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d4G0KhTpjrIul3e/B5L1lDQMpGcjn55QZbLLRjl/wZGc5NcmI9CtlZ1yQmsuipqupQykL84eBhMbgl/ykHt9aHj6O+VFzOBd3rxWfczCelIZWXd3DT9xo4/BSLclVEbERvVXxLyP5oAApCVgmspZwzHIEufKNdKwfJEzg9kg54s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wGui7GhQ; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-37b983fbd45so76666161fa.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767108843; x=1767713643; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IIQJu7CyiY9gIZvx6eWahf0Uexh2lGW7onsdB+Wi7IY=;
        b=wGui7GhQoHJYpY2Otxo7tiH4We8oeeHpoP6VQ7TRJ9ZSzcXbqBqnJJkQcVV8/9g/2X
         ZkGO/j/H29qUP5+hpfwFsuEA21LfmoktR79tgfwAIQc7rrml4FmkaQ2Q7xcEVj09FZ2r
         UEXqXefVZhuXGDh7K/DNZnWHszFHxQRABknXdl+dsHlqJhEgAtWYIWPwwBgp6XZFrrss
         BiL29uqiCNwccLKXiwpYALYjr10GYIiOY5lAUuFidugLIL7gsaF/BtxwZ6trl24aHi8a
         iNIYA1w1qdezVc16PB491R10N7wKB5mJZAV5o4kA88XqK25DTHkIJ7l+8DtQTmoh/hr8
         f/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767108843; x=1767713643;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IIQJu7CyiY9gIZvx6eWahf0Uexh2lGW7onsdB+Wi7IY=;
        b=sFiajWDmWC1k0AP5a8kzw4Ee49raIuhLGgFvbvkSA9UMTNOxbzH472rpHXgVbbbrg1
         bdhDO7FCCt35fXIcnwDycG0v5S/VLOl4UV4VQ1XGEeXDbICqhKUyZyoiU1AJdwYOwrRD
         ogH/hlSTWESJB6on9o+HHoZtem3AA6tdnTM2L0OwtElQS9P+Z5DQw054NOLyhSEQ6Vpg
         Dx/H/f+sSQWYuYv97EcAeQcbW18q3bk4SFVQEpTzdAL9T6hn9MOBbBJ6SJaGZDSi30AX
         zFn+mIs14ag71ezv95ta9tCn4a2l9VgWKSYGv75A6OTUbid/zJLcULjOtj4DOarSMzHB
         JPWA==
X-Forwarded-Encrypted: i=1; AJvYcCWZ2nipT/XGZjEm8jQ84RFPqahMxg0ImKQlwTfnPuQcmqnKM4NVTbcDvOYpLnPZLcLqCgP37Lhfk0rR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy27i6SIJIKHCzrepk8uYEVVFVNSd1gAcZ1PfLNnHTNxZSspUSN
	GbZcqaH1N/3zBHb+oAphEOtKna4fw3ojuwdKzthWIyPqZIXkulV+pq7RjQAiLRTqDxTU8V5V16h
	WHeIgByw+UpjxuHb5SMMd2HwaV8e2jGAFGi6B7c958Q==
X-Gm-Gg: AY/fxX5NiTDcxDPHWpsZlEIpO9z2vz30Famo89tU+wwHfrtbfcOlha/pXT8J2FXqFIy
	7kqIDZJivUWcgUzNIDmaLU7g9uCpZ0XOJCOC/42DAkuM8EVmr+wu2fwhcXXvLT3jcgevs7SbESh
	DB7YKyobz4pyCksvxiFgvaES+FeM963lbgIFpI6X+3LXM2wH3oagNaGRb1shKVQcllXgPd/boFv
	AgVU6SjlAYUOdSuru0CHQhhXjomdk9zU+EfAOIPWP+UD9HRb7VMbh4ntBXCs9YR9W+DWg31pan2
	Por+Kbk=
X-Google-Smtp-Source: AGHT+IEEzSWxU0Fr9jtKf4rnUE+MZIqWiBIfHx6EwjCFpsAYl5LLEX7BferoDb537v/2XTB1q5TRJQn0YC6nmgiVvgg=
X-Received: by 2002:a2e:ab89:0:b0:37a:3033:16f6 with SMTP id
 38308e7fff4ca-3812164513emr98831031fa.35.1767108842896; Tue, 30 Dec 2025
 07:34:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223-07-k1-sdhci-reset-v2-0-5b8248cfc522@gentoo.org>
In-Reply-To: <20251223-07-k1-sdhci-reset-v2-0-5b8248cfc522@gentoo.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 30 Dec 2025 16:33:27 +0100
X-Gm-Features: AQt7F2oqCrEKFHiJvi35sI497oUVGoB1FksL7aATuRnp8180lObyxwQDc3LztRs
Message-ID: <CAPDyKFo905ptdO-rSkiJ-ax2u=P_+EAJA30b14n=B4j9adaaKg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] mmc: sdhci-of-k1: add reset support
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Iker Pedrosa <ikerpedrosam@gmail.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Dec 2025 at 03:25, Yixun Lan <dlan@gentoo.org> wrote:
>
> This series try to add reset support explicitly to SpacemiT SDHCI controller.
> Previous it works well for eMMC due to it's already initialized at brom or
> bootloader phase.
>   The controller has two reset lines, one connect to AXI bus which shared by
> all controllers, while another one connect to individual controller separately.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---
> Changes in v2:
> - To not break DT ABI, make the reset line request optional
> - Use devm_reset_control_get_optional() api
> - Link to v1: https://lore.kernel.org/r/20251221-07-k1-sdhci-reset-v1-0-6780af7fa6e7@gentoo.org
>
> ---
> Yixun Lan (3):
>       dt-bindings: mmc: spacemit,sdhci: add reset support
>       mmc: sdhci-of-k1: add reset support
>       riscv: dts: spacemit: sdhci: add reset support
>
>  .../devicetree/bindings/mmc/spacemit,sdhci.yaml      | 10 ++++++++++
>  arch/riscv/boot/dts/spacemit/k1.dtsi                 |  3 +++
>  drivers/mmc/host/sdhci-of-k1.c                       | 20 ++++++++++++++++++++
>  3 files changed, 33 insertions(+)
> ---
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> change-id: 20251221-07-k1-sdhci-reset-1990d1170437
>
> Best regards,
> --
> Yixun Lan
>

Patch 1->2 applied for next, thanks!

Kind regards
Uffe

