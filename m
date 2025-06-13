Return-Path: <devicetree+bounces-185859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0363BAD984D
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 00:40:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A472C172C24
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 22:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F321A28EA53;
	Fri, 13 Jun 2025 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="k1T1J56E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F37E28DF04
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 22:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749854394; cv=none; b=siJi3NHGmAnv8DbvnRqFMZzzEBcpHAUg4NpORUQyJwKnfMgf5UTnVJdv5ESKeVp2DcG1UzNCoSbe8g3eIbwDSepKzZi3BXWtBS/qc71Yl4RkezzUnJdcfizGYchlm+lxkZMaeREkd9QxS5k17/bTLhv79ewSwyyJJSenJiiHt+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749854394; c=relaxed/simple;
	bh=ePkKGarZg1yxKpMRWvBxlYBrx6EdK6XqYYg37ZcpYok=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JzN4U71+0aYYISj6wTWX7SEreNyFGqsRt+t7MVMDDT48TI7TuE+M+4hvLvszJj8t6kdSM1hG37YE3KVBOEe/u7z8PKSMxgx8s1bjCiHp1L2iV9fanF6mhdogCEYTd2BpAv0GMKIQi7roWXku7XhU8kxBZSQmhfyaQ6pGSPv2/B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=k1T1J56E; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2353a2bc210so24946415ad.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 15:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749854392; x=1750459192; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GfJ9tjW10c2n8OZdNWcGcJdHL86wIrVqT0sfkoG38mk=;
        b=k1T1J56Evx8HsCrtGG0nHQIbEaWt3SVZbFIQtdK/ZoE5rvvY5lKVwagOVqa2EAInze
         tffpNsw3DKvZ6FBsDRiqwGhi/bHTp/vxokid7/S8ygbwW74UdChLxMliLW6Ws+QCLVrp
         3MbuCFEjknqCKyH/Jya/Hm3m/Ls1NhdDPf7f4J56lUJmJWzKGCkADLfUoJLsQOL4ZAFC
         vEKGa5gpqpBp0z5pPXpaIGphQidh+2d5TU064G7o9nwRFnqEAIFwqdA6JbQOCmV2j/C8
         UCIL/pD3ykTg+lkMhjhT3n3WiFbQemBgEQ2u4jz4eIEs0YINVtzfp0/3p+nRA4GWN37U
         zM3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749854392; x=1750459192;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GfJ9tjW10c2n8OZdNWcGcJdHL86wIrVqT0sfkoG38mk=;
        b=TCOXuaTKmihx5f0pFPzWba2VzU+lC9OFcrTjtGSr+Sc0PK/ZtoRZfBnH21+LaMLsa0
         r8ge/yCiGtK2DAGHnLSOkp+rRqq9OBi6WjPXpCjkqt98ZpsT3diehK0NMVTkAe+MGYVD
         D0RWTxkAha5EVcPCZDBKXvbFmau5FzT3fxqvP59C55C4xTYl1AgN//IwdMfpoBodgP+U
         SsiJ7F96K2Lf3geyDxFingX8Cvs5hEIXD2ofFUvkE+eGxfl51d/AGdRSCWdhdElblXuN
         o5UUWxBKwejysIC7S7EjmMSsBDlMMmhFF/zlh2tFEu//BlzXZyWdcQFZimw+nRFjbR3O
         KwQQ==
X-Gm-Message-State: AOJu0YwGaxNiQHN1j6c2aEiuyn+mNPO70FCUnV6tzQUEfxajnnshPyTf
	2T4ob6ZKx134o7MqyBagLNA11zoEwDYKAAGGcIJ1fq/SjXV6j9OPa54dvU/XjevgymU=
X-Gm-Gg: ASbGncunkWm+2PRgrubfNtlXsS5Lwr9ixJ68WRdFDCGtnT83DD1uYs0a37V/51XJhSw
	wVwsf1vyqK6QSltgi+PmYZ/WUI/5h9APPusYHJNID5bxXfi4PQWoDOGsVXFMBcep/MugkI+KOgt
	cNmi5lAJkJgEhM6ORhTscyVAs7ijmKcE8wJqxESQASe04pY9AaOk5iwQ6a4xr4/F+qVaO75hmvi
	GGbcLgTtA4LvW+joJp7oWe2W3uj1q3yO2qlh43LQN5Z+R7p94dKIeBk4l54jS5hQZ780xT+HzCi
	4GLktLSKatRkBOnBTqlLNwI+F8fvepjowd0+dmEHS1DSlDkFfyitwXEpaj8d
