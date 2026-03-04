Return-Path: <devicetree+bounces-270847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sN9pEI6qp2lejAAAu9opvQ
	(envelope-from <devicetree+bounces-270847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:44:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFE01FA7AB
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:44:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3892B307D4FB
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 03:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BFB7376492;
	Wed,  4 Mar 2026 03:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cUAhM9YL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026A73644CF
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 03:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772595851; cv=none; b=Dz/8yxPYAVQFeO9JmhZuOi7UAHi7xDgSE+LkZBCoyWz/C4B39XRMAYboKD2KhClvfaDaIshurkgL+lkNGYque6QXn+4/hYKNKbhiF+3t1xD2mPjffH1eKyIoKtn8bI0tdfuBtD/EKu0dahAtEfhxVbS6MiiXBTl3FMFYPgpi6U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772595851; c=relaxed/simple;
	bh=97IdsNQD0Rvl8zYfDuEsgyoRn/f/Y8Pl2UCDFUdnpBA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Si84b3lQyb43LdLH08SzLFo27rD0Plk9NIWWqPuFMrN3QAkdtIS3D54+MSgBNh8CwnGk2ev0AD9zkv2FGL984ez9duNg79M5E1hKTDEI5U5MI/VXJUwxTMJ0a3kmFL/5FX71em2XEKVU18Ko8quqM4a/ZEIIkNYNXnmiu/ZKDmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cUAhM9YL; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-89a133cdd4aso11374366d6.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772595849; x=1773200649; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+UX3cCFsEn7IKh2oIgy8th+LH6QgE2NnzyAhbtsRwgI=;
        b=cUAhM9YLkqPglhBp0FU2zbHz4hXHg/2OzOu/GA+wvGpGZ8/aOHajvxGC7twGJy5Lhv
         rFuiictfBOQ9zcOTWCMwkkKR6+SYxB1LxkysRRfiXbtriaBmOUQQxcE2TWk8RFu1aic7
         2+ysUOI4WPP/9JwmbqGyEC4GcgmKEW4oMoC9HJEFKhpO2YbHCI7m1aivzzrobk77NlQQ
         s2voId35sh5ckMfyC27VRGbYSkJ0P83CnVblrtKcpd+eroDPhLRkKv7HJNGvQfu6Q/q2
         9tqlw1coyByJF7TPbi5josZmzP4Cbk3IGgkZztiky+RmbANm9oNSCcfMnfL+PuqAIpUV
         6BMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772595849; x=1773200649;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+UX3cCFsEn7IKh2oIgy8th+LH6QgE2NnzyAhbtsRwgI=;
        b=uyumaxogOpYXOUpYpzna7siO4shTrBT7v81sLtO26Rdk/tZ9jrjZ9dRwdfxV8U0IJK
         PP34nqmk5pUu9of3vIqavC3gQY4HXM7M0v8nOeglyjs/wSqNMLKUyj+G8sDF82sEVaDl
         Jq97VHba8hoO8RV9G05sSKbgQwLvgSgMconeyQGeH/sjk2y7kaUi/sFfv3r8cngS2xgl
         ixAPTr2M8Xe4ai5uH/c7GUFOooMiXxKtEFEO6PPrL9xXDol6CqsvP2DgnL+H8Is7uUut
         cHm6b/KTVtoS0zrDJvL8rqewkiRPXQM+E+rypXAmNqXErC8NvcDaX2fsthXE3NnF7Xyr
         2WWg==
X-Gm-Message-State: AOJu0YzPUJ1Jjnt1zs7UTeqcD+fjBRBN7Lgi25TrUp5qQhNvTv1TG9lG
	uC2t0e/2RHZ+XYO352cDgpuYk2IjGEXJlST55IoIvCKqszJdBg1j9D76
X-Gm-Gg: ATEYQzwPql7BlxE68OUvD7uCbyYSI56hSYA0lr2s/KPv5GIRedKwS+RtXnA4oKDp5CG
	FuXJKinkKIpAf1Gty+oHZ2XwPe32eKi1b7c1y78KM9AwiDOiRnQ+btpGps42/eLHxQTwqQOpDZC
	OzJhvUMCcbC4VKFipY4jfcAL21+Dr6NujN/gdSBGCuBHE0lI0vpo9IMS8k73xL4QXfHZZ83XwI+
	Wf9ZwtKsqlr1tcPe+GpS5fgaPP/zwKAlw+OVylGI6F+HTBDx6637Jbk24hwik4NPbRRjzH/bzYh
	ovPpWg9baj09lrVrCsd8n2GN+PQZ0jQgwJT1KwOBCZj+MwkMZSpebE43FzlVT/eurcPT1M9CuB5
	bvEtV7YGP0jqNM9coXbd9usYb7mByOVzq5B0YwZ0POPtgyWy61TzpU/uFuASXQn5hupkc5NJvuX
	MZzvYxWUuEgKggJKIFXQ/fG6BFK+5aj8fexBfhUA==
X-Received: by 2002:a05:6214:1d06:b0:89a:ec6:101f with SMTP id 6a1803df08f44-89a1998c1e7mr7800326d6.1.1772595848813;
        Tue, 03 Mar 2026 19:44:08 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899e608cfc6sm88603286d6.14.2026.03.03.19.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 19:44:08 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Subject: [PATCH 0/2] allwinner: a733: Add A733 PCK600 Power Domain
 Controller Support
Date: Wed, 04 Mar 2026 03:43:43 +0000
Message-Id: <20260304-b4-pck600-a733-v1-0-2f54efdb8cc2@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG+qp2kC/x3MQQqAIBBA0avIrBuYUrS6SrSonGoIShQikO6et
 HyL/zMkjsIJepUh8i1JrrOgrhQs+3RujOKLoaHGkiaDs8GwHJYIJ6c11q4jJjatNx2UKERe5fm
 Hw/i+Hwha8cxgAAAA
X-Change-ID: 20260304-b4-pck600-a733-1790e0e48d49
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 9AFE01FA7AB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270847-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi everyone,

This series is to introduce Allwinner A733 PCK600 Power Domain
Controller.

Allwinner A733 has this one power domain controller, PCK600, which
shares the same BSP drivers according to the package provided by 
Radxa[1]. Unlike A523, A733 does not require the resets. Apart 
from that, driver wise, everything else is the same. 

Add support for A733 power domain controller by making resets optional
on sun55i-pck600 driver, adding A733 sunxi_pck600_desc and dt-bindings 
definitions.
Tested on Radxa Cubie A7Z.

[1] https://github.com/radxa/allwinner-bsp

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
Yuanshen Cao (2):
      dt-bindings: power: Add Support for Allwinner A733 PCK600 Power Domain Controller
      pmdomain: sunxi: Add support for A733 to Allwinner PCK600 driver

 .../bindings/power/allwinner,sun20i-d1-ppu.yaml    | 17 ++++++-
 drivers/pmdomain/sunxi/sun55i-pck600.c             | 53 ++++++++++++++++++++--
 .../power/allwinner,sun60i-a733-pck-600.h          | 18 ++++++++
 3 files changed, 82 insertions(+), 6 deletions(-)
---
base-commit: 0031c06807cfa8aa51a759ff8aa09e1aa48149af
change-id: 20260304-b4-pck600-a733-1790e0e48d49

Best regards,
-- 
Yuanshen Cao <alex.caoys@gmail.com>


