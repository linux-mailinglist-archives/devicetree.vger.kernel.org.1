Return-Path: <devicetree+bounces-182103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 358AAACA8CD
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 07:11:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6179E189C262
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 05:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6BDB183098;
	Mon,  2 Jun 2025 05:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="ESo8aTvD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D667A150980
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 05:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748841097; cv=none; b=MRFyTGbjKZLFK9jxrb4+rr3+LSLhNjR1aPHRXit7CIdfVE0yrCJ/+GDPe6x82IGI1Gjd4xhiilT6s9JMVBi8zcC87yQUbXxnsdvQJecH2NgMSgd+owEnxDOb4+O/DqrYk0IFsSSiJcgL/gkN5rAfkwdGrzWb5zR6wxltOjN9M1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748841097; c=relaxed/simple;
	bh=oZuMIrB48TQVZ267SzyqqFKk1A27pKuXp9Tsyg4Y0LA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Uc7okPnqqDDHhSpqzClhda5k729Nyh262Ut2WI3sJlxSXgx30VnQg81wfRzyagXcAmeJ2ualrykaRttN3zO/Z74rgSkXmivUwnTJ9VsWzQro6KPqJUSmQ9jy7AoqZ3wOW4m0T0KnTQevZQoP4zLoVAOWzmkrl2XVa+4vYHdDw3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=ESo8aTvD; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-234bfe37cccso50541995ad.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 22:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1748841094; x=1749445894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tUG2mfGbVlQP6aOBxscXOizK60ki2GEc4gRzXvccP38=;
        b=ESo8aTvDOPTwuZy+ulOvoOopFLjXd/L73VlkR/cgGVw2CAUhN4+OkraTN6IUSK1hIZ
         SVho4AbUMAjI6UsAXgan47DRKiS8429xLF9apDP0pDCWi9pQyRPDB78Y2RfsMQ940q6+
         lIhqcIP16kxcur69agg63p3RjdBTglWihGjbXdzwYNCsItVd/dSUVv8pKVUCB/lGWTu1
         W45B/fkbSsAk8IYdNmKnYaMuNpaz3pW0KofqQE3JuOA5YucA4XbwYajwFSDh5YTGhJkm
         CSvxJdOpTNgZa4ebwwoA+B82jX89pgBPSnyHRfNIZTGvsdMc+aihc9TpFlq5xSUgEmA+
         ck1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748841094; x=1749445894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tUG2mfGbVlQP6aOBxscXOizK60ki2GEc4gRzXvccP38=;
        b=AQXCGxRsfGS/kitsNYJCU4E9Bkz2keOEy3hogOQil+CN/yC38ecNmLeuTokx6mlKUY
         B2w79vwDDbwDoqFcXQQytKroWh7RWh1NFMcCA4snAzrlrR+bMGbAEz86xnVLcVewpjOm
         T8DhAXqd4rfNhLyA+FaxdJ8vbBgWerOmLz9S1MbfCrECp35gZ6+dtkiNpJppa+ec/Dzh
         N6/KIWS459+uiyB0cLahX3tRfq+meMfxfL6Dvq1kbus4vOUjQlX2vjgHbvc2fT65wu4T
         UdSwhvCH1pWcnu3OcuCDBKNsYXnLtcoEuRnLqOHb5JFa351/jOceVqcmZVYpJL+5LWJW
         hbUg==
X-Forwarded-Encrypted: i=1; AJvYcCUatcww8+XZ1VYIdvS56OA5UmuugGH4OSC65ajd3sO5EotkzblcDxGocnbkzedtVh0driL4vnTRk1L3@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh32W2Ab0gK9VqbuT65LEgDRNjUEeL+klJPPy1P5izoOLCD5Q2
	DlgRrVK6/VwturcR0rZlqu03MY/9SREXvXjDDAuPNXSkr1XfbLwcR8TVHjqvtOP/+Xk=
X-Gm-Gg: ASbGncuQGCx+koZLSipmQQATWCmnoJScfUzx0oI8SwZI4g9P9nE03YWEmNkLJlpUCVg
	wJlDQ3NiqSaw0n8k1DbJFDn+tcSo2OYcVA8xyzPKoU0XY6yibqE58KDx7zxqGFq67T0yE/mEZOG
	XuFSR3GQNn+bkA49lPnw4C88oHDCJDjcqi4444bYKmAwwxuJnr6/PMB7NT5PnFfW4UoH5IYAJMz
	VMCNCz10DEqnBolJwQyvT5qQNi4Lt57lyph0Tdi2s4wih2Om9+Bm3tWEtiAy3MTBj884FjRS/XM
	UMBtf1na4aigrnH43bXIFDYV8T7MI2Tgoi71ecFFreCR9nSu+OBNGxW/B4XXhNtXXks6+qrVEkv
	HwC+KGAw=
X-Google-Smtp-Source: AGHT+IH15jahMcfNNWPkxUhg7yjgT+AT6xissa4av5uh34InGjeBLrUD+mSsSG/ZR/48e5BFYwDQwg==
X-Received: by 2002:a17:90b:3a0e:b0:311:e8cc:425e with SMTP id 98e67ed59e1d1-312504914b4mr15268598a91.31.1748841094114;
        Sun, 01 Jun 2025 22:11:34 -0700 (PDT)
Received: from localhost.localdomain ([123.51.235.216])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506bc85fcsm62709085ad.38.2025.06.01.22.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 22:11:33 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: jdelvare@suse.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	grant.peltier.jg@renesas.com
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chiang Brian <chiang.brian@inventec.com>
Subject: [PATCH v4 0/2] Add support for RAA229621
Date: Mon,  2 Jun 2025 13:04:13 +0800
Message-Id: <20250602050415.848112-1-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RAA229621 is a digital dual output multiphase
(X+Y <= 8) PWM controller designed to be compliant
with AMD SVI3 specifications, targeting
VDDCR_CPU and VDDCR_SOC rails.

Add support for it to the isl68137 driver.

---
v3 -> v4:
- Add Changelog
- Remove unnecessary "From" tag
- Add the compatible of raa229621 into dt-bindings
- Link to v3: https://lore.kernel.org/all/20250303083537.3312250-1-chiang.brian@inventec.corp-partner.google.com/

v2 -> v3: 
- Fix the corrupted patch by sending plain text email
- Link to v2: https://lore.kernel.org/all/CAJCfHmWJ9N1R8x6ikU02_RYq9ieq6yWY7CGdfvc4hRqHnX5szg@mail.gmail.com/

v1 -> v2: 
- Modify subject and description to meet requirements and remove the override of
  isl68137_probe, and add the of_match between raa229621 and  raa_dmpvr2_2rail
- Link to v1: https://lore.kernel.org/all/CAJCfHmXcrr_si4HLLCrXskuZ4aYmqAh0SFXNSkeL78d2qX2Qcg@mail.gmail.com/

---
Chiang Brian (2):
  dt-bindings: hwmon: (pmbus/isl68137) Add RAA229621 support
  hwmon: (pmbus/isl68137) Add support for RAA229621


 .../devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml         | 1 +
 drivers/hwmon/pmbus/isl68137.c                                 | 3 +++
 2 files changed, 4 insertions(+)

-- 
2.43.0


