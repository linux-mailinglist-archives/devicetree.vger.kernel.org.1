Return-Path: <devicetree+bounces-6875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FEC7BD5DA
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 10:54:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA5F11C20937
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 08:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2631567D;
	Mon,  9 Oct 2023 08:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IwIyqntZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223D94692
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 08:54:00 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41A8E185
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 01:53:47 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-31fa15f4cc6so4250989f8f.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 01:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696841625; x=1697446425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5pyYgDH5Sj0yCWzvyS4ZZ4oeovk0or3XiHl2Z6dYIk=;
        b=IwIyqntZm9kbKO/1iEDjMCF5bMLXQYYPKqUT8rLDXlXJnN3vAYyWzGT91BIm/NBC85
         b4zcz+dqD3dLA385UibDxhewhxFQ9N0M3HL+QX5t3f5ClEkKmzySrXlXG3Dg8FpdtA8q
         +Q7C/dDBaSHBvKEoGULfZYTWEDRPSe53jdItqvZcOoaHD6y7VNtSSxxNkGUGMEBcbZpJ
         EV2v0H1ZVl6xbecZr1DHzyOlhwGdsjYOZ/4EbhAdJ87q+SaXt8JKG0m82+rsGKVK9a6X
         iZQv7GDSlluzcAOWGWsH+cljAFiweZgmSlv5aOrinV20ala4kkRb7gDfvgEoJdGoP4uo
         9RoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696841625; x=1697446425;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q5pyYgDH5Sj0yCWzvyS4ZZ4oeovk0or3XiHl2Z6dYIk=;
        b=wDjjoHwdViQ4m5LhRvhrE/gOHp2Il+oNZJCeFPAJ001klTO+pS9jO1kIR89rpibJ43
         Jd4Sv+FLc74OfjprOYqwuzftwJVYH1DOBKcrthqYM6ylq7z+GCxLFZWSsbRfvarWp4wv
         A4FMP32GaLEZGLNfBosqXoolQAUTo+r91EfYTHRGMqGD+ltY113xQP0yipSxiHd8k/u6
         7zxF2isPa++7Is088szjm2OsUOQaAFKDo+SJvfhdgx2//pyaQLnJbqNWZuPd8bxefNEK
         +gaDa4gSjLePmghvnUFp9J73IQJszAjQ0dn/7WtEQNdIofPEra8q6tCaX8hHTgNjWvFS
         ikyw==
X-Gm-Message-State: AOJu0Yzxaw7OWTR89AHXYf9ONBcLJdD7YSbu2aBR+GDs0nfbuM9mxSNv
	Ps+bNtN3S6wIgB+VE+W0CLHgZg==
X-Google-Smtp-Source: AGHT+IE4vUOSiqi6La9eRS2WThKGCcdTlP12sUEzDm+D85CLrud1dbwZUTiOhB83Ya/8gzG6puFrSw==
X-Received: by 2002:a5d:4b83:0:b0:321:67d8:c3e7 with SMTP id b3-20020a5d4b83000000b0032167d8c3e7mr12281114wrt.12.1696841625518;
        Mon, 09 Oct 2023 01:53:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y14-20020a5d4ace000000b00327cd5e5ac1sm8991293wrs.1.2023.10.09.01.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 01:53:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: jbrunet@baylibre.com, mturquette@baylibre.com, khilman@baylibre.com, 
 martin.blumenstingl@googlemail.com, 
 Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: kernel@sberdevices.ru, rockosov@gmail.com, 
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 George Stark <gnstark@salutedevices.com>
In-Reply-To: <20231006114145.18718-1-ddrokosov@salutedevices.com>
References: <20231006114145.18718-1-ddrokosov@salutedevices.com>
Subject: Re: [PATCH v1] arm64: dts: amlogic: a1: support all i2c masters
 and their muxes
Message-Id: <169684162458.1721642.4981254140997404903.b4-ty@linaro.org>
Date: Mon, 09 Oct 2023 10:53:44 +0200
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

On Fri, 06 Oct 2023 14:41:45 +0300, Dmitry Rokosov wrote:
> A1 SoC family has four i2c masters: i2c0 (I2CM_A), i2c1 (I2CM_B), i2c2
> (I2CM_C) and i2c3 (I2CM_D).
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.7/arm64-dt)

[1/1] arm64: dts: amlogic: a1: support all i2c masters and their muxes
      https://git.kernel.org/amlogic/c/f2d2200e47e942e4df16f0fe8a30aa1d91e4831a

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


