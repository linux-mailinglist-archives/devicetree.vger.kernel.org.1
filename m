Return-Path: <devicetree+bounces-261434-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFKWDFogfmnZVwIAu9opvQ
	(envelope-from <devicetree+bounces-261434-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:31:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F13C2B37
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:31:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 503B8300331C
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF302BEC5E;
	Sat, 31 Jan 2026 15:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kVr6zs9x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C19335958
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769873479; cv=none; b=ppBEpXY/Pu2XEjab/DYW4LQCE1Bm0eXrsYfee/IWzjLjVzcQ+rNPDcqiCkRnGuRIcq6K1VuvK+Es2awvDODK/fzHRO5PDIhayHLDTWxQZYbGEqmuNToYWOv/97D2ynLvckS+vjRQlpiL/1Ya38bhIWQZFeTqtRAq4iSQUitx5Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769873479; c=relaxed/simple;
	bh=bSY+fyfEDjKAZvIsTp4/2Bj3qzJpKHE89GywZ0xvZlk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Rg5EqXLYA2FQ2WRInK+oPJ7610NP1NKPikN4k8errhLiUYJnMZiL9sIzYB65GrGzz3sNjXd2D0uPm3IbyUV/yjAQRq9h1NHJGZ3/KVANGwQKo6KPGEg9q9hM8NvVBMWgpxgaETS3i4L1nJvXWBXlsx/2qbvTWwKauC+rnNOMVK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kVr6zs9x; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-34c718c5481so1996964a91.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769873477; x=1770478277; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kFQ3JH7bTaVaIkyZ1bwbiUf2YzJPD1mXXk4UJx103/U=;
        b=kVr6zs9xD6XZVS2yoe7nEmHZ/P0/cKR6uIL8QxS5RFA8/H5TZREBzRaXxKUxLSEecp
         j2ZVJqGl3yl2bE+TIIY6xjCdW2i5Y375j27ID2UpsUOtSM/NAtfX/qvkn/E5N3OOYSru
         8bjip2yTp9MJFKrTSQwMM02McHdwDfC8zPjLy//106g+ab4OjuRnrC6U8DdI6Yq+y6hf
         Hvo/kt066KDYu2SwkHPXTJ5eWdBfdF49n6ORgxCSk7duh/BS9/rsX0jwsOXn1vaPyGoC
         op0Nfkm0kX/M65SJnZearngngZfAGmuXNS86UQfeCQ6e1s+T1aoyQQoHJDijYM478+TS
         /VEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769873477; x=1770478277;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFQ3JH7bTaVaIkyZ1bwbiUf2YzJPD1mXXk4UJx103/U=;
        b=QHSmEC2lMZFYipAFcsnTsbTUIXk7PEKuNTJf3MBWZZzOJN35SSmxjZ7M4vHR7B+II+
         1CVVBau1+QfhHIWL0PKfOEB5/epN0GTD8EKJnT24GPwHE+YRgfjh19erpDBd4JPWBV9D
         CVS0TaV8uDKJrOl2HiCtGh9+OPOXXuQNXGCjh8sAls2/kXp5F+26qQhvfebMGEoqVM1M
         lVdbvrYituXI4fMQPFAdDHm4JplbCNXIekIFHXjfLi0EvItARppCaM99HjYTklaiP27f
         k4q1xD/ceijcrO3f6Yrg2se1e6cHfeo3T9F1CbgrMQFo/uRr+OdcIW+1t9+jUEOriidP
         N0xA==
X-Gm-Message-State: AOJu0Yw6tW38TIbopX1sBpinmZkj/qfijmubMuCP8KBgknSz+IlKv/do
	xbY5HqwZU6EtqkbJ4F1ZPSqg2yjscNCrVzOAPqpDM5b3IyI2gTSeg9Qx8CAE/w5Q
X-Gm-Gg: AZuq6aKnDdcaFGwD/3NbBxBeA4EOygZDBP/Sd2UC242Hjl3iy9F1LQSqZ/T62jSD2nS
	kILh62lB1kjqFeis+8060fOk92LYHUmRVYZUEH4ggflLkM//EQleAaHCAOMjbkV6iifbD2/SBoI
	mGzHlCaFFfKf38/HQa7fDG65rCebY5vZm58KArozDnETYD5pygpvy3l80PGgshZAtTOji9LTwIc
	BPFZE/4miXPZRu1E/dXc1qNWq9rD0xmo+atkgXJJYoe9gUhIkkXDiudVfbwnSxJRstfZNdmzRoS
	d8LoZnzkP+L9EwC9MeJzEDaJHGcuNyznCjj7oRt/rWr41wUcSMLD426xrVJGjqNmks1EMVrZM/T
	wOZidwEjN3T9SqvNRCLzcBW1NaRK2OE1HV11Z5gLvxuCGWBRMEJvsTTvM1t+yChW2UK3Nk7a/bE
	rjiyA3YQt/C27ACfje9k5uFOAYpqPdXL1sHbYBMM4+49c9YpE0
X-Received: by 2002:a17:90b:5868:b0:32b:baaa:21b0 with SMTP id 98e67ed59e1d1-3543b2e0552mr7576153a91.6.1769873477161;
        Sat, 31 Jan 2026 07:31:17 -0800 (PST)
Received: from arch.localdomain (awork135098.netvigator.com. [219.76.135.98])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642487f1f5sm10701122a12.0.2026.01.31.07.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 07:31:16 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v2 0/3] board: rockchip: add OneThing Edge Cube series
Date: Sat, 31 Jan 2026 23:31:00 +0800
Message-ID: <20260131153106.31723-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261434-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 86F13C2B37
X-Rspamd-Action: no action

This series adds support for the OneThing Edge Cube series, which were
initially marketed by OneThing Tech as PCDN (P2P Content Delivery Network) 
devices. The Edge Cube series is based on Rockchip RK3566 SoC and is designed
for PCDN applications.

The V2 patches adds a new device, the OneThing OEC. Together with the V1 patch 
OneThing OEC-turbo, these two devices share identical hardware specifications
except for the RAM capacity, enabling convenient support implementation.

The V1 patch was submitted quite some time ago and is now in an archived state[1].
it has not been processed due to scheduling conflicts – apologies for this.

Changes in v2:
- Fix typo in vendor-prefixes.
- Simplify company and device names.
- Add the new device OEC as part of the OneThing Edge Cube series for support.
- Set display-subsystem node to "disabled" instead of using "delete-node".
- Using generic node names for leds.
- Follow DTS codeing style in vcc5v0_usb_host_en pinctrl node.
- Modify the phy_mode of GMAC from rgmii to rgmii-id.
- Adjust device tree node ordering to follow code style.

Link to v1: https://lore.kernel.org/all/20250713163255.163669-1-jerrysteve1101@gmail.com/

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20250713163255.163669-1-jerrysteve1101@gmail.com/

Jun Yan (3):
  dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co.,
    Ltd.
  dt-bindings: arm: rockchip: Add OneThing Edge Cube series
  arm64: dts: rockchip: Add OneThing Edge Cube series

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../rockchip/rk3566-onething-oec-turbo.dts    |  10 +
 .../boot/dts/rockchip/rk3566-onething-oec.dts |  10 +
 .../dts/rockchip/rk3566-onething-oec.dtsi     | 313 ++++++++++++++++++
 6 files changed, 343 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dtsi

-- 
2.52.0


