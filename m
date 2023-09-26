Return-Path: <devicetree+bounces-3512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9517AF1FC
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 066BE281679
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 17:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 881913D3B4;
	Tue, 26 Sep 2023 17:52:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC6F10A3F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 17:52:06 +0000 (UTC)
X-Greylist: delayed 949 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 26 Sep 2023 10:52:04 PDT
Received: from smtp1.ms.mff.cuni.cz (smtp1.ms.mff.cuni.cz [IPv6:2001:718:1e03:801::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A23B09F;
	Tue, 26 Sep 2023 10:52:04 -0700 (PDT)
Received: from localhost (internet5.mraknet.com [185.200.108.250])
	(authenticated)
	by smtp1.ms.mff.cuni.cz (8.16.1/8.16.1) with ESMTPS id 38QHZev2083218
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Tue, 26 Sep 2023 19:35:42 +0200 (CEST)
	(envelope-from balejk@matfyz.cz)
From: Karel Balej <balejk@matfyz.cz>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Markuss Broks <markuss.broks@gmail.com>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        =?UTF-8?q?Duje=20Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc: Karel Balej <balejk@matfyz.cz>
Subject: [PATCH 0/2] input: Imagis: add support for the IST3032C touchscreen
Date: Tue, 26 Sep 2023 19:35:22 +0200
Message-ID: <20230926173531.18715-1-balejk@matfyz.cz>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch series extends the Imagis driver to support the IST3032C
touchscreen, which is used for instance with the samsung,coreprimevelte
smartphone, with which this was tested. To use it with this model
however, the regulator driver needs to be ported first. Support for this
smartphone is not yet in-tree, upstreaming is ongoing at [1].

[1] https://lore.kernel.org/all/20230812-pxa1908-lkml-v5-0-a5d51937ee34@skole.hr/

Karel Balej (2):
  input: generalize the Imagis touchscreen driver
  input: Imagis: add support for the IST3032C touchscreen

 ...gis,ist3038c.yaml => imagis,ist30xxc.yaml} |  3 +-
 MAINTAINERS                                   |  2 +-
 drivers/input/touchscreen/Kconfig             |  4 +-
 drivers/input/touchscreen/imagis.c            | 99 ++++++++++++-------
 4 files changed, 66 insertions(+), 42 deletions(-)
 rename Documentation/devicetree/bindings/input/touchscreen/{imagis,ist3038c.yaml => imagis,ist30xxc.yaml} (97%)

-- 
2.42.0


