Return-Path: <devicetree+bounces-215474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3708B51899
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 15:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F4CD563A1D
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 212F93218B7;
	Wed, 10 Sep 2025 13:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="RX3VqmJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3839321F38
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 13:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757512763; cv=none; b=kl19wJl7hXNMmBMEILNduAXQa8f8F/jrNgYUtkwf8TdIjWrS5REAJx6meBcsxIBkYVzfofZcDPKvXt3No8wlJfsWYbdFjdiTf9U3pwNcJUwo+tg1qookP54PvdwAPiqmWIVQOaaqH+CWZqqODJC7Oq/h7jxRjEdk6hFJs9nYli8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757512763; c=relaxed/simple;
	bh=AWJAwvgvveAZl1A50d2qJ+nKO1wYxvt7+BQ4m1FIVUA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l3ZB5DKjMKHkMXQcxgDBupw5JAwXKFslh9Q7dXKKC8noukAWFlM3+6XKHu7D71t1ys9L1DIiaTESot3Sg/VUJA491gREDUjWM5FpwLT4F5ByxP6NDi1Qyxybq2dEVDOQ5EA0Vc2txTnm59DLC/f0srdCq1Cb6O80Q2tnW5QDE98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=RX3VqmJa; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6188b5ad681so9140746a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 06:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757512759; x=1758117559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3o5U5m9O7nE0eZDTkvDCuOBdIrzGojz2eY5IrxD0WOo=;
        b=RX3VqmJa2b8O97kue4xrkVpuhLeNv4D9ml/AFe2APfEmDOQdSkzAZhdTPcCa6RJGIB
         HC0IsQAPjVWcysCb1nCZeQQ0i/GMIGXvoV+DpkgF+jRop6gF4N4eQ32MSt53eBzHQbCv
         39rzGJsWFL4P5SF/M2b3IEbnwvLqK2ECrRuXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757512759; x=1758117559;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3o5U5m9O7nE0eZDTkvDCuOBdIrzGojz2eY5IrxD0WOo=;
        b=FHajeObfZFrRbavmsWOvkcH9dJ/iyov63460Otci/npisrD/KPxnvuQnyqTbApNaZ8
         Sei5PyHkD7D685X24oPtNkrvdsLQV41s90hDUNAokG4M76B8qmsVohM1a3DerAL2tu8E
         O6fzBUQMDHtgYG757PsvDUluo8HyQaDrbKPEvDFYt3taZoJA5/5aOlm0bxzzdoF70wi2
         5DGLQgDsqxElSwV63IzPn+TqWkey3kixgzKrtXr1DqNtq1VQahX66RyW4Nbi/kVWuu7O
         FkDu9u7h0355nYEzzJQpsbfeffGx24vCPgTZBMpHFbPQm/szvk2v6/73eRRjp+XB/kcE
         rWBA==
X-Forwarded-Encrypted: i=1; AJvYcCVOVIuJ84nvWQ3o1EPj8owGk1uZOqE/kbQo/7rR8Dcf1vGRKg3jsSZMOcfSCR0ASsdYbfqhb9f0T3Jq@vger.kernel.org
X-Gm-Message-State: AOJu0YyQLkyfZkeXtaGxJndkqg0f7e+RmyFxbwwilXTHpBt18UoJBlo8
	R8/2hys3+KzUlQEdE0P8g8bUuQe8dwFmMOc9QaYHTFv1jr2eOeUzdf8thDWKiKhS8Z8=
X-Gm-Gg: ASbGnctLD72IGTHykrRNgijUvMpDLGyf9HGLViabPpa8Dck5RELDH7p9aLbtYHzc+rL
	exxi6sy5ktrtZr66g6sv9gzTGzdY/TO2e4PZi+Qg6DS02ugIm4ab9cR5aoRVjeluWiv3y5M54Ho
	wc9cgRsK7BCUUcxYXKpVj1ivklcmi0+n1S+sBlczgWYoEQtgcErZEdP6KBh1vHlfScgBi8KXyDw
	2kiffOgYtKobkndWvWgXVYIZApaMHwdfHSO8TU0tW4LMP+Vg4PRqMU3YCwiW8sncwTs2Ks3iwoi
	if1s/IO/FLHqXiyWQ2swVpzqiO8ZFFdtGcY2HGr3wuVSWN32aP070EGN2nu3J9VWj3QsS0iLg+I
	taQkdfAl5IAe7VXdVbDoLUYd6QZxoLR0xz8fGwCzW201SIXLpfyE82VFg77EtuyD85sOQ4h9Veb
	T2Q/cMlrzuladKXibVrFYfpn32sssM0SszjcK3Fqn82PpFHkMGeuKCc8/Eck4wrXFhxwqJf42Za
	sI=
X-Google-Smtp-Source: AGHT+IEM5i1cMh4aLi1EphlUfiAbqmiYBmZm0lNR7FL1Faw8bxW5JsLRVOWS0WjIXeABAYnQD9GwCQ==
X-Received: by 2002:a17:907:3ea2:b0:b04:1b90:8d7a with SMTP id a640c23a62f3a-b04b1463381mr1739025766b.27.1757512759136;
        Wed, 10 Sep 2025 06:59:19 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07833a4e37sm172523066b.76.2025.09.10.06.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 06:59:18 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Haibo Chen <haibo.chen@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org
Subject: [RESEND PATCH 0/4] Input: imx6ul_tsc - set glitch threshold by dts property
Date: Wed, 10 Sep 2025 15:58:34 +0200
Message-ID: <20250910135916.3939502-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series allows setting the glitch threshold for the detected signal
from a DTS property instead of a hardcoded value.
In addition, I applied a patch that replaces opencoded masking and
shifting, with BIT(), GENMASK(), FIELD_GET() and FIELD_PREP() macros.


Dario Binacchi (3):
  dt-bindings: input: touchscreen: fsl,imx6ul-tsc: add
    fsl,glitch-threshold
  Input: imx6ul_tsc - set glitch threshold by DTS property
  Input: imx6ul_tsc - use BIT, FIELD_{GET,PREP} and GENMASK macros

Michael Trimarchi (1):
  Input: imx6ul_tsc - fix typo in register name

 .../input/touchscreen/fsl,imx6ul-tsc.yaml     |  18 +++
 drivers/input/touchscreen/imx6ul_tsc.c        | 112 +++++++++++-------
 2 files changed, 86 insertions(+), 44 deletions(-)

-- 
2.43.0

base-commit: 9dd1835ecda5b96ac88c166f4a87386f3e727bd9
branch: tsc_de_glitch

