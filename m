Return-Path: <devicetree+bounces-6336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B15757BB0B0
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 06:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57A96282043
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 04:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81A021C03;
	Fri,  6 Oct 2023 04:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BubVBVnK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19260629
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 04:12:08 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACCF0DE;
	Thu,  5 Oct 2023 21:12:07 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-690b7cb71aeso1366963b3a.0;
        Thu, 05 Oct 2023 21:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696565527; x=1697170327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Eu6aaTza3btLqwJeXCa4CkRwr35Is1denoYOzgGUDs=;
        b=BubVBVnKyLGkD1JRXfI8KcqPkRkp6I0TmvxOR4jgVUPFZzUnkQR5dmN/A8xkjwUy8Q
         tso9zUAcxD4xN7QFZP9DG6CXzo3Be/NJRLsjyyKu88sqmkEjl5c/hUyEdMwNByBwZ1Zx
         xlvbwaftQ6aGT03+kU8cur7CvkISKAImlCmLss1w37zJZk8zD3eIcIzWQIAn7OvO3y+L
         EAXwjjO5xNvYWKbuPpzkX35RdNHoQlMgR22KSrUeDcr2LHa8OpzP85aZv6evjMsPxLJk
         t4uSRuwSDkHAO3Im0vRJ8VRXTbAF9CUqI6VjIigOFT+An3ZEghzUl+ZuafNFSje53gxk
         KIxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696565527; x=1697170327;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Eu6aaTza3btLqwJeXCa4CkRwr35Is1denoYOzgGUDs=;
        b=hBvt1LbpT7pSQEK+FuB2shG6idoV+xfrhJch5aTNUkbXYgodZAGY4nLWvxXeGSUFR0
         FfZ4J91Kf8DeqS5NUOSxDQdkJBrnX7VWWN31uu61FVp4JHsYfxsxc7ZBwVhyvO4i16fe
         zUiYiijWPwxI+ohnve0FGrg4fdH6oUiGxpixgMJFUSMwjrydIKe1zGWvpiKBJX2f8P83
         GdHrvf2h5wXepyo6fUr8JXQXMRaR0+5X6ije876MknW/g8Zmd3jiQn/CyLZKNCXWsBwB
         4N9IWxrmKay5y3PYp6jOznwrG4yRQnbpchd+R1vGaD21bDdMLCxiqJTyJnEPqiZYuZXH
         LifQ==
X-Gm-Message-State: AOJu0Yw/JPJlkI6ZBBmAf4Jg/XPFQ6THYMK4glrQPC+f8uGHu27tgDKY
	coJPgLv4BoflDyUkTMmzjZM=
X-Google-Smtp-Source: AGHT+IGMGyGp+bKC07hLojC8Cr3py2DZz0u8Od/wENDqekEuvYzB0ZycWJMz3Fi+LUlScx3nmtZa8A==
X-Received: by 2002:a05:6a00:99c:b0:690:fd48:1aa4 with SMTP id u28-20020a056a00099c00b00690fd481aa4mr5494112pfg.0.1696565526810;
        Thu, 05 Oct 2023 21:12:06 -0700 (PDT)
Received: from toolbox.iitism.net ([103.15.228.92])
        by smtp.gmail.com with ESMTPSA id t17-20020aa79391000000b00694fee1011asm401131pfe.208.2023.10.05.21.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 21:12:06 -0700 (PDT)
From: Ayush Singh <ayushdevel1325@gmail.com>
To: greybus-dev@lists.linaro.org
Cc: Ayush Singh <ayushdevel1325@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	vaishnav@beagleboard.org,
	jkridner@beagleboard.org,
	nm@ti.com,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v8 0/3] greybus: Add BeaglePlay Greybus Driver
Date: Fri,  6 Oct 2023 09:40:30 +0530
Message-ID: <20231006041035.652841-1-ayushdevel1325@gmail.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

BeagleConnect is both a technology concept and a line of board designs
that implement the technology. Born from Greybus, a mechanism for
dynamically extending a Linux system with embedded peripherals,
BeagleConnect adds two key elements: a 6LoWPAN transport and mikroBUS
manifests. The 6LoWPAN transport provides for arbitrary connections,
including the IEEE802.15.4g long-range wireless transport supported
between BeaglePlay and BeagleConnect Freedom (the first BeagleConnect
board design). The mikroBUS manifests provide for rapid prototyping
and low-node-count production with sensor boards following the
mikroBUS freely-licensable embedded bus standard such that existing
Linux drivers can be loaded upon Greybus discovery of the nodes.
This patch set provides the Linux-side hooks required for the 6LoWPAN
transport for BeagleConnect on BeaglePlay. Also adds required devicetree
additions.

Tested over `next-20230825`.

Link: https://programmershideaway.xyz/tags/gsoc23/ GSoC23 Blog
Link: https://git.beagleboard.org/gsoc/greybus/cc1352-firmware Zephyr App
Link: https://github.com/Ayush1325/linux/tree/gb-beagleplay GitHub Branch
Link: https://docs.beagleboard.org/latest/boards/beagleconnect/index.html BeagleConnect
Link: https://docs.beagleboard.org/latest/boards/beagleplay/index.html BeaglePlay
Link: https://github.com/Ayush1325/linux/tree/gb-beagleplay Github Repo
Link: https://lists.linaro.org/archives/list/greybus-dev@lists.linaro.org/thread/CBMC25GFHFOPHHKYRHG7UTJAOTONJKGV/ Patch v7

Changes in Patch v8
v7 -> v8:
- fix clocks
- fix reset-gpios
- depend on serdev

v6 -> v7:
- Drop speed variable
- Fix commit message
- add clock-names and descriptions
- fix power lines

v5 -> v6:
- Rename compatible to `ti,cc1352p7`
- Fix formatting
- Use kerneldoc
- Add clocks, power-gpios, reset-gpios to dt bindings

v4 -> v5:
- Move DT Bindings to net
- Rename compatible to `beagle,play-cc1352`
- Expose CC1352 as MCU
- Remove redundant tracing messages
- Fix memory leaks

v3 -> v4:
- Add DT Bindings
- Reorder commits
- Improve commit messages

v2 -> v3:
- Move gb-beagleplay out of staging

v1 -> v2:
- Combine the driver into a single file
- Remove redundant code
- Fix Checkpatch complaints
- Other suggested changes

Ayush Singh (3):
  dt-bindings: net: Add ti,cc1352p7
  greybus: Add BeaglePlay Linux Driver
  dts: ti: k3-am625-beagleplay: Add beaglecc1352

 .../devicetree/bindings/net/ti,cc1352p7.yaml  |  51 ++
 MAINTAINERS                                   |   7 +
 .../arm64/boot/dts/ti/k3-am625-beagleplay.dts |   4 +
 drivers/greybus/Kconfig                       |  10 +
 drivers/greybus/Makefile                      |   2 +
 drivers/greybus/gb-beagleplay.c               | 501 ++++++++++++++++++
 6 files changed, 575 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/ti,cc1352p7.yaml
 create mode 100644 drivers/greybus/gb-beagleplay.c


base-commit: 6269320850097903b30be8f07a5c61d9f7592393
-- 
2.41.0


