Return-Path: <devicetree+bounces-23805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA37180C64B
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EC421F20F98
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0EE24B21;
	Mon, 11 Dec 2023 10:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VObXoy5G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C702018D
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:23:03 -0800 (PST)
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-77f3d75dafeso259401385a.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702290182; x=1702894982; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8uwL1lLxX1dFaUiWFiQrXZhQs3hhD/dlzqmlkyytJpw=;
        b=VObXoy5GmaHZsOWqlwAdp9QVI/50PLwml3dlWF+7GalOLOwh9KU+k6Hl8eaxLfgBoF
         FeE+vA9sLhMdiyYHOAWWfVb0hJBb2aM34vWORFdS7ipsCJ9YNUB50+wrr8kslc/l6I2N
         ba3PcDB+88xAo7huLJGtog5B4Fw5GR99HKozERZUyQRlzhX8XCW5go9PEEqi+iMqVIyQ
         Ck0XnOAOWd4INk37P5gYjHMmZlkV2N9IkJdONdet3CulSGhz8fWTiKcS4hi3NnmR/W+y
         oWpCzUKhouK//48q0+Hrot3p2mC3ALGi2psuBBgiz0CaLyXeNlDgYsChM2791+JuQxoI
         Y+wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702290182; x=1702894982;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8uwL1lLxX1dFaUiWFiQrXZhQs3hhD/dlzqmlkyytJpw=;
        b=gMl6ZVnitSDoZ7PWGG1osPkEC15XfEjzokRGEK/kyt2sAe5oJj8u8Laj5WmP3in06I
         Ei5UeboPTuka8PdRrbwKvx9hwRhE5T6uNijcVKx3OD5jLgo/IzM5Aw4DPyl4QziWUiuf
         kNoFVfUthZsgSHfhzDHhamiZTr3M9GEFKEBH4MZcDSkgrxbTMyKN7AgW5mDezSMFgjGE
         tQWFLD/LPF1CLb+dzuLV0qLr50xARyniPsjInpyMRzdlObPqKQRNvGVvZIYpdOVGTZeg
         8qaIiGiJkXfSbG3BNgJ9CBsW8CcNDXdDM/dUZmZlSV04ak0b9Jzr2MBtKLoUZjtZWihi
         34mw==
X-Gm-Message-State: AOJu0Yy8LFL1KW6STgz09TiVebHhgWIHGisG9WMPmOw0JnZqMnu+LNJK
	HjwzMydcdOlJB7fqVNHX8tJR/OC7cERqZAC41mef5w==
X-Google-Smtp-Source: AGHT+IHqP/co+Erp1KyVxk9Vrb7BjW2fZ076cQiX9m6z1AAqfzfzOVELbNhXJDqCOlCh75GXJdg46xQJtROICe7jQ3I=
X-Received: by 2002:ad4:50c3:0:b0:67a:c8e4:e692 with SMTP id
 e3-20020ad450c3000000b0067ac8e4e692mr5048288qvq.100.1702290182193; Mon, 11
 Dec 2023 02:23:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209233106.147416-1-peter.griffin@linaro.org>
 <20231209233106.147416-15-peter.griffin@linaro.org> <9ffd229e-cf1b-4508-ba74-d5a000c54582@linaro.org>
In-Reply-To: <9ffd229e-cf1b-4508-ba74-d5a000c54582@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 11 Dec 2023 10:22:51 +0000
Message-ID: <CADrjBPrWQ9EUDDqZ6Nxr-z93rzZf0sJVVFVZk58s1ErmkUJpMw@mail.gmail.com>
Subject: Re: [PATCH v6 14/20] watchdog: s3c2410_wdt: Add support for WTCON
 register DBGACK_MASK bit
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi folks,

On Sun, 10 Dec 2023 at 14:24, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 10/12/2023 00:31, Peter Griffin wrote:
> > The WDT uses the CPU core signal DBGACK to determine whether the SoC
> > is running in debug mode or not. If the DBGACK signal is asserted and
> > DBGACK_MASK bit is enabled, then WDT output and interrupt is masked
> > (disabled).
> >
> > Presence of the DBGACK_MASK bit is determined by adding a new
> > QUIRK_HAS_DBGACK_BIT quirk. Also update to use BIT macro to avoid
> > checkpatch --strict warnings.
> >
> > Tested-by: Will McVicker <willmcvicker@google.com>
> > Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
>
> Guenter, Wim,
>
> The watchdog patches are kind of independent, except that bindings has
> conflicting re-organization which I took via my Samsung SoC tree. If it
> is fine with you, please provide acks or review and I will take the
> watchdog changes.
>

Just to add, without the Watchdog gs101 changes the system will reset
after ~60 seconds, as the bootloader is left running by the
bootloader. So it would be nice to get patches in as well if possible.

regards,

Peter.

