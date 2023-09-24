Return-Path: <devicetree+bounces-2844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6415E7ACB85
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:02:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 7AC8DB20A4D
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CEFBDDDE;
	Sun, 24 Sep 2023 19:02:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0071BD293
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:02:19 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7996CF1
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:18 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-405621baba7so21041125e9.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695582136; x=1696186936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IUzOQBeCN4IpbMK/sHUfcetB/ZJh3VTgOU3FNKUFPZc=;
        b=UP7pFHFaZzK/RJD1Ts7yD/WHBoTud6Ckl2qmM4N2D1OnHW7w9P50UYCSBYbRpcn3Bw
         IF6fH/eTvSKu2lduv+fGAHeiovCVMlYBfeJBkSTfWizZTRzMrY0SX2bcsM503CRSaQ9J
         ajpdlEJL7MYfCokw8O9skqzPCIWFucMLCp5QAi33BrI+ASC2CtDHHwN1I81zYzmIQBEZ
         0niCFoF5TilHqyD5GV1CPRwMlNxp7pXkaXdn7W0pCXoxPrbrstE4sNiPal4nJnco6GOJ
         V9CIoRleQ8Yg1IHnw4/ywZaOKiWc0uFdxGb2H4FGbTiS2McJcVe0aqlATKviOtBNP2Lj
         /GMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695582136; x=1696186936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IUzOQBeCN4IpbMK/sHUfcetB/ZJh3VTgOU3FNKUFPZc=;
        b=DI7utZzJWLnlTS/r7v5w5Pt63L75dxm1bnc5+Ywf9cyaZCsbopGLITT+cZkV1gILf8
         6A+S9nEZbbJ5H1jUQRZpNDh7tmznK1fFMDyU18+M5gB4/OPG22OgE6hv/bqiZDDTHv/s
         tUQ+qwGFm+Jd6U3IqpN2WcoL0LL6E/BEofo5GEceUcBHAOjIu49P1PyAmlJ9GwOcsXH8
         yv91HBmpJlvmZP+nC4/SQpdCTzEsoSpbngdaDapSqhgVEl+ILTNTWXySC1CK5Vd84fvo
         QEREkNZltwZqRwmQawaNcG3GG0mCXL8mtzidQRbeELB3nytNugiIGIYXgq9CkaTr9vvP
         WFaQ==
X-Gm-Message-State: AOJu0Yx81k42lgLK1mjfSc2+c40hWJJlIXi/gx/cSNhWimCYK+DQMsGA
	pf19PaNd0yXhp7518bRMsFIeYw==
X-Google-Smtp-Source: AGHT+IE0W/VyhNcb5eTQUWd45FjQDZrEaC8N1D0ehhWMDrCyWxbqXd7bkOhDt4WSM5K8sLPL9ecc5Q==
X-Received: by 2002:a7b:cd07:0:b0:401:c52c:5ed9 with SMTP id f7-20020a7bcd07000000b00401c52c5ed9mr3923561wmj.32.1695582136635;
        Sun, 24 Sep 2023 12:02:16 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v2-20020a1cf702000000b003feae747ff2sm12980507wmh.35.2023.09.24.12.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:02:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: bitmain: lowercase unit addresses
Date: Sun, 24 Sep 2023 21:02:03 +0200
Message-Id: <169558197843.54884.11610729516749489406.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230712074611.35952-1-krzysztof.kozlowski@linaro.org>
References: <20230712074611.35952-1-krzysztof.kozlowski@linaro.org>
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


On Wed, 12 Jul 2023 09:46:11 +0200, Krzysztof Kozlowski wrote:
> Unit addresses are expected to be lower case.  Pointed also by W=1
> builds:
> 
>   Warning (simple_bus_reg): /soc/serial@5801A000: simple-bus unit address format error, expected "5801a000"
> 
> 

Patches were waiting long enough on the lists. I assume there are no objections,
at least none were shared, and this just slipped through the cracks. I applied
to my tree for further soc pull request, but if anyone wants to take it
instead, let me know.

Applied, thanks!

[1/1] arm64: dts: bitmain: lowercase unit addresses
      https://git.kernel.org/krzk/linux-dt/c/0b137caaaab462debb1cd342cdc0df307e301bfc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

