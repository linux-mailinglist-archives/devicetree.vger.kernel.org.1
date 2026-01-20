Return-Path: <devicetree+bounces-257544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MA+MKjvcb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:49:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 776674ABE0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:49:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 945F57E0A77
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D36D444B69F;
	Tue, 20 Jan 2026 18:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZqeP6jGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187ED44B66A
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 18:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768932065; cv=none; b=DPdDWnQZai1uPn8VBTIDN8SDpOdc2W882BCZvjiDByyTE3DKJDXTDx6Vm1G+/tDY6aRGuX9sgm1CRvtV1aep/YHIHm3pDTh85ntNqeFXn3x1y/6zlrR8oy9jhkWOyhncV6pGRFXqilDka0bxAaAqcI2LVUFoBRfWh5MVxqHQdgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768932065; c=relaxed/simple;
	bh=4lkWsXnQ3JT5veJzgXmg01v1WLb3YMQxuPAWVxo6aJs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AGEbRBUCLsBiTm5Bq+Zza0etxrs248YuNPkKVkMdeZUq2mUwU45YM9R8X/Ss6Rti8UG7gpXm4zICKVUruE+aixg7UGZ6IriJspQ1QKiyy0MX8ypJybAQD1BjGFf3p/WjBh6hNUO6cno2q0H83GAnpZsH0VLNxgSpjh8ssqfAoRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZqeP6jGT; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47edffe5540so49201765e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768932062; x=1769536862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iDEGbBRkjqNSQhFFe5UtGv8suPhlxfVFRf5mgDfH2kA=;
        b=ZqeP6jGT5IfYEHJQjV6/6xpOpwMFrtbIIeilaYP5UnildqStbSVJhIVmQjZfU+nCL2
         rPFGv4Lt1l1NjTO+tgkFjIRMApD8SlJ2IJARKIlxoYUZt39Ha0eiLrBrbjmWWMSeeNE7
         0Qa5SRvzcBrTir9Fl+BiNuN8REW+GCL1urWEZ7eZOH6akpRYQpoiAj2f085rMFJyZkuP
         kz1nhCy8uAKG/0cHKcPJYy2UnAVHTNknKvkHyFsHg2Y2zctFldU+8s790JxsFrzqcHfp
         KPRNQr9P4UU7mAJpCdcOua9PjgD51z4gopA5pJVRo6/Mx0kLbL2nVzAeP9uD+sbxQru9
         xl8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768932062; x=1769536862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDEGbBRkjqNSQhFFe5UtGv8suPhlxfVFRf5mgDfH2kA=;
        b=Hcxp9/IR58CtXWrmD9xmaX5HQm5AbwZ1c5+zXPP8IhVRBJAJa0ruZn7kznjHwtM3K5
         CMYvq/X9drWubrmPXMwn95Dmw8MduvvN39pFHw0urG50F7dL4rJ1Ad5vklQmcSYUmJs1
         7lGI5N2qPesX1ftK7EtBxSYMXw2XbQIo2eE6IqMzglSp/h4oUZyPzy0gCXtKv4YwH5hC
         fs1dqaNUZ1MUxV0u2hPjobqoFPpnU4LBXVIC9ks6VIX/L/gZsNNpYGa7G7buI2n7R1fT
         NwhnrBx+VSfXAE7ZRXt2TnNYE4JWkKPeUJV1HiWOBdFhQWoKB3dyJ2jtinN+2UR8ERTM
         tUug==
X-Forwarded-Encrypted: i=1; AJvYcCUdDpNhlbGE4f8DBrwWHPM0IFRgTm7ss5TJi3WXNGz4i72V6mBjw4YHHby2GKd/244JgNC2/SAnL8Nj@vger.kernel.org
X-Gm-Message-State: AOJu0Yylr+rmBVx2kQd/hV4cBEQLzD3GHcSii/VLX4IFkcP/KfiKcaSY
	v8ySGj733bL73SPybmgJbU8bOvhUzl2cWZRMmy9ClyohUU37Ez0mRRcj
