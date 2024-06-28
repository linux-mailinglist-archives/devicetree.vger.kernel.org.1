Return-Path: <devicetree+bounces-81408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD6391C2BC
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 17:38:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27CFC1C21474
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 15:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82CB1C231F;
	Fri, 28 Jun 2024 15:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="C6yDOwHA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576991E894
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 15:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719589117; cv=none; b=Rj2XEuIgqoOy/nYHDlp1MEcKudR5iaXWUd67QWuXH9SmUn5kA1yj0ZqqS5PUBkuZh8V3ZW5tWd5KouxGyB9n2Wk+9qQgI9jSqxGs26Avf4ZC3AasyQ9m690zMMYVrjqaEHZHiLV/QYLoAcw/n9duwkVSGGl4QdJVRIqHpF+8NpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719589117; c=relaxed/simple;
	bh=uacLHRN5rszX6vIJLri5UjMtNUEcG0qEZrXzdSa1lp0=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=hMYmsxF7pvyKRVaFH5nG5B+8SPWS2D4jKFRbaU/dcSbYE2/fsvJt9UH6+Js9/5CdTrZ0FaKfol2gcUFq7g3LT1eiltyqlOfoEMqeEsA6TLkcXY8Bp/wEEDcRqbFiQJK1LxsYGtBZ9g1jsYTkb41+VJH3x7aX827djEM0hKo+dvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=C6yDOwHA; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e0353b731b8so1316944276.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719589115; x=1720193915; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=9E6CDkEl8WVKZKqnxjSvSO7qQyb+0+zva6cbAiVPuvs=;
        b=C6yDOwHAgEJvZB3VxEFZoowEhi0mAt0y24HjMN5Ie0db8c/gjrQ8/dTU7T/XCRauO5
         xiMjYuX2316j5Gg92R/w8aS6QroUJkUG1r/csJldlZLz6MjiDnEYSbiIbH4wrgWL1Utt
         uf8MFzac/1da+mkyPFHJDOBwgbtV9DseaglKndYQkAQ26d6o+glkyw4KRmzg0MWq8uQn
         vO7Gohzdpq7c9bRJ2uYiStf+cqHPXC+Cus8hqYeYXqu4IjVHofZbnBlyvlplszUSbJue
         8dUwV58YhVNTd+7Gf8ydjjMU3orvxOWmLEaw409YgA7WPEFXIMi4CJCprI3FdGBK2XPs
         D3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719589115; x=1720193915;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9E6CDkEl8WVKZKqnxjSvSO7qQyb+0+zva6cbAiVPuvs=;
        b=k2/npQVDoj4UapYUcEV+fYFxv9nXm71xH1j0YkVIDj/ccbaOoUG2bQhJ8rjrMFjZQq
         Oj33iTrEVdsOg7CBXPEcIAoBI1RF4H2P1VkVTy5WvHU9vUtFIcBaHfmZZrKvv2nz2sqR
         atoyB+1e6QJHcNoXG5LoCzZX4OytiWL+ns5YxRXpDcimfTZWlkh/lzhOdZE87vO5QqlW
         CPEXZ74DmZxILul/ZclM3VhnB1O6i4MU231hlo24OLOQh4X+vqFwehywkz2d6yAQV9cH
         HeE2vvbbMi5FSJ1YYyKJUsMAaqY40XA+B1/kZ71KAly+zgHKohvj4ZPJWsCjFyksjOwS
         /a9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXmmzqxrcRJ+xdf7BwQh3iau3wxfSrOEkoZA8htBwKYhDYYUh6ZVxuxaNBhHQ6zdw0WR8Sf1Ezf13TzwoCjLpdOQd1xSjPXDylw0A==
X-Gm-Message-State: AOJu0YypvsUlYFqdpHqSvhAf6TP2y1x1Sp2OQf2haF8iTKlE5UTI+S11
	/f3t4VAf9s9SyI55ffFIriP8c6a0lxMaNBQlHltmbT5LaXrUO8rYKP9cAl8kDF5JhlmHcBK0/Hb
	Ripi4vHIN+T1SWU9x8b85GTJEEw==
X-Google-Smtp-Source: AGHT+IFbAOblu3KJevq7sqlPwSTEqrm84WW13aJYNyxIrhWTYRRVG7+VxoRMM+Ura64VKD/rC6vfzOSr6fhwJ1JiTyY=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:6902:20c1:b0:de5:3003:4b64 with
 SMTP id 3f1490d57ef6-e0300ee84cbmr86403276.1.1719589115375; Fri, 28 Jun 2024
 08:38:35 -0700 (PDT)
Date: Fri, 28 Jun 2024 15:38:26 +0000
In-Reply-To: <20240624052851.1030799-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240624052851.1030799-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
Message-ID: <20240628153829.303719-1-aniketmaurya@google.com>
Subject: [PATCH v3 0/3] i3c: dw: Add apb clk
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

These patches add APB clk aka pclk to the dw i3c driver
and the binding doc. Also move to _enabled clk_get APIs.

Changes from v2 to v3
  - moved to _enabled API first and then added apb clk.

Changes from v1 to v2
 - extra example removed from yaml file, minor renaming.
 - 3rd patch added to migrate to *_enabled clk_get APIs. 

Aniket (3):
  dt-bindings: i3c: dw: Add apb clock binding
  i3c: dw: Use new *_enabled clk API
  i3c: dw: Add optional apb clock

 .../bindings/i3c/snps,dw-i3c-master.yaml          | 11 ++++++++++-
 drivers/i3c/master/dw-i3c-master.c                | 15 +++++----------
 drivers/i3c/master/dw-i3c-master.h                |  1 +
 3 files changed, 16 insertions(+), 11 deletions(-)

-- 
2.45.2.803.g4e1b14247a-goog


