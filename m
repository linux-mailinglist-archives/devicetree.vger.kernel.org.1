Return-Path: <devicetree+bounces-216088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C05B53984
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B53FB622BD
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A3F335FC27;
	Thu, 11 Sep 2025 16:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BHLoIa5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F6435E4D0
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 16:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757608857; cv=none; b=RmPbQcuQUkFh4KuGltICXOddm32QuHNr7aRpdB6iEThkrAAW3/Dq4Zkz/5h8jTVzE4z2QOyn9sIbOBGlUT9S3pzLpnyvABgHHwcsF5oxcY2FAmmuHOtBr98WMX0wLsjt0y91eVaNH0k+6GtKEoxeQ3DGco/WwX8sldyYNzwkhiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757608857; c=relaxed/simple;
	bh=RPBQwPNuYyYtQUtZ2JZFYIKb6yx1lRSpbGv4ihtUNa0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fjVt/dLG+6+i5SiyUZy1zz/asUOZPzu4sTJMNIIjn5TI2HoWFGngFELpQWRjgUnv0SNajpt4edKFFwXPkdWUYln8IuuUndmb2wj/idIssy3nxvAvPYY3Pf9McqUJlCigVhpirQ2G8xdl2VYdN4pKBW7trZvzA6kF0nVVJN1Ak/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BHLoIa5+; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so8351505e9.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757608852; x=1758213652; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uMQMHx+8Y9PVtHu5Fhv1ceibqlTqO0/BLpLsbyBHbrQ=;
        b=BHLoIa5+gzOmNMr0fYq78vEnc9uG8tGUGlDRut6vINYZkTQkybTQYtt7vM9yi6YWGh
         jc8RVqtVKVlp+N4up1Ovkd8istgYRw9TzOWFJRPSrGDGB3VkJZn5lcgLv5ab6BKCErTm
         SbfRXGrFCUczlIl5JSa/4N7AvnnbYJSH/UoEXm/OPKqsfiD9xoTu/hID3fDKV/HSO6Y0
         RmDXGXqEAsf00zaITMNteR8drVrfBbIVMT7ClbrRou0/cNiNiP7VnSiq+EvGAnR55sUN
         +R57fkBaHOU9gN4FLa30QdEyGz93S2BxskNGZrAEZMvgp1K7X6CvVTkJO03KvdO1m6tR
         HgtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757608852; x=1758213652;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uMQMHx+8Y9PVtHu5Fhv1ceibqlTqO0/BLpLsbyBHbrQ=;
        b=Jm/JbOoiUY3N1HriTVpdT34MY2x3NH/vSTldXwuEsrL3Clpfe4cQriOnSV//4bGgeF
         9YGJqqZGzSK7OJyXSvDuu/VEN6AcScK1oXZyxAh31gK94w0e1ObXpT11x52X8mciRdDw
         M10E8O9MOdKzDNs3oMG++43fiSS1wk4Hs2ikGRBSb+uInDXjwQkVcJEWHhMylQXz/9tR
         f7Rw9yjvL10tQZn63SlKgBRJV9EML8KEI6iTxhjYjg3Hyy7lzHz/O7PSDPGdxcMWkFOc
         iuOQGayKuR61LDJKTr2I2CsFO6FNxE9lhed12edglW3mGS0COSDElMVJxkxsmzO+UroM
         6Fbw==
X-Forwarded-Encrypted: i=1; AJvYcCVvX4FtD2uYXcGclGtQIdU8BCeomFTc0wlx1qdmu8gD6xv3DPIqtGYkRU5k6P2j85bSwv4kYQzDIZ+p@vger.kernel.org
X-Gm-Message-State: AOJu0YzfV0Ddn99uKWnttfdAzebIGMoWaomceangJU1/Kz3y3NQqQBH7
	xTTYyrYykk9qZBWN+7s8Oqm4m4GnVMb73iKrSK+IHRKsdTgZFhD2mL44
X-Gm-Gg: ASbGncsnFfYhgoyvHLk56lhH1Ue5hBz23/sWu2KtbeB7c02al77RFbzOJTFKmtL5bz5
	Bo6q7EXF0dp0HR9qAx0BGVqLEfWMqikYRRywAm+QwwU50QvCx3DoRTLlUj/7cvo29l9elbIfODg
	bkHqPEpY1QLRbEgEkF9hLGk1vw7Pq/54P1rvvqEi4ayyZdtU2Rj41vPytR6sR3I97Q3Yb2T+fn0
	sh1litvGjuOlk2B3CjVG5xEEdCeUDcegGQFJkhwRNlBJ4rFlx8Xliah7OpyRngBaU7DrGYKuaiz
	Elg3ScJmDjzTLelYWbZ1ShwHxUgZApdnJefiMgcwhMWfIrPcxAp65leTl6e4gTKNxLQNxzOWiOX
	/7/gbkGKRsVwHk59QE5TssXVUFGechaytcl/eJmpy04ue
