Return-Path: <devicetree+bounces-5018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7D87B4C06
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D31CF1C2040D
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 07:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829759CA4A;
	Mon,  2 Oct 2023 07:01:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F79CA44
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:01:05 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D19F4BF
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 00:01:02 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31fa15f4cc6so15535342f8f.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 00:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696230061; x=1696834861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ED3nCHgOaahRi3tOePbQGBavpIZHiHZhel+Y9Fp/+p4=;
        b=wfBzL7Ar2gTHJL2ZtNQpNlK4DtZeN0aZIUaM1VD7ZCijTn/jmoJ4G0VQGcGi+tei2j
         +DQAhY2DLxm0AoAH1cyzI2xIViUhHHWGlFtLPw689VlirZrGS+gI2ysKJ1m8nzQkoIae
         iqf9klJp2tPBMWDCphVhxWpEpvOyuovxQ/pbOeBdqnwAtZGnYhPn6HRPAOIw2TR4ka0E
         9KFwKKFOKBlVTH1aIx7Yq8WifNfWyuR5kI7TJLUf59WX5GYvfgr7EV6XjgTJsxP7bS7w
         coYUWlpU73/wn9AAM8gJV5WcIE7mexGPN8xJYDoqwcOJ35wKTrelkVZVyz5h6F6rxa4K
         0n2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696230061; x=1696834861;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ED3nCHgOaahRi3tOePbQGBavpIZHiHZhel+Y9Fp/+p4=;
        b=NPXuyieFvaZ7Cp9rwRt2RlXirOW1i5fOJWjdj9dW/NTRv7+UPjo4Cvt/gfu1UMllwB
         vl8G3k5WPLD1PL5r8Sr9foSxSq/H0sBPqGUn760rDbLf+RCKkL7MQI2M5ucfX8cPexDt
         heB8BaYe2HHTIjGJ+h2or4/e7T+P1WZDK6qOgFVzDpUaL5iB/mz/mw/tf+mNsqyUDI3d
         /NQXLYWFfrdpRK2Fh6lkc55q8Lv0w62Ow6vs98+90H/WQLDxeYY02Y87MmTSyjvs01nm
         E4vI152mYMGa7AF9+TRcS5HxmeUJz4KHoM509KD57eQz5YaaulrzKP+Mtl6zgXXC3lz8
         RcDQ==
X-Gm-Message-State: AOJu0YwOcYeYNvbVrnqPMOrFD/y6YDx60SB6xq5tQ0Ce47MMGMvU0bpC
	9pjLm4clS7Z0XeEkMkkfKyboEA==
X-Google-Smtp-Source: AGHT+IHnVHHnTOhtd/Btr60iU9/eHOnkZf9kPsbDDvwF0leE0UE71ygHUrODFNhJf2LGR0NcKfWECw==
X-Received: by 2002:adf:e48e:0:b0:317:67bf:3376 with SMTP id i14-20020adfe48e000000b0031767bf3376mr8843141wrm.57.1696230061171;
        Mon, 02 Oct 2023 00:01:01 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id r17-20020adfda51000000b00327c79ca7c6sm2440715wrl.80.2023.10.02.00.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 00:01:00 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linus.walleij@linaro.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 khilman@baylibre.com, jbrunet@baylibre.com, 
 martin.blumenstingl@googlemail.com, brgl@bgdev.pl, andy@kernel.org, 
 Huqiang Qin <huqiang.qin@amlogic.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230922094342.637251-1-huqiang.qin@amlogic.com>
References: <20230922094342.637251-1-huqiang.qin@amlogic.com>
Subject: Re: (subset) [PATCH V3 0/3] Add pinctrl driver support for Amlogic
 T7 SoCs
Message-Id: <169623006024.3465675.18368876466117698542.b4-ty@linaro.org>
Date: Mon, 02 Oct 2023 09:01:00 +0200
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

On Fri, 22 Sep 2023 17:43:39 +0800, Huqiang Qin wrote:
> This patch adds pinctrl driver support for Amloigc T7 SoC (A311D2)
> 
> [PATCH 1/3]:
>   V1 -> V2: Rename amlogic-t7-gpio.h to amlogic,t7-periphs-pinctrl.h
>             Corrected indentation format.
>   V2 -> V3: Updated subject.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.7/arm64-dt)

[3/3] arm64: dts: Add pinctrl node for Amlogic T7 SoCs
      https://git.kernel.org/amlogic/c/d0f3a19a990a8fde6a7730255af74ef8d70c3761

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


