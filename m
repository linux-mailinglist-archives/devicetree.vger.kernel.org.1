Return-Path: <devicetree+bounces-8279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4327C778E
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:03:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CF171C20A61
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5070F3CD05;
	Thu, 12 Oct 2023 20:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eCWALsms"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104FC3CCFE
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:02:58 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 787A9C9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 13:02:56 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-32615eaa312so1230848f8f.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 13:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697140975; x=1697745775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c5PX3vmU8+Vj8vt9h1WPewaDZBGFm1gw8XnL4XGRfQI=;
        b=eCWALsmsmXm8MjUUwm8cVdU70Bpf19uu6rHCH3wRGUtfto+96fPcPSFjjNgbMaIX0w
         3OB1rqQFS3oLwP33wE2o1SODrIPf0DKsVb98fr6u81mircz4xYRDnLkXrZOFNGAXmLuW
         8GIUbmSmKcaJ5sIWxWfjSTbG1x1GzB76p6Gv3LpYXgClhIFjPQFBpdt04S18m9hzc82u
         pzr9CBZRLk8YgJ1wRMqykLqVNDo2MiPVvhpQ3HmKXafRaxJOFtzqL3CvOOquhMoQ/VJW
         X8BtQJNVXeDd4PZHy60Duai68j6+osyaQq5gvX+kT1OHMw2r9vAFBUBmop2gGcxo5xhs
         U3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697140975; x=1697745775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c5PX3vmU8+Vj8vt9h1WPewaDZBGFm1gw8XnL4XGRfQI=;
        b=uN4OwPYeqxlLVj/WugODZv/sUc+lmm7YahgoluSK79I+B9wRVSmgN/DoBnoKJmbn0h
         EVebHgjh57GG0s8j/leHarlpfGLx8KJyTtdOoArIEwp8B3Nggth2dY0XJwXolpZM/MJZ
         kBaUUyjalGGzsFk7AtQUsBKhM6UcLcdihO+24fDBFFX12d6X6fMgTqUackTi/0RFKx/k
         PCPtLRk+h+p1yhR36kUdc/46Oj5SFQ/aPxH6S0XYO/0EA/PUqIzluNrN3whzX6qOglrY
         i2AI7zR4PEnoeI7P4a9kkDnNIO+BOYzLKYvXADGm2Scc3xuixSV0pPX2DbilqL95YGLc
         fcHg==
X-Gm-Message-State: AOJu0Yyr4foacRzh86FZlpY0KiTsru+TR4UjpR1epAOD4ieUIGcI8+9p
	9feFfPuIjDS4Q2XttCtwiNzuiMH9IZrnnVpFwMc=
X-Google-Smtp-Source: AGHT+IG75Ik8+NEqcFu/jc7KU/R2jkk0DH5rTrxFKbzC0EcDU+NsXwc2ZWc4tkvA4ZRUOpoB8JGL2w==
X-Received: by 2002:adf:f407:0:b0:31f:eed7:2fdc with SMTP id g7-20020adff407000000b0031feed72fdcmr22612405wro.35.1697140974743;
        Thu, 12 Oct 2023 13:02:54 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d6b0b000000b00324853fc8adsm19008694wrw.104.2023.10.12.13.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 13:02:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kees Cook <keescook@chromium.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: exynos: Add reserved memory for pstore on E850-96
Date: Thu, 12 Oct 2023 22:02:51 +0200
Message-Id: <169714096778.12426.2726125345142435040.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231008033633.21304-1-semen.protsenko@linaro.org>
References: <20231008033633.21304-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Sat, 07 Oct 2023 22:36:33 -0500, Sam Protsenko wrote:
> Reserve a 2 MiB memory region to record kmsg dumps, console, ftrace and
> userspace messages. The implemented memory split allows capturing and
> reading corresponding ring buffers:
>   * dmesg: 6 dumps, 128 KiB each
>   * console: 128 KiB
>   * ftrace: 128 KiB for each of 8 CPUs (1 MiB total)
>   * userspace messages: 128 KiB
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: Add reserved memory for pstore on E850-96
      https://git.kernel.org/krzk/linux/c/23e4a49943624dd83199989c852565a3ff760fa7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

