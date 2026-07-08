Return-Path: <devicetree+bounces-322748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lvYBIdg0Tmq6HgIAu9opvQ
	(envelope-from <devicetree+bounces-322748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:30:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AA3725484
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:30:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=gIY5LnJk;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322748-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322748-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EBCF930A8EB9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 11:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A4543901B;
	Wed,  8 Jul 2026 11:18:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBD6436353
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 11:18:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783509483; cv=none; b=kmDRI9X0J2izXqxGMbvFmpEwK9zoWRvCWhYWLE7eqIE9/ka/KztYR32JW3vo43HA8d4L6bZ0AnA7kPjcPCbBQFb7pw6o5BGWI59RCSPDYN0JKTkcgDlB64aKpp3wCapyTEVlm6WVHfGBh56JYy4rgh7m3trzbzcBmq59vguLcjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783509483; c=relaxed/simple;
	bh=blyxwiZySzwrx12mnku2kqP86fYz3Uplh4R1YjG+QQU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BqWJSL1hT6oa0deEv/qARcbE3mnyKrIHCY6aMp8s6oW+76BVwcqUw7a4c7tssqsBX0f7+LItNX5xvjw5LVk+Ow+HV7v1qrvQMxB2HiFyLkd2oC3oV9Z50dszY/t4FQh50HUdnWLN8mFLSCWnsDaSChE5U2HhPwKKE4Oh0pJWMLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=gIY5LnJk; arc=none smtp.client-ip=209.85.128.43
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-493c7902f47so3896785e9.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 04:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783509479; x=1784114279; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=dg8dUhD3q+CJyCSEW+eoODBKi7tHbn/E8jcu9sHuzyo=;
        b=gIY5LnJk7b3Jyc6mFEhlSYAUIEf9PJoDu49X5JyMx6PoKFkMkPJALVPHluCvWXyAFy
         3xLUBZe4aNcbQYfenct7HYa01GRtq6IzCCkI0Gg2rVf67Imxw3Zh92MAkkv9SezYgyX/
         WYelZyvMv9Y5NKLHfWxOpFfj8kajLQrjnIOLAMP0uO0ERAEKL7QYnOHL6BtiY+o+r2g7
         T0WZTsRLtyu7C/IJfosv9RQfpT0txQ5SyR8sz4QrzPFjzRzgAFL6AZ7jt/NgHBnLKfrf
         yMBrRA0o2WWLxBp/mcwOvW9pGxW+EYhIGndPpHTbjrVJpu9H4QVufvsmF59inBGXFh16
         ydSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783509479; x=1784114279;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dg8dUhD3q+CJyCSEW+eoODBKi7tHbn/E8jcu9sHuzyo=;
        b=Pwso727NI15/dg52aiy4+iKDYFUYOm2ADi3G+LOXZ0SDKrYZReBFbazYPdjFmfSgXz
         mJxP9H7j2w5Xo3PFWaDnqld4aNGxQ/bffQi8uHBt45o/TByYAZuTajn74Ewt4JI13YJy
         XR6wY6ZDNLR4YytDxP/hnEwaTu2mSqPVHVskycZy4NHbDE3YL+vonCIdkTvrX+ElzS4P
         G8bwBlMs34Tpy4i3UtdexfSQaPauyBj/0RiYUIujRJ830X5aveAWtHrT3eOOYg934jn6
         /irZPYpY2xbE/xQHlo0+NX6+7fdmed2q+QPKgcsWaL5U7nUoI6XWp/hynpEoVV6Sow44
         lUcA==
X-Gm-Message-State: AOJu0Ywiov1CRYLM1iWMkAGkNpz8DxRzNPOWGzFxgCXizjNZJfA4xYp2
	7jjBNn4PAP8j03E3N7HFe4mR6+AC5g3ctTtAzjaZTxzCyV0oKb+D8YXRJdU+MWUQ5HE=
X-Gm-Gg: AfdE7cnLRhEgQ5aXRYl5ZsnuZ+sabZHOmp+8EtRyaihV7M8jTlnt59titrdbbtDkG4J
	nhQDNu1kVAqYHxZz9HKhNzBAmUpRxuIBy0GcHwvulsYx9VuTIWguSHmuyzq/MtNfKo3WHlDcZpD
	2E6A7UlxJ5GZb8MoSvM976QoI44hFa6gfmv19snzrkjTfvr0gkmoqgQyep5IQfRsJcNti7yS5Pm
	0y0PMKSf9Yk+HsMkPIVUlSR+CqRjyAOykMIPMvVqiX/KXNvmTUVCvTuuA3G5LxARPp+jiE8AhaR
	eakI4t+lyBfS/0cq6lL8sedlPdjU4JzqA3H6G6HcRA2QQdv74oB6XsGMZJMeFoMG0eigsv0jAHQ
	z5ZKNEn3B+DxvEFPcyy/ewRazT1yEl6FLx8PJt74FnnDVSqG19Q9l3MA9yj9kgrilQ6iz+FTg3W
	u0QWdn88EayWsp3GO34nDLWMfIfSgl8hfz9rLBrRaZrn+MvdNlwpq4xzkzcKVuCec4kNVeq3TvE
	Wjl/Wgpfvs102Gy4A==
X-Received: by 2002:a05:600c:548f:b0:493:df44:2342 with SMTP id 5b1f17b1804b1-493e6831661mr22461155e9.5.1783509479276;
        Wed, 08 Jul 2026 04:17:59 -0700 (PDT)
Received: from 1.0.0.127.in-addr.arpa (host-79-16-115-126.retail.telecomitalia.it. [79.16.115.126])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0a55be4sm37867694f8f.31.2026.07.08.04.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 04:17:58 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH 0/2] Stabilize serial line numbers on MediaTek Genio boards
Date: Wed, 08 Jul 2026 13:17:39 +0200
Message-Id: <20260708-ccaione-genio-serial-aliases-v1-0-bf22229e9383@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMUQrCQAyE4auUPBtYF1qLVxEf0jhbI2UrGytC6
 d3d6uMPM99KjmJwOjcrFbzNbc41joeG9C55BNutNsUQu3AKPatKnYBHZJt5f8vEMpk4nNGmqLE
 f2pQ6qsSzINnnx1+u//ZleEBfu0nb9gVf1o/ngAAAAA==
