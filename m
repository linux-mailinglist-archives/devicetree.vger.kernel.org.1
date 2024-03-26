Return-Path: <devicetree+bounces-53679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD15E88D0B9
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 23:23:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6637E3208C3
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 22:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34FA13DBA4;
	Tue, 26 Mar 2024 22:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i3TgVtHv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D8B1CAAE
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 22:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711491814; cv=none; b=PL4hGX02/z0mN9XjMPiMCM1eh9n6b8R2Sukey8/6E3xE9BYTKTI9a40e/QKwChXw2Eqg7IZ2uDDjFdvGJDB2BEs73gj/IDRG6MHNXTyeTlLMwrub2QIvy/3TZvWto+3YtBpcdLnjj1wP00hABabcG1ODVBuHgABtJat4hm7xHEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711491814; c=relaxed/simple;
	bh=HAbJIrqhgJLKNyQIvmSBkKdvLwG/PoMLULYfRmAzYZs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cPCS6D0y7j2DqT7IBJcURbrIxauSCkH3W4U2Lkh5/CwkEVfv58xn6fYv8rlDa6xs1mI5cLSkQRDFh83kpJy8BeGZ8xZ+SjR7sjmHdZAVKtaRNIAVG8e/7ziLip8ydQBvvtP0Mct3Z+lbZ826dZP22My0K+tLaxhQYxuE8p4I76Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i3TgVtHv; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a4734ae95b3so603744366b.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 15:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711491812; x=1712096612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HAbJIrqhgJLKNyQIvmSBkKdvLwG/PoMLULYfRmAzYZs=;
        b=i3TgVtHvKi9Ipz5KXN1ROKo6FO7VQzaPnE/MAUx6WOWnqu2seMzsnFsbyZvL4/nVWK
         g9oeYfkRYv/b1cjH0f3XSXDOLMdn6GZ3/w0S6w1pXFwlwRsgTkK6PP5XXGclha2Z2biC
         TtjD4vdpBigxi2nK+cVhZBf2uILiholyRG5cE7A5mibdb8LM6/XKkuVVFmUA4k5BAbXn
         Lbznqf4Bjhwc4+wuMa3aQpvbKumOHZaW/J+5M2XLErFOzjLpMuqHFI57Dm3He+U1eSjc
         Mt6ESIQ5BfiFYxVEs3JoF+0iuz5qYd7w41HcT3ARrsbsI0CT8zTWSHb3I7fW3zox+sH2
         L0KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711491812; x=1712096612;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAbJIrqhgJLKNyQIvmSBkKdvLwG/PoMLULYfRmAzYZs=;
        b=TDPWpkZ1LbAwtVFQE1mGGEDJvllAO/nv2qiqXaQV+joyP4RgVbpqSu41lh3mfgCoyU
         hYgjNV6oK9/LTP9rQZOea5fC4QLcToMxLNpw/5QrvxAW38CdUGVEoTfWh0vPPcvkbCr2
         5KhkeMXCrXPOAoWqOs2/aPg/yi5QQNswKvPzBZ9wuYbbkxjeraOsHHB56EtCSO1Ej0nK
         VFLIkFtNF2Q7rJaUWUauulytYDmq7gYQmSAtGoYLsByPZ4HxsSKhY3JxcgCKUGPpkbBS
         4cJiNr8fRnYGDmKW8CVbcTTqe2VbwF97szn3e2UfNAaaZ4G/Sa80Rbd4R1Bfl2I5jAny
         uIhg==
X-Forwarded-Encrypted: i=1; AJvYcCUNfpAThVIZGN41eUdx8/d0XxGOvPmmc9NHU3/q+SX4TPm1DTkpnNUURdo7f+P48hwBG58ZVeg5e7ucS866o4vBP19EaNIfaj0dCg==
X-Gm-Message-State: AOJu0YzeoGAAQdQt6FNGDByKUim9A9gLf4tWLO3VZ+P5uTCvh+1R6xPj
	Ki07yWhER3nVV4aVpF0LcUbn6k9GQceNmf2fWC2/uhe+CMzoJXbW
X-Google-Smtp-Source: AGHT+IGyK5UIAndUPbmYd5slTEu9rs5EVA30Lm435nsjvXpFD3IEpeKf4gdpJPemaN0WJLlb38xHlA==
X-Received: by 2002:a17:906:1784:b0:a47:5171:8d61 with SMTP id t4-20020a170906178400b00a4751718d61mr642738eje.60.1711491811672;
        Tue, 26 Mar 2024 15:23:31 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id e17-20020a1709062d5100b00a4734125fd2sm4632617eji.31.2024.03.26.15.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:23:31 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Pavel =?ISO-8859-1?Q?L=F6bl?= <pavel@loebl.cz>
Cc: Pavel =?ISO-8859-1?Q?L=F6bl?= <pavel@loebl.cz>,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject:
 Re: [PATCH v2 1/3] ARM: dts: sunxi: remove duplicated entries in makefile
Date: Tue, 26 Mar 2024 23:23:30 +0100
Message-ID: <1879937.tdWV9SEqCh@jernej-laptop>
In-Reply-To: <20240320061027.4078852-1-pavel@loebl.cz>
References:
 <20240320001152.4077150-1-pavel@loebl.cz>
 <20240320061027.4078852-1-pavel@loebl.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sreda, 20. marec 2024 ob 07:10:19 CET je Pavel L=C3=B6bl napisal(a):
> During introduction of DTS vendor subdirectories in 724ba6751532, sun8i
> section of the makefile got duplicated. Clean that up.
>=20
> Fixes: 724ba6751532 ("ARM: dts: Move .dts files to vendor sub-directories=
")
>

If new revision is needed, remove this empty line, otherwise I can when
applying.
=20
> Signed-off-by: Pavel L=C3=B6bl <pavel@loebl.cz>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



