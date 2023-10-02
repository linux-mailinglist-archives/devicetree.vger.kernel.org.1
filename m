Return-Path: <devicetree+bounces-5020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D35E97B4C09
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id D222CB209C0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 07:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60BDB9CA44;
	Mon,  2 Oct 2023 07:01:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02EE17C3
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:01:08 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE51A6
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 00:01:05 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3248e90f032so3660227f8f.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 00:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696230064; x=1696834864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G79IkftTdFffJ/4k2e/DJu7Tk+lTg55yvXL6JLueHng=;
        b=D+YIjttryvGTlKaiDTkTnK4MqiBRuvyRYWR7Zo7M1ToUK4bTn7OrYLiyV8WA1RJ6fw
         9TPbFna7v7HGu3yFF2z+a9lJ92WzUEDq8og0cZUUIW7nbEsHy3LYUQMZ408Yvnlo0ONg
         zpRQXwdYJGJ611snopstnQJb+bKf/dbC2ssPntAYZ6n5fP5DmA8zXMlb6K2lPGd7Nv8N
         Cv1iudEUxyBN95kAFn5J2uMmJ1NmvyvFZOyHM+m01vIIqKL2dVjURIPokDzZO/1ouznQ
         xyMLzsCZveW46oyMAdY18N2xPGty3AcVmj4ggzMoaT1DvqGotzmGf6s89y33hQf6RmkU
         VerQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696230064; x=1696834864;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G79IkftTdFffJ/4k2e/DJu7Tk+lTg55yvXL6JLueHng=;
        b=fD4OmOcnbCnlgxU7o4W5RHpRHjFuXQ181TVJ2stp09XDWfrmjFL7uST8Hc2yX4n33b
         EY3HmCEpskkm8pJO1t11ywvZKWbM03sLYt57qOPAIeWDu5uJeSu8Y1WNCjdcK+UIKMOr
         LDEJGlsDAdUnErPnoZUH6RGQtvRpp2TBAljQGwZ8QWmiPc+yAbWWtnRiOYpoZC/Jxprj
         WNw98FPkjISw9eNMRjObw3B/ovE07drzYHMWiApKL8WezJUd8TrqJJjt4lqOeG0JxD8C
         i3tTcsmg7FfSjL+X0pmNYUjOFwbvt642yzAzNoN4/fwkTOPFDMYoReJnhPTYew82KlCf
         65eg==
X-Gm-Message-State: AOJu0YyzYlOHxrFjUMuFkd8ksOnDHoZHHseOdmYHp3jPbgvJqXCExqr4
	/l8N8O0UbGw8Qs62mIp+wMl9Pg==
X-Google-Smtp-Source: AGHT+IHdV5fE+2gVQbFFIb4wBTGhXybfEbxm/P57E9Y8VuZzaOjCBDQt8iWWiqEYIjJoW67GLsAOKA==
X-Received: by 2002:a05:6000:1a46:b0:323:269d:5a7a with SMTP id t6-20020a0560001a4600b00323269d5a7amr8659126wry.5.1696230063722;
        Mon, 02 Oct 2023 00:01:03 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id r17-20020adfda51000000b00327c79ca7c6sm2440715wrl.80.2023.10.02.00.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 00:01:03 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: olivia@selenic.com, herbert@gondor.apana.org.au, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, conor@kernel.org, 
 khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, f.fainelli@gmail.com, 
 hkallweit1@gmail.com, lists@kaiser.cx, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Alexey Romanov <avromanov@salutedevices.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-crypto@vger.kernel.org, kernel@sberdevices.ru
In-Reply-To: <20230929102942.67985-1-avromanov@salutedevices.com>
References: <20230929102942.67985-1-avromanov@salutedevices.com>
Subject: Re: (subset) [PATCH v5 0/3] Meson S4 HW RNG Support
Message-Id: <169623006266.3465675.18104807906024050196.b4-ty@linaro.org>
Date: Mon, 02 Oct 2023 09:01:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Fri, 29 Sep 2023 13:29:35 +0300, Alexey Romanov wrote:
> This patch series adds hwrng support for Amlogic S4-series.
> Now, S4 uses a new random number generation algorithm.
> This changes implemnents new algo and also adds description
> to meson-s4.dtsi.
> 
> V2:
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.7/arm64-dt)

[3/3] arch/arm64: dts: meson-s4: add hwrng node
      https://git.kernel.org/amlogic/c/1e3dbe8006247386592a2fdce3a52cca15625997

These changes has been applied on the intermediate git tree [1].

The v6.7/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


