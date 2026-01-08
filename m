Return-Path: <devicetree+bounces-252820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F0CD02CC6
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D200B3008F3A
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5DE847200C;
	Thu,  8 Jan 2026 12:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gQjlJSh6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6FC472000
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767876733; cv=none; b=lTl2aTqH2YTqIlIfLYzZ6Pvjp/jLBJXMVkrWtNbg5Y+1UDl0Q9k+8kkzBcPH3DM3ox7h1LGf9gqPLyG0la5txdpYtunS/BQsvJx5dENluqlwVo5JDy379v/HmgmgRjETqpGXEfOK/ikCAljlgLj2iyRSRJgl34kYJdXTdMiA9IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767876733; c=relaxed/simple;
	bh=BNEfp4cAiOZAgWM/hLJqzjpC8TrLVyoCEd71vX8euV0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lbROInkzjw/j0I5gmNyXJ3vlreqc5ZVq4lAhNDiuyFCP1UIYr/+81HEc1EMmS8gsUhaF47XecqVO41lHqSPmKcjpoEdSlT9Vr9PlG63QW8AeqjTKiSQLfE8nIZj1JckxAtK4UiFl0rlKNtm4Jz93KgypNSbWEfIRAwuukMWuQ1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gQjlJSh6; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4775895d69cso15745575e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767876730; x=1768481530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZjZnmMsZAmwj+u4MMhAdvmZKxkPC8GLrjW31jRJ78UA=;
        b=gQjlJSh6vfEXAoLZ3cyS1eF7nD76Mt/vCMCbPX0Pdv+58uzfpfChd2xGtO7UL7fNrc
         YJycuMJG6ztUYB9efg9cDISuGVDDTOAN7iYO0rLpMB2B5OmtW5dAU7+rPywpMe5o2kLm
         slHes0XKAxswEuqPka1Hpa7ihV3gQOzj1GKvel6ztv6YddbREn5oyzXWp+8AnawULoIp
         2W+K0zFmlWO1ju1P6Wcq9ILp9qrlKNGkgYUGTQF1eaE84LaCTQQYh779I6lYyq36kJzI
         dDPKrVn5WZ1Qa+ukN18ti6IE6GQ4Yq9LjaIMfE38e9HMzhbPRBf0OS4KubvntgnT8fTc
         x+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767876730; x=1768481530;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZjZnmMsZAmwj+u4MMhAdvmZKxkPC8GLrjW31jRJ78UA=;
        b=ppxTuEC+yl9Oc3/dF5w4oWkb/WacEck3KyAXJF7Cf3XqiHd7maj+j7P8HPBLL++y5+
         3rDrNukiGo7c5YGcKupso5e/Da2JrhXeVxK5q2Mjjr24kEJP4L52Fu086N8+ckCxrJdC
         wqSkCU4r9TEWzHJIND5OQqxazPksBdnuKtrZcOyFwqz1szuhQTNEEz+lxslDOVkE/EKc
         e8dbbLW9w7miWNd8c6p7Lk2cipjSxRZMUevWLWIdGwatXuCvBEcFdKyp2w6fA8MZOThg
         m65G9sUcV8Yba1efGqlBWjlIbHbe+PKes81hI8lbwjKJZq8ZznmoN5qE8yxkGDo0GUoa
         aL/A==
X-Forwarded-Encrypted: i=1; AJvYcCXcdkw3+PS8bnTdhqyALA8Y6As6B+v2EaOgC36LTB38aOA/Y+6CQ4eo7vcsK2+5FJo95HlYw2+mInL/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3x3MlkLxf9grKoz3QOiwjQBXCf/z+NlYv7NIO8SUkRCa43sY/
	iBrXPnahFA0xJcfgskChallojVa2x6AiQgztBsLjjU5SWnbIU/zBG01D
X-Gm-Gg: AY/fxX5I7IZ63zJ0qrhk+/cBn5NrbXxMxpfIWWdsNuYPuxLNfZ8cZ+NBCJWQvu6FoLZ
	8/d70eWE396WIQO8JvWcbEIC2vIPplnsf9HZQMDz4jrLPVr5A9HwtwaGMGk2YxmwksFUCunW5LF
	fc31ClkhuyJQGwZL5WtZfgUt1I8W8PsyW/TAjw1XK6uYiRy7kNB+c0pkmdeIDXi27FTaJA4oP00
	DjZhxKRkgo930AWR07jI4FuQZqmAVITzH/VKVxWlXpjrSZA7BVzlZuYE2xd0Nz8FnzaC5SECooN
	11BEMIPfknZA0FpbdB/AYtVR0jQu5gKcKhawQVyAJyQpBdF1ri6kisODqj7+G0xKkBihcnovvH3
	IfCWnsfXhjXa7hYSBwi9OYDhicmS/pOn96bQmN7QZW6a9uqO6CDxVpMRUGi76YtAOTUp9JGQGFv
	IzxeQo9GUDvwbCEGtxg+AdLCcX
X-Google-Smtp-Source: AGHT+IEIsYHHhEprQ2ORDdeicbqmDQ5jEhfSg+KYvhUSTtYmMIW2K1iQ4OcbHgp/lPPdooMkrgrMIQ==
X-Received: by 2002:a05:600c:4fd0:b0:477:7925:f7fb with SMTP id 5b1f17b1804b1-47d84b200d1mr76068675e9.10.1767876729909;
        Thu, 08 Jan 2026 04:52:09 -0800 (PST)
Received: from eichest-laptop.gad.local ([2a02:168:af72:0:58d0:2e00:f578:dd87])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dacd1sm16046623f8f.4.2026.01.08.04.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:52:09 -0800 (PST)
From: Stefan Eichenberger <eichest@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	eichest@gmail.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Convert the Micrel bindings to DT schema
Date: Thu,  8 Jan 2026 13:51:26 +0100
Message-ID: <20260108125208.29940-1-eichest@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the device tree bindings for the Micrel PHYs and switches to DT
schema.

Changes since v1:
 - Change ethernet to mdio node in examples (Andrew)
 - Add table with skew values instead of a description (Andrew)
 - Remove - where preserve formatting is not needed (Rob)
 - Add blank lines (Rob)
 - Drop line "supported clocks" (Rob)

Stefan Eichenberger (2):
  dt-bindings: net: micrel: Convert to DT schema
  dt-bindings: net: micrel: Convert micrel-ksz90x1.txt to DT schema

 .../bindings/net/micrel,gigabit.yaml          | 253 ++++++++++++++++++
 .../bindings/net/micrel-ksz90x1.txt           | 228 ----------------
 .../devicetree/bindings/net/micrel.txt        |  57 ----
 .../devicetree/bindings/net/micrel.yaml       | 133 +++++++++
 4 files changed, 386 insertions(+), 285 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/micrel,gigabit.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
 delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
 create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml

-- 
2.51.0


