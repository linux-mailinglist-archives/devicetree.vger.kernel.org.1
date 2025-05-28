Return-Path: <devicetree+bounces-181369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FBFAC7396
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 00:07:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A022A236F9
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 22:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F382D22173F;
	Wed, 28 May 2025 21:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xyTS/0IS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6A8224254
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 21:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748469557; cv=none; b=OVoBiuNnIn5sP3sPC/2zkKgo4pWWNir0rTG84D3zIAwDtLWL3WOTkn1w9czWvSqDaHX5RQamGh9/64ormxtTdWFSRDxaZmHTjETsVOwgQMj4aEsTvaM3rwkLYW377I3aZF6sQ6iHmsaKkaLjK7V6yjx0cTaGF2TV49GniR4/Z64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748469557; c=relaxed/simple;
	bh=yyebnnYOMbojsKMKGZn7b6zqWXbtEPzDW9iqHsQj194=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=egnRNi1Fnco9xb4d9BVs/yvarLZZEkLP43Z48pYd77N56VuhzU1K7fZ8vUiFdWAmuSL5BRHuyVxG0rkUqCVtn0D2OnXDvJx2UQfGP8tn6yPcoruLMcUfIMHYaNkBZEBQcFk60Z+M6hcqATu+GunVW9vsMevLmY96xGLTvXilNVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xyTS/0IS; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6fab467aacdso3206646d6.2
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 14:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748469554; x=1749074354; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=omqhGSOmEXdWEk90xAF7uWs/RUMkuzL/uGHdLMr4fAc=;
        b=xyTS/0ISigjpP7Axm6ewGMGQrt7+CGWL53KT49AcWkNAStpWCOxm6B6xw8CRQYmE6D
         9W0oPyepbxSE4hZMnWx31r4QcqtXjHtR7KC4EvM0U2Pj1Ld2VWOchAMgWX+1z3T9Vp43
         0zF+ckASBLohDBX8EB78mduf7cQPX9/50uBs4atvDYTEa/IM6A7QVMRSp8WH++BpoSr8
         zkR1HKXCEOS15jCK13yrI84y3OtdnRAxoENi9n3+4cOqyUv7mMFyigaaEGFWS27FwDJB
         u0Z/YwSgfGQEEJZD8Hz28g/Fib3UBGkAvrhQ4POu2qt0tto9sTem4fVp7oEkT/GwrnVP
         AQ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748469554; x=1749074354;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=omqhGSOmEXdWEk90xAF7uWs/RUMkuzL/uGHdLMr4fAc=;
        b=d01C2wVRjAMtSGOyISasWrUaUI5mLrQu/HIIbHAWIdUE15tCM6aToww4AvKLB2zbYW
         tyu2exCcP/EDShemiNkv73Su1mj74FQydKFOH+vJV2wjAwmiTbd3sjSp4Tkew+rPDye8
         uO6P4d8yh3DwiN4KZtqQu8ft+EpUKDGSMkOHZtN24xJDWg6bRHo/DoEnow8E0Xpohugo
         wneEQ2DFXfTxFPDdUTvM4UlyyhJ7zhrj4UfpnRCT7HJuARgEGmQnbzdmA7zKGpmVPCHA
         3jid80EkqYCjxtyzoearmV14t1FY+bGBo6f62yX/irUeljDznuxBp4Iqsegsw46cxGId
         QNGw==
X-Forwarded-Encrypted: i=1; AJvYcCVRyIuoJDphrbAFkssRSAM/53SdEB4hYXB676pjygxTznXJdfEbc4kDrImmA6mr7yz83Rv6+vzvY2yv@vger.kernel.org
X-Gm-Message-State: AOJu0YwOv603mEh0OJppvZz6HRjonMMu/Fy8jp0UQUGBWApgvxY0rEYA
	qiXCgpBslp30DbzMaSoYX9C795ihep+oOXvVcP17as0jIIf/h5iMHbzBFf/7FlDX8CF+x3J6axR
	UA+szzxJXXA==
X-Gm-Gg: ASbGncuQaKw+PQkWa6bZcrQr1B8Rj4CGMLfJ0do7aJG8GeE4IMQ7nG5I7++oRtJQ1X+
	iWmfroCIwHuNtifmJIQ7arSSc9YTH4tpDbHAvlTvgZSnBcAe7m3nheRLbUgmUOBQyCAkJDYsoXs
	CoeCEkyzUu7qx9OHFblGXKI4kzoZVKBPfZED7ZWGD0xmvF9cg1ypsNBnqnaXTkDi8m14VGgLeNI
	zHlvtC5O08MO7pDaQGY3jzWx+xyjBp+RcKC5hsUXYr9W2PB6Y9vtff5Xase0L8/YkBh/O2fhIQ5
	wYfnCS4u3hJ/ifIXe1mYiU/NCa9QsK8gYmA5ZJ050LBO3KGt7Q==
