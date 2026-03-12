Return-Path: <devicetree+bounces-274553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGxTBPKpsmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:56:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFD5271592
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9126C30CCD6B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEAF2390CB5;
	Thu, 12 Mar 2026 11:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ITF3UPTO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520FB38C2BA
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773316515; cv=none; b=NPbix7g8CT2HvdMjrq154t5OpLfLj/j+g8dBwVCwge554X/OdOAzoHIfQdki1Uuad/r7J0JD9gPzs//8Tj57qP6q1vd4bdThonjnR2oU4xRHzt5qrYN+im5XM+v4DGvCwpONtIC2LbFzqe1v23KaWdMy4mwcvaCnmK9c6vpBAmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773316515; c=relaxed/simple;
	bh=yA9E6KaDsxKPIDVp/qlGO5Alr8mjPeG4xbNuJb0oR2A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qny6KmESWhQqwoOUK72tDsVJES3GQM+UmXXo9uFYoAzq+QjUGVZwPdOAGqYli/DLBcYKydNI215A3BZa4ENmcCI4pyjiTKfGb6Dc6Z+biYFG6oEOJEFlIYvmpzZ0BleO8FSjTIWbqzsUkHKZ0AQcrKB38BN/qEFnE8ULDIHPezI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ITF3UPTO; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439ac15f35fso873282f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773316513; x=1773921313; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mRYRKIiNKleJTVNHw1u9qIzA0TEmO35mvkJQdWfCz+I=;
        b=ITF3UPTOoQMKCa4nq0FaV0kTFvGZD3W2z09DkLRs6vwdc3u+rGcy5vWTlL9yfYlh8F
         6OphfycGbUebh/rro+7iXeCaWy6mlIGRN2pAGwFgt0K9scONNZq1W9g3L5yYHPprvVHV
         LJ5ERF0efzf1W6V37hLI21l3ZJzDcqpZ3AlkyoDhKMaIJf29T7DEf6IyqoXHqTHXjVAQ
         PDWDSUQ7Tz/dq6halA5KPQDHGJkEPkX0KkCvqD5dhLwe3hnqq+B+6B122Ghjgp+CFPUa
         ESVncG/c7cJTJbYljIH10LAuX2re6MFuNBLXR+YdziN1E/ltquvBSZPmSUuB7Pr/VHPv
         lVYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773316513; x=1773921313;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mRYRKIiNKleJTVNHw1u9qIzA0TEmO35mvkJQdWfCz+I=;
        b=WaAd8nKi+wG68ZTiLY3xLhg9SSYBFHe1pttRpzI2oZv6P+0ZwoXWEkr22Qyb+waRwM
         v5+IiebWpmroT5bKImDaHEjAOCHRwCId5jw35GMzVeCyCf8mMRgdQc8KuibYvKg2F4r3
         lZuX6bTsC5wTcI+qVuLFGpcTvmmGjnJoHX2jUtR/1eBP9/NbgrHqFK7NNvCZ7tyQKRSL
         OWpkGV/38exWUnLN3ClO7I6h8K1iAYRxj0PR6th2Tv25l5lP5RUi2iitq31kGtKbhrSt
         sIlCvXn4vGs5O3cIznuWAHuyC1ZPiLDrmTbHYYNbbjfNUlqMOTOIfVHpoi+7BuHKin+H
         uxFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmNDijZLavue4SINCfiRWhfTZQcCFbGKr/XJO1W5lbxHxj72zxin0al/ktLxXm+iJs48h4RFdKcJgn@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5CRTZpTurvC1vMVy93yva1QJvGp4tmPYW5VIgXPZbS3QQZYOi
	vkIKOwGGPrDs34c6kvAKWrUEv1uoulSkDMigZ+ekovMe5NvV/M6NxCjy
X-Gm-Gg: ATEYQzxoFxo7Dlm8Y72r4Q0NNlG95yn/ZNPWOO1OuR030YNGk2Qb5jUBmuHBTN4l368
	qIfpDECu6izH3/iAiqeEpYZlI6NhG0BBXCjhysRHu83KTELR9VBrUZD4nApR+tjoBh6yciD68+t
	ZmFHy8LBLqi4eSP82nqg8T9UvbtTK1HK8A0rZ/3E3WZqXwplSlG1Ktgv5DPg9WF4n9d/Xk3uaZ4
	a49WpzX1Djpa+CGB6jGLVhGSbFcOboAl+5NiJWDI5sP5zaETPf2ZKfeLp6MTct362p/6IWw3985
	NxPnsuE+vwsadyM/ES2PPBTKlbt5G17zMbiPYgb8krKG9bTef6+koKrt6axTn9jPLwW/a0S/4xv
	33gMQ8AjkKOW2BpVKcdQ6SlwsjKTV44fTQDg+3a3otqrZORKOWdOMAgkyRGQEVmiP2UOKYdDoll
	DidNzG555rR3qUlwrxabnf4hbjoV7bhLlQSS+0qSPaFnPy4fA5VgwmOTG3XNBrw+M=
