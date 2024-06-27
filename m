Return-Path: <devicetree+bounces-81071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DC791B2F9
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 01:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 297B8B23099
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 23:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B19FF1A2FD8;
	Thu, 27 Jun 2024 23:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ANg6MnLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383541A2FC8
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 23:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719532426; cv=none; b=jvAIp4Eg4dIMiZsJ1VNYkVvRAmXe/D5SZwRgJNGKldlJsPjqisY2RE9B3piKLG3HV2f0LM+g7rFMq8JrzRrPf2Nn/y4RoSo57EnpLcD+XR/n84de463rZg0VAICists5z/ZAq4KmIAlt8HZdHsAnupZB4YFydyfqHOuyMJMs1bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719532426; c=relaxed/simple;
	bh=8TDzL4LG+A2ddCLi6fgg9V+G2E1PrISrQcbK/zNYedM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rcAka5z1UThvuHUCTwVxoSANszMvWyI4Cxq7YSUUdJADsZ04r2VqMBmiFT/UmsAX3wzc63CYD83uYXk7R7IhExfOsxW/XUAEqrRNFB88cQCyln/WqKb6nkcR8MGPIM53ZJVYhWWc49jxJCo4AvZ71jLI0Nq+PmBW6ub0vu3VDSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ANg6MnLv; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1f4c7b022f8so40625ad.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 16:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1719532424; x=1720137224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GvgNRfUrYC3vDPSHgELOXCgco+1ty8Hri5LXWyU0EuU=;
        b=ANg6MnLv9Nt+cvvg85p7tHx6wWPzblkE5JkOrwBtxxh7KZzqH0/h8E0lN1BGqnCYSv
         hbsR3B9eeSWxC10BuGLA32B0N63v3ewnnBwazfYnhz0mKDgcGBTqV6ovY5uj3oK0U9GB
         TUFDgcSof5vgtRJuvtX2ZO1bqUvbbbQ3xUMmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719532424; x=1720137224;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GvgNRfUrYC3vDPSHgELOXCgco+1ty8Hri5LXWyU0EuU=;
        b=iYGvTc6haN2KmYmLxU9g1mymZ8rtpTRQklurUPZDVn4oJ8PIEPlz2v5Ej4Gj+UaOVJ
         PFEubMx7U0sjkVBUA/VIabwWGBLanB5TYFzeqcUnGWnIOOKqrYiKXAKGW88ha3FpaW/1
         SdtHEZILxutt8dGIlvmvflPgJ+fDU0oQn886LZ/iru8BgHLctgZhU26TgHLanpQCXK+P
         6aItl6BDcOw3vEMYikXoM3vNqRE1JLHJDgkRiDf4n8ebSKLodVKJWHYXKZN/RuhtE3LS
         dmIHSKpwnbYOVWRx1xsJenJ5OxE2MLSiW802OaHdgOBGfcUYSxXYuK4cqleEn1VkmAkV
         RK1g==
X-Forwarded-Encrypted: i=1; AJvYcCWiwOMPvnyiQmmV9pVIwmtYCB4F30+s7t/dAKvXJdE/cHMTz6XpblCs6vPym0oMLP3tNxq0ML1lIqH2Xl0dn1ORGFzXwa7AMy8Xeg==
X-Gm-Message-State: AOJu0YwjgV2bK6ztNdECZfTATuqAfj3s4ePjhpL2eiDxJTTs1C3tI9la
	yANR5fxlHlQLE/lM+Go7ykcF8uOz095wBqp/3DgYPafcSsBJGW7nyzO6B9LKtA==
X-Google-Smtp-Source: AGHT+IFTGJHi0WhKn1jfdIqcqfPQxr8jYnm7Tq2RVmaHgug3fRpbKxlPiPDM9y6uifF4i205XhWnMg==
X-Received: by 2002:a17:902:ea08:b0:1f6:5013:7842 with SMTP id d9443c01a7336-1fa23cd95edmr158375265ad.27.1719532424505;
        Thu, 27 Jun 2024 16:53:44 -0700 (PDT)
Received: from pc98uv11.mtv.corp.google.com ([2620:15c:9d:2:cf5d:cb26:248e:ee00])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac11d8cd2sm3366595ad.107.2024.06.27.16.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 16:53:44 -0700 (PDT)
From: Daisuke Nojiri <dnojiri@chromium.org>
To: 
Cc: Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Guenter Roeck <groeck@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Reka Norman <rekanorman@chromium.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Gwendal Grignou <gwendal@chromium.org>,
	Pavan Holla <pholla@chromium.org>,
	Lukasz Majczak <lma@chromium.org>,
	Ching-Kang Yen <chingkang@chromium.org>,
	Daisuke Nojiri <dnojiri@chromium.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Prashant Malani <pmalani@chromium.org>,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 0/2] Consolidate ec_response_get_next_event
Date: Thu, 27 Jun 2024 16:53:06 -0700
Message-ID: <cover.1719531519.git.dnojiri@chromium.org>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
Changes in v5:
 - Merged changes in cros_ec_commands.h and cros_ec_proto.c

Changes in v4:
 - Change subject line: ARM:... to dt-bindings:...
 - Add description about keyboard matrix v3.0.
 - Add cover letter.

---
Changes in v3:
 - Remove CROS_KBD_V30 in Kconfig and macros conditionally set in
   cros-ec-keyboard.dtsi.

---
Changes in v2:
 - Separate cros_ec_commands.h from cros_ec_proto.{c.h}.
 - Remove Change-Id, TEST=, BUG= lines.

---
Daisuke Nojiri (2):
  cros_ec_proto: Consolidate ec_response_get_next_event
  dt-bindings: cros-ec-keyboard: Add keyboard matrix v3.0

 drivers/platform/chrome/cros_ec_proto.c       |  16 +--
 include/dt-bindings/input/cros-ec-keyboard.h  | 104 ++++++++++++++++++
 .../linux/platform_data/cros_ec_commands.h    |  34 +-----
 include/linux/platform_data/cros_ec_proto.h   |   2 +-
 4 files changed, 114 insertions(+), 42 deletions(-)

-- 
2.45.2.803.g4e1b14247a-goog


