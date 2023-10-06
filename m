Return-Path: <devicetree+bounces-6495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 614C47BB883
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D7001C209C0
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE440208BD;
	Fri,  6 Oct 2023 13:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03131D55B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:04:46 +0000 (UTC)
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CED51E9;
	Fri,  6 Oct 2023 06:04:43 -0700 (PDT)
Received: from francesco-nb.corp.toradex.com (unknown [201.82.41.210])
	by mail11.truemail.it (Postfix) with ESMTPA id 2530C20B4D;
	Fri,  6 Oct 2023 15:04:37 +0200 (CEST)
From: Francesco Dolcini <francesco@dolcini.it>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] power: reset: gpio-poweroff: use sys-off handler API
Date: Fri,  6 Oct 2023 10:04:24 -0300
Message-Id: <20231006130428.11259-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Use the new sys-off handler API for gpio-poweroff. This allows us to have more
than one power-off handler and to have a priority for the handler. Also, add a
priority property so we can use gpio-poweroff even when registering another
poweroff handler or using the legacy pm_power_off method.

v1->v2:
 - Add $ref to restart-handler.yaml in gpio-poweroff.yaml

Stefan Eichenberger (4):
  power: reset: gpio-poweroff: use a struct to store the module
    variables
  power: reset: gpio-poweroff: use sys-off handler API
  dt-bindings: power: reset: gpio-poweroff: Add priority property
  power: reset: gpio-poweroff: make sys handler priority configurable

 .../bindings/power/reset/gpio-poweroff.yaml   |  6 ++
 drivers/power/reset/gpio-poweroff.c           | 82 ++++++++++---------
 2 files changed, 50 insertions(+), 38 deletions(-)

-- 
2.25.1


