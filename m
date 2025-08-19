Return-Path: <devicetree+bounces-206086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE90B2B7F1
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:49:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A211E524E64
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 03:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A8F2AD3E;
	Tue, 19 Aug 2025 03:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="p/2/oupY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D19BA4A
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755575342; cv=none; b=tHGiTnAsmrqRu28QyCxwOAJdW5sqb6LFzChI1sfdqsSp4pwX61b8yrLUauCzckPTeCUol6syASL6W+J7BorsRt9SsCf+1uNivZ/GxWf8MnLv/nMac3w9HjSS4wW3OQqI6IQHsNbzFvVUvuWkZVLJGEVN72ighlmGVUG+bEnMyi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755575342; c=relaxed/simple;
	bh=8FnOYuWo4zwOJJ2ymhCQnmNiIKdiE5CGcKxO2n9jJWg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=M8al+OIIMBzgJxFDooyUZKgd1SPvvjbRcXNzAM/pDASvRvN4jH7r8fmlAigMNriqKq7/WwtzrmPWDR/j4M2aNq1XTnzbuS8Wepn+XQ5RqSo30JbhHIwZeRmj7UXhst2fB7HI8Gkeczg9n9cNLdD6AsCIdNNxPI3KczD8TD8EoL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=p/2/oupY; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b4746fd4793so1418506a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 20:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1755575340; x=1756180140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m99B4/x3UNc5MFwNLlspJmHpOFFED0oZaOIoZ59+rpo=;
        b=p/2/oupYKqhH/Lom3SJSOA+GCA6FLlohNoEmi1mRT6gLic+m0LZgulZTb//+I0A3Sa
         WZd/wB9FLyoGadeI1WPFS3nXl9/fW9lhIUIndnEu36MIeayicTIJsaiP30Jk7e7l1KoP
         BvMOEJ+l/l/YfdWCnTkJHMblfxS1aV1UbcyiDZ+XRsa0qNIIKOpE6LjsKaXSpFVIMk6U
         ZgvO7EqvPnD9JKu7sEnWQ0mofRwByspG9/iyb39ftIu749AEzFNvu+qGjFqIQMPT46WP
         yzGb9DFrSysmOPyZuuPIslrICw3UkurZL7eyf5cFd1K5bPPt6zbPXhhWOWseSuMBMnof
         GbfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755575340; x=1756180140;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m99B4/x3UNc5MFwNLlspJmHpOFFED0oZaOIoZ59+rpo=;
        b=FdJhD7/UICRyn+cpDgguQsenUIi6ZNpIkG82+JcQhS1NT/5llbu2rVGTL86M+eZUcY
         aParSsT513tPeqb5rbUFTGYkdxdQhyUDLYLl8Yhyv+OEbk0ZGzi2Ub9i6B0sTZQVCstq
         sowYQKp1hHHH+O1UzezLMXUX7XgEMiwrwpjAlOUB/J3sTkHNVCMTvYuRhEkWC+HWjNLd
         TFXb4HPGRcLNWY6NGhmMEG3oubcsDb6kqHR+nP8YUHcRqEnly/SlBlNGGgDT+6UZU0oZ
         fQV3hu97VNaYBSZp2O1dJz6FL497+5oJFlc3IE72x4APXsxkQUgDNpAzJg9F/8J9hMnt
         nigA==
X-Forwarded-Encrypted: i=1; AJvYcCXcKz6sAje3CM7kkbpyEAdDSj2usp3TVz0jmIjqWRBmbFuABExGvJ07tuOePgFh+Ygh5wKNRkYyc9H1@vger.kernel.org
X-Gm-Message-State: AOJu0YyL6F72AwA1AWV8VTepoE+9n+FxNzNCFndhdKKNanwMpsG3Ygvg
	MAKM7RKR7A6bj7lsWOx7o4po8X6b/7Hwtr2yv3PWWPj4Op6hsPKMJqBaMZPPaToavKM=
X-Gm-Gg: ASbGncu/roMLM+cnGspN3lSvAL+K71J+3seeAZrqm78JdLi5jUI5mkBU0u2oUQQ/8vr
	jv1omeXUfOpAK9D1GcYV738O5sGpTNt9ar4kDxJa7MN5quUqJv52UAq9VSOxcBwQav2hcW7oRsT
	zdHEAMiG1EPLkL0zDt6CohLjJWlvudonOfLXqaEqg94kTK5MfiNvDh2mN0QeWcbg8ygRSRcjAx7
	MZRkVdGV0NrQM9/RHlOp81SNA1DTgge+1GWDZ8uSz798aYpC5oHPSS+xRhpuEAjQAW7OiMgybbE
	Apy4HzbD/XhtyMVgzreVFxzdPEQoUqKhwhElxnOC/yw/oq/nScnire5YUIlSnSspgYBd6HXlmfd
	r0pHKMAMvUn4pFuqAkqs/pQpMLegk0v8M4lihUC1NjpgRiQ5JSVHSa75nEFGCNuKSaRziuQ==
X-Google-Smtp-Source: AGHT+IHZ0BKarqhdIizpMXa33BX24iqTbJokLmzpYC7AQBg5PBlvDQtffrIJRov5JPbVQzOBWH/evA==
X-Received: by 2002:a17:903:290:b0:243:38d:b3c5 with SMTP id d9443c01a7336-245e04ca7bfmr15557635ad.47.1755575340403;
        Mon, 18 Aug 2025 20:49:00 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e8538edb8sm28953b3a.67.2025.08.18.20.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 20:48:59 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org,
	dianders@chromium.org
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] Add tc3408 bindings and timing
Date: Tue, 19 Aug 2025 11:48:50 +0800
Message-Id: <20250819034852.1230264-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc3408 touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

According to the Parade TC3408 datasheet, the reset pin requires a
pull-down duration longer than 10 ms, therefore post_power_delay_ms
is set to 10. In addition, the chipset requires an initialization
time greater than 300 ms after reset, so post_gpio_reset_on_delay_ms
is configured as 300.

Langyan Ye (2):
  dt-bindings: HID: i2c-hid: parade: Introduce bindings for Parade
    tc3408
  HID: i2c-hid: elan: Add parade-tc3408 timing

 .../bindings/input/parade,tc3408.yaml         | 72 +++++++++++++++++++
 drivers/hid/i2c-hid/i2c-hid-of-elan.c         |  8 +++
 2 files changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/parade,tc3408.yaml

-- 
2.34.1


