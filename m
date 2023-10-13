Return-Path: <devicetree+bounces-8520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 176607C87B4
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 465721C20AA8
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF9619BB2;
	Fri, 13 Oct 2023 14:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="S4iUb1pt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A6A18E2D
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 14:19:33 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E1CC95;
	Fri, 13 Oct 2023 07:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=KQrKVxYQCrMBjcH0ANoR+56jGVR79jGy1Tv47viYRdk=; b=S4iUb1ptzFVW2Zqb2FnCoZZw0z
	nYn6cVrI7xdQWuXOTm523FoDo8w4LMcK1jcxELn7urirnmGy41meYfOBxHf3Byj+Bjp2SCnVYEp57
	0I4C+cRKRGKyK6wtTz1ImCTyJJ6EmFHhCAWlZr1rPWL4uSsMNjs1RKB4kpxt58vv1qJA=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:40430 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qrJ0i-0005Ve-AW; Fri, 13 Oct 2023 10:19:28 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	hvilleneuve@dimonoff.com
Cc: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	hugo@hugovil.com
Date: Fri, 13 Oct 2023 10:19:23 -0400
Message-Id: <20231013141925.3427158-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
Subject: [PATCH 0/2] serial: sc16is7xx: device tree improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Hello,
this patch series fixes style issues and remove a unused 'clock-frequency'
property in sc16is7xx YAML DT bindings.

Based on gregkh tty tree, tty-next branch.

Thank you.

Hugo Villeneuve (2):
  dt-bindings: serial: sc16is7xx: move 'allOf' block after 'required'
  dt-bindings: serial: sc16is7xx: remove 'clock-frequency' property

 .../bindings/serial/nxp,sc16is7xx.yaml        | 22 +++++--------------
 1 file changed, 5 insertions(+), 17 deletions(-)


base-commit: dd976a97d15b47656991e185a94ef42a0fa5cfd4
-- 
2.39.2


