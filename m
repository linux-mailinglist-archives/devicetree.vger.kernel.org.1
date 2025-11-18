Return-Path: <devicetree+bounces-239984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A064BC6BBFB
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D26DD364C49
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 21:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94AB83093C1;
	Tue, 18 Nov 2025 21:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="PHu8zihQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295DA2405EC
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 21:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763502236; cv=none; b=EyeZGbkfIP10MWZ0Ea0MDHfvGWXKkBVaV7eA3fTQUZmhecELv5PPtoN8DL0ilQbow5dicfT2RBnVeavw65QbMpqoNjb/AnCDDAzkCIgS/zuADSePZBvP/ugxwj+m8NlBLEFr5/Yi07avSnr6iaLXuardkbRX/YG1Y9dGGtJvcIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763502236; c=relaxed/simple;
	bh=yNtoUy0Rbnu2n90Tsiyfvs/PHlZ4JRBfMndeRvKVC1I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E0asB8WXtTcI1tIR0irthM8OpyuPB4QG+R+CQZHNVpEKk1rjoqzrN/jbWURss6xSDCb148kZ2lYDqWDIfgAjJPc9AOcaqL43nPCLuJfN95t6vcEnEq6sz2N+9bpW33zL9S2uxCr/tzXKHxPpQ7Khwqvp4hMB4WYrQtGt3WgJaLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=PHu8zihQ; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2980d9b7df5so64064285ad.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1763502234; x=1764107034; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yNtoUy0Rbnu2n90Tsiyfvs/PHlZ4JRBfMndeRvKVC1I=;
        b=PHu8zihQVqkC3dx0t/yDA4NO2R5pHQ0LmuBl3Rgjmk2YpuHjlMbHoWUtCDh6j6SzHf
         +W+XZ9nXDmfq+1pDKYCct1f3PFw8dKgOo3gyot4lwQPlUGs0LprcdLrh7YuoD70NloUy
         rCdEGK9Zr9MqgLXhATDhf0E8z7ETYdOteRaVjpJKi0QkgCDzsNIv6MWT8qX6iiVfHpV1
         uuDJvb/qpcxSdQuRkbQic1y0ib4koE2Lg68/wz4b+l3K0zzPwH+rTNT7MaCTP3SPS/wp
         ElJuyAL2/HC2HZhrDIKoikWxIvcOfCWf73sHlQ8fqeFDdnqRejdzWsQEmUW/Utl9rAvX
         BNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763502234; x=1764107034;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yNtoUy0Rbnu2n90Tsiyfvs/PHlZ4JRBfMndeRvKVC1I=;
        b=ruI/dIDi9SuxY7kBD843n1jcSUZ4ktZIe97V1w7YUOnIPJymW03cXHWwB4hJnr6Fy2
         xaHFh2cez0ju2H2MDB5vElCDy6kJvuyX3ykRXew0R0BkTyom6wRHeeUTL+3y0nuqK4XA
         l96kL8RtifQbKjLpWwAPFwXGHHY75KWK+JnZrHKzr81eULZQJ3ID7agVgj/aF7Vtczo8
         EvhTozJ/b6PxnR5Py1ELOlM4ew65AG/f0uwk/F6r4FmSJQhDLyafbytyK+y4ngSOtSc8
         ZqsZVlFP/c4WTtEWZ/yTfml4oZmqF0tpqsF01o6IUuxQc37I0IYIE5QIJJ+Se2z/9XeM
         Y7wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxj3QQ5zYn0ESzzku/we/JnDfVxUiF2RNQLkkRdZervb7RrMFyWS2tplTVdzJ6FvhqBvdTXXKydi6m@vger.kernel.org
X-Gm-Message-State: AOJu0YxYlN6ZK8V3HsLagZr73pFS2HWRocxqdOX9jD+S7wOvbkutMKhB
	ORmC4uPcS1Phcoes8sL1zNSWxeqmCwcfIRn0HYbH0I7pSnXcJZ4drEAW8u+Idz8VEDkIv6MSG67
	1IH4quuduGyMkHzfsAM7V9Oxvr3w8utE=
X-Gm-Gg: ASbGncsmX76S8okVE3xmJHpHNCbvqtgmfwdzp6ANnp8p2Ss03ax2Sfn+DC860b7xRNm
	IAlBImSd5UpsOhUFUa4/kBDWFkNrKGmf+/MLuR4KVXQvZBmD2I1Nfaw+gJ1syuuz/G9MJwkpKud
	lbEGPHJJIrIqpZZR1J71rhF+KbWfRTiVPLJg+XHe0lU7OnuLJOZn3oVrBALZx3LguQttCpvFS5f
	IpywAV2/T0qVRXtLvym5PCbkSKvlLC2RVlafR62E8YJKN5o2j8EbeSJaY9c2Mw6L1ElUbsCniOr
	ce/zAG19PJmRAkJveLJM4J/iasC8
X-Google-Smtp-Source: AGHT+IHd628lGwsZpI++GYNCgzLr60HHxUtuAdRPIXPzSVGABfGpGsyCVSZh4x9JJThN4L2osh0CY47TVhRtaDoTD2w=
X-Received: by 2002:a17:902:ebd2:b0:294:fc1d:9d0 with SMTP id
 d9443c01a7336-2986a750101mr224217285ad.40.1763502234354; Tue, 18 Nov 2025
 13:43:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com> <20251118-soc-info-s6-s7-s7d-v2-2-38e2b31a88d1@amlogic.com>
In-Reply-To: <20251118-soc-info-s6-s7-s7d-v2-2-38e2b31a88d1@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 18 Nov 2025 22:43:43 +0100
X-Gm-Features: AWmQ_bk1k_T1rSzW6trxGV0plWKt9DXsG1Z-FbbeCcRZ7OyTLOcx7IZnQX1bFXA
Message-ID: <CAFBinCBnupgH=6NQH0oPTj3ETVkLfCB6aVyMySAqAxNEAHnuew@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] soc: amlogic: meson-gx-socinfo: add new SoCs id
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 6:59=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Add new definition for Amlogi SoCs, include S6, S7, S7D.
s/Amlogi/Amlogic/

Neil, is this something you can fixup while applying the patch or do
we need a v3?

with that:
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