X-Received: by 2002:a05:6000:2003:b0:439:8eef:11f8 with SMTP id ffacd0b85a97d-439f8430d42mr11227244f8f.36.1773316512551;
        Thu, 12 Mar 2026 04:55:12 -0700 (PDT)
Received: from [10.100.102.17] (89-139-129-65.bb.netvision.net.il. [89.139.129.65])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe22529csm7058657f8f.31.2026.03.12.04.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 04:55:12 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Subject: [PATCH v3 0/3] Add support for the Samsung S6E8FCO DSI and M1906F9
 display panel
Date: Thu, 12 Mar 2026 13:55:07 +0200
Message-Id: <20260312-panel-patches-v3-0-6ed8c006d0be@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/32PS2rEMBBEr2K0jga1LEu2CWHuEbJoSe0ZEf9iK
 SZh8N0j25uQRWhoqIJ6VD1YpCVQZG3xYAutIYZpzKJ8Kpi743gjHnzWTAqphYSazzhSn39yd4p
 cN9p3hoSvQbCcmRfqwtfBe3079UIfnxmbTpMNFCMe2LZ4PqjlfqpW5gJlbQQHvmJ/ndG9U0oXN
 039y462GIm7aRhCaguvGqGRQGHVQakdWW3AWlCOvM1Oh5UWHjXbS9xDTNPyfWxc4WhxzpHlnzk
 rcMGNqbQUjTKma663AUOfSwwHaZX/pmVOg9XolQFfKfE7vW3bD9UjCKNtAQAA
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
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Yedaya Katsman <yedaya.ka@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773316510; l=2432;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=yA9E6KaDsxKPIDVp/qlGO5Alr8mjPeG4xbNuJb0oR2A=;
 b=3HOTNWD8H2o2C83ehzi1BnRnYjF9DjHnFV2r0iH8jLlWZLGpQfU2XgTpykZGX6jWTxrnzxKmd
 DmKkKWOH3e/CZJKKx8rummOKOhp98f593gyZFhesVwJEPmzS1mE9+Xi
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274553-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,vger.kernel.org,lists.freedesktop.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[postmarketos.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,packett.cool:email]
X-Rspamd-Queue-Id: 6DFD5271592
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This adds a driver to support the Samsung S6E8FCO DSI controller with the
M1906F9 display panel found in Xiaomi Mi A3 (xiaomi-laurel). The driver is
generated using linux-mdss-dsi-panel-driver-generator[0].

The mdss reset dependency makes the screen work more reliably.

[0]: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
Original tree with patches: https://gitlab.postmarketos.org/SzczurekYT/linux/-/tree/laurel

Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
Changes in v3:
- Make driver, bindings, compatible specific to M1906F9 panel
- Adjust brightness scale and default
- de-mystify some dsi writes
- move pinctrl for mdss into panel node
- Rename regulator nodes and names according to schematic
- Treat vreg_l9a as input to vddi regulator
- Add myself to copyright header, remove years
- Link to v2: https://lore.kernel.org/r/20260223-panel-patches-v2-0-1b6ad471d540@gmail.com

Changes in v2:
- Changed commit title like Dmitry asked
- Fixed copyright header years
- Link to v1: https://lore.kernel.org/r/20260223-panel-patches-v1-0-7756209477f9@gmail.com

---
Yedaya Katsman (3):
      dt-bindings: display: panel: Add Samsung S6E8FCO-M1906F9
      drm: panel: Add Samsung S6E8FCO DSI controller for M1906F9 panel
      arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Enable MDSS and add panel

 .../display/panel/samsung,s6e8fco-m1906f9.yaml     |  63 +++++
 MAINTAINERS                                        |   6 +
 .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  |  94 +++++++
 drivers/gpu/drm/panel/Kconfig                      |  13 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 .../gpu/drm/panel/panel-samsung-s6e8fco-m1906f9.c  | 302 +++++++++++++++++++++
 6 files changed, 479 insertions(+)
---
base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
change-id: 20260218-panel-patches-696df7e0d810
prerequisite-message-id: <20260303034847.13870-1-val@packett.cool>
prerequisite-patch-id: 3fba84f11111406e0d530013fd45ad0eb389786b
prerequisite-patch-id: 81440b7f28f9101d3dc5d4bad6dc86e39b81a026
prerequisite-patch-id: 53469d8c9810169d058f1bfd27ac8399038aae74
prerequisite-patch-id: 80809bee71eb6434f6699d5e5f8c7f9d4bcd1ca7
prerequisite-patch-id: 0269e01c9c54a37bb92983635cd516342189aee5
prerequisite-patch-id: e2bbf7c452d4da6d71b1a5194e0d7ce46584e113

Best regards,
-- 
Yedaya Katsman <yedaya.ka@gmail.com>


