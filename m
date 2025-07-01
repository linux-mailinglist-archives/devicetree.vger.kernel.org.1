Return-Path: <devicetree+bounces-191407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17360AEF2F8
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:17:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7733A1882E29
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 09:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04CD724168D;
	Tue,  1 Jul 2025 09:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="L2zoDFAu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269688F54
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 09:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751361371; cv=none; b=ARoUZn3EUBSWXt4vXe903TgSLeJXsLYruP98Tr+Kbqkr9kn87uNAEPVVMr5bhAkagmqRfwxatyx3mKNcbDJNj+dQJWo5fg72aZoN/RpWc1RCnjK5n0mbku8vQT0em6dy7AoQ7dxOMcEeCbGIc9DGL0/imm8vdr0LSp/EyOGuAH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751361371; c=relaxed/simple;
	bh=5zpX16ZkWjt4vIS0JAKaVDKpl6liuG1nPvdqCAlyYY8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=swMoBunFWWOMam8f2N8cewqp3el0fhN7lK2RxJp5PK2529JvGA9kdhQhYOyyp/AZBbSloen2K3hzNUGEnE6U5GLTCoDeiBQeTOeMcFDW2jjMwSkfTZGe2ZZhjaoaHmLCQG0wM68ZLcW1lRWCs/7GITh0kZIkOkmc/ASC1+LICjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=L2zoDFAu; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-32cd499007aso38541031fa.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 02:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751361368; x=1751966168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ii2WJSGxuN91zGRL+o1Elt7P0y9IW0tcr9T0FJSPak4=;
        b=L2zoDFAuOpssMG+zEbBEg9VxEyXVNGFggvdP0fDQg4sC6WKbb8CnI5gMBf3hXwyZan
         RQ/6NLBOxcoaN6Xt2oZBcN3VagdPao6YPzaXswGLT7VSgSLxsUJtXVJ2OY0QFQwjf2sO
         +Pbhk+YvN3Td1tvqp9rB0pamwmbBYlH8LXQIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751361368; x=1751966168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ii2WJSGxuN91zGRL+o1Elt7P0y9IW0tcr9T0FJSPak4=;
        b=DyZJT5oIqOSw7nG+DjaIPxuSxScK5ipc021J4+xn/LQKhCy7/9D3qW6LP+uvN5MKE5
         fEG7uj9rJMRYDn2jIiwuG6XdjUWEo1NlcVaszaKBAgfQLd1K5xeMHYIE9HEW0ygDqlKD
         LY9OpjCO1Laa8XkyLbhkxBXPh/hNxHjw1MgmQQx73CeXQIXUbTpalCNE7EfttMKY5Lz7
         iCiIdGzU3vk6JXDNZTU/3DPJJ2kibHa2LpLNw20DcyJEyGw5HxsPK04OCyZsauiMmy1z
         49Cnrr5knXB//fYot8aOe0TkpuTNlKiU+PklSSpiUkD5fwRryFys8pu4e2fgoHlIlwH+
         sUiA==
X-Forwarded-Encrypted: i=1; AJvYcCWjM5bOusG2inHVblMFvmkVJBbeg2Vx5y3thqPbDmP7yLXqf9e1Am/RfCr/Sm+NKN3ZvP0XTlH9CrjI@vger.kernel.org
X-Gm-Message-State: AOJu0YzYRNzAdN10lw4Gm0YBN4cZ+c+sAQBbivwjJ5RgCZZLQAI20OyF
	hDqFoKQsghsCBkvGTR7AsWUsGLGJf9H3QqeGmvJlN67tCn8xYJqGtp3ywaGMz4/HhPq8BcfC4hH
	B8+8x6Ng6oMSMmddv0qrvY1wC2e9TNfVcQW1KKK4k
X-Gm-Gg: ASbGnctne5m1fxw62OYt01SMjxnG7+JUDxT1Raot4BswQqWpp+55w4xRP6YndX5sGiA
	i5bevVT4J1TySZ4NZN9rhQE7rlvlrC5q3WbTvkc79kp6XD7qhl3irFIrfvS8WfXvTbHHTdnExZl
	P2XP9uhoc2gFTkqNvyn20EjX6WoyZ7yPQ/1mgkdRaszblTM75JRTdH0ffwe+lgbMD4RWhTFAw=
X-Google-Smtp-Source: AGHT+IHBrDnDLJq/wJvKGLgxQgDrKBxEEuyZmoLKMExSbzXgm4RYBgKbsnJ/qHE5B5f1OiZ34CTPYU5ibJdkRjsWKOo=
X-Received: by 2002:a05:6512:3f1d:b0:553:aadd:1987 with SMTP id
 2adb3069b0e04-5550b9ee8a2mr5372873e87.30.1751361368119; Tue, 01 Jul 2025
 02:16:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250610063431.2955757-1-wenst@chromium.org>
In-Reply-To: <20250610063431.2955757-1-wenst@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 1 Jul 2025 17:15:57 +0800
X-Gm-Features: Ac12FXxeyUHnDez8Q8D4O-LF6jWdCG451UjT4Bbb2Ps3qaRoBzaVTLBPU9xxrc4
Message-ID: <CAGXv+5HDAZ-MBBMk00O+cdcq55KnsKdEAMD7E2uaAf=2LY=1cg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] arm64: mediatek: Enable efuse GPU speed bin post-processing
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lala Lin <lala.lin@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Angelo,

On Tue, Jun 10, 2025 at 2:34=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> Hi everyone,
>
> This is v2 of the MT8188 efuse GPU speed bin post-processing enablement
> patches. In v1 [1] the change was made to the driver. Angelo, the platfor=
m
> maintainer believes the change should be made to the DT binding instead
> [2]. v2 adopts Angelo's argument.
>
> Patch 1 updates the efuse DT binding so that MT8186 is a base compatible
> with no fallback, and MT8188 falls back to MT8186.
>
> Patch 2 updates the MT8188 DT to follow the new binding.
>
> If possible I would like to see both patches merged through the soc
> tree once the DT binding maintainers give an ack. This avoids prolonged
> waiting for the binding changes to land and uncertainty about whether
> things have fully landed or not.
>
>
> Thanks
> ChenYu
>
> [1] https://lore.kernel.org/all/20241223100648.2166754-1-wenst@chromium.o=
rg/
> [2] https://lore.kernel.org/all/11028242-afe4-474a-9d76-cd1bd9208987@coll=
abora.com/
>
> Chen-Yu Tsai (2):
>   dt-bindings: nvmem: mediatek: efuse: split MT8186/MT8188 from base
>     version
>   arm64: dts: mediatek: mt8188: Change efuse fallback compatible to
>     mt8186

Friendly ping. Please take a look and see if this scheme is to your liking.


Thanks
ChenYu

>  .../bindings/nvmem/mediatek,efuse.yaml          | 17 +++++++++++++++--
>  arch/arm64/boot/dts/mediatek/mt8188.dtsi        |  2 +-
>  2 files changed, 16 insertions(+), 3 deletions(-)
>
> --
> 2.50.0.rc0.604.gd4ff7b7c86-goog
>

