Return-Path: <devicetree+bounces-5094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B4D7B5335
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A54DD28416F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FAB2182CF;
	Mon,  2 Oct 2023 12:29:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC3E179BE
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:29:19 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6ACDA7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 05:29:16 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40566f8a093so133722055e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 05:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696249755; x=1696854555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cTJqVBoOgLxU8zj+PMnKpZEI8SgRr76FsWuJmkP+inE=;
        b=b2VPz+shcLvZudZI8QobsNHgb6qOWj52cycG3QPRipuvqqDSu3Kqtw9lX7bILuDQ87
         QMUoYRoOF2Ag3HZRxdpuk/g3BMq4uzyFxg0mkARllB5VUKHfF+jMv5ckgkwUSgkxVdTD
         XRxgbU9pu8ReZIYLQfHiiZdj/IE9k288a8dicWmUVrpoGNRfPYVOm9qkAVAOn9O2sEe7
         626TTlAP3oIC5w5GEJP5z3b0r+mM8QINTelUfHz3xvbL/1SYeCdUg0x1M5BSGqONqJqb
         zfn39ogNReXv4zmK+/iekfVaHtHou+63H0FGRoRUa7XlI7O4ZVhRdR4YsACazO/jtfgj
         47NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696249755; x=1696854555;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cTJqVBoOgLxU8zj+PMnKpZEI8SgRr76FsWuJmkP+inE=;
        b=l5oeiUOsduXjwH1oyjAuIDmbL7FmAkS8D/3soxA99tGLUkVhSMNW/Mr9aiwCTBG4F6
         Ym/s6ZkAp/qoG3nKaEP88Fb1iDDb+vC9Y84lByuSu6ax9URbFne8tN+4SkI20QQMK/UU
         /xnZa3tzfdlwDhh68vUfxgSQxhq0/GLhhf65fkam2/4qzMs6nEssbf8wphuR21FlKfHm
         cdG5qVHfTA+B8Xh+5xdkGqIeaP7hNCgme8hSOCdm5w6Ocdskxiu7wvFzTXWGWhvX4Xzw
         j04s3mGLv9u0Y5lHG/NLRJTe9fFvfFUOo/XpWA7I6y2DyidzpP1GrMij0QCdHKnGr3Gz
         EANA==
X-Gm-Message-State: AOJu0YwfkJAmr/zkAEnuXXxR0kGjFa7NCnddM3tDUoqMHk6krEOe9Vzg
	WMVYLUUDxYdNVg2h0gqS4YBdSg==
X-Google-Smtp-Source: AGHT+IFRHHZHyI7q31hR72m2ZJJLYi9dW2DnTOfh6M0zxWL5XbDOqS+zPZ63hr6D6g2MpN9MwxCxSQ==
X-Received: by 2002:a5d:60cd:0:b0:320:38:9e14 with SMTP id x13-20020a5d60cd000000b0032000389e14mr10225432wrt.7.1696249755020;
        Mon, 02 Oct 2023 05:29:15 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:fcf2:65f1:853c:13be])
        by smtp.googlemail.com with ESMTPSA id s16-20020a05600c045000b0040536dcec17sm7144819wmb.27.2023.10.02.05.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 05:29:14 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v2 0/2] usb: misc: onboard_usb_hub: add gl3510 support
Date: Mon,  2 Oct 2023 14:29:07 +0200
Message-Id: <20231002122909.2338049-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patchset adds the bindings and driver support to trigger the reset
pin of the Genesys Logic gl3510 usb hub.

Changes since v1: [0]
 - fix typo, replacing '.' with ',' in the bindings
 - use existing gl852g data structure

[0]: https://lore.kernel.org/all/20230808100746.391365-1-jbrunet@baylibre.com/

Jerome Brunet (2):
  dt-bindings: usb: add device for Genesys Logic hub gl3510
  usb: misc: onboard_usb_hub: add Genesys Logic gl3510 hub support

 Documentation/devicetree/bindings/usb/genesys,gl850g.yaml | 3 ++-
 drivers/usb/misc/onboard_usb_hub.h                        | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

-- 
2.40.1


