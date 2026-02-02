Return-Path: <devicetree+bounces-261848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yL8gFtK4gGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 15:46:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B43A0CD8E3
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 15:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F2B4C300908C
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 14:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20718372B2B;
	Mon,  2 Feb 2026 14:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fVOzYKe2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CF136F423
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 14:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770043597; cv=pass; b=knAPqkhEavJo3kk9uv3SHB06U+prATEVI0VFSqofr8UFLOJ/z2RQhDs160kOpVnoJsbRebbIridPoWRHFj2Zk1gkpm9nF09H/ldnC9eMB+iziXiiBx710AXaNvbIsYw3mm97YBnpbxSrrpOs0N6R4vkLbwU4nR6+jRNnjgQ8w+A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770043597; c=relaxed/simple;
	bh=6wKlGaF+HJlYg3oYlybm2siLLYbtx8o9sW8eaq0Ny5A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VJURxRPh4bTg/wN2lKmEeW4/7ytpophEy74ZCdPmN9HS1oHFEPLcZqtqNwCFDtZQBkU8RWAa0Cx4VHyAa67amvUgrPZfRmxXzZZNdbiitwk08+izPSj3k69j04SQbc5aLLD8VYK0TzapCDF+ScU5W2MkCKz3APKpW+lGQEiSnEo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fVOzYKe2; arc=pass smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59b77f2e43aso5983651e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 06:46:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770043593; cv=none;
        d=google.com; s=arc-20240605;
        b=OwbDYqv5jVFaJvtaAGjY4bieznCQPGh0SSVGxT3+8U7Wry0SlmVt1f/FxjuN/Bb7Ua
         Lkp8KBA/ULo7HwnAjdHK/mMeetiKxZSealo1ZEPHK/8R4ky4+QwbIL7K8LbHq3P+2jZX
         IOieafYVxDQCn+bEzeZBr+lURx74gctB8CVazBQXNW4nOc3UxQa0k/u5sD9sK35j5SM4
         0IL/U4DyNhp+U8vsc0+nWLm/z4QrVVB3j0aulxmHT930+3pZA9Se52/0Vgy7mlDZE3UI
         AvdMdJo2eFR+nAA/QcrspzQXHz2/UBlf7GBblVqxIUVuNkbpBQmbYR4bDPjVEm3nNAvK
         ugmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CCxcsWChfDF2Gh4ycD+vyncq/ofeycyF+64lSijnMn0=;
        fh=1/IatQxLNDDsf29LKmijnkVukiDJDtc0vfXZQ4Pz0aU=;
        b=B3W/QxZhV1g4JVzd2l28kSfsq2bDXPk+Lfq5M9k/oSMjX+brVd+oz7US30GYRyUMj4
         aVdAEOjRKCe6fo+bJRiStdhVirLCqgRFn8kxnc1TwFqP0hA5fcGpCzwIh9eQxwzc08HK
         FIHodmZXG9LBYUUE2vt89dey4rUuLCvUG0OKxiURygwZIhea/rSAQTMhfNg5ePB8ZQ4E
         AmtEkL99CcMDzhz1qzeOJ0gwppUXzK0NJfobh72cekADiBYD6wV0gPzU1lBrh3Z5rsHM
         KZ+3+TJI2qZIrBw0hcEvbEniKyrR0cQqGhzTZl+dhi6LVh2s8J2ukvvYhUacF7eeYziY
         RKfg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770043593; x=1770648393; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CCxcsWChfDF2Gh4ycD+vyncq/ofeycyF+64lSijnMn0=;
        b=fVOzYKe2l2RRcFW+Sf7fGimY+tIcvF5zBMwbbs7M+DLbk0mH85UpGR3Jws6hsrL7ZQ
         gjeXyI2CZajzK2NznroXwsu7OdOwiwaT56j3YR/rIVcCra3Zep39byQ7bXnbiJgnA80w
         c03KOxxv6aHSdSZufwhXe7xg6221bjbExrwu/ii68LoBcV1FpXGkalsGpn7Vyti7RrQ9
         OeJpYNhAXBcR7UouNnwElYV5VJVwN3HcRVcsVQnJUiGTcY1afNNjV+z4S0KaVdj4poUJ
         bUMqzXekNZP8KrUlx8w0xMn8F404sCfaITXKzIbS5WU/GF0hxeR3//Epw7itz8PFJ5RU
         0g6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770043593; x=1770648393;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CCxcsWChfDF2Gh4ycD+vyncq/ofeycyF+64lSijnMn0=;
        b=SQbuO4rjY8x/nviilnY0ea06vZnN+HuZj5ZQVFc7E6LYY+oEThAGglwMFoBS6rWVjD
         +ea+KI2woliSvgjiY5XaU5/TdKf6YODospo2do4gt8VZcF1uDVXn4djrOG8Qez/WgSwZ
         BTVNjTQeBeahK1T3RDWF9EYcJQcvfFUOzBhEsCeth5fD8FoUCmwU7a1YtK50yVSnyn39
         thdMHBPBtyOoHE5v4VUdl15dZmQjfVGEQkOdp/dz7Hh4YWytbXzQbByH63xIEA/GG44P
         v76mOnNubiMco4DbH4qkw1J2rRdXoiMuBts4zMYcFV3OUCafQDfO4hLh/Ot5jq1vTbXO
         ohbg==
