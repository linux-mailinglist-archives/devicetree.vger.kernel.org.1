Return-Path: <devicetree+bounces-1795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3665F7A8636
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:09:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52EF31C20A91
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0DF13B285;
	Wed, 20 Sep 2023 14:09:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D0836B04
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 14:09:32 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 459D4AC
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:09:30 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-31dd10c2b8bso6512948f8f.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1695218968; x=1695823768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hwi8Aua8Y+P9FZKHN1BFMedplZvBD6+gBTVYLrMGWT8=;
        b=GhIFimmdd2HdFZnoyN5oFy/44IXbB3IONGmyOE66lrl1c7iOdTs5Gk8ygMw+HTHrAh
         QPyH12aH2pfzJDgtKlMdBvf/oQU7iaTtFWap4klWX2e5xKpT6RpYkF5VEr9j5nYi1wnF
         H5ApV3uHudXutpQ/b4bnSnhtoGrZeQZrVWSD/IluDO02Az5zxN9OJSk015UMu4oqU66g
         hM3r0Ycg/k6Hns5uEa7uprYtxZHI2mTSxipk3USqUPbdS61eJYCKxC3BU621QkM7pfOX
         rgSR3pT58zN0CGVPwtPfkqulmOZXzK+OU6l+Ds9myZPxUDU4UfqwGegVaAwc41aLloY4
         +MKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695218968; x=1695823768;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hwi8Aua8Y+P9FZKHN1BFMedplZvBD6+gBTVYLrMGWT8=;
        b=l3PypoNV1JSv28sbcBQyJb39NIbZks5le0Osb3nrYM58DOdSWUVc0gOMV1Kwb5uLnw
         XZ+Z4acjpUWf5Ss2BW3UDemRCPFUXZJf7OlayiOBUwfRv5GO1NBxiLrt5sX86FLUi7Ty
         J+TDicVVm5TyU9mgS6CIQhP2bRUc1ju0Drlj+Ncbq+G0B06DnTY/9wz/abjoI11ZszOk
         eGwM6WOYGpJO9fkhrJBmonhHnk3YTAolLKbSTlbeGz6InSp9wGj9/hy5dra2vCqAJqPR
         OM7RwHUadj//MoEJpBk0Xelpzp7GJ7XVneen9USrcvVCxleQEdW+Kx7ZElfgoKs6Yzux
         FpEg==
X-Gm-Message-State: AOJu0Yw1AgS1KfNmQA0nqavni53Y1MXs9umPB42GyRjGQl9+m0HLtF6/
	HS5gsv3eQDelr/KmkPYue8c27vak9Yd/N03qBIhAJQ==
X-Google-Smtp-Source: AGHT+IHTJNOjPaxtCMEhcXl924Qdc/tQizDwoWDkol3TLylbsbucUit0glZlNiGcAG4UP+pOmxG/Xg==
X-Received: by 2002:a5d:60c5:0:b0:31f:dc60:13b5 with SMTP id x5-20020a5d60c5000000b0031fdc6013b5mr2391311wrt.25.1695218654230;
        Wed, 20 Sep 2023 07:04:14 -0700 (PDT)
Received: from capella.localdomain ([193.89.194.60])
        by smtp.gmail.com with ESMTPSA id c26-20020a170906341a00b00993470682e5sm9397761ejb.32.2023.09.20.07.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 07:04:13 -0700 (PDT)
From: =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?=A0ipraga?= <alsi@bang-olufsen.dk>
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] clk: si5351: add option to adjust PLL without glitches
Date: Wed, 20 Sep 2023 15:09:52 +0200
Message-ID: <20230920140343.2329225-1-alvin@pqrs.dk>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Alvin Šipraga <alsi@bang-olufsen.dk>

This series intends to address a problem I had when using the Si5351A as
a runtime adjustable audio bit clock. The basic issue is that the driver
in its current form unconditionally resets the PLL whenever adjusting
its rate. But this reset causes an unwanted ~1.4 ms LOW signal glitch in
the clock output.

As a remedy, a new property is added to control the reset behaviour of
the PLLs more precisely. In the process I also converted the bindings to
YAML.

Alvin Šipraga (3):
  dt-bindings: clock: si5351: convert to yaml
  dt-bindings: clock: si5351: add PLL reset mode property
  clk: si5351: allow PLLs to be adjusted without reset

 .../bindings/clock/silabs,si5351.txt          | 126 --------
 .../bindings/clock/silabs,si5351.yaml         | 270 ++++++++++++++++++
 drivers/clk/clk-si5351.c                      |  47 ++-
 include/linux/platform_data/si5351.h          |   2 +
 4 files changed, 316 insertions(+), 129 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/silabs,si5351.txt
 create mode 100644 Documentation/devicetree/bindings/clock/silabs,si5351.yaml

-- 
2.41.0


