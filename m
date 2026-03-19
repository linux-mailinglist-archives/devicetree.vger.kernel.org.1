Return-Path: <devicetree+bounces-277553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wClzEVVzu2kdkQIAu9opvQ
	(envelope-from <devicetree+bounces-277553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:53:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A191D2C5B7E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:53:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5F4E3055D5B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3919636215D;
	Thu, 19 Mar 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nV7nNgrY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C45D386551
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773892432; cv=none; b=AGyGfvdm6/JsYyTNSLjfmNyKbRCtV1BjKv1ZlnO7Zdn/sVUAQao6QtU2gqIHPB4iJSP4o8x7oM++fM/7AZzi9NP+7aMlIwwLU/LV13UhmWvIsayIQqF3DHnyo61YKNj0avX1/FwIueAKPwLgnG1ARSbuyj8ogrjarsdYxEo8QCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773892432; c=relaxed/simple;
	bh=gVgQaGlM+n6Gc3bqaOEJcFdyJvDD8ZkDc9Rx+VUuxg0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EL26VuM/ctlRri55c3ksgpbJEw9G/mORaEVnaD8VpXvO3fHrVlGxE1Hrkl2T0DAf87pQBCVMCT/QubT6s/PgnfX/nWGAaSdbpYDOmIJ2Kui0JN/8WaEWP+XvJx06OhC3WsUorzvk4Z1tSkNQ52mJC+skAbhLv8uBHvcpL3klEOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nV7nNgrY; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-35a1230c60eso338705a91.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773892422; x=1774497222; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B6erT9bgufZ7MZ4f9CnO1/3XNBgFe6fD+FWbntiQgHI=;
        b=nV7nNgrYp6CiJK+AbkDi/4mVJ1qesGQYOrZjhoBUGQ/igqD7JtcJQ/ZLjsQz9OQ0dj
         h8gkVxQzeH0JVeqOhh+WjWhj+IY4u2eM6NGxRuh8/8L1HmrEpKMT2URa6x6nrAkJURLy
         ep1n+wKGupQGaPV7obfIVENqxRT0B+SnjXNac2hwadGn9mVIzhWoUtkT8amQkpUZTB1z
         dCO7Jt+sfM0k14vl6rmY+GOZmPn1p7cbqXHoJ+XkFCyDYfi5t87r7Z/aKo5ONM3izUhO
         Qz+zpei0C234+ofHiiqg8CwWPc/ga9Mw+S0fhItBkvyNoBxVPNC4SxA1TN+TzqcjI7iL
         dicA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892422; x=1774497222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B6erT9bgufZ7MZ4f9CnO1/3XNBgFe6fD+FWbntiQgHI=;
        b=c4fHnW6jHJSC3qXehU7V+pDnOZ74s/AuHhhsmQ9UpR7GmtmoNEplNmfl2FqucPmaN7
         d7sZeAd5sUj79o22gPm0ba7JWNIWwkq2tORDB+NXMBKWuYMSWdW7TnT/EJkGVpfjhQTP
         PORKMM7m0EYrOCL/fxhb8j/bYp4G9kE2HuXB4r9XCoALfpGh+xXJrF4VRY4yhmm/tHt4
         1fBNyiUwA5bt/UZ+ZP0ibqGGmZSjNgvgkagVFb5jsDCGSFNZTyFZgv+WaScdHx/aHV4R
         e1Sp3/Ok5hvoTr9Nz3fjjoiXst9iZfUAJO4+6oRKjGlkGUhhUTNfde1lrcnfxXs+CUTX
         /AOQ==
X-Gm-Message-State: AOJu0YySKe+YiajI/X2S6WEjTF8fmYyJJH+t2qi/mwvIorF1+y9W9wF0
	lY4cPp3+Oh6TWIlIwxtxGb3izlUPmnXFGxzzymE+KPaJDpVyB3T7Ey0rd6NMdQwl
X-Gm-Gg: ATEYQzxM5ATUhnSXoPi5o5Sti7AObXqn2SQabiBV1rm5lCg3GxN9AwKDA9jgntjbMX1
	HHp6Y0O8WPMMmGnOoB13PDW23KexIsQWD/Ofgl3Bw4RK4AHsWFiot+6+kHiadqEqntMkagL/yu+
	5dDzVB88f2mjchZdWxzcEvxhAXtN13q54AFjq5WMNGr3EbVeHIe9F1zt3JsKPR3XRC848PlUWqC
	J8nSUuvE2T2AZ8ZmU4K3PVAWgPnY/bZIBfNx0ftymKZUqdMysJQKLGpdCocH91D3LoCmnfVNf/g
	G/qjBH1DQaRfKOvQMnXhSYOswQf1Rni34l7EOPbGI93TpMJrqEuPJHRXoNlcuVjZcIucB/dtLrS
	NDWluySqAW54XWpyiWQemK0SFQyPxsHnp4Em6muJMI0fH4Qt1ISSzgZ6sJxHYP3gGrL0G3eGZtB
	BIAiprKM76TnkVbrwSrUJimTLjcz0//9+1LS9bnTz6A80FTBSGSUodW2Y=
X-Received: by 2002:a17:90b:3e43:b0:35b:8d89:719a with SMTP id 98e67ed59e1d1-35bb9e80724mr5046203a91.15.1773892422505;
        Wed, 18 Mar 2026 20:53:42 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc60ecb30sm1159145a91.12.2026.03.18.20.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:53:41 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 0/6] ARM: dts: BCM5301X: EA9200: various fixes
Date: Wed, 18 Mar 2026 20:53:18 -0700
Message-ID: <20260319035324.269905-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277553-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.791];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A191D2C5B7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds extra definitions for the EA9200 that were missing for
whatever reason.

Rosen Penev (6):
  ARM: dts: BCM5301X: EA9200: add WiFi button
  ARM: dts: BCM5301X: EA9200: add USB GPIOs
  ARM: dts: BCM5301X: EA9200: add LEDs
  ARM: dts: BCM5301X: EA9200: add wifi definitions
  ARM: dts: BCM5301X: EA9200: specify partitions
  ARM: dts: BCM5301X: EA9200: set MAC from nvram

 .../dts/broadcom/bcm4709-linksys-ea9200.dts   | 154 ++++++++++++++++++
 1 file changed, 154 insertions(+)

--
2.53.0