X-Google-Smtp-Source: AGHT+IEeu/ru0xTIC0/zY+95mafro63ViqPTFWl+O1vbQhm3YH/mab55TTmjjT4Phvr/wnuUzcgNMA==
X-Received: by 2002:a17:90b:1dd0:b0:311:c970:c9ce with SMTP id 98e67ed59e1d1-311c970d207mr9821264a91.28.1748469543377;
        Wed, 28 May 2025 14:59:03 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3121b9337c6sm119747a91.31.2025.05.28.14.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 14:59:02 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH RFC v2 0/2] pmdomains: core: add support for domain
 hierarchies in DT
Date: Wed, 28 May 2025 14:58:50 -0700
Message-Id: <20250528-pmdomain-hierarchy-onecell-v2-0-7885ae45e59c@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABqHN2gC/42NQQqDMBBFryKzbkoSjIauCkIP0G1xEZOxGdBEk
 iIV8e4NnqDL9z68v0PGRJjhVu2QcKVMMRSQlwqsN+GNjFxhkFwqrqRmy+zibCgwT5hMsn5jMaD
 FaWKmbkbj6tZppaAEloQjfc/4C56PDvoiPeVPTNt5uIpz+qe9CiaYVqLVvOXcNvo+mG2iIeHVx
 hn64zh+6Prit8wAAAA=
X-Change-ID: 20250528-pmdomain-hierarchy-onecell-a46fad47d855
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, arm-scmi@vger.kernel.org
X-Mailer: b4 0.14.3-dev-d7477
X-Developer-Signature: v=1; a=openpgp-sha256; l=1106; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=yyebnnYOMbojsKMKGZn7b6zqWXbtEPzDW9iqHsQj194=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBoN4cmQojOk3Ihl9E9SAPUH/nPBbWT/ptBi3GKE
 yto3X+2wKKJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCaDeHJgAKCRBZNxia0/vG
 ZReYD/0UiVWQ8Gm6D+kFMfawkv1wkZcTcoS8aCapvqjbHOU06U54DLhNtqjXVwJZN8SdGkWEzXK
 XCUIb+sR+91FDipIxCQWW4Y8S7xrFpCf5OWEmpXsgNsZtoqa8waPcqpuZo5ymhwZQZt1DxXQCGs
 q3trDyhh1vm5jKR0hWnfgBB+O1xR5IHdAIxKrup8TyeSq8xzDaKWvrhLBAFcbPmQz3FHMOJdXdW
 De0UXcS362k8GBVHyvaRYDA5Y4nG5pmKh5ekpFtw4GEBmojphBna2wZ0IQYgdZVleg+fBfcmymo
 WUNuALb5gFUn5lvQQitX1wqw8vcvmISdmJpUYO7BheCZcJhZDJd6rtO8R50a+6utWe2igSVZJ5m
 bvSHn+VIScsCGcHoQlkBoCBZIYsj6OknD8FC+NLhIlddV9uoCsGzXiu6mRfNPtiCTATg37LNJS9
 Wy5CE65DeVd6UJceBPCa9izXgMWcmHGh3bN3Q5E4V8k8zdBiyG6eR2ZakDWkyWYPQ3PU8z38tTz
 M9Kn4E1+0Henp2Ks+cVffVM3wqs6DFwBAhu12AqjU0UzuD4y6gTCmHwYOpqc0ucR1lJ5hfZKcll
 t6oIbAgdnIMHgTK45eRmxEeOFrcnfMqmpxIXGCfzNPA8+aHRzZuPSjGDiWVnvsNaxu5obhE3q/+
 8tZEFD0oL5da76g==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665

Currently, PM domains can only support hierarchy for simple
providers (e.g. ones with #power-domain-cells = 0).

Add support for oncell providers as well by adding support for a nexus
node map, as described in section 2.5.1 of the DT spec.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
Changes in v2:
- Use nexus map instead of creating new property as suggested by Rob H.
- Link to v1: https://lore.kernel.org/r/20250528-pmdomain-hierarchy-onecell-v1-1-851780700c68@baylibre.com

---
Kevin Hilman (2):
      dt-bindings: power: add nexus map for power-domains
      pmdomain: core: use DT map to support hierarchy

 Documentation/devicetree/bindings/power/power-domain.yaml |  35 ++++++++++++++++++++
 drivers/pmdomain/core.c                                   | 166 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 201 insertions(+)
---
base-commit: 0ff41df1cb268fc69e703a08a57ee14ae967d0ca
change-id: 20250528-pmdomain-hierarchy-onecell-a46fad47d855

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


