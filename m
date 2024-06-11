Return-Path: <devicetree+bounces-74716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8160390423F
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 19:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D69C1C2463F
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 17:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A129A4AEE9;
	Tue, 11 Jun 2024 17:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OoXvvjN0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281373BBFB
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 17:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718126189; cv=none; b=mCJlQQj4P4GmZHPqq1ieRe4QVIwvFNXhGtVGT0IksdyVgXOK5olN1ommfUOl6Czr4TYfxbCrUlDsP4lGTSB3kP4CEeExb6+PlcF22lG958S/FreyWj91wHpXnHt8V7j4pIcTlroLUOvuzFmIjEhh/EiyziPREyXMDK4U2/ZgYV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718126189; c=relaxed/simple;
	bh=rrQjB0y4241+Equ6474J4Ww1/gVentJHoCUCVZBUatI=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=plmNOGUD5C163Bl04KQ+9jpGQwGqn66B5+wy67UMT+74ZHxOsNmkMP9E88+dGx2s1vPc3GRL8wnSfSDlbV8X27U60UfjbIDRToRPzP13wF1HSjMUu4FjH5AySAaMhzGgJKsk4GVEkb1xO7bWA2LpiqOZ6Yc6cXqCPgMyD5qjE3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=OoXvvjN0; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-62a23864df0so95515697b3.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 10:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718126187; x=1718730987; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hSJk4i6CiFyTA+xiXQFolq9PrmWtX/oAjt20PA2VXO4=;
        b=OoXvvjN0VZFTCuOiUQaFUFyD+XOiLKr5KrI71Mm/uZZefufO3qFo0TWNF1gA3AoCW+
         uMQwWyT6ukyZ3/+n0sHd2wyT0yAhkPwr7HB+IQdZSkFC3xt4LCB/FosVocgspSIYvgDf
         3o1BBTnf7ha8EBWn7br2ZhksaVxCVA5JBc5YscNt+Id5DAvKtYAJNpOdGeg/p63+E4QF
         WsTzRQnupVXdAxJJB3Ln6gcE7AzfIwu7BhZ0zdwHfXqAIryk5WlUJ7gRlssqxxeCBpu6
         vVyQt/7yJqDtrV9pZfye1Pa2HGaDRxxgj88fBFw8OKorHjLGCNmPqBQT5+IMwfo0srAe
         0/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718126187; x=1718730987;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hSJk4i6CiFyTA+xiXQFolq9PrmWtX/oAjt20PA2VXO4=;
        b=vmdItJn8BxIPO9HU4xKUjO30G1/pFZ3qrb1+QQWyefo1++EhwdKWMfYwJDnI7qL/NK
         S4GLZ8WQCANinqdxfeSffLDBzgotUjea7T6SmWVvx/sJWWdaLQoHL69IbqysSywveSqD
         Ggb7oRrGLtsKG9L7eGYIc5+4uHUdrCMlMj4QfV7LKyc3bhtq2CEvWMX3zKYNa1Hy3qlU
         t6c6ShsectTrKGoLnjcnJnXSnonVJ1fnMEeXp5wMDKrbPdLT0VROAYgLwS+Szi8v/eWi
         wSQfb4qn5QIrg9nUP5TS5jE0VvI7DPu29apnpPD46wmBZOItRC1cUKfBm3/tc78w2uDn
         2ZFA==
X-Forwarded-Encrypted: i=1; AJvYcCVtgoVi9huCcy1+HDZX3NsTQftuWGiuRYPGMS1iSq5TYhVmwmCbI26652N3+CQCelSUlDyO9w/tKn/qdhGdvUVqm4sW+oXKU4lzqg==
X-Gm-Message-State: AOJu0Yzw87JhR9ojGTpIuV4nj5UWk+RPsUMFXvuzBDlaun1H/7/Rs2K9
	B9qI3wwTQxaDSaum6NBT0HjVQ4IINoDdmclV7Vp8RA5gxKNJyQsA6sWXreFyo/F9pLx8JHAhwtZ
	bG1bUnOIMs6ujkKT5XczScOx8OA==
X-Google-Smtp-Source: AGHT+IEY+40hETMkg0kKm8Yl23Q7Oxp2FMPvAjMasenOB2rn5gy1l4SMxnz3rEEaTtldeQnZVDv6905q+FxpRkCKOos=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a81:4cd5:0:b0:62c:de24:c501 with SMTP
 id 00721157ae682-62cde24c97fmr19335417b3.8.1718126187008; Tue, 11 Jun 2024
 10:16:27 -0700 (PDT)
Date: Tue, 11 Jun 2024 17:15:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Message-ID: <20240611171600.1105124-1-aniketmaurya@google.com>
Subject: [PATCH 0/2] i3c: dw: Add APB clk
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

The patches add APB clk aka pclk to the
dw i3c driver and the binding doc.

Aniket (2):
  dt-bindings: i3c: dw: Add clock binding
  i3c: dw: Add optional apb clock

 .../bindings/i3c/snps,dw-i3c-master.yaml      | 19 ++++++++++++++++++-
 drivers/i3c/master/dw-i3c-master.c            | 12 ++++++++++++
 drivers/i3c/master/dw-i3c-master.h            |  1 +
 3 files changed, 31 insertions(+), 1 deletion(-)

-- 
2.45.2.505.gda0bf45e8d-goog


