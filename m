Return-Path: <devicetree+bounces-70454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E978D363E
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB650285640
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50B5E17F371;
	Wed, 29 May 2024 12:22:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD56413DDAE
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 12:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716985332; cv=none; b=CyqKrmJWBdpL5mfx/ilepXvxm5cHA1r97JCgt/q03zSergjrveWBSNiGzF+Vd5S1uryIJmS2328SfRD6cXAnfz1dIIq0AJcWs0Nik07Rv0tzqWFXhDM0psnN1NnUG2R9xGTA3P1tITI7SZYe77Jfb/1W9b0aai+gjv2sWtXFx5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716985332; c=relaxed/simple;
	bh=R1+FB44QIiomll33cCQtYhYVOAOQBtZwWoKkLynon/0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=ZUQFn7TIOv7cxyAsuc5QJ8VvmiQ5zjhLQVtEFXoTwxjTA+zESJvV9WhwgUxfNyY/Xp/nnDj6v3BO11T4gCKwwvXGfUcmGhQdnXdYYF3wsjP7Ai6zhhUFbqNyK687KgX7bGmgblZ2Asj3yQFACHQlbRVHR/UvJ+tk4YanE27UrQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:1b01:1838:131c:4de4])
	by michel.telenet-ops.be with bizsmtp
	id V0N82C00W3VPV9V060N8uo; Wed, 29 May 2024 14:22:09 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sCIIo-00GdJs-89;
	Wed, 29 May 2024 14:22:08 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sCIJk-009XTz-JW;
	Wed, 29 May 2024 14:22:08 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 0/3] dt-bindings: timer: renesas,tmu: Add more SoC families
Date: Wed, 29 May 2024 14:22:03 +0200
Message-Id: <cover.1716985096.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

	Hi all,

This patch series documents support for the Timer Unit (TMU) on the
R-Mobile APE6 SoC, and on various SoCs from the RZ/G1 and R-Car Gen2
families.

Changes compared to v1:
  - Add Acked-by, Reviewed-by.

Thanks for your comments!

Geert Uytterhoeven (3):
  dt-bindings: timer: renesas,tmu: Add R-Mobile APE6 support
  dt-bindings: timer: renesas,tmu: Add RZ/G1 support
  dt-bindings: timer: renesas,tmu: Add R-Car Gen2 support

 .../devicetree/bindings/timer/renesas,tmu.yaml       | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