X-Forwarded-Encrypted: i=1; AJvYcCUKy5mR4SdmIqKTRqQp09yr3x7BHNlLcr4bfXSj8cp6lNHRPzG0dD2Ho6MI5moNOyAxdvaSvWDPs6aX@vger.kernel.org
X-Gm-Message-State: AOJu0YzvPTVdexVPFg0hBQyochH9HBR2wx4bBC1aR88lDEj3jnG8H4RW
	eI2OQaA473noXRFQsySHhdiEjJt7V7Ou1CnNZDJbP3cE1Uv6vsFUM94UBaX0ELtC2xVbjoR35QR
	MHhEcAmZRKE190Z4tBMYXbq3Tc7dvxWo5PKBGcHVxbg==
X-Gm-Gg: AZuq6aLmq3Jpi/BrbsoYuc+LGtENHeGaiZaIlrs7iNEUrDicsSQTu/Ar1gIkQrrOEbZ
	xZ6LM3CbDQz2lBhnXE0wOXXH+lbI03EZjUTCNjZfyb7EEcYvTqH/8MJOS5fnGPQRuot0Ao8Ok2b
	/TGdceR5GO6T9VCpwEiZCn9xdW6jGFPryb3tle7VBwG7OQvzDQqa6eB12j3x0qnsoYK2z2OxJfB
	CiZw2apUFkUZGGc/aTngHUmLdDfUi4j45LJC3pkV7C7uSFdL53h1vZsjUCj7FnsGVcAuxKv
X-Received: by 2002:a05:6512:3d07:b0:59d:f1c7:3e02 with SMTP id
 2adb3069b0e04-59e0d88d299mr7865289e87.1.1770043593213; Mon, 02 Feb 2026
 06:46:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
In-Reply-To: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 2 Feb 2026 15:45:56 +0100
X-Gm-Features: AZwV_QhOzR0E6k1IfUGRMUbn9MQFxH_pvh_89KhmlNk_aUHzuxVlk0zPxkYMZY8
Message-ID: <CAPDyKFoNX087ZhLkQ_n8-42WNQcL06noSuPJPDG87y0andVdNg@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] media: qcom: iris/venus: fix power domain handling
 on SM8250
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Jonathan Marek <jonathan@marek.ca>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, "Bryan O'Donoghue" <bod@kernel.org>, 
	Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
	Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Stanimir Varbanov <stanimir.varbanov@linaro.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>, 
	Stefan Schmidt <stefan.schmidt@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Dikshita Agarwal <dikshita@qti.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-media@vger.kernel.org, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261848-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B43A0CD8E3
X-Rspamd-Action: no action

On Sun, 1 Feb 2026 at 11:49, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> As pointed out by Konrad during the review of SM8350 / SC8280XP
> patchset, Iris aka Venus description has several flows. It doesn't scale
> MMCX, the frequencies in the OPP table are wrong, etc.
>
> Let's correct the Iris/Venus enablement for SM8250 (unfortunately also
> stopping it from being overclocked).
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Do you want me to pick up patch2 for v7.0 - or what do you suggest at
this point?

Kind regards
Uffe


> ---
> Changes in v2:
> - Fixed example in the new sm8250-videocc schema
> - Link to v1: https://lore.kernel.org/r/20260131-iris-venus-fix-sm8250-v1-0-b635ee66284c@oss.qualcomm.com
>
> ---
> Dmitry Baryshkov (8):
>       dt-bindings: clock: qcom,sm8250-videocc: account for the MX domain
>       pmdomain: de-constify fields struct dev_pm_domain_attach_data
>       media: dt-bindings: qcom,sm8250-venus: sort out power domains
>       media: iris: scale MMCX power domain on SM8250
>       media: venus: scale MMCX power domain on SM8250
>       arm64: dts: qcom: sm8250: add MX power domain to the video CC
>       arm64: dts: qcom: sort out Iris power domains
>       arm64: dts: qcom: sm8250: correct frequencies in the Iris OPP table
>
>  .../bindings/clock/qcom,sm8250-videocc.yaml        | 85 ++++++++++++++++++++++
>  .../devicetree/bindings/clock/qcom,videocc.yaml    | 20 -----
>  .../bindings/media/qcom,sm8250-venus.yaml          | 10 +--
>  arch/arm64/boot/dts/qcom/sm8250.dtsi               | 42 +++++++----
>  .../media/platform/qcom/iris/iris_platform_gen1.c  |  2 +-
>  drivers/media/platform/qcom/iris/iris_probe.c      |  7 ++
>  drivers/media/platform/qcom/venus/core.c           |  7 +-
>  drivers/media/platform/qcom/venus/core.h           |  1 +
>  drivers/media/platform/qcom/venus/pm_helpers.c     |  8 +-
>  include/linux/pm_domain.h                          |  4 +-
>  10 files changed, 140 insertions(+), 46 deletions(-)
> ---
> base-commit: 44ef70faf71468e0ae4bdb782a6d43f0614b8ffa
> change-id: 20260131-iris-venus-fix-sm8250-f938e29e7497
>
> Best regards,
> --
> With best wishes
> Dmitry
>

