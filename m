Return-Path: <devicetree+bounces-267457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6P8nMaxjnGkoFgQAu9opvQ
	(envelope-from <devicetree+bounces-267457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:26:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D3C177FB3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44111309136D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD3A2882B6;
	Mon, 23 Feb 2026 14:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QaYz5/JN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A151286D5E
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771856653; cv=none; b=R+Q/slZS32r7N4ZVE2qiFhU51kmYF67VAcq0INirPinf8VROu/xz19ETgAck0l7qaiYlScySVBCQEHpeZ4wdgMWDwAsIFoAC1aO5O1dN/b57eYvs9uyGwjMQKi5lejHLFA96rhdLJN8ktPSTLt5sifYXLFrdk2Yr6iy2QzRCqoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771856653; c=relaxed/simple;
	bh=9y6D6xz5iEV1RlXfd71tFKG5C2AsAHLINlsH8NwvLQ0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aqQiyQLbdCkIOtQhCWMg38cGgyAo8tiEiNXynOZwhCMDhWYVdf62SCD0U0rxe2Gvkq3hD8h4j4a4Pnj2bNBR3P1I9rrJ3c1Mqk45Y5qfiqOcHyXJscLChXwHCgukEJqAbU0TG2K5qsJ7T36JL2nDpr9RWUgk/MWb51xTPwiauSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QaYz5/JN; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-437711e9195so2851984f8f.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771856650; x=1772461450; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I+2zu6waZ9ZINHmOeqTNg+8QIhX87rWd1dofyBo/XGE=;
        b=QaYz5/JN5TIK9QNx94b1ATm0imrQhQ/D3Y1qXMaqSSOY9rLLDiHrWLwAARRhWP65Wd
         n1EPbM2GAttDYW3jCT8oqQx//edKUqhtIik3WtEToWQLyHaM9Zus+vTqMlAjz4YtxjyU
         v5BY8V85/kLyB014VyZqnLFN5c1/iljaYZnCFYRPknqCDZF7hAeyRT0kqRxxOm2pfTGQ
         3PslWgCMF7nvjq0dCPduknf8NgFXIxIR+R8t25WDonAHZs15JIk7TBhZB7auL1Dag/Fe
         eEDCVP3KPKGZFWLBq43Fzhg5+mNmmUheDwJRqdkaa6Ob/Sej2530zxWbPB8aycWxt57P
         Ja7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771856650; x=1772461450;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+2zu6waZ9ZINHmOeqTNg+8QIhX87rWd1dofyBo/XGE=;
        b=Zi6O5vsLCW8a0BhcZisDHwh0isstalQUwZJ4yjOgCjRpaPyMf0HJJygY/2n9HBpulJ
         KnMp86veKUJ8T1ngGHRmD2v6xYWlU7DW0OkBrW6k2N9zmQbr/8KrUBIIMkiMMjYo3Kp0
         WKtKXXBCXd7UXzmxixCaF2+bKDVqHt3lT51MXqqmRH/yvNgDg4p5neHk77/2eUiIW6uy
         Zj8n6QuF+nosxC33A7JaZlHKwjzRuBo7ZXrzz7gBSrRmDyXx5pbmhMZd7ENlS+IwioXt
         afj2Y6k5iQIyqvck+0Xr7urTsnRtoPhXbYLOUhq2Cbj6w5tN8qhAh+UAl0lPY8gQp66N
         BmWw==
X-Forwarded-Encrypted: i=1; AJvYcCVzj8KXI7K9Kqp3pb7K9D/RoajkDtN18BjG3tC3oSsqsIMc1h+eLquRlJQCCqiL25bA+KiTIqbuiNj4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy50wctKuHJAYqekVPoEGGWEMj8nLqR0gJL6KMXc6YOqQ83Y6kq
	TiTFcz7rMMXfVd2s4EJ0XLLRLjKqMBbyaWqL2TynX2anvtIZnz+Jcl0FEFqc33I4
X-Gm-Gg: ATEYQzzuf/RThFOog4dnxvMoE5Wv9K4ex6vNFX5mLyDuHzjGbuGEJ/DM7VWCdlrsXsn
	D3jbG6V5oiWiSjmcmYJkddqqbTWMmkJCYZSE7F+wxvFp8pSAkPmVYUaXOE5S2VfnqWcODZ9xlh3
	hYgeN/1wDfZsmXGcGSoT0aqwq8QNibWxSzivXAU0YajVQiEC8mQgi30ut97AkmtL2fFQ6OuDL5P
	Ky08KaS0DAi+KkX+Oj3MLNm4i/ugpX3iECggslrdHRbRRfIR9NDXNFYIgdKpwcuW71jgVjm5GWO
	CIcfMzgJDt88lA7wNsNxtEFb1s8qWFCJBls81BXVb2qmLiQH/joHhFZmwteoQ2xtYaJ2s6EUfrP
	ugSflMbXo5M02JwF9fP0IpWLIr2gZc7PvCkBFkqlRgmnpYKUsiO6ibOs60u7kqNjPPmIz/B1Ju6
	qb52++CCuUZDKv96cnny2J96j/XH18LTPf7Q14395YPzFRSjJdIQxeecPs9BpVFiw=
X-Received: by 2002:a05:6000:4021:b0:436:30b0:75a0 with SMTP id ffacd0b85a97d-4396f194254mr14347361f8f.37.1771856650195;
        Mon, 23 Feb 2026 06:24:10 -0800 (PST)
Received: from [10.100.102.82] (46-116-183-56.bb.netvision.net.il. [46.116.183.56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970bfa1bdsm18713233f8f.3.2026.02.23.06.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 06:24:09 -0800 (PST)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Subject: [PATCH 0/3] Add support for the Samsung S6E8FCO display panel
Date: Mon, 23 Feb 2026 16:24:01 +0200
Message-Id: <20260223-panel-patches-v1-0-7756209477f9@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y3MywrCMBCF4VcpWRuZpO3YFhHfQ1xMkqkGe7OJR
 ZC+u/GyGfgPzPcSgWfPQTTZS8y8+ODHIYXaZMJeabiw9C610KARtKrkRAN36UZ75SCxRtfuGFy
 lQKSfaebWP7/e6fzrme+PxMbfKHoOgb5sk+3/Kuo8R4CtyqGupJYLdceJ7I1j3Npx7A4f2lBga
 ce+97HJXFEDEquCylblaNngThmjCsvOpKWlEsERivO6vgHnV3Bu5AAAAA==
X-Change-ID: 20260218-panel-patches-696df7e0d810
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Yedaya Katsman <yedaya.ka@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771856648; l=1749;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=9y6D6xz5iEV1RlXfd71tFKG5C2AsAHLINlsH8NwvLQ0=;
 b=bRK40Pbiz6nb8aMZHw2Gw0SSib4spnpKUOIEypjCEEzz9zafYDQ4AM/cItCrg+kY/HpmLeuXD
 JlbZADyy9m0Bb32QxKGHHw0udZ0m9oXx9n7c/BeGyZy1aXE8cyptzNK
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
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
	TAGGED_FROM(0.00)[bounces-267457-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,lists.freedesktop.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 57D3C177FB3
X-Rspamd-Action: no action

This adds a driver to support the Samsung S6E8FCO display panel found in Xiaomi
Mi A3 (xiaomi-laurel). The driver is generated using
linux-mdss-dsi-panel-driver-generator[0].

The mdss reset dependency makes the screen work more reliably.

[0]: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
Original tree with patches: https://gitlab.postmarketos.org/SzczurekYT/linux/-/tree/laurel

Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
Yedaya Katsman (3):
      dt-bindings: display: panel: Add Samsung S6E8FCO
      drivers: gpu: drm: panel: Add Samsung S6E8FCO
      arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Enable MDSS and add panel

 .../bindings/display/panel/samsung,s6e8fco.yaml    |  64 +++++
 MAINTAINERS                                        |   6 +
 .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  |  94 +++++++
 drivers/gpu/drm/panel/Kconfig                      |  12 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-samsung-s6e8fco.c      | 293 +++++++++++++++++++++
 6 files changed, 470 insertions(+)
---
base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
change-id: 20260218-panel-patches-696df7e0d810
prerequisite-message-id: <20260216233600.13098-2-val@packett.cool>
prerequisite-patch-id: 3fba84f11111406e0d530013fd45ad0eb389786b
prerequisite-patch-id: 81440b7f28f9101d3dc5d4bad6dc86e39b81a026
prerequisite-patch-id: 53469d8c9810169d058f1bfd27ac8399038aae74
prerequisite-patch-id: 80809bee71eb6434f6699d5e5f8c7f9d4bcd1ca7
prerequisite-patch-id: 0269e01c9c54a37bb92983635cd516342189aee5
prerequisite-patch-id: e2bbf7c452d4da6d71b1a5194e0d7ce46584e113

Best regards,
-- 
Yedaya Katsman <yedaya.ka@gmail.com>


