Return-Path: <devicetree+bounces-79138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7169141EC
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:29:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7CC99B23A06
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 05:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDDE317C6B;
	Mon, 24 Jun 2024 05:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="TQdFP/Sk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D11617BA2
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719206944; cv=none; b=tGdJZR+/dvGZ9Uex/hlKG9b8vH6uqzBy31wyh+3DmuA4T7UVTs8TL88hykvOsrAFXuZjOOOuzWKhRnEg2/MDKjuwNfmobba/Q6e6RDoDm6P6uIOwFksjskds8lXJF59KThHHtxQCALZk6R+cf0/4T0i0HuRytT9p53KJUeq8KEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719206944; c=relaxed/simple;
	bh=0+fyQK71jkBlGLbSI/zi67aQXYcSRdX3nV9zuMy/sn8=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=USZ6VgJdt+b4IAKC7RmazpnzJ7pRaHV825krcW1ZAuajj5ncB1sKv1RCl3O1m6XY9xJvbu/JTekaU3URcjelbznOSiSM6MfBdGim1/V9zdvqkc8FeVotTKfgt9V7CPM0VMELFIqI/QuaYmlrWo7i8lbbhMxsOEN0qDnrDBO/a9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=TQdFP/Sk; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dff1eb1c1fcso6771113276.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 22:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719206941; x=1719811741; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=f4tc+MA3MrEgfJuTL6XyEK1sgKVL7uhnnRi/knhicvs=;
        b=TQdFP/SkPrXkpWdcN5zUpDEGealyOwB0xYjD1dGTS/4AlAP3znZrz8SSKcudIzqeax
         4AHaoMPHBupytvTmcowXDPipw8CqiKiN2BmBmvGdmXNeD1mWILoSzBhVyd/Jbg73Sj9T
         5+CfSYeTYQBbAPX3exF7R4boC3iCr2NCjvrHAMKs4YZsKLdXF5wqQQVyktd/b9lw7Yvr
         GPOA9HSk0DR47HErpDkhjebdAWBH4LaOOAwlIcl6seYmHbqCgqP5VolrZtGRgRAIYGpb
         5Y21oN7GzbJUlhoba5rd9lUUI3bWn1u3GjdEuTlPkD+uCr2ieE//tRom2O7g3kn7LP7m
         g0CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719206941; x=1719811741;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f4tc+MA3MrEgfJuTL6XyEK1sgKVL7uhnnRi/knhicvs=;
        b=u1EwM24SIZ6zBTn1g35KCDTl7V5eL/5KiVcUyDHyGIZxlWAh3/ZUdpioiDlvezXI2+
         zqib3EnSyM94YydRovENA6PPneEId8BJJyro7oiJPQPnR1MQbqrOCYz8d80qBWNmTq6K
         B/rdLVeoGWkl+qwTq49gmceCfXRf2TftgMrGhzuZEH8vpOzpOqLraXt107s3Njbv27dj
         ffpXapP4K3JPVxMmQTFALvY3rYN1aldUEE6kAqnkX4a7QiU3rw7rDgYWtRsBk4k8eft5
         5Y3/tOO8+G1uC7RSZmdKTgB0nXOpdcunGLxSv4wG7H+6pDQndVbzugZyP25U8CoZzbHQ
         dX5w==
X-Forwarded-Encrypted: i=1; AJvYcCUOToQZmYUJoGZuaDIhY8er6n8pfPycjKvRibZxG2XC7+npOaUj8kr0OIqpCKMhHwB2Q/c/U8Ri613OjBrBfo10jJhNZT53FPpjKQ==
X-Gm-Message-State: AOJu0YzIt+LzlQ97q/Slrr2miKHE7Y01QGEiwZ5/NTcqyhA4IKs9Hbdk
	LU9C6wZerhitDLOVLn+dUarEIjgsUudMIdCfgTXwqqdfZe34q0b2+Si9LVl7itnvQEgt3epSCQu
	oNINiRDvEp1tQakKnO+35uvpnOw==
X-Google-Smtp-Source: AGHT+IGUgV5rE7AVWD7sfm4jkV4ITjzyYp8qAWL+Hn5XiyhVcilJx1WZCNrB1TylF/AIQIHyiuXzZGueB4wXgIgApaY=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:6902:2d03:b0:dfd:da3f:ad1c with
 SMTP id 3f1490d57ef6-e02fa3aa814mr386252276.4.1719206941209; Sun, 23 Jun 2024
 22:29:01 -0700 (PDT)
Date: Mon, 24 Jun 2024 05:28:48 +0000
In-Reply-To: <20240611171600.1105124-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240611171600.1105124-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Message-ID: <20240624052851.1030799-1-aniketmaurya@google.com>
Subject: [PATCH v2 0/3] i3c: dw: Add apb clk
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

These patches add APB clk aka pclk to the dw i3c driver
and the binding doc. Also move to _enabled clk_get APIs.

Aniket (3):
  dt-bindings: i3c: dw: Add apb clock binding
  i3c: dw: Add optional apb clock
  i3c: dw: Use new *_enabled clk APIs

 .../bindings/i3c/snps,dw-i3c-master.yaml          | 11 ++++++++++-
 drivers/i3c/master/dw-i3c-master.c                | 15 +++++----------
 drivers/i3c/master/dw-i3c-master.h                |  1 +
 3 files changed, 16 insertions(+), 11 deletions(-)

-- 
2.45.2.741.gdbec12cfda-goog


