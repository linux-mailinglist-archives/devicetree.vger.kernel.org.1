Return-Path: <devicetree+bounces-73794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C8F900AEC
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 19:03:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1042DB233D7
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 17:03:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D5619AA63;
	Fri,  7 Jun 2024 17:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dqm2uRLl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C018195F3D
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 17:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717779816; cv=none; b=hfbTd+iHbGPI0cMRPEkT0LmnGraQqADHgSVju6GRPjSKAF+5EQkMZcgggakf7pFYxzbQ8eh73jGCSZYhvCrrhC+SXtMAdTQagF9B5ypVmTuE9wgFx2U+PrswmosPbQkxW0InXeD3TCJ1OZHnHV3SEa9H56kmXYN5Z085aaQ0uXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717779816; c=relaxed/simple;
	bh=i0v3Pgeq+IMesWEB6AQSP9LER2FNbxR1ZCqootTAEFA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BR96pVYz5BrpYUPFEQ06uWZIHsJ1g6ZrlSO2Jsk9Iz1bTWn/om/lOxYmcMjfVqcKnBck4jP3Ge1eDQH0TYHTKDOp16iJwN029SU5Mhx/uo22fT+NvI5ZqNhRI/fhlJ5NdKmgO1JSoFVgGXT9o0Nk1ZxRZhbbve85uHtq0hoHmVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dqm2uRLl; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6f4603237e0so1499825b3a.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 10:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717779813; x=1718384613; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SPh1XG7OKPHXmVBg8lSEqInQF90UPXcUP7a+mw0fwSY=;
        b=dqm2uRLlP+dDS9NGeAAzAn3O3bxbg6u5UvgZlvtUR5nEf9LUA7GZYgDfgQzDqbJ1g6
         KvTrITrDbVbZyRjg9VYagobRPQdsUXye3HhkhRmKbuoPxgAXVhmkBh0PcomWxQAnLUIy
         Oz1bwZMUDvszIHN06rXw8CRVjAw6zmpy8zXBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717779813; x=1718384613;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SPh1XG7OKPHXmVBg8lSEqInQF90UPXcUP7a+mw0fwSY=;
        b=KFti4OimRx1uVS/98124v/brauPEfjgaUg1ijRpOD1JuyBGxbWfRJfAJA26OS8xgFc
         AjjJlJkSWoAoWjaCEgRhj/FqQPd5zH2EgVRgyTm6xY4bV4P35GBZfiFGQYYtUKe3sn+v
         XV9NkIox6cCpkUVql/FlYx2jcQchfo5LH4nh0kYOSMecbjfQTn2XEyEffnV6OAZuRmeM
         xKvYETmYy9/JffUJ8Fwmbc2su+XoQk6KP+u/zqcKOCUh/e2y9Sz7X8dZe8fQXAGvKa4K
         5x30pFETrZhvWKGDY9Lku2+Fy3IAm/9AdaXkn2iEjHBW86z4UHEz8bGBY0hfV/WOBbTg
         YkKw==
X-Forwarded-Encrypted: i=1; AJvYcCWOQLH93iFTFfRrsTaq7mliqHVIH3YoFVStOQsxk9lw3BbcCToE29IHwMDqrp7wRGmKe42/gaz9gtmBAktbZOww/rn7qM5paOMBqA==
X-Gm-Message-State: AOJu0Yy0l10iOthJ4VGBt630raHx/+HvNK2dUrxd+/RdOoODtj6gDbTj
	ogqDhgPyJg1dLqOs7FRkBCfdJVO20JrP5DyYoUlYqofCb4ttRy+XE54JsNwzEA==
X-Google-Smtp-Source: AGHT+IFtw46qtyb1UN3CGT1XSYzG6p20xOQSgcqCSxXmF+1ED1932FuZSayNwtcFsfXC08B84+z8rQ==
X-Received: by 2002:a05:6a00:18aa:b0:702:496d:d8b5 with SMTP id d2e1a72fcca58-703f8622841mr10847793b3a.6.1717779813394;
        Fri, 07 Jun 2024 10:03:33 -0700 (PDT)
Received: from pc98uv11.mtv.corp.google.com ([2620:15c:9d:2:98ef:4953:160:1c67])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6e439d12cf5sm970705a12.67.2024.06.07.10.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 10:03:32 -0700 (PDT)
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
	Pavan Holla <pholla@chromium.org>,
	Gwendal Grignou <gwendal@chromium.org>,
	Lukasz Majczak <lma@chromium.org>,
	Daisuke Nojiri <dnojiri@chromium.org>,
	Ching-Kang Yen <chingkang@chromium.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Prashant Malani <pmalani@chromium.org>,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 0/3] Add cros-ec-keyboard v3.0
Date: Fri,  7 Jun 2024 10:02:55 -0700
Message-ID: <cover.1717779167.git.dnojiri@chromium.org>
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds a support for cros-ec-keyboard v3.0, which uses a
reorganized and larger keyboard matrix thus also requires a protocol update.

---
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
Daisuke Nojiri (3):
  platform/chrome: Add struct ec_response_get_next_event_v3
  platform/chrome: cros_ec_proto: Upgrade get_next_event to v3
  dt-bindings: cros-ec-keyboard: Add keyboard matrix v3.0

 drivers/platform/chrome/cros_ec_proto.c       |  27 +++--
 include/dt-bindings/input/cros-ec-keyboard.h  | 104 ++++++++++++++++++
 .../linux/platform_data/cros_ec_commands.h    |  34 ++++++
 include/linux/platform_data/cros_ec_proto.h   |   2 +-
 4 files changed, 157 insertions(+), 10 deletions(-)

-- 
2.45.2.505.gda0bf45e8d-goog


