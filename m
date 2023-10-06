Return-Path: <devicetree+bounces-6364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E93BB7BB1AA
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 08:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25BC91C2096D
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 06:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2011A5250;
	Fri,  6 Oct 2023 06:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t9QcH4qB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85ECC440E
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 06:43:25 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 665BEE4
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 23:43:23 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40566f8a093so16083545e9.3
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 23:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696574602; x=1697179402; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tHZrwWZAfNjVWk4/AUcfESVqIawgSpGdGoZyI+1qlJk=;
        b=t9QcH4qBdqtSq3VV6Ja74dYsDOzK0D3mF/7SGn2FoA+3rVrWJcMu+5FHLdlYApr8DW
         6TT6qYyj39ktkWH7zPzYipvar42vXzs0Spk6DC86gqiyhvIqJ6a7ARoVWd4g36yJkCPl
         2/gvjntMgaUFG8VWpAUDJy9CwMMtU1MS8D8nX2ZFzezYGOnJrAFOdLxKXyAH+DcQNLJ6
         0FUpiEqjCEfnVwe/O48KwTXsn9MkQqgfaH3P2HZKfxrgYGEVaBfkSQY8Tet4Vv8Rn0y/
         SUJs+MKRPJm6URmATHoowVDplayNIpTi0eveK0s8xUD+yWinULtPPnB85RL5CJmNwyoB
         1KmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696574602; x=1697179402;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tHZrwWZAfNjVWk4/AUcfESVqIawgSpGdGoZyI+1qlJk=;
        b=LCl3m8ujKkIQPMJl4/MRX07alPG9+ToWsXRnarUPkTnSrwvOiZjgoHdwH/yR1jwMwM
         SuIQ+8Wh30umGrA2r4t3DJ2MMGTFovLaI1lif9vhtD4Y4WEr1vXEd6fEO+oxFybFSjU5
         w4MESxxrSV6eohzS2MYVC8RkAkUVW6W/hS8vvBuTpFTlN1OCLlebogM0NgzVKnbkIKry
         seLkcGvm3+WSeuH4cAxBWMiOgAuylqEfLx3NX+s7sJr2900slCE8Y9h0ENK0y44Eohhd
         MBKPYOvF4ZP5SBHDdb/ltxMVlFVeiHUONEVtdax6mAbxZ4WaDz0hgoVOwYc4hM7CqhZX
         fRuQ==
X-Gm-Message-State: AOJu0YysPIM2VhSTC/UWeNvt58OnlMMinL5dFboHHBMygeNFjrByGVLd
	q6wao7T4e2TZmEOKFmB5/iaJ/w==
X-Google-Smtp-Source: AGHT+IEa9D6UEg8Kim6Z9RKpbqTF6yPxbwX33SKhKAYQuYTwCSxIBRvJ5CVQJEe4sosIQ6eGaegeiA==
X-Received: by 2002:a05:600c:b41:b0:405:499a:7fc1 with SMTP id k1-20020a05600c0b4100b00405499a7fc1mr6767148wmr.40.1696574601638;
        Thu, 05 Oct 2023 23:43:21 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y24-20020a7bcd98000000b004064741f855sm3002073wmj.47.2023.10.05.23.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 23:43:21 -0700 (PDT)
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
Subject: Re: [PATCH v5 0/3] Meson S4 HW RNG Support
Message-Id: <169657460045.2128575.14990345978498318753.b4-ty@linaro.org>
Date: Fri, 06 Oct 2023 08:43:20 +0200
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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

[1/3] drivers: rng: meson: add support for S4
      (no commit info)
[2/3] dt-bindings: rng: meson: add meson-rng-s4 compatible
      (no commit info)
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


