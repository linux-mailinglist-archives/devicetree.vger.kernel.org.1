Return-Path: <devicetree+bounces-9199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 372EB7CC0F4
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 12:47:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68D0B1C20B5D
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6209A34CC9;
	Tue, 17 Oct 2023 10:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PLduQQK1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC8B4174D
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:47:48 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A1A7B0;
	Tue, 17 Oct 2023 03:47:47 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-408002b5b9fso2724775e9.3;
        Tue, 17 Oct 2023 03:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697539666; x=1698144466; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DngmYhquuUYsmqR6CkC7bFKb939k4yPlXBwM4OfGx8w=;
        b=PLduQQK10k3f3TVtlifoqM5/+H8HsSCsphJLXZ4wC+RDiIcyfY2KDVdxTjg/SScPpY
         bmrw5uU6IJcBvvpJJuXwE8SUNrlRvLJ9SvFqkgeOGgExwQlrTSAlZe+zoaRlDlqoAzcK
         EKW4jHCujmN1+tOdkVBVJgGXa+oEpnjQuUvx2mRNkTEWTfxHg5F2nLNVpPnaHd6HhPHN
         ERBUEnGsLCr2rWEUrCZ/xkYNFZRgSARGklk8oxVdXXyQvuSMe1cxAgJJaGEfZycFVZ2D
         Pzcs69gid1ObQUT09A82yu7Pt4hwtJ759DewnfUHjOgTo2FJ9GYz1DdCa9mdTjVfnQUL
         oi2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697539666; x=1698144466;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DngmYhquuUYsmqR6CkC7bFKb939k4yPlXBwM4OfGx8w=;
        b=UxXXZu/VUpHNsi22ZCVT12+XAFh4k9ANy88nX6sey+JHpm6fiwyXudSd56YBg7Jejq
         vykylsEQB5HoDLEyZUNLuDb96yzRilkUnZgOYWQhLf0j+yMCaI5fjTJ8Kj/6dUmd67FA
         zOmUQ5Vnw+QyLFzVhFZTag/ID3ILEDgDPMiwAfWqfkug2xBPXJj/GPD/hwvbi2XM+gNQ
         2xgqlU6GaVy+KE3IM7DMCqBivWR3jlF/SgYqgi06ggRZS8xg4o52e9MN8/APrKCoM8fV
         iMTV6QMpVhgR5+2NOq8HLPwhOUOUMB32OOPLlPK6UAK9yFGJ+bRMGQ2XwuNQlGEVnOi7
         RMSQ==
X-Gm-Message-State: AOJu0Yyz1J+JcDWkhrXs7xvIKBTQ4ThYjQ3Kx2oFeKQpnW5kfgLq8HLD
	6vNe9V7S4M9Pj1uWZHwjmUxVnKVytLApzQ==
X-Google-Smtp-Source: AGHT+IHdE/vTp1u3u+UEAzAp8nMSLvbdXoZx/WxT6B2rUO1tDVu3mSXH6yQaUgMhYEP9dUoXoGrdqQ==
X-Received: by 2002:a05:600c:a01:b0:405:3f19:fc49 with SMTP id z1-20020a05600c0a0100b004053f19fc49mr1343875wmp.34.1697539665699;
        Tue, 17 Oct 2023 03:47:45 -0700 (PDT)
Received: from prasmi.home ([2a00:23c8:2501:c701:e26d:77db:3f90:862b])
        by smtp.gmail.com with ESMTPSA id a6-20020a05600c348600b0040652e8ca13sm9582037wmq.43.2023.10.17.03.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 03:47:45 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 0/3] Add missing port pins for RZ/Five SoC
Date: Tue, 17 Oct 2023 11:46:35 +0100
Message-Id: <20231017104638.201260-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi Geert,

This patch series intends to incorporate the absent port pins P19 to P28,
which are exclusively available on the RZ/Five SoC.

Cheers,
Prabhakar

RFC -> v2:
* Fixed review comments pointed by Geert & Biju

RFC: https://lore.kernel.org/lkml/20230630120433.49529-3-prabhakar.mahadev-lad.rj@bp.renesas.com/T/

Lad Prabhakar (3):
  pinctrl: renesas: rzg2l: Include pinmap in RZG2L_GPIO_PORT_PACK()
    macro
  pinctrl: renesas: pinctrl-rzg2l: Add the missing port pins P19 to P28
  riscv: dts: renesas: r9a07g043f: Update gpio-ranges property

 arch/riscv/boot/dts/renesas/r9a07g043f.dtsi |   4 +
 drivers/pinctrl/renesas/pinctrl-rzg2l.c     | 263 ++++++++++++++++++--
 2 files changed, 242 insertions(+), 25 deletions(-)

-- 
2.34.1


