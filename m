Return-Path: <devicetree+bounces-45487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF458622B7
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 06:25:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1F881F2293F
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 05:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57FB3168D2;
	Sat, 24 Feb 2024 05:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="d8y47D9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E5617541
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 05:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708752317; cv=none; b=i4Nu2vw3wWHlGMuLZmrJYx389HRq8jks1WWyQaycNg+h1a4UwD1jn+ew3w2dM0NNX6fe9okF6ToX0enZt0S+YXhmpZSavfMo3rf+kaXeKiqOW83fCQj1EZ76AuemqCyP+ItvMfs07gRStzWOqg479JDLgdKVA5Tw5wfq2MMdqgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708752317; c=relaxed/simple;
	bh=QUVWQXF4RnbcTmcdlBVlHaewtgXiBHCNt2bTtC2kEk4=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=dp/4vJTgBA7ZvUqj0+dpq346iO5dcYq9kYCLY1X6XKhl8dmLvKaKrGeS/ENwZgQkEAFyt9BzOw/V/y5xzh0hQxUivElWY7b6iOL03Vnyg6fE8rziEZwPeilBI/rjWzJWMuKX3pqvpk1u0llDVCzmDj0tZU3AinQUw7HdwUmx4ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=d8y47D9g; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-5ee22efe5eeso27489527b3.3
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 21:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708752278; x=1709357078; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NmM7cCBUfnsEzWOUWxpGwPzttTnkh5grF+m9vEmGQ0Y=;
        b=d8y47D9g19pxlwzf3UZp5qNEWdXp+nZZas5JoZkAfClrGXIGtrAYXV8pNLdm2nxAj3
         8IrVgVOoBUKWbvv8Vmd2al8w2TZZBOJiZtoX5LYY0hDn5JlcebyBGB2Kq8NAo8HFk3Ym
         S+7Zf4O5Y/xJv39jJ0eZg8IFxAniSKd5YsRHURy61xLKG6y0y0v/tHlM9+7J9w06Yb6F
         kz29u8V3udFhKs0A1NlvQXNltcPcj3ig+AMgpdd6iLozBLvxTIS5a4wlwj5cu0I9JJma
         jLCLa3zW18s/HmCvQb3jbpGCthe+sZ/OalBeFr0cWPu0vp5GoV0SArPTRXinJvFDGX2j
         +Ahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708752278; x=1709357078;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NmM7cCBUfnsEzWOUWxpGwPzttTnkh5grF+m9vEmGQ0Y=;
        b=XmLv8+4xz01P5lgUnA3w5F9JUJcD4Jeo6X8WbzmVrzIJdbOqr54QT2OhNcVuEwktOD
         KhrQb4AFqQYmiR+Inh7tfe+T89VDlti2wJGeMj9qaoBVf7mFHy6L7ej8uK5zgUqEj6im
         mW3RHBaYISCMfyakLiz6Fxtcyxdbji16D4H9VZnwAp5vFOzm1jutu3P4GuSwgsD37WFK
         LVnxD9qz6e+g8kH0LgYrg4H2GTZpuhnOPS1zVSD0kqV19ytrTB92B28ycgprL/q+/yCm
         z326vysCrNvzVLLBvcsD4aZUb/CUzJabvPaJhgQwKm/M9YNOjlkcVRx4mpKjY6FQNvNz
         z0kQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdp6Z1urLFOVabx2b9ys4DHQnNJZoojPp+kdBulDL5U67/d0rjvHuWFDyYuEFANPNeTXI3gcn/lUzzdn0yIJn1LFC3voaRTIewRQ==
X-Gm-Message-State: AOJu0YwiFrjlWmtnLM5LH1JGAWFIaStvDVKBcQmxboGzBItZQaHvQsZB
	3SGUDs1XwxCRGrQUKQ+YKfGAqQ03tuAP2oO3m639kmDPbIQgxDvnOt8MGNGWe/V0RTRBKANCEo/
	2q9NodvM1tC7QWQ==
X-Google-Smtp-Source: AGHT+IF/Tvc+aSFvYXsoNow2jwI9jQmjjkYlV+3vhEkPuK71n5NIXCH3E3EHqzGZ8X0dHGjMQaNQndcX2ubrEKE=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:935f:fca4:5a22:7b7])
 (user=saravanak job=sendgmr) by 2002:a05:690c:338b:b0:608:c3f4:1fb9 with SMTP
 id fl11-20020a05690c338b00b00608c3f41fb9mr363187ywb.3.1708752278758; Fri, 23
 Feb 2024 21:24:38 -0800 (PST)
Date: Fri, 23 Feb 2024 21:24:35 -0800
Message-Id: <20240224052436.3552333-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Subject: [PATCH] of: property: fw_devlink: Fix stupid bug in remote-endpoint parsing
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Saravana Kannan <saravanak@google.com>
Cc: "=?UTF-8?q?Herv=C3=A9=20Codina?=" <herve.codina@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	kernel-team@android.com, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Introduced a stupid bug in commit 782bfd03c3ae ("of: property: Improve
finding the supplier of a remote-endpoint property") due to a last minute
incorrect edit of "index !=0" into "!index". This patch fixes it to be
"index > 0" to match the comment right next to it.

Reported-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Link: https://lore.kernel.org/lkml/20240223171849.10f9901d@booty/
Fixes: 782bfd03c3ae ("of: property: Improve finding the supplier of a remote-endpoint property")
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
Using Link: instead of Closes: because Luca reported two separate issues.

Sorry about introducing a stupid bug in an -rcX Rob.

-Saravana

 drivers/of/property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index b71267c6667c..fa8cd33be131 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1304,7 +1304,7 @@ static struct device_node *parse_remote_endpoint(struct device_node *np,
 						 int index)
 {
 	/* Return NULL for index > 0 to signify end of remote-endpoints. */
-	if (!index || strcmp(prop_name, "remote-endpoint"))
+	if (index > 0 || strcmp(prop_name, "remote-endpoint"))
 		return NULL;
 
 	return of_graph_get_remote_port_parent(np);
-- 
2.44.0.rc0.258.g7320e95886-goog


