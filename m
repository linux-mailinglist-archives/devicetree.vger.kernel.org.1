Return-Path: <devicetree+bounces-23204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E21E80A731
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:18:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 092E1281703
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 000272F843;
	Fri,  8 Dec 2023 15:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cmCicHum"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56531198C
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:18:36 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3333224c7b9so2118924f8f.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702048715; x=1702653515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fDJhAtFw7QNuGAGl9H/scPLTNO01fU317zwwAd+ymrw=;
        b=cmCicHumTHfM7XCA1bEP2Gwczj6mieywO8Gzo/EamozAXRhnhgoyFWNuJ1YIeX4jIp
         6KtLV4xAzhuaXGsljiyfwMOz8+RcPZilwQIZAIcOtHO+N1UIfUFRjcPKOf6Rq4PS7aN/
         uC1hDnYxZz1DcRxgjSw/nKhUPI5ghgtFASVvLvUwNLiedyX6Z6eUX9WYCP1dBaQZsM1W
         Ms9tkY/ESqUBt+LmxKLakwq2V/KtyphfLhIV2sv9ulDutUO0qNuxwMm5lgjUmjligzwp
         6w8w1XZOc2XQLNTrfJqwhQVwoOjFw0BPYXunf9KbmcB+6arpLdwXqdR1d6TAfGUeHQbC
         nI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702048715; x=1702653515;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fDJhAtFw7QNuGAGl9H/scPLTNO01fU317zwwAd+ymrw=;
        b=hig5WQPyBVwnYjkWVpPn8Db2pp3aV3BewZtMHkJIl7hG0XiTmvrXsUsLhRZOfNx7c2
         hT7IfgOSgv+tiRqDLlrQEYkX//HffYOtawkV6wbX+lOTTisahDCJs1tNu5PCvuPAP/i/
         2553EYx8WBMkvwtZ8ZVZK1MBJ4V1x9kySR1abr2oGsDEZYYJJytv5+cRMx5sghnjr+eE
         rCTfNEu49FOM1UvF7KiLLBQ6I0Rn0KL8QwhfMrG8oCKmwCiKdLd+q4ZQ5yBs/SYenmzo
         EY+YLeks+dmxBEEAsRNclKk4w5H1p42HEkTbbg60gg2d5Y5M9FCH3pMADDL1OJe+ThKt
         WYKQ==
X-Gm-Message-State: AOJu0YzyjysH/oDbF9hSKrUrtsPcjYi7IoTpem2dNZ8UPNh8yIhVgAcQ
	x0WYOs1ydKANPTYgq815arDFug==
X-Google-Smtp-Source: AGHT+IHVtfBSS4vVLH0cQZZ6RumcjOm6eQYQHcCnYJmcBF3hWLk80BVJqfp3DxIT5UGF1ixTnh6a3A==
X-Received: by 2002:a5d:53c7:0:b0:32d:87c8:b548 with SMTP id a7-20020a5d53c7000000b0032d87c8b548mr111329wrw.21.1702048714704;
        Fri, 08 Dec 2023 07:18:34 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id w6-20020a5d6806000000b00336103442d2sm825119wru.76.2023.12.08.07.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:18:33 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231208-s4-dts-v2-0-5a93fa356c5d@amlogic.com>
References: <20231208-s4-dts-v2-0-5a93fa356c5d@amlogic.com>
Subject: Re: [PATCH v2 0/2] Add some devices nodes for S4.
Message-Id: <170204871348.55256.16571594130908656997.b4-ty@linaro.org>
Date: Fri, 08 Dec 2023 16:18:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3

Hi,

On Fri, 08 Dec 2023 15:16:25 +0800, Xianwei Zhao wrote:
> Add some device nodes for SoC S4, including periphs clock controller
> node, PLL clock controller node, I2C nodes, SPICC node, NAND
> controller node, Ethernet MAC and PHY node.
> 
> Add reserved memory for board AQ222 which is used by ATF.
> Enable NAND, SPICC nodes for board AQ222.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.8/arm64-dt)

[1/2] arm64: dts: amlogic: add some device nodes for S4
      https://git.kernel.org/amlogic/c/528016cd2b52001564792c4a68483d44a6fbedad
[2/2] arm64: dts: amlogic: enable some nodes for board AQ222
      https://git.kernel.org/amlogic/c/66fdf773ccffcb5b6673f0a5b6693739e33b5181

These changes has been applied on the intermediate git tree [1].

The v6.8/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


