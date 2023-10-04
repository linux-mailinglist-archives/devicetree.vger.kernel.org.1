Return-Path: <devicetree+bounces-5928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 743767B8B17
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 20:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2879D2816DF
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF89D1F16E;
	Wed,  4 Oct 2023 18:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aRB7CKIc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424FC1EA87
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 18:46:50 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B318C9;
	Wed,  4 Oct 2023 11:46:48 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c5ff5f858dso600295ad.2;
        Wed, 04 Oct 2023 11:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696445208; x=1697050008; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PXD3JwB7k7KInA/zPG1O5KwkNXcpwCRiREJJeHB9B40=;
        b=aRB7CKIc7N5Q7HE9xr1TdpNijJNGtEW3lYi62HSuPvTwqw6gox6jBc9YCG/JV9pCvh
         PzTqNMHZGMhPfnVlJLLiOCsHf0zRBA/rRCg+rqu8KBR0Vtg72XWjVF4q6lf/IEtHg3yS
         lsgIowYVjROnDZ62TFMkrVJ3lT10XL7LiDkKxKLVrva1c2UV7PQRhzvjtalPqx3HzLqF
         4dHmIoleDCL+qjjhdSLffCNTvUNFPmSQ7E8XvRb+GYovBSPwNJjrqmspauiWBGkYPrQH
         Tla+0hPk1sc696r9uqu1wUznVLyD4KeWN54vZ8GYnLQMAEpBH9CiqSw5mhX0uGCAmYzh
         f5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696445208; x=1697050008;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PXD3JwB7k7KInA/zPG1O5KwkNXcpwCRiREJJeHB9B40=;
        b=m/VwWFbkKWkPp4p0FQVpoVpT9xfMe8zQWje7oy0rlx+JlTEb2PybMOirLlO50Re1y1
         RNN1/mhLjmpXDp+rIXERQv6gL4mikbEww6kNPZR9yhx60xR0/1Z2t4geCHbcaHMTzI71
         Pa/BopBGN0FWDs1PxlTH+4bAVBhu7EYoEk4OOUKfme/xqnMP/aY3pHAQtU7DOv1+h3XL
         +UVZoK9oI0BeuPfPsbCdkLxOntnZdx4etE5VX02eHDi5/8nQErss8XfKTCN6bFVBAtvE
         R+NNvYerd2uBXm9/FAlUJB/Ii4CWyMn8kFyZZJaTGrT5FZFhCM+unlU/yZ2YL1wRV861
         o1YQ==
X-Gm-Message-State: AOJu0YxvRLVTWBl6IhaR1JNLQCLN3Pwtfaoe0xc4TYck2xiZqgnUnF4M
	aKP1QE2gtc22uUA9GUYmbbM9b2nDYfQ=
X-Google-Smtp-Source: AGHT+IGTFkvIxDDTNFDTn1be9zBor9vq4zlQ3n+WWE9iG14rKAErWEsBVhxYkRKjGo8y/JF8XD8WrA==
X-Received: by 2002:a17:903:110d:b0:1c1:fe97:bf34 with SMTP id n13-20020a170903110d00b001c1fe97bf34mr3774660plh.24.1696445207671;
        Wed, 04 Oct 2023 11:46:47 -0700 (PDT)
Received: from toolbox.iitism.net ([103.15.228.93])
        by smtp.gmail.com with ESMTPSA id j13-20020a170902c3cd00b001b9d95945afsm4063903plj.155.2023.10.04.11.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 11:46:46 -0700 (PDT)
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
Subject: [PATCH v7 0/3] greybus: Add BeaglePlay Greybus Driver
Date: Thu,  5 Oct 2023 00:16:35 +0530
Message-ID: <20231004184639.462510-1-ayushdevel1325@gmail.com>
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
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
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
Link: https://lists.linaro.org/archives/list/greybus-dev@lists.linaro.org/thread/NYA3N2JYG3WIRCDXHYINNXYOCSVYRTSF/ Patch v6

Changes in Patch v7
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


