Return-Path: <devicetree+bounces-3238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8531A7ADD49
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:37:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 31F71281BA7
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0FD1BDE5;
	Mon, 25 Sep 2023 16:37:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BFA1B270
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 16:37:22 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E930EFC
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:37:20 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99c3c8adb27so865303966b.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695659839; x=1696264639; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XCsL9O31+ub/w4O62oibz3JG1gJ1/+3uXSRPucbY31Q=;
        b=2bFGR/ZzSaMRUjaxM3RDBLphP/E8ulHXAamdNO++LPR88owcCykCiS19rgMKY7KdJP
         ttTI73pR51KINBS4XAOdLyXuCvL4dOzHaTnlqgV84kQouIaTQoZYQW8Ph8CYpcDuncsA
         0yHpabZQ5jiIK/230t47ZEjzEX98sZjrYic8peWwFc2W+K3SXe+zM0eCFHfJ6egX9RrT
         9qy8MHVeNJ3b68lIrVXL3r5TkMaUTfdVfYZ+lrhJ1lpvF2tNkMkCJsd0E7hZycvEygSB
         NmLweh1GKRuNIkoJN7QsSseL3Q70dJ+sji+RDvgU6v8fu7SnN5JkZlY2k+rKtH2Sa6nb
         vImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695659839; x=1696264639;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XCsL9O31+ub/w4O62oibz3JG1gJ1/+3uXSRPucbY31Q=;
        b=EtOwOuzMngpOKouLUCu0m0VH24PIgAtfdWUArI8lzO1F1sZ6n4tj0UbxxmRigfsaAw
         23UCpob92xw9Q0W1EeuWxpQFbNXZ35VKqx+hrEPFiOBpnV8VZKH5uw3z4QPoWiQb+bM7
         IjuyWfKp2/PzUYOQMIElKXFYXTQ9UX9GRmFj050cDB7UbnY1IzhqZt7/5U7GQXdkfwLV
         bZxWTmzVolNo70AhkCNTMs8oL9bRwGqjbfy/Kfzew5bGYd+V7wEJEtRis/Jd3yGGxJ7o
         Pugm4jTAJyp6Yd9EWM7uOx6vdGLGJLDkAjxgDKOd4jGUmXM5KWtBHOiC6N4AswPkVSff
         8yBA==
X-Gm-Message-State: AOJu0YwMboYvmNaHiEnLpDkibRQ8xHafALFgkx2g+zb6iclaLRnMyuR0
	O4SFHvw6Td5tXJDMEFuN7do9KyYzW1zy6axWbmjFPDWQR4drK191aAiE7w==
X-Google-Smtp-Source: AGHT+IFD7lzXMvCXQOFmekS6RNokyWqG7NHLM0il8mO+/QOBoiAPubZ810+kAeu1PedLTs6VzXhNk88WVq2e3EOI64o=
X-Received: by 2002:a17:906:c14f:b0:9ad:a4bd:dc67 with SMTP id
 dp15-20020a170906c14f00b009ada4bddc67mr9258502ejc.50.1695659839417; Mon, 25
 Sep 2023 09:37:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921144400.62380-1-dlechner@baylibre.com> <20230921144400.62380-10-dlechner@baylibre.com>
 <20230924185902.579a444b@jic23-huawei>
In-Reply-To: <20230924185902.579a444b@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 25 Sep 2023 11:37:08 -0500
Message-ID: <CAMknhBEsiaSu87Xi1J4BZHrrz4wOovHUVCJz1BgcG00LGJk+gw@mail.gmail.com>
Subject: Re: [PATCH v2 09/19] staging: iio: resolver: ad2s1210: use regmap for
 config registers
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

> > -     if (ret & AD2S1210_MSB_IS_HIGH) {
> I guess this was meant to be a sanity check on the chip responding.
>
> > -             ret = -EIO;
> > -             goto error_ret;
> > -     }
> > -

Yes, according to the data sheet, if this bit is set, it means there was a
configuration parity error. This test has been moved to the
ad2s1210_regmap_reg_read() function.

