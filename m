Return-Path: <devicetree+bounces-41294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B9A853091
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 13:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35DB91C26258
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4FD41C76;
	Tue, 13 Feb 2024 12:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lXNUwAjI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7775C3D99E
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 12:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707827630; cv=none; b=g9gu8755ZccGr6NAycEITS4VUpwuEYCGgvbQt6tVKfwWWXZDYKANvZCB2/xXfzlaJAgLFhZ9cU2fvY46rP9I+t+985Mp+U/A9xNSR3iafOv0gcSK9HW82nnKqqItSVWpKmV6LdgBe0Pr8kqUsl/hwbzTGV/HjJmFdviFE7Z4HiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707827630; c=relaxed/simple;
	bh=GMDHwwXkzcxHkwk+TqIPYewSVvBe87yCpMtxMdQ82Qg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tbYAWvCKNNRNSdVlVPoll8MbtZMA3WRuUnkH6EphzkJ5egLPP2aUsFQaXQHibmJv2lSJifp2TyKT2XdploChg+7V5DXQZUWo5hDOFYNIO6+hEv72aG/MZEexvKK7mp7XCi1Pbg493bLqRyYMZqHxM/zLf3aNFkLYoiF1dL9BnfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lXNUwAjI; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dc742543119so3580150276.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 04:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707827627; x=1708432427; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fWEmkv1wRlTjtIudMGgJCDXVUaDjTH42e1ec42CHDu4=;
        b=lXNUwAjIdgDd3xRJB/sX8ZfMQ9rdCD3XDM1LoQE1uWszAIDUX1OYMB/DXyCBRcRnI+
         KJNxOIJrVX4PbdJ4su/9pCLbCYaB/CrkQYRu5SR6WA/ea9xPXHWj1GQaKGcO+2ONvLTB
         37pyGYKaKpA66wPxNO5JhrFMqxah6fYySowDNGofkM7/veU8eLXnsj5X9GT/gbvsy1ZQ
         0bjWxnyrEnba8ZuC+frdkdPiKI0/9M+cayMGqRqTRZ9FWsduxX+G1NYG1Xpq8xRhzUhT
         onF1nIabwRHunU8WTMFH6tVVo2ygMTbK+FHhPHamyGtPEMCO9kXKj7IGEA8rMbx33Y4z
         y2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707827627; x=1708432427;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fWEmkv1wRlTjtIudMGgJCDXVUaDjTH42e1ec42CHDu4=;
        b=HZIsFWP5bRn7hAdQjGleTyJyP6maEe6pLDIacG0YAXeBduBD78/L5+IUUja+Ik2qUu
         9R5rCXzykdgINcppdej8w3rvb77VCEpXTrH68kWOdUpFwHismllbOAuZLvhdhioMZSVe
         TqJl95kZS1/nymyyUaIf2nhSdTB9jllxVS+hijiaPE01sWdabW2oKnQKxkJhUska++Ik
         fyO4yK3r5XnkadzlK9RqY8jY5tAuhK8iLYi2GVxLYYqFsDNhejAG7TUZT0kCN+eFLzrG
         x1GON2wSCQ7XecmAIleTg5PTUqzRnBAq1IxYubJwBUhrs/gk53KY85PKCYTsNUdp3QSf
         AiFA==
X-Forwarded-Encrypted: i=1; AJvYcCXhOSdgG6NYJDhuCmiXJi4u79OsUWOrYrWqZtJTlfy40re4m78q9I4ggYgQmBNZLse2YAVPw1c0GZfNTwU0rQegmTNlMGKv35/ZIQ==
X-Gm-Message-State: AOJu0Yzj98iZHwDXmbop0OcgLbGdH6ivyFqz0J7UZKSCGRxBpyClCa6a
	+HGJ7ttj8Ra97S+7zSKSeOdnbwzizVOXxQBCo+OtqbgkFK/VAF5tRrf0PAqHURNCLpyoNladmOr
	W4czvf3We8eCyze1LZpKwyMaG/PxlEZCzuMeGQw==
X-Google-Smtp-Source: AGHT+IHvc9k2oWattriqGHpx3El0OYm+dm99rljLfk88Y7yk69L1blCIMgpRIFKSInBvds7wzUxGvswVs2vA6NerpMI=
X-Received: by 2002:a25:7108:0:b0:dcb:f7a0:b031 with SMTP id
 m8-20020a257108000000b00dcbf7a0b031mr2275869ybc.50.1707827627415; Tue, 13 Feb
 2024 04:33:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210-msm8974-rpmpd-v2-0-595e2ff80ea1@z3ntu.xyz>
In-Reply-To: <20240210-msm8974-rpmpd-v2-0-595e2ff80ea1@z3ntu.xyz>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 13 Feb 2024 13:33:11 +0100
Message-ID: <CAPDyKFrmq4nq2JPQs17z6AyRKY3e6VrMJgjUJJVEhzsf7Off2Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Add RPMPD support for MSM8974
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephan Gerhold <stephan@gerhold.net>, =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 10 Feb 2024 at 17:39, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Add driver support for the RPM power domains found on the different
> MSM8974 devices.
>
> Devicetree integration will come at a later point since also some
> mostly remoteproc drivers need to be adjusted.
>
> Also the MX power domains on this SoC seems to work quite a bit
> differently, we'd need to send raw voltages to it, so these are ignored
> in this series.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

Applied for next, thanks!

Note that patch1 is also available at the immutable dt branch, if soc
maintainers need to pull it in too.

Kind regards
Uffe


> ---
> Changes in v2:
> - Drop MSM8974_VDDGFX_AO in all patches
> - Link to v1: https://lore.kernel.org/r/20240210-msm8974-rpmpd-v1-0-de9355e6842a@z3ntu.xyz
>
> ---
> Luca Weiss (3):
>       dt-bindings: power: rpmpd: Add MSM8974 power domains
>       pmdomain: qcom: rpmpd: Add MSM8974+PM8841 power domains
>       pmdomain: qcom: rpmpd: Add MSM8974PRO+PMA8084 power domains
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml      |  2 +
>  drivers/pmdomain/qcom/rpmpd.c                      | 83 ++++++++++++++++++++++
>  include/dt-bindings/power/qcom-rpmpd.h             |  7 ++
>  3 files changed, 92 insertions(+)
> ---
> base-commit: 6e3fa474051f3d276ea708bdb8e8e1f66d1d3ee5
> change-id: 20240210-msm8974-rpmpd-6e48fe374275
>
> Best regards,
> --
> Luca Weiss <luca@z3ntu.xyz>
>