X-Google-Smtp-Source: AGHT+IEUbUa0L8a+Y7yqrzl4ZeW/SJ4xyJAVMdlKUrKNOtCmmtvE/AuX9mNwhOf5Awjt0gPehoT5/g==
X-Received: by 2002:a17:903:1d0:b0:234:a734:4ac7 with SMTP id d9443c01a7336-2366b3fe6f9mr16050505ad.49.1749854391714;
        Fri, 13 Jun 2025 15:39:51 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de783a8sm19787785ad.99.2025.06.13.15.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 15:39:51 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH RFC v3 0/2] pmdomain: core: add support for domain
 hierarchies in DT
Date: Fri, 13 Jun 2025 15:39:26 -0700
Message-Id: <20250613-pmdomain-hierarchy-onecell-v3-0-5c770676fce7@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ6oTGgC/43NQQqDMBQE0KtI1v0lSY1JuyoUeoBuSxcxfpsPa
 iSWUBHv3uCyK5czA28WNmEknNilWFjERBOFIYfToWDO2+GNQE3OTHKpuJIGxr4JvaUBPGG00fk
 ZwoAOuw5sWbW2KXVjlGIZGCO29N3wJ3vcb+yVS0/TJ8R5O0xim/bYSYAAo4Q2XHPuKnOt7dxRH
 fHoQr/JSe7XJHDQxiiLpUJ1dn/auq4/9Zq6WxoBAAA=
X-Change-ID: 20250528-pmdomain-hierarchy-onecell-a46fad47d855
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3-dev-d7477
X-Developer-Signature: v=1; a=openpgp-sha256; l=1307; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=ePkKGarZg1yxKpMRWvBxlYBrx6EdK6XqYYg37ZcpYok=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBoTKi2npPlv8omUUI0eMPcksp7QB/oTG72KYhw4
 L2v7lGQBLOJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCaEyotgAKCRBZNxia0/vG
 ZQGAD/9X8VPwakHZ4knvT+SJkf9bf6x/fwl5+utW+gfsQOrUSB/7FAfOCeLcykP9snNa4uevhye
 UhdaUEKIp8UJG5ehdsXAYFydwzn6JC3MIcOMtjrSDW6qiG7dSzTXEPBgjhu5dnXQnHgmlxwR6Tz
 H6hk+VUWNX3A3tOUQqg33Qhz0Jc4MJGkyWzjVIJlBMefsWz99LcanYPVKRCQBiE+SA8c3GdKosX
 UHAERZueU/xWNql/AfQcWL2suTN1LkulzHFcMq5OYx1RGQnEZzUcRZUxRhixavkEbZ10H6C6VFi
 G3sw4j+W3vMnHfbU3MoimUUpgUhBO2dT4eUofXJGC12AMmsV6XMWbU8yXDUgCgBHm6EiCTk0zFW
 syuAOPSehRX9V9zZ02mdrlhs0yVubJZN0xymZLmCHXh8Mk0BG2oaY4XDyZK4f6DIC53iOqSAKjL
 HS9G9wnnal+WFfRmf3a0b/155V0anDB/2Rq6et0T3NfPximnYw2+uDK0FfJ9yhbwawCK2AuBhWV
 1a0lf2kLBrW6yZJ1zFiE83Ckm9K5PfLCyUJ8Fb7bZfxTPN4aIj1QMwm67k1Sj/+pA4SD+SU6Yk1
 Xt1t0CbwaTEftxn+s8r23yCvPjHt1nqHNFgv4Qq3vXeQqGhBwHs38Seti0qnBcaCrJscPQVWNf4
 bXCvkZXz98e5alA==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665

Currently, PM domains can only support hierarchy for simple
providers (e.g. ones with #power-domain-cells = 0).

Add more generic support by adding support for a nexus node map, as
described in section 2.5.1 of the DT spec.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
Changes in v3:
- use of_parse_phandle_with_args_map() instead of custom parsing
- probe when device is attatched to PM domain
- Link to v2: https://lore.kernel.org/r/20250528-pmdomain-hierarchy-onecell-v2-0-7885ae45e59c@baylibre.com

Changes in v2:
- Use nexus map instead of creating new property as suggested by Rob H.
- Link to v1: https://lore.kernel.org/r/20250528-pmdomain-hierarchy-onecell-v1-1-851780700c68@baylibre.com

---
Kevin Hilman (2):
      dt-bindings: power: add nexus map for power-domains
      pmdomain: core: add support for subdomains using power-domain-map

 Documentation/devicetree/bindings/power/power-domain.yaml | 35 +++++++++++++++++++++++++++++++++++
 drivers/pmdomain/core.c                                   | 24 ++++++++++++++++++++++--
 2 files changed, 57 insertions(+), 2 deletions(-)
---
base-commit: 0ff41df1cb268fc69e703a08a57ee14ae967d0ca
change-id: 20250528-pmdomain-hierarchy-onecell-a46fad47d855

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


