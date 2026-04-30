Return-Path: <devicetree+bounces-291723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iER3EUW/8mlbtwEAu9opvQ
	(envelope-from <devicetree+bounces-291723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 04:32:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A32F449C5F3
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 04:32:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A9F03060CA2
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 02:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C46C28640B;
	Thu, 30 Apr 2026 02:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kv3fXVkY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE77227B94
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 02:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777516137; cv=none; b=e7CFlFE2ceqOypKZNTPj993Yvthd/ScHhj1qdBm79DFM9T/u2vXZMjHQYUUyKzIwv+nzfqIHWDgY8sFWouJsAU9NHCtCSq48qlEx/zVdLW2yLgtC6cFtuSYl4nB1sfrltW3iwOLiPBaFqSG8TQMYNEERbogIGE9adNL3KpDrCmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777516137; c=relaxed/simple;
	bh=fpI7ThcAkAntW6jxg6C3O495NPhVSuVAiCMm/40Z5xg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fK5XuO6Odb8LLbBNkY6kItLJSliAmH3huI5M1IvvbJGeTXJ7Of4QdM1WJE6rLFD2LWTngt4X1sbXssFck8LDFl7TPKX9YWyIkVWAUGUVqecx90idImBHh+iD4lyyh3vJFllJ7rCkskKZz168uvjGGUzaUG5LKlp+W2rn8pvD1nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kv3fXVkY; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-35fbca04006so170172a91.1
        for <devicetree@vger.kernel.org>; Wed, 29 Apr 2026 19:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777516135; x=1778120935; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fvKNB8FFlV6JIJdaaGCkRo0LW6S72vZF1V6svTAMliY=;
        b=Kv3fXVkYFPt7gejljfTWEvyGxk5IoopqfNRJLsg65LwFQpCMnEuB+MEmjNfNCXdDHp
         RDJu2Ofn2H0akb1Yd661TrgzAJX13mw7PL9f61rjhNyyclPa/A3LG9P4U2JJjnJXGmr5
         voaTNF0ZPzyAxPrGUbArecZCga0SoTfYuhiQhlBiYQvyUFzi5iwvwnyG4PpcPw5AWQMq
         /Y5P6zsqpybLIfUUMK8YpzgEgSQE45j8lKFh7GKJOteQNu3eRuMxtUCIX3OSLbWzPFm3
         OYZnoEMbLMk2UMxADNK8AKpw14SniznQbuJq+HX+e3z8G/bhODpdP8807S7b5cjvMfGA
         533A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777516135; x=1778120935;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvKNB8FFlV6JIJdaaGCkRo0LW6S72vZF1V6svTAMliY=;
        b=PUQ9gBVHDYCcSanSnREvSe4lOy1QaAFN6Nl9gzBhB9S6B3hNrgRmRh2ILI8EKE15+N
         vvVEyfDZKOHEdOXDgFPb/DhydGS9ybVD5ggNIZDZk+72YACgaLbegPH8yfs8WHyyybB5
         ElUgmKSL4VNMZQBUlqK8qItjeM9myovP8ceUx3+J3orEomFUCijp22lKIZZLOgaXPfgM
         gOaGCDa5gfpZ3hFaAK9IlIhl0/lSqQQSnFmCEtVmQGBfKS3lgbtgAC9sxg5W4acqQUq8
         U8qwk9LBxuV9Xyx5+9OYEorJeXJ9T9F5Q4e6L6T6xDpBubePMkUvaOp3IgSr/WrcfWKi
         xuFw==
X-Forwarded-Encrypted: i=1; AFNElJ8OtFl1+dsTpp0TzQbuY8BRCzIU2fxcbC7f5ZvpwT97qN6/t1ZWgpxJqWcYOfCgK74rqPkIJKzsCi/v@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0LPF4ElFoJABi7stPbegQItGnnA29O0ygXhN3wmWuy4CE2GEb
	KEf1gWdjCB8BZudYaPitTtqP+DW7F3uumZWaxqtuBeim1qvYUyJaQR7i
X-Gm-Gg: AeBDievmk+Pm9bhYGIf2aJP2l8oSMWH6zHTZN9DISrlu0PaJ6u1S9EiBVKeCdiWQHFL
	Byplmp46TmMlGr9O7U1KqULQTVZ+8EWIlUXMYKIqnMF6flHO4yuOBNrag9qvODgvNvLhhlKD/GJ
	qUz5LOSdaO4uplQ1I0jZJVVnZpt6QyaXfjjbgXfwTHYTtkp7IuauWklIItHVrNceOQqDuDTrYeV
	TF1ErXYwcs723YfzUd5FO3ZtbmedENkWMJFb+tFjwt36jBLg0CWRQEEDX82yUaJzMH9OHkOiDyg
	ZbpsYcwZJFUDtAOJwWDPI9FXsehjcPCZAnwFuUwxNozQ/kHwE2rCRVeyNtEyRcE8kldhxmiIwEX
	GdiU+GglOU/8p2Qej/0TKFERDX6zFWuaK9O+da3GfCbrRFALJJ+AT0GxmPSMtlX/hJIO6SnerRp
	LePraL7MjZHJ95BR8xIYMtDdsx8giCNUcNfw==
X-Received: by 2002:a17:90b:3c4e:b0:361:4521:d311 with SMTP id 98e67ed59e1d1-364c309c2b0mr920821a91.18.1777516135395;
        Wed, 29 Apr 2026 19:28:55 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-364bdf2a71bsm987033a91.1.2026.04.29.19.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2026 19:28:54 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>,
	Ze Huang <huang.ze@linux.dev>,
	Alex Elder <elder@riscstar.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 0/2] riscv: spacemit: Add K3 PCIe/USB comb phy support
Date: Thu, 30 Apr 2026 10:28:39 +0800
Message-ID: <20260430022843.1090138-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A32F449C5F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291723-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com,linux.dev,riscstar.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,lists.linux.dev,gentoo.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.980];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

The PCIe/USB comb phy on K3 is a big phy that contains multiple
standalone phys for each PCIe and USB controllers. This phy is
required to configure a syscon device for mux configuration and
calibration.

Inochi Amaoto (2):
  dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
  phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3

 .../bindings/phy/spacemit,k3-comb-phy.yaml    |  63 +++
 drivers/phy/spacemit/Kconfig                  |  16 +
 drivers/phy/spacemit/Makefile                 |   2 +
 drivers/phy/spacemit/phy-k3-combphy.c         | 250 +++++++++++
 drivers/phy/spacemit/phy-k3-common.c          | 398 ++++++++++++++++++
 drivers/phy/spacemit/phy-k3-common.h          |  27 ++
 6 files changed, 756 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k3-comb-phy.yaml
 create mode 100644 drivers/phy/spacemit/phy-k3-combphy.c
 create mode 100644 drivers/phy/spacemit/phy-k3-common.c
 create mode 100644 drivers/phy/spacemit/phy-k3-common.h

--
2.54.0


