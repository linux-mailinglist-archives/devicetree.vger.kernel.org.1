Return-Path: <devicetree+bounces-186912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF34ADE1E0
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:49:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F49C3BCDEA
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 03:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79F81DFE09;
	Wed, 18 Jun 2025 03:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c2eCySij"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4556618DB35
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750218586; cv=none; b=nps53kN/9hJpMJEKskDbCwgIK8fxd6BR0uDCnv5SyhAyGZIt/wyn85LiKca1P2q8RGpPaYhRI50idIRULNPPQqvQUi3Fx+FzPLz+yUWQgTBUD+0pcwUxmr+Hu6R8DTFfzAQ8e/ARXKkdxkE1iw3rWbMmbHdPeXykVmSdUA7hmGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750218586; c=relaxed/simple;
	bh=XrZyTt1/hJny7riotxAABX6ED/W+aLxJF3OI4jGGo/c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cpf4nlO4PykR4nBuUoqoyb2VUpRlph3CoXtqNKq0oeh+8yt1s+R+LqAiFv2OU/ryULBgCwPT0pxf3gezl/9KStf+uSMFrX7S4i093X7/sTzuOzqhQwVJ4Puq5C2zXJcN7N0xMrm2HZ0IYBCsCYVSb7SkJ3KrK8h0AP78FSmTx3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c2eCySij; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-306b6ae4fb2so5501375a91.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 20:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750218584; x=1750823384; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaL0HiH9jBIX2TlypOzxXsG0yj+HeZtCgZDd/6Q8FqQ=;
        b=c2eCySijl31kuNu+xBqvllvp/4yCJErKdJuuSTVyOG82bZo9uIIW7A6pwAGM4fsFsM
         dp0X3EaY7mOeXrC0mwMUmbwYROinr5//aD45OJzvlc1llcoJGX2MAPbfrmRRLoy47qgv
         ZvH4h9FEEK4h70xcjA/aB8DMOPMw6FqLZLIBFkk1oG6+Gq1X11Kx91FLONebWiUKLtnv
         cbffm2vneRZiQaIhBtOPiXa6Z4g9iEe/PdaFIbKe62hnIGfUSEqPU0slOBzGslfMzpHf
         o2rTlwmwmXCOkkvNVSwL90V1WV3HwKRrlovlQVpBADfmfJTrgon+iE6KjUPnKRSrfMN+
         Mrhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750218584; x=1750823384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EaL0HiH9jBIX2TlypOzxXsG0yj+HeZtCgZDd/6Q8FqQ=;
        b=c+askQVmvJb6B5DS/GmTStt1UQsOO9b8eTRWhurFscBUUIDiQdmeb+Z+IcRTH007Ap
         P/iS0nupNYIQUvwUTKmJ58kSQ2J/oZ8haw2FvK865LE+8XqoIZTiQkRXtTJYPGSIOn7k
         YDyPyrnh4X3EKZ0Dc59DEe1Wt6wd6gI8qVi4bSrHOsDfWXlajOksXdd27TT5oswIBwvC
         olVO4OAq+mKkBVTbaDW0qkSJhgwh8V5lk4+kcLcQYgS4wYlVi0gSdeiqqYo4O+ZQ4ppl
         kS+L3u0vDkSdOFCZgWon4cS/9/lhLEWy4IWb/+liSyJylWj66UCXq/2ai7GG66Mls1UW
         msug==
X-Forwarded-Encrypted: i=1; AJvYcCUBBCjIETvmobuzBKwY0ZpSm9ooxj9T244FfRRF65T0WnQdjK1tpQ9uEHLKcIfvOeQUginEekr9NZIr@vger.kernel.org
X-Gm-Message-State: AOJu0YzUw4EZihxAYeVdxhtD+zo9j1F/TLNss40tlz2juc8EwnoCxFjH
	cBaJzFnJu2Bl2pmLu0cBVeuBlVUVd/8oAzysnoVimQEhgGhDXzrrmQQZ
X-Gm-Gg: ASbGncscVB1TgHpFTkqwZV2bBY9PL4w03oq74+L6TzLr6b6sipsLqY44WerG4ZzmxoF
	r2/3qLW7hZyvSGdPq17ivqLVgTtZOzM+oLgFQPSlG3jMTbL+XBveOd0cWB5kWcmEhRk3Dv+H03A
	u4y/FwFOlu7kFX8rNIiCg7Cn47A3GHiGXXA6DOdXYpH0LXEHCHEhBWhPgwfGEUfCxyLpynL2L48
	a7Zsp6zblVzQ+iQOJCD8PUX55B8PXpdhiTUibw+w+jDIzTi2id8UEBKu8zyRkQVz1WH+cTFPp8C
	/BPFHgUITT0xjzEHst5I7f08ArWQsk7kVYbezZXrtXILCvhdqapERFn/mi2SnNIL0rxvOa+qnx0
	uQt7xaq79SnQ3y9g71IocUcboQOtkXWNxX80tAoLyVjbMj5W8CQ==
X-Google-Smtp-Source: AGHT+IFlQPDvI/3JANHxQyMjprPqRqAF4Al+BfZbtntNBjRSmhzEFwF35vIG19QDRI3yejxRp2Fheg==
X-Received: by 2002:a17:90b:3c02:b0:311:df4b:4b82 with SMTP id 98e67ed59e1d1-313f1c6f670mr21677358a91.4.1750218584333;
        Tue, 17 Jun 2025 20:49:44 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236736cb4f9sm63418405ad.138.2025.06.17.20.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 20:49:43 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: cip-dev@lists.cip-project.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Mayqueen name
Date: Wed, 18 Jun 2025 11:49:34 +0800
Message-Id: <20250618034936.172150-2-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250618034936.172150-1-zaq14760@gmail.com>
References: <20250618034936.172150-1-zaq14760@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wig Cheng <onlywig@gmail.com>

Mayqueen is a Taiwan-based company primarily focused on the development
of arm64 development boards and e-paper displays.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2735be1a8..8434ae355 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -631,6 +631,8 @@ patternProperties:
     description: MaxBotix Inc.
   "^maxim,.*":
     description: Maxim Integrated Products
+  "^mayqueen,.*":
+    description: Mayqueen Technologies Ltd.
   "^mbvl,.*":
     description: Mobiveil Inc.
   "^mcube,.*":
-- 
2.34.1