X-Change-ID: 20260708-ccaione-genio-serial-aliases-e5f2c28b5ff6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-serial@vger.kernel.org, dlechner@baylibre.com, jstephan@baylibre.com, 
 Carlo Caione <ccaione@baylibre.com>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-serial@vger.kernel.org,m:dlechner@baylibre.com,m:jstephan@baylibre.com,m:ccaione@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,linuxfoundation.org];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER(0.00)[ccaione@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-322748-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ccaione@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,baylibre.com:from_mime,baylibre.com:email,baylibre.com:mid,baylibre.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01AA3725484

On the MediaTek Genio boards only serial0 is aliased in DT, so every
other enabled UART gets a first-free ttyS line number from the 8250
core at probe time. Line numbers are handed out in probe order, and
probe order is not deterministic once a UART defers on its clocks, so
the console UART can lose ttyS0 to another port.

This was observed on the Genio 700 EVK running the Ubuntu 26.04 generic
kernel: uart0 (the debug console) deferred waiting for its clocks while
uart1 probed first and claimed ttyS0. With console=ttyS0 on the kernel
command line the console then pointed at the wrong UART, and the boot
looked like it had hung on the serial console. The failure is
intermittent and depends purely on probe timing.

Pin the line numbers explicitly instead:

 - Patch 1 aliases every enabled UART on the affected Genio boards
   (mt8365-evk, the mt8390 and mt8395 Genio commons, and the Grinn
   Genio SBC), so DT expresses the intended serial<N> -> ttyS<N>
   mapping.

 - Patch 2 makes the 8250_mtk driver read that alias with
   of_alias_get_id() and seed uart.port.line before registering the
   port, so the 8250 core reserves the requested ttyS slot instead of
   falling back to first-free.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
Carlo Caione (2):
      arm64: dts: mediatek: alias all enabled serial ports on Genio boards
      serial: 8250_mtk: honor DT serial aliases

 arch/arm64/boot/dts/mediatek/mt8365-evk.dts              | 2 ++
 arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi    | 2 ++
 arch/arm64/boot/dts/mediatek/mt8390-grinn-genio-sbc.dtsi | 2 ++
 arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi    | 1 +
 drivers/tty/serial/8250/8250_mtk.c                       | 7 ++++++-
 5 files changed, 13 insertions(+), 1 deletion(-)
---
base-commit: 0e35b9b6ec0ffcc5e23cbdec09f5c622ad532b53
change-id: 20260708-ccaione-genio-serial-aliases-e5f2c28b5ff6

Best regards,
--  
Carlo Caione <ccaione@baylibre.com>


