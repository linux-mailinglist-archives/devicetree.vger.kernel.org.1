Return-Path: <devicetree+bounces-23798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A613480C587
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:04:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B6681F2107A
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 910C622078;
	Mon, 11 Dec 2023 10:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ofjlzc+I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7EDBB7
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:04:32 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50c0478f970so4319578e87.3
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702289071; x=1702893871; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dlDvMrT1asX8DIwxy4hQXmmKRl2/sfivmPuoV3hSf5Y=;
        b=Ofjlzc+IYU3NHmDDtIL2zWKs67vl0PQVAs6jeVULRuQRbcwliyan9JKwqUVdgNTMGg
         D2M2hI/NRKkowtsBCAsTQ1LRSVR5CUhdsZdkAqjWyZwML/DAJjNuwJzccWzOihCxWFZe
         3cz/SrQ2YHCustJKFKLl2Yf+HkOGr5se7nuCnsXmGjBccgyWwxoZPVdUG9t2OyPVpU4d
         kOmdWbuzd4Bi+0ZZJNEPId81uDF0Yetxz4FjVWbMBzowgE7SsQSGPl7q244Oy5Hm7FCy
         YriGIk4uICEzqV7MYKIKc8BXFc/9KMFy7BJEy0oXuXZrJxL6UybDlv9oxsDpmt+0VjNG
         ynFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702289071; x=1702893871;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dlDvMrT1asX8DIwxy4hQXmmKRl2/sfivmPuoV3hSf5Y=;
        b=X4kAR1ij2ZyUvP2hBRExkbK9Wr8j1k52Pwl77D5Z76TlALMJLOfqXQsd5WFg9LfzgY
         GsIdeJhEiBy80aTEiqtrEkWKmBe3qRVSSpV8z4oXwFIClcskILJEvBIKMp33hh2hr7VH
         +v8syt/rxWkFcmoG4vaVnAZ9acPqWtxm8Wn9RYER5dh753/CbPwW6G8O2d9fEYJ1jz+8
         03TU9OTrLXDOz82IfTAtb84IlNUobdMs9EjIpsS4EW83FEWtB8sl35JBbDP7ziU7eFaI
         wO9o3hP4umz5v8LXjPmyHIg2KidacyPZljGb4CMS96DDdk+t2HBDF6bCAv+codDQU+Qa
         r8Hw==
X-Gm-Message-State: AOJu0Yx31JNILw4H71nY9by3l1HObj0LVGaO081xvY8h58q6tTw2JmgH
	ESY7IHmOLaOWjY8GGR/SZc54SQ==
X-Google-Smtp-Source: AGHT+IGE0CAwP4QDiJnNgqtN7eWwZHyt1mgacPdvwANjL6HNlCW8mOl+VpfcTEOzlnLHL9+YpJ2Ucw==
X-Received: by 2002:ac2:58d8:0:b0:50b:f05b:7c22 with SMTP id u24-20020ac258d8000000b0050bf05b7c22mr1538255lfo.53.1702289070940;
        Mon, 11 Dec 2023 02:04:30 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id fs27-20020a05600c3f9b00b0040b36050f1bsm12147315wmb.44.2023.12.11.02.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 02:04:30 -0800 (PST)
Message-ID: <0c8532d2bcb6ad5a583e8f716cc88cd5cbae1356.camel@linaro.org>
Subject: Re: [PATCH v6 12/20] clk: samsung: clk-gs101: Add cmu_top, cmu_misc
 and cmu_apm support
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
Date: Mon, 11 Dec 2023 10:04:29 +0000
In-Reply-To: <20231209233106.147416-13-peter.griffin@linaro.org>
References: <20231209233106.147416-1-peter.griffin@linaro.org>
	 <20231209233106.147416-13-peter.griffin@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.49.2-3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2023-12-09 at 23:30 +0000, Peter Griffin wrote:
> cmu_top is the top level clock management unit which contains PLLs, muxes=
,
> dividers and gates that feed the other clock management units.
>=20
> cmu_misc clocks IPs such as Watchdog and cmu_apm clocks ips part of the
> APM module.
>=20
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> Tested-by: Will McVicker <willmcvicker@google.com>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Cheers,
Andr=C3=A9


