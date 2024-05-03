Return-Path: <devicetree+bounces-64685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8FA8BA72B
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 08:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25A8628255D
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 06:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27FD14659F;
	Fri,  3 May 2024 06:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b="JgeKiXLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382CB2E419
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 06:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714718166; cv=none; b=pgXdE/6AFNLIMeFW3kf3V17JeQ1E6LXZK7b1Q3pgZ5+EEBxhHMAI99+5JScT4F+ley3h6ulk+qbcA6Ol9Mt2nfnnZkm0U4odA+Q9iSJi5lf+EBEYMqV/4bH3Q6xLGzDz4blFE1E+Fz1gsL2wrj+n9DOFbHxQnEREZrfxYd1eii0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714718166; c=relaxed/simple;
	bh=cd7yTrt6GWBxWkHwzMQubHiZtWWF/F5VLurzT+aYYRg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hwV4+k7ZhZW2frBuk/A5PsoiN4L7SWI9P14TOzCkaYdmacQEC+Gn2GVKuOz9vUy7jajmanRlej2obsxOegkBFsw/iyIDuajDeP3VwTB1xFyTDzdwmI45Zw+SeQCEbpVFKyZQh+B+M2e3HthL/IsYCazWCWPLDoG3JENc4bWt1wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org; spf=pass smtp.mailfrom=kali.org; dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b=JgeKiXLQ; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kali.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a5200afe39eso1092763666b.1
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 23:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1714718162; x=1715322962; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HKZVfrEnHgDm/tlBdppJQIcDCasqaomHZPpbSKozHVo=;
        b=JgeKiXLQhUseedrl2W/BOeLFvEHyHDnAKbiuloE3Ff4XJ20tRLTQ4nNN/RdCTq/i/G
         Duu2BKrTOMDozCiqaEMbfwjbhpX8ZHOl948Gv7+iHCGr+sau0kIsi7f+VFa3MvcxoAvF
         BhASqNLNdje19IIGObTYqSowqB06gg4Z76u8gNxuZtzrPI4E1SakjhukwljmuCNA9PSf
         CjEaBdKexnVQra+ivvpu2EdWfftXIN/VMt4LSLqA82aBtf0b0CI9GWgz3LFbvgmnEPD4
         MeYx/YQRQblDbYEPvncDtHBRD9Pq9jEUKa+gVG+gpjRwocE2Lk8wnXvG3bPUtNJLTqBL
         +PDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714718162; x=1715322962;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HKZVfrEnHgDm/tlBdppJQIcDCasqaomHZPpbSKozHVo=;
        b=BSllEzJTZbx1xnadVmieofx2rgqE4lqE4m3FTcMFEbgWm2VzUTvEXWKH2/82cfk4ia
         1B2e406t8e6H2cbrCOaQ0WalKUFTK75kIsH6TxKvjXh7E7YwqQO0Ffg69BEgQXaYaWra
         BVn0Fg3Cf9c0oIiDZzq5qby5yLPv/pSYr5WlphEhiqhMBxECr9f2v0rftd9/XUnoonk7
         U+LC1T34nNZ+XBmpElupXddZnjk7pyNAyKwA6WgdBIz7a8eW1dRFxZ1rwxKb4p4oR6J2
         +ZlgbKvsxtrTTkDeA9huOu9QqKX41rLHTyHstzJOKlOBcGVwbZZX3anze6zfp7WLnHGm
         msYw==
X-Forwarded-Encrypted: i=1; AJvYcCV2sadRFkK4J0L/06en001nbByTkIEkwd5hPrtLkNYXH2Yft9t3tOjIHK4liBjmPntXZCv465w5lybtP9uI+GvnEBAP/DsV/uN4iQ==
X-Gm-Message-State: AOJu0YytD1N9WT56LDkacihc0GEVmw7WOo59lHHHphLBAm41HUzs12tV
	Y/x7Hpq9VYoTxs3a5DejevDniwwTY6AYh/zQrzsdBB38gwQksznxiCDlwJK/AGfUDfFolCu/NuS
	2T6byQbmze7QMxvc1RjYtcPbYZh2we2uCUU0uFQ==
X-Google-Smtp-Source: AGHT+IHJT537wyzxsdoNYXT//WCkrfyVvA5aV6ewIY0e2q5E9nRhCBRhsDywWt1RP69zblCAg3piQ7kt3cTya8BgsNQ=
X-Received: by 2002:a50:8e15:0:b0:56d:fb36:c388 with SMTP id
 21-20020a508e15000000b0056dfb36c388mr1389392edw.9.1714718162420; Thu, 02 May
 2024 23:36:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240307-topic-8280_nodes-v1-0-4eba20e08902@linaro.org>
In-Reply-To: <20240307-topic-8280_nodes-v1-0-4eba20e08902@linaro.org>
From: Steev Klimaszewski <steev@kali.org>
Date: Fri, 3 May 2024 01:35:51 -0500
Message-ID: <CAKXuJqii1FjG64m1=3J_P0LmeV0FKgcxXF3V7Rz4imasVmeDcQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] Random 8280 bits
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 7, 2024 at 2:26=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro.=
org> wrote:
>
> As the series title and patch titles say
>
> p1 for Srini/nvmem, rest for qcom
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> Konrad Dybcio (4):
>       dt-bindings: nvmem: Add compatible for SC8280XP
>       arm64: dts: qcom: sc8280xp: Add QFPROM node
>       arm64: dts: qcom: sc8280xp: Add PS_HOLD restart
>       arm64: dts: qcom: sc8280xp: Describe TCSR download mode register
>
>  .../devicetree/bindings/nvmem/qcom,qfprom.yaml         |  1 +
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi                 | 18 ++++++++++++=
++++++
>  2 files changed, 19 insertions(+)
> ---
> base-commit: 1843e16d2df9d98427ef8045589571749d627cf7
> change-id: 20240307-topic-8280_nodes-da70ee866935
>
> Best regards,
> --
> Konrad Dybcio <konrad.dybcio@linaro.org>
>
>

My apologies for sending this so late, since this is now in -next,
but, I'd gotten reports of people with the X13s not shutting down when
using "my kernel" - I finally had the chance to dig through and do
some testing today and it seems that with this patchset applied, is
when the X13s will no longer power off.  Telling the system to
poweroff or shutdown simply causes a reboot instead.