X-Gm-Gg: AY/fxX6cz38pHjmW5CaFYjlX3qkiApsfWgsE2RMc25a/XSyWrnQLwGDQwwXTQgkjpVK
	W+hGgl8rILQR3kEP0n2urtYo0YdHaPipA63t0k1gOrgXO4Snd8EgyOPyYfww8cEV5aciiONWQf6
	sA4ynaaho3uwVgJd+E+aI5hQiBjjIWKBhD00memcg1wsKtMbIKIPNUnEpf7w956Jfq6lonJlWO1
	m+H7W73dR7XiKDKup6KtZfJhvaPeYSOg5/NBtxZYuAapoTJgaJbMnPc9tgXLlGVBSWbo11WpQUD
	1oku2SPIsry+APBywkpHTX6gQx6drzKD7Q6gx0cj11XjDl+9jmM9GMzMZ7fa09ck/UH3XT1NTCT
	ChjoSP9x5fn7cghPdr0+y/fknruocjSZz2NpWdsOLr0+UifBsKJtvuugYy4/cHEBG61aWgphdkN
	BC+sNpAjhjY1+t5kC96PTe
X-Received: by 2002:a05:600c:4ed1:b0:477:7a53:f493 with SMTP id 5b1f17b1804b1-4803e7e85abmr34660435e9.23.1768932061761;
        Tue, 20 Jan 2026 10:01:01 -0800 (PST)
Received: from unknown.zextras.com ([78.208.157.140])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47f429071a2sm312013015e9.11.2026.01.20.10.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 10:01:01 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	david@ixit.cz,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH 0/7] arm64: dts: qcom: add support for Xiaomi SDM636/SDM660 devices
Date: Tue, 20 Jan 2026 19:00:45 +0100
Message-ID: <20260120180052.1031231-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257544-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,ixit.cz,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 776674ABE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds device tree support for several Xiaomi smartphones based on
Qualcomm SDM636 and SDM660 SoCs:

- Xiaomi Redmi Note 6 Pro (tulip) - SDM636
- Xiaomi Redmi Note 5 Pro (whyred) - SDM636
- Xiaomi Mi A2 (jasmine) - SDM660
- Xiaomi Mi 8 Lite (platina) - SDM660

It also refactors the existing Xiaomi Redmi Note 7 (lavender) device tree to
use a new common include file, reducing code duplication across the family.

All devices support:
- Booting to a framebuffer console
- USB in peripheral mode
- Battery monitoring and charging
- WiFi and Bluetooth (wcn3990)

Some devices additionally support:
- Hall effect sensor (tulip, whyred, platina)
- Touchscreen (whyred, jasmine, platina)
- Status LED (tulip, whyred)
- SD card (tulip, whyred, lavender)

Tested on tulip.

Gianluca Boiano (7):
  dt-bindings: arm: qcom: add Xiaomi SDM636/SDM660 devices
  arm64: dts: qcom: sdm660: add common Xiaomi SDM636/SDM660 include file
  arm64: dts: qcom: sdm660-xiaomi-lavender: fix regulator and SD
    settings
  arm64: dts: qcom: add device tree for Xiaomi Redmi Note 6 Pro (tulip)
  arm64: dts: qcom: add device tree for Xiaomi Redmi Note 5 Pro (whyred)
  arm64: dts: qcom: add device tree for Xiaomi Mi A2 (jasmine)
  arm64: dts: qcom: add device tree for Xiaomi Mi 8 Lite (platina)

 .../devicetree/bindings/arm/qcom.yaml         |   4 +
 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../boot/dts/qcom/sdm636-xiaomi-tulip.dts     | 333 ++++++++++++++++
 .../boot/dts/qcom/sdm636-xiaomi-whyred.dts    | 374 ++++++++++++++++++
 .../boot/dts/qcom/sdm660-xiaomi-common.dtsi   | 214 ++++++++++
 .../boot/dts/qcom/sdm660-xiaomi-jasmine.dts   | 333 ++++++++++++++++
 .../boot/dts/qcom/sdm660-xiaomi-lavender.dts  | 144 +------
 .../boot/dts/qcom/sdm660-xiaomi-platina.dts   | 364 +++++++++++++++++
 8 files changed, 1634 insertions(+), 136 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sdm636-xiaomi-tulip.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sdm636-xiaomi-whyred.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sdm660-xiaomi-common.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sdm660-xiaomi-jasmine.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sdm660-xiaomi-platina.dts


base-commit: 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
-- 
2.52.0


