Return-Path: <devicetree+bounces-4886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5FE7B427C
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:09:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2A71E1C208D8
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A77318041;
	Sat, 30 Sep 2023 17:09:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A949D168BF
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:09:22 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0BDFDA
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:20 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40572aeb6d0so118419125e9.1
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696093759; x=1696698559; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=edC6x00Inj1s4qyRHimLVzDVlcaNUKPTSDx/R9zDRl4=;
        b=smFJ94/v3yCSzOAmT2ZacqaE7tcnPp0WvRqhAoEvUx53tm6Laplis2NEYqiQeQqD+3
         edvPLIHJmeZTijPrxMLtXGc4U7S+QnNFOi4c1LKDe1GO152OAvg4TdqAWXkkB8n2/D2J
         mTm3apsEOQNdN90RyDVjVm033XO1A4/RrTsMTmASt2rnNLZHem8R8YU1ebPc92UVFTuO
         c593p3FUbXOefloy7NARchloFc3lEfxyoTcHOTmzPR06aToNkf1xuQpdALom1GIF2RzZ
         LGV5zSVdyEtKUtMGihC6Z6aQuZXgr9WulXo7Nyg+ial1Hy+r9A6RHd4GWzirvf2bOggA
         4vnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696093759; x=1696698559;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=edC6x00Inj1s4qyRHimLVzDVlcaNUKPTSDx/R9zDRl4=;
        b=FZ4t4ley8edBZcJIctXJgjz50JASmjo9NooajrCOYkVXASQ9eEkBOAEu3v91XgVKSr
         tjkKl5xq5z1xLAh/t4W6aASnVGZcvcVq6WCXBMHkWoBI59+KDm7ShjVi4SCdYoJJpVlO
         SK7GwDHuCkA4+STpOVxJYby6B1tnQTSQsjXFkcA+OsTjg9YhESlQIKITvB0BVhBVFn4O
         K3BS/iwMERqRxLp42yuqF8o2/XxHwZpDh6zKZj5Ht4V8Jt+goI9DyBoi9nQFa7W6G2JH
         iq7L6ij8q2Wsv5enD0UJw25S8ZHZZoLQtVkfZDkENeCYUwFHYKGabwK7VYmRTx0IEjUM
         mqTg==
X-Gm-Message-State: AOJu0YxKY5LNGgn0snDdZe3vB8r7JfwfRJGIbG+gwkmr5vofl8u2taU+
	5F0Dy6MFZBk9ySDI5FotJvgenQ==
X-Google-Smtp-Source: AGHT+IGIUGd8Wune8NTqwsbYwwRc0eM5/iMcLLF4YPLHnyhIRg7lPOLu+W6bLyngqXqhpfh5VS2few==
X-Received: by 2002:a05:600c:22cf:b0:405:4776:735a with SMTP id 15-20020a05600c22cf00b004054776735amr6876672wmg.2.1696093759123;
        Sat, 30 Sep 2023 10:09:19 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id y21-20020a7bcd95000000b00405c7591b09sm3756368wmj.35.2023.09.30.10.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 10:09:18 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH 0/7] Input: synaptics-rmi4: add quirks for third party
 touchscreen controllers
Date: Sat, 30 Sep 2023 18:08:44 +0100
Message-Id: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABxWGGUC/x2NywrCQAwAf6XkbGBdn+uviIdkjTa4rjWhpVD67
 y4eZ2CYBVxMxeHSLWAyqeunNthuOsg91aeg3htDDHEXUkyYqQijvXWP31Ht5RiOkcLhJOnMDK1
 jckE2qrlvZR1LaXIweej8H11v6/oDsA7GdngAAAA=
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 "Jason A. Donenfeld" <Jason@zx2c4.com>, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=2970;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=5HhZieyBDy198zquZsrV9eoaiwNnkNUkr0zt1cW65t8=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSJMNva2D//tz5y2aTOE/2vO2SJjPwz2wqmL1GqRT8Xq
 f2RlX3WUcrCIMjBICumyCJ+Ypll09rL9hrbF1yAmcPKBDKEgYtTACbilMjwz5pn4SKfbm+ReG2G
 Ozbt+3fpfvfau9Y/RIalykH73In+Wwy/mMIzmIvuBcyRN7vLcqIxWHzWz0cKk8226F//d9n+0wt
 bcwA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

With the growing popularity of running upstream Linux on mobile devices,
we're beginning to run into more and more edgecases. The OnePlus 6 is a
fairly well supported 2018 era smartphone, selling over a million units
in it's first 22 days. With this level of popularity, it's almost
inevitable that we get third party replacement displays, and as a
result, replacement touchscreen controllers.

The OnePlus 6 shipped with an extremely usecase specific touchscreen
driver, it implemented only the bare minimum parts of the highly generic
rmi4 protocol, instead hardcoding most of the register addresses.

As a result, the third party touchscreen controllers that are often
found in replacement screens, implement only the registers that the
downstream driver reads from. They additionally have other restrictions
such as heavy penalties on unaligned reads.

This series attempts to implement the necessary workaround to support
some of these chips with the rmi4 driver. Although it's worth noting
that at the time of writing there are other unofficial controllers in
the wild that don't work even with these patches.

We have been shipping these patches in postmarketOS for the last several
months, and they are known to not cause any regressions on the OnePlus
6/6T (with the official Synaptics controller), however I don't own any
other rmi4 hardware to further validate this.

These patches were contributed by a community developer who has given
permission for me to submit them on their behalf.

---
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>
Cc: linux-input@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: phone-devel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht

---
Caleb Connolly (2):
      dt-bindings: input: syna,rmi4: document syna,pdt-fallback-desc
      Input: synaptics-rmi4 - handle duplicate/unknown PDT entries

methanal (5):
      Input: synaptics-rmi4 - f12: use hardcoded values for aftermarket touch ICs
      Input: synaptics-rmi4 - f55: handle zero electrode count
      Input: synaptics-rmi4 - don't do unaligned reads in IRQ context
      Input: synaptics-rmi4 - read product ID on aftermarket touch ICs
      Input: synaptics-rmi4 - support fallback values for PDT descriptor bytes

 .../devicetree/bindings/input/syna,rmi4.yaml       |  10 ++
 drivers/input/rmi4/rmi_driver.c                    | 134 ++++++++++++++++++---
 drivers/input/rmi4/rmi_driver.h                    |   8 ++
 drivers/input/rmi4/rmi_f01.c                       |  14 +++
 drivers/input/rmi4/rmi_f12.c                       | 117 ++++++++++++++----
 drivers/input/rmi4/rmi_f55.c                       |   5 +
 include/linux/rmi.h                                |   3 +
 7 files changed, 247 insertions(+), 44 deletions(-)
---
base-commit: b0d95ff7653ef6ace66a24d6c09147d0731825ce

// Caleb (they/them)