X-Google-Smtp-Source: AGHT+IEV2fAo5+1KU/1dEim/AbauImb4ZS8yoNPDcA6mm9LIEdb6hwKHDMfpgtEkevMzMRNv1mgNcA==
X-Received: by 2002:a05:600c:1c19:b0:45d:d259:9a48 with SMTP id 5b1f17b1804b1-45f2128cba7mr155095e9.9.1757608852107;
        Thu, 11 Sep 2025 09:40:52 -0700 (PDT)
Received: from localhost ([2001:861:3385:e20:6384:4cf:52c5:3194])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45e01575fadsm32846505e9.6.2025.09.11.09.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 09:40:51 -0700 (PDT)
From: Raphael Gallais-Pou <rgallaispou@gmail.com>
Date: Thu, 11 Sep 2025 18:40:00 +0200
Subject: [PATCH 4/4] dt-bindings: clock: st: flexgen: remove deprecated
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-master-v1-4-5d5d5ea9af22@gmail.com>
References: <20250911-master-v1-0-5d5d5ea9af22@gmail.com>
In-Reply-To: <20250911-master-v1-0-5d5d5ea9af22@gmail.com>
To: Patrice Chotard <partice.chotard@foss.st.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1176; i=rgallaispou@gmail.com;
 h=from:subject:message-id; bh=RPBQwPNuYyYtQUtZ2JZFYIKb6yx1lRSpbGv4ihtUNa0=;
 b=owEBbQKS/ZANAwAKAechimjUEsK1AcsmYgBowvuMhoMAqyg4f7fuJzIMrdJHVjiH3Pjtk3Qyt
 6C1PmXFFlmJAjMEAAEKAB0WIQQgmXv2E+fvbV/9ui/nIYpo1BLCtQUCaML7jAAKCRDnIYpo1BLC
 tcXuEACV0LaWPJcYAtrzhR+HUM1hlanPrthmPqzH1P5CP1R8qHkOgPC1Je5dJ6GbZ6ww3m7LWSu
 qnVmynGir6SfQSjeGy8BxOW2QtF5hACVCtxbj99E2Y6CME8TN189WQA5sKh+hZ552OVE4HydKmm
 5X/FsBHjTMfGEUVYt94jgMWOu9ZdRTrbljkPeZFBcHxn9DXqSXrVsFByeXVYy0R6qyzQKzBuHCy
 DpsVZlkzBpsmKc0rhOEkW6dXcxHBcW8ZSaiY4A6V7zJx0CU0HZXGa37e6A3OHMk7NzdvVdsHOt9
 wUZzXrOb5neMOR0uvKyUI+huOqaX8e60KPSG9gdPlMZ38EeCtRy9EYjEm9GFPVLf2LMpmfCBJ3a
 RzTtxg6ZWLVI52hhCjWI1KpUD1X7nXF7ziGedtfbQbbouMTyGIwkM/L13iVwfFzEDBYfSOrtp6R
 Tqan0wj4eJEdbfg0j/wT8LyOWkxN8II7NGrBb1DVvE1jSjJJZpYKAPYPJDjtsCUepOMk5vRDfe0
 T1fbWm1oJCAvLiZaV8Ber7aWciZJOjMyicInGQCLWCfkex1jSvVa/bMbzsxpRFmS61I4gtqfgbK
 Exh/tNbOonAl+n44/6BWPBDNKSESBaEV/b5V3pFUfLxI4QTDzr8ijiKRJDMajmFHFdDCcpx/UQM
 UxRer5rlsjPLcFQ==
X-Developer-Key: i=rgallaispou@gmail.com; a=openpgp;
 fpr=20997BF613E7EF6D5FFDBA2FE7218A68D412C2B5

st/stih407-clock.dtsi file has been removed in commit 65322c1daf51
("clk: st: flexgen: remove unused compatible").  This file has three
compatibles which are now dangling.  Remove them from documentation.

Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
---
 Documentation/devicetree/bindings/clock/st/st,flexgen.txt | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/st/st,flexgen.txt b/Documentation/devicetree/bindings/clock/st/st,flexgen.txt
index c918075405babb99a8f930f4a4430f57269417af..a9d1c19f30a3366c2ec86b6fe84e412b4b41ea56 100644
--- a/Documentation/devicetree/bindings/clock/st/st,flexgen.txt
+++ b/Documentation/devicetree/bindings/clock/st/st,flexgen.txt
@@ -64,12 +64,9 @@ Required properties:
   audio use case)
   "st,flexgen-video", "st,flexgen" (enable clock propagation on parent
 					and activate synchronous mode)
-  "st,flexgen-stih407-a0"
   "st,flexgen-stih410-a0"
-  "st,flexgen-stih407-c0"
   "st,flexgen-stih410-c0"
   "st,flexgen-stih418-c0"
-  "st,flexgen-stih407-d0"
   "st,flexgen-stih410-d0"
   "st,flexgen-stih407-d2"
   "st,flexgen-stih418-d2"

-- 
2.51.0


