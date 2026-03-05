Return-Path: <devicetree+bounces-271336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oF8cB5b6qGnVzwAAu9opvQ
	(envelope-from <devicetree+bounces-271336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:37:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DAA20A984
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:37:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5E083047011
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 03:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D7E27603F;
	Thu,  5 Mar 2026 03:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kdzX1E95"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8408D3368B8
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 03:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772681654; cv=none; b=KA4gb5EyxMXa/Om3GNLg4MnpAaRCQNXOjoOj/djrzzLPUWvcsQGQUqwkmmrZcdERmb8npVgN4RxNZveuxMr+7kswrfo6rHyHMnxyqXcLc8UQlUbK8pmdPEEGuCe96Mu2XmjCDKjQSdLBzSNXF3ZqlHYlTRSpA/9WFXHUU3ttBJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772681654; c=relaxed/simple;
	bh=NMf/UuC+6nAcyqNjQFRCqhg1UGaJWlr8nrgTlWj+vis=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=S9Cb556rVBPxW7HT2/u9RgwuFuvnCD2vkTquCHThy0Jcf73pWHXZGfAgKV15j/Oj37ID3SAAeeZX9ncfHl4Ng3E4TaBmk08JJPuDjRaIQUEbYVbnYyx+//ryp3Y02hkdwPW9ppRTvVBRn2UtNBNfjIltp5U2AE2+UL691iYNyJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kdzX1E95; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-89a05955720so46788716d6.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 19:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772681651; x=1773286451; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lRmZpXw1Na1Jt0sZYZ3Dk4vuOehC4OWy1CGhTN9jzyk=;
        b=kdzX1E95jC5i2I8BeTXMJd/3I+S9bGzgXdoqz9QZGF6br+fpg3DsueLAAsPff7MKmd
         DoVrcJ2VgvrfQ9GHYMz6Ijxu3Q17244rW/F80t8xE5YWv9xqubok8whEcdkgmDtRjChK
         r2CLY/AOWwFkQdT1qbOor23GLuUKMLS1O/UyQWgP74GK9LFmEBj3udYF7Qh7gewsQZKo
         BiDmeyBRYEbpQY3Gbh0eYDB0hKBDIJxlEY+r/Uv5rhyxEV5FOTe51azXb560cyqbU1nA
         OQXZrmJmZttVWNdslX78MrPlMkVHEXlkVCpsfGV55M+4FRgwF15PSvGzOB3D4OnlL9WC
         35/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772681651; x=1773286451;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lRmZpXw1Na1Jt0sZYZ3Dk4vuOehC4OWy1CGhTN9jzyk=;
        b=UYESW4crVMb/FyYPktmHl0eTmxsnKVixFGqZN30u+HwAZojByH7Se5lKPRhDn/+yEh
         7pQn94TE8zunJ01DohuYRb26ej2XBlPabnATFi8BxYZBhKkwWUM4ztG/15KJk0EMgqho
         wOgyKRbnWL7muNP5LhbSEuYZmRJHPJjXQugXz0NA0hev5q4d43DLjBs0VbHuUUw4GtnC
         anonjjA4cHgNrLG5oV8GvEVE5yyTlX+d5g6nwcQAhfh75Nwck2DMvKX+XMlZhvzeJ1/j
         XII8FQ4STEVD6ttCBZvencYQGJaKrD1IyPP8ok/AZ9olMNPa4x13eKJhsBzikwckVQQB
         et/A==
X-Gm-Message-State: AOJu0YwgjycS40gOtVqTFVXb2UFhkFs1bBuIEEpJh8a74QeY8XW8xT8I
	jRI9URiupI2P2ReSszNQRZuqT7V4vShnvAgGHnChWOi+QlanzNSJ6VSv
X-Gm-Gg: ATEYQzxrbbwWxjCJgo+9psteM199j5GZdXABV79MnW637WlZUSHOr+9vEhDGxF5JkUd
	N7bM/sLPaOh+EYttOcC9gFoLLxWIEJOspQWF2iMvVyT1rHnFwC0U4Mamkm0aun+AmzeVp2FCw43
	R0BJ15heRNrsW2DW4sRW3YtsNpWg9F1haAYK13Gs9sfLvvjiCZ3JXKBY61npq6a9OpIhvAVEjEb
	R/IzeavIj+UhJgE4hmQqr6+UhxfuA8OPoH5WVqo5gm9KxXP1IrVGqfsRZGjitoFNGF2/zQUdGAG
	XDH9Mh1L6BNcgl/FOrh0I/vV5hn4IiDY6XJG+V0d3x5ZCfBdOWGR+q+qCYTyZ+PxcDuXdJ3sRkt
	6M3C9svbN7rl8wHklNKKABD9VmO9vUlHnvlAkDgbm1dHhhr5e8LLNVku7y9lR2EdX1lSmFmrU49
	YJwCCb//9KoS3chqvnyqoWGLe7xKUmE4XzSXMtOA==
X-Received: by 2002:ac8:5f11:0:b0:4f1:dfc8:50b with SMTP id d75a77b69052e-508db3fe6f9mr57487911cf.76.1772681651474;
        Wed, 04 Mar 2026 19:34:11 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-507449630b6sm190667601cf.7.2026.03.04.19.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 19:34:11 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Subject: [PATCH v2 0/2] allwinner: a733: Add A733 PCK600 Power Domain
 Controller Support
Date: Thu, 05 Mar 2026 03:34:06 +0000
Message-Id: <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK/5qGkC/3XMyw6CMBCF4Vchs3bMUCoXV76HYVHKFCYKJa0hG
 sK7W9m7/E9yvg0iB+EI12yDwKtE8XMKdcrAjmYeGKVPDYpUSQVp7DQu9lESoamKAvOqISbWda8
 bSKclsJP3Ad7b1KPElw+fw1/z3/qXWnMkVO6i2fVdba26DZOR59n6Cdp937++DMi5rAAAAA==
X-Change-ID: 20260304-b4-pck600-a733-1790e0e48d49
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: B1DAA20A984
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271336-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi everyone,

This series is to introduce Allwinner A733 PCK600 Power Domain
Controller.

Allwinner A733 has this one power domain controller, PCK600, which
shares the same BSP drivers according to the package provided by
Radxa[1]. Unlike A523, A733 does not require the resets, and it also has
different delay values. Apart from these, driver wise, everything else
is the same. 

Add support for A733 power domain controller by making resets optional
on sun55i-pck600 driver, adding A733 sunxi_pck600_desc and dt-bindings 
definitions.
Tested on Radxa Cubie A7Z.

[1] https://github.com/radxa/allwinner-bsp

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
Changes in v2:
- Fit the pd_names into two lines
- Link to v1: https://lore.kernel.org/r/20260304-b4-pck600-a733-v1-0-2f54efdb8cc2@gmail.com

---
Yuanshen Cao (2):
      dt-bindings: power: Add Support for Allwinner A733 PCK600 Power Domain Controller
      pmdomain: sunxi: Add support for A733 to Allwinner PCK600 driver

 .../bindings/power/allwinner,sun20i-d1-ppu.yaml    | 17 ++++++++++-
 drivers/pmdomain/sunxi/sun55i-pck600.c             | 35 +++++++++++++++++++---
 .../power/allwinner,sun60i-a733-pck-600.h          | 18 +++++++++++
 3 files changed, 65 insertions(+), 5 deletions(-)
---
base-commit: 0031c06807cfa8aa51a759ff8aa09e1aa48149af
change-id: 20260304-b4-pck600-a733-1790e0e48d49

Best regards,
-- 
Yuanshen Cao <alex.caoys@gmail.com>


