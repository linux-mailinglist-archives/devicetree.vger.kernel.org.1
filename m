Return-Path: <devicetree+bounces-23982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 863CC80D1FA
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 251F5B20E50
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 16:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 162DD13AF7;
	Mon, 11 Dec 2023 16:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oqnSl9xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A79891
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 08:36:19 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c25973988so49397165e9.2
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 08:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702312578; x=1702917378; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bK1lX1hwHqRE0qWwNG1aUzZucX1tBAoUd44IP9gaN34=;
        b=oqnSl9xk2RTxEzD6yma+xPajtnZb4XBh3BBnBDKAKEPUAM2omQ7B1U9RCKM5K+duWl
         UM7GY0xkGuUFhfqq6TDZF9Wd/vPPLm7fJyGi6DMulMyxoYe4ewT9toCLqRirkW8/CpJD
         0rWsm57VT/Q7jYcVEnuGfA/8w+bUf9NHJ3mfAwp/I9BP4yIbFx1wKbqgc1WbIPiP4IRz
         2cnJB+gi8rP6rDaxZFeXnwYfgSJT6Bqh/hDig0vjxnoFJxvo03142EP4R+NSCoWWpc3X
         9u+WICBhxruqK/9ZGVCkw0qGkSxQ0hH7rZTpkYQX+ZKgk8n07ftc6Y3aZ4yG6qF2Qmcd
         FG0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702312578; x=1702917378;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bK1lX1hwHqRE0qWwNG1aUzZucX1tBAoUd44IP9gaN34=;
        b=YHjhNBmsXnA/4PezUUIJNdZk5KR7o0pjTkZydoPsKAEsiMf8fuSHmmd5m9yrKXvUte
         OdGYEJXjICRrH4KcJHJVCR/N7UerImFJterrbdX7Kx3ATLFJaRszUsm1uaxEZbv5+A4a
         MNNXfQYf5VCle1kry5ExiSNy/71eXrIpPIWezvBQSnzozEZTRH4uuOqPMZlmwHEs15Ng
         EziAIx5AKpqranI/MwyDIx7A6YvUFXXHw78QijhoBuN0Ekaa8Z98p7h+ZzxwpqFZxuBd
         w7+RR9rpM8YNGX7u1VC8iv0QqoYogn/9gl3Wa3nJvXdhxhVmcQ7uGqvvmWr4qvS0Dte0
         04wA==
X-Gm-Message-State: AOJu0YyfSHgTV+d8rlqR25XE6QCsFZwg1lYtPoLxT/JZqVimTbTXiHY/
	Ql6qzcUABefaRatroB+eWdMDEg==
X-Google-Smtp-Source: AGHT+IHqlghak/z1rUpsIZnKDYLf/Lji2enrhgj53Kac2omQn554ooTGIUHbzfez0RtduglMO9UMiw==
X-Received: by 2002:a05:600c:510e:b0:40c:67a:b3bc with SMTP id o14-20020a05600c510e00b0040c067ab3bcmr2342567wms.71.1702312577700;
        Mon, 11 Dec 2023 08:36:17 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id w7-20020a05600c474700b0040c41846919sm7404061wmo.41.2023.12.11.08.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 08:36:17 -0800 (PST)
Message-ID: <f3299aaf9392aaedf8cca1c4756605b11c59b98f.camel@linaro.org>
Subject: Re: [PATCH v7 06/16] dt-bindings: clock: google,gs101: fix
 incorrect numbering and DGB suffix
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 conor+dt@kernel.org,  sboyd@kernel.org, tomasz.figa@gmail.com,
 s.nawrocki@samsung.com,  linus.walleij@linaro.org, wim@linux-watchdog.org,
 linux@roeck-us.net,  catalin.marinas@arm.com, will@kernel.org,
 arnd@arndb.de, olof@lixom.net,  gregkh@linuxfoundation.org,
 jirislaby@kernel.org, cw00.choi@samsung.com,  alim.akhtar@samsung.com
Cc: tudor.ambarus@linaro.org, semen.protsenko@linaro.org,
 saravanak@google.com,  willmcvicker@google.com, soc@kernel.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,  linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org,  linux-watchdog@vger.kernel.org,
 kernel-team@android.com,  linux-serial@vger.kernel.org
Date: Mon, 11 Dec 2023 16:36:15 +0000
In-Reply-To: <20231211162331.435900-7-peter.griffin@linaro.org>
References: <20231211162331.435900-1-peter.griffin@linaro.org>
	 <20231211162331.435900-7-peter.griffin@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.49.2-3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2023-12-11 at 16:23 +0000, Peter Griffin wrote:
> 166 was skipped by mistake and two clocks:
> * CLK_MOUT_CMU_HSI0_USBDPDGB
> * CLK_GOUT_HSI0_USBDPDGB
>=20
> Have an incorrect DGB ending instead of DBG.
>=20
> This is an ABI break, but as the patch was only applied yesterday this
> header has never been in an actual release so it seems better to fix
> this early than ignore it.
>=20
> Fixes: 0a910f160638 ("dt-bindings: clock: Add Google gs101 clock manageme=
nt unit bindings")
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>


