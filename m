Return-Path: <devicetree+bounces-269621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBwANrFjo2myBQUAu9opvQ
	(envelope-from <devicetree+bounces-269621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 22:52:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E201C94EF
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 22:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B74EB307E26E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 20:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 484022F49F6;
	Sat, 28 Feb 2026 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="ZGTcSPKS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f228.google.com (mail-yw1-f228.google.com [209.85.128.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12464430BA0
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 20:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772312063; cv=none; b=iYo5RGXX78JmV/dUSheDutKJyi6JnkjQBFEkxyHKSUVdrBp9FPKIMXsCZMlTwN537grNjhrzX5hX5WLFzLCZF99PxHfPW+pyZKNh1Jyna/sn+yv2+i8XHtPbJYSdO6VA9ZOipUojLkeo6GWYmyD4u+kqd6i1RAPnoanv2Zq+8mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772312063; c=relaxed/simple;
	bh=Eo5omf61apZWHRrUTDutcIP+a9gh9Q3zRwr9STELURo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GXQfIiM98CqrSlQLwNo1oLcqqgjPPqeRI/yRth+XgzWTlWCmZO/prwuTj/gaCjpCIVYdfYpaxSMfeDHqSPhmDif5KW/oWjnyuYjzcIeL3s16633LqMkYRuWZTAu6FwZ3TQsOm7f240w1uWpn1PYmOGgN6DS49hrTAyF0t1tSeZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=ZGTcSPKS; arc=none smtp.client-ip=209.85.128.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-yw1-f228.google.com with SMTP id 00721157ae682-79868eae536so31024867b3.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772312061; x=1772916861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+AHGyh3OXoEomGwyE8iNdHvjyGaJiecqa7H5SxpJzA=;
        b=ZGTcSPKSsuXGDOcsRwYi9noLn/Bxarpw5ErOv7SJ+EqK7wbzOjNQBjQYJkiRQ6bx+I
         4e8XEj2L391oB4B23XPfA6aIB2iBHdNSdeKpUJx/ZhIa+hwudumj3Py390+r/sF92B5u
         BfJ9JojGPQgrYkwWlcuqXsIwLYUQ2FAuOaSK8ey0W889kEzuOqQcfDeLH345Aps4KRCX
         8wQ2XkgBjCvGwflYs3lXAVr0HcNkzEl+SW6HB9PL8k9WEvjIq+E07ak30hlgv06ZGtQ1
         vOEGtC89aC1GsdkUeMMi9sjGOETopEuRS+LM6ZvJ7MyXQpF/lGUqCo4LeEE8nKOlW479
         DytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772312061; x=1772916861;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y+AHGyh3OXoEomGwyE8iNdHvjyGaJiecqa7H5SxpJzA=;
        b=PiJKAhmTv9oEctAt/Ej32g7RugvBPWFvpIkdzc+d4CIFgIUMyZwtoJ9yEciPb48WR3
         LUUrUHkxNCPsB10YtsrCD0s+6Q1qlD+/ReDG+XQVNdkG4ckhcWYO0CoyEs/OdNHyf76P
         BnnkGNMdSy4Z6Y/J5aJvrie6N48xzEs/012EcvFqrBFB1x1yraXzHgeWNfrkHABFk3D2
         wPOmVxqOLqDxdAdbh6TrHrIci3pu1bMRJ1MmF8+gxcg6MI5sxYe43ert/4vvTjYcyDYU
         Z9IqurgNG3dAvDOO+Cekdnyeg+LtOJ6uZWNgGoKKYS0iY14tAaDSeI8UCSqVi5BiE+v5
         RfGg==
X-Forwarded-Encrypted: i=1; AJvYcCUcahXAKn0DnNYYhGhq9T4zzCgdMbpg6DXNI0YIWf022vafSI4gTs2l/TJVWifEmHe21ctphhe657qq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+EZKm8v0lq9jOHiFi0raKD0rgWlCX/eDVwoNqxjDSroqhHpks
	TI5fSp25nQhSMEvDsv0+EJXJRh2DCbIA84CgmaPtMO90pCJeekSyJzZWVLB8TMrzrKiZsJY7FkJ
	06cm2hH+1QZfSpgPFBeD3wsPEkn2U3Wkc6xum
X-Gm-Gg: ATEYQzw9Y+rgQ0EWF5ahX7VvJKd+l0wyO0WUiIoBE4q5E91jBOD1bS65NUqXK4QkQjV
	fHOtURR0TvPeW8D8pK8qmxkwDZaYYFwFomXA3fhPXYf5040qsUDdkWDV/6fZcoZRSAPtQjvwtV3
	/PpLPedByTtc46MfN4e7MtM6K3xFYv4MXa41VP2r4w8qDCl7nOYOTfo40YODgephGNztqYo7oCi
	HcvaVFdVAx3NIZBwyvuMO4Xz31rDkhyC1eGD0nye4QC2flsk1MXLjJOVmVE7ZKRBNCXmY8RMuNJ
	knCd6VoAnx2IzqpUZjbmOz+CqT58lL/u7zxeq/BaitR4jlN9quZGY/szvG7OSP2Ms3mDthEjzpa
	vk0aYgJGttqz49Zg7iNv6hKL6dzimmGUanpEvdC39ZtlB
X-Received: by 2002:a05:690c:399:b0:798:6042:12f8 with SMTP id 00721157ae682-798855d67b7mr70561227b3.55.1772312061036;
        Sat, 28 Feb 2026 12:54:21 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-79876bf333esm10213567b3.16.2026.02.28.12.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 12:54:21 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH 0/2] Add support for Orange Pi 5 Pro
Date: Sat, 28 Feb 2026 14:54:15 -0600
Message-ID: <20260228205418.2944620-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org,ausil.us];
	TAGGED_FROM(0.00)[bounces-269621-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ausil.us:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ausil.us:mid,ausil.us:dkim,ausil.us:email]
X-Rspamd-Queue-Id: 47E201C94EF
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

This series adds initial support for Orange Pi 5 Pro. The network
driver was just added. The only thing missing is the second HDMI port
that is connected via a DP to HDMI adaptor


The series was tested against Linux 7.0-rc1

Please take a look.

Thank you,

Dennis Gilmore

Dennis Gilmore (2):
  dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
  arm64: dts: rockchip: Add Orange Pi 5 Pro board support

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 376 ++++++++++++++++++
 3 files changed, 378 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


