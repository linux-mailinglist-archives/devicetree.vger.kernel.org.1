Return-Path: <devicetree+bounces-60327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD26D8A8CC1
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 22:08:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7781C287C3C
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 20:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B80E364AA;
	Wed, 17 Apr 2024 20:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PPD1h5D+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1599B36126
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 20:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713384464; cv=none; b=VjvNnhDoodpEiy/Q3z44lCrv8X0FUSx/2qIqGSMutiZAdHMMuzydgKjPFPMlAWCjXhfTW54LimUm5uQHmMYhz87jqcb9TF3/k1rvZPF+UlEHrQtee4lDE/dlGzUGJQh9Hz5Bb4w1sut1UqVWUkELMW04lmcpLAO2B1l7xt6bjUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713384464; c=relaxed/simple;
	bh=R/Fnwb9c9N8aN1+rMEQSyK+TRzGedantgI6SeqNlfoo=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=G4YbfFDlXrhb2rtoNPJlCjLpxS9gY+mKqY6O8U5wxPnJ7djSdAM5LmBehd9FjFwZCiE1UvPtN8UR7wzdbAhDQcUdMA8/kgc9Nr3oLa3RaOGoqTEZzNq6KeLI+0aHPf3wioG5dX7mXem1zeW5RFg3bf63cuKGmHybxOlA1B+bqYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PPD1h5D+; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-dc647f65573so268330276.2
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 13:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713384462; x=1713989262; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=O5cs1fBxJDaZN6YqSCf5MzlG00LUScCVPL4VGimu12Y=;
        b=PPD1h5D+shMCwX36tEyIlpFneYqo7RAy4szqfmloBd+y445eHEzqAAd7CnMkAC7+pu
         Pfv4pEAXUMoFaSNP+EprS5cifaNz//I9+7P3dhOKcO2cl4qxPDxQYq+g4gut7MW3wxRw
         kbjwO9qvDZdB6dD2jtnV0JO9yYlPtVj7pWnbpdnKfrkXiReWiI+yPkIIELt6ywS99RbD
         565xoAZfHn1grqTSepPHMejByj19FIYYjEUIV0YnOmReqviLt+5OutOkSFBY4jmFZtEo
         8Z4JF2x3fn4jqq8On6AtEgUDKScMw1vwqEZ4seMpC5Qbyez8UKOFhcAzoCM5iDHjueTm
         g6WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713384462; x=1713989262;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O5cs1fBxJDaZN6YqSCf5MzlG00LUScCVPL4VGimu12Y=;
        b=rg3sCIuaUNOG5vHolDp/LUeiCzJ5yyvkPPddTTHnWKoNQ8AOsljLw2SY212Ikz2fLw
         hr8j2BITHgnj5N0PmT5ecqEciwdUwOZITZPmHjVMviV125cgQNj6570pAufXWZamxvPC
         nyRqnSb9Sh4g8FjqLiAIhtF8NmVkNIVXkZOxXco0WmwkTNRws/xXKUIxVp/bTDKBZvC3
         n8yXCQO26cLeCj/XlY9DDB12fplQECK9g/H8wTh2RPGgbNWJOT2c5H3oLCOOIY8deJBL
         ax2nuXuMqgeeEGHM+TPTYPxk7mFIh20KuVZ2XujREa46rVqh0aQFel8c/rfKJfj0NzdH
         1NYA==
X-Forwarded-Encrypted: i=1; AJvYcCUSgJVtenD6CiZdW26VINNub1E6hR0h92Hz4UuOAHGm2f8wYwfQLfLhy3dD7GjdM5/J4hQVcJAc5L20fDYqjTbaO0I6q9gu7+0q+g==
X-Gm-Message-State: AOJu0YzRUc5zyxObP2aMGHh/xGhh4VNGLbtjxJRQlkP4cRD/mUJLIn9+
	F5UgJy5o/fPJ45RjSuGgDyYDnlt7q5S9MBQP9vgzUzRVcP0vkBwKEVIzuI2u040TIgKJbVzLYLm
	ZtdScWTwuk4d0ig==
X-Google-Smtp-Source: AGHT+IHVH0/P6V4QetaySMqB9+GumxJzFMTPG9+eO6bnMhfvbIyKW38v4Q19n4x7pzRVOb7RLYI4EuzMUUs+qLw=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7d65:be58:393e:6674])
 (user=saravanak job=sendgmr) by 2002:a05:6902:1149:b0:dc7:8e30:e2e3 with SMTP
 id p9-20020a056902114900b00dc78e30e2e3mr112153ybu.2.1713384462059; Wed, 17
 Apr 2024 13:07:42 -0700 (PDT)
Date: Wed, 17 Apr 2024 13:07:37 -0700
Message-Id: <20240417200738.1370896-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
Subject: [PATCH v1] of: property: fw_devlink: Add support for "power-supplies" binding
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Sebastian Reichel <sre@kernel.org>, kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Add support for parsing power-supplies binding so that fw_devlink can
enforce the dependency.

Signed-off-by: Saravana Kannan <saravanak@google.com>
Cc: Sebastian Reichel <sre@kernel.org>
---
 drivers/of/property.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index a6358ee99b74..aa83e9bb9bad 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1252,6 +1252,7 @@ DEFINE_SIMPLE_PROP(backlight, "backlight", NULL)
 DEFINE_SIMPLE_PROP(panel, "panel", NULL)
 DEFINE_SIMPLE_PROP(msi_parent, "msi-parent", "#msi-cells")
 DEFINE_SIMPLE_PROP(post_init_providers, "post-init-providers", NULL)
+DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 
@@ -1357,6 +1358,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_backlight, },
 	{ .parse_prop = parse_panel, },
 	{ .parse_prop = parse_msi_parent, },
+	{ .parse_prop = parse_power_supplies, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
 	{ .parse_prop = parse_regulators, },
-- 
2.44.0.683.g7961c838ac-goog


