Return-Path: <devicetree+bounces-267641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AICdBQm4nGkqKAQAu9opvQ
	(envelope-from <devicetree+bounces-267641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:26:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6EB17CDB4
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:26:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 63332302D95D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FF39377568;
	Mon, 23 Feb 2026 20:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fhZ7J4OY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9866377559
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 20:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771878406; cv=none; b=aIWtjPptlKW3Jgemihy84N2atpyurkdxKi8FWE/lCG6n7wCizs9h6WTU5HjB6h3q4+dpqOTmrT1RMEITQpFeaFyEtzaPdbRndybeB9fAcyZEUBOV8Cnv2RsEFeZaq3Xa15ZWK2WB46UI8fl3nJzFnDNXMl7dGosx6aeQWJFhH+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771878406; c=relaxed/simple;
	bh=8bHk8MdMB1v+e83W/P1wN/oW8o7vVn+ttLbKDWFw8pU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jXX8G16PDcxDmIEaS17zZBsKfY84wM72j/adJl9WhdDrc5pYDZ+Zlu/yK4KSS1r5KJ3ALefp3XseaWS1ofRpIPcoll7jouGyJwO366dcikeRcrC5DiijrnaKEKK4PaNp5sl0p4ZcNhJ+fFD5ZxXaHGFD7c5tO4X3vJH9L/M3Zx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fhZ7J4OY; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4377174e1ebso3668889f8f.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771878403; x=1772483203; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ivLFEX0VjM8aamrUCn9NRe0LlRXjsOp8n2ePF/1BUV0=;
        b=fhZ7J4OY3FKV4R6rCgFDyHZl3bJpfdfY2Zc78ev1RF9Hz1NGq+syjNNGpmWvi/kmMM
         XGKY4RC99Mwce2Me9RDlwb5D+dYvp/kiv0/1km6wa2XplvoNjAPIDfE203ktfOe+fEA2
         8TWp52hJj3Stnb5Jd6QEhP03zAa4sZGM89Ddghu/ECFNcgC4pByqf7qwV7XzioYex4Qq
         76YSHuV/aMmC9xZi9P6nm5g5h3hKRvZtQh9hioLClicqquTA01nQ7T7x3h88a7yJO/wp
         xPH3UyNDvrg5pJb+TNq1cC7+HeUtC9xDIftDocaGuaAtEDxog8tqkqeoq+UKlei3dw2m
         S3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771878403; x=1772483203;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivLFEX0VjM8aamrUCn9NRe0LlRXjsOp8n2ePF/1BUV0=;
        b=RuygWIMD+22EGeIDSWbjtxci8MxAY8w2BLOsRg4PXDmPbymE1mVUn0YRKBr2Q0CDVK
         T5Bq937ow+gQNUu7qT6/4redbuuogOcH6ZSWSegeR1ux0mUDA7ShlL5QGO6RgJOD9XL5
         DhYWajfjins19snWKrUbR7gpOZDAYl6vMH89n3G1M5emupeOe2DO79LuthBvc2Prtxuh
         f0PyyesPTDY5FHk8UdFwpj4RCbNMoCgr12vpLdee5J9UGEjtNZgV6/7snZE2pS5EDaM/
         wp6ScnV6WgBcK9P+FP767m2/xICpZjDzdWOJ5MBbNjUf0FFC1JzxLgSdI20oGJyzvYsB
         Djmw==
X-Forwarded-Encrypted: i=1; AJvYcCUgvxB+xZ3i9W4NbQBmc8o81/uEGshvk+70chttW+X4OIoAyArortjRrOV/Z5FrOG9cUdRpiEK+mUOF@vger.kernel.org
X-Gm-Message-State: AOJu0YyvmJW3VcMI+PF4+ld+u5TdfhIg+4AzHVel7GgQ8KZqJS+7VDh8
	vaYvB0Qy4CNiO5r5+AaWudiJWbLw1Mp3vnAOKX3rdvC3BtOIBBRWU3+f
X-Gm-Gg: ATEYQzxhYyC293MfqKn28hKffmFvZvyyVUkc6uJxShJVZjqVu788Y4Y9ItQlLPSevU0
	yfQnu646IufADhLkv6ob/dO5WDdld4zL7SRGKzNK69jzVYaOWVAF8moxw7nVsgeZID/osM2OrhT
	Fij91QWIiL9O3nnffr/WBMeAcvlLxmFvDYekPP7YI9ZRi4gYctCiUw2tsP77IgTRaD+IXi7EemR
	XNmxi4vBA7emxUfCLeFYoFlpGhIZII+EDR9fiXqxsREHBHKhIwwMS6QfvycaMQMbcDu3fxZivBn
	suFwwC31fnJgVmZbeYmnR/180/7vW0d9PjZZSna3kyq5YRpbwCpFInxVkvXb2jEBvOp3QzZIOc9
	JUvzvE6FjQRgWZfzLBjmfSyAw4x/fBytt6FoodNgUnN6Okl7x42wRJ5vX1RkIPk7CKkjM+57XS0
	4cMw2hoGfJeeOfsCNSPSm/8xQtbOED6cUN/3QwaHpvqLfbq35v/S1shvd0dzyXYK0=
X-Received: by 2002:a05:6000:2086:b0:437:70d3:44e7 with SMTP id ffacd0b85a97d-4396f182eafmr17920136f8f.30.1771878403065;
        Mon, 23 Feb 2026 12:26:43 -0800 (PST)
Received: from [10.100.102.82] (46-116-183-56.bb.netvision.net.il. [46.116.183.56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54c5csm21369551f8f.38.2026.02.23.12.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 12:26:42 -0800 (PST)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Subject: [PATCH v2 0/3] Add support for the Samsung S6E8FCO display panel
Date: Mon, 23 Feb 2026 22:26:19 +0200
Message-Id: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/12PzW6EMAyEXwXl3KycAA6gqtr3qPZgErNE5a8kR
 a1WvHuz0FMvlmak+TzzEIFXz0E02UOsvPng5ykJ/ZIJ29N0Z+ld0kKDRtCqkgtNPKQbbc9BYo2
 uMwyuUiBSZlm5898H7/126pU/vxI2nqYYOQQ6sE32+kdFnecIcFE51JXUcqPhupD94Bgvdp6Ht
 ye6pcDSzuPoY5O5ogYkVgWVncrRcotGta0qLLs2OR2VCI5QPEv0PsR5/Tk2bupocT7W+b85m5I
 gjSlRQ10Y09XX+0h+SCVGcdv3/RciVKtnLwEAAA==
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
 linux-arm-msm@vger.kernel.org, Yedaya Katsman <yedaya.ka@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771878400; l=1924;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=8bHk8MdMB1v+e83W/P1wN/oW8o7vVn+ttLbKDWFw8pU=;
 b=xu1BE8v9ZdaiTG0UCfPa6sXz623s0YGNGQ34B1No2peoawNJl5w7hg0DspjP4jP+H2PaLAFbu
 sp9Bur8nv/XD7MwEhKZwK1yzHGgIkmAthxzmVAfKxu31ifQO94USORv
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267641-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,lists.freedesktop.org,vger.kernel.org,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[20];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,postmarketos.org:url]
X-Rspamd-Queue-Id: 6A6EB17CDB4
X-Rspamd-Action: no action

This adds a driver to support the Samsung S6E8FCO display panel found in Xiaomi
Mi A3 (xiaomi-laurel). The driver is generated using
linux-mdss-dsi-panel-driver-generator[0].

The mdss reset dependency makes the screen work more reliably.

[0]: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
Original tree with patches: https://gitlab.postmarketos.org/SzczurekYT/linux/-/tree/laurel

Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
Changes in v2:
- Changed commit title like Dmitry asked
- Fixed copyright header years
- Link to v1: https://lore.kernel.org/r/20260223-panel-patches-v1-0-7756209477f9@gmail.com

---
Yedaya Katsman (3):
      dt-bindings: display: panel: Add Samsung S6E8FCO
      drm: panel: Add Samsung S6E8FCO
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


