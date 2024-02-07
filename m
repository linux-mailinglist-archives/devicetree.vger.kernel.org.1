Return-Path: <devicetree+bounces-39310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CB65884C1C6
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 02:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E1544B24D0D
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 01:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B65F5256;
	Wed,  7 Feb 2024 01:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="E5jDfe4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACAF1EEC6
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 01:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707268701; cv=none; b=lD5F/Qs2U/uhDc4qREF5BXqVI7LYzRk07keB/K7Mc7Zh4cdirhPPIKg3+jDJ/8gnkk2ty8qziC2Je38CbiEqyHzy06LKD7Ksy1QKmfyj971hZKPW/ipxa7mUXo/byuRTWGjhxASqWrqNF/Eiq6Ja4M5+P2kfNxKcUKNGYT17i50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707268701; c=relaxed/simple;
	bh=JJyqqsDhj00w4rvbp0+xvDd5ul7th/oRNUlKqIehj68=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=AYsa6hCOpkC1v+tWrhTSE2vAfIyj87HBPQ79UiqJ1pW3YApac/2RFQIOERKgvWLYdZGIwXicDvAJWaE77b+NrrtbxipswSpTAJa2rkkKLi74GRd74vruubw9cVvN/D8myJcBuVIFW7NeeRnnJL84B0C9LNstSK/3ONPQm7ciZI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=E5jDfe4Q; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-dc6cd00633dso129398276.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 17:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707268699; x=1707873499; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=IALq/oq3h9hevE4KUuaY6CyXWslIu36itE2hrGdOodc=;
        b=E5jDfe4QTJG4YayQayIPixvd9ItLqfrS5RRQcPItL8/NDiKG6yRM/W8eKiAxSyDZnu
         b4yjEQpoOcU3Q2omAWegWR7h81HwwhWuF6n07HPNOSDzzDM+v0/TjjwihmEWOjvWbV5R
         uA0jnxWx8LYpd7WvX/ewEAbVM5sF4ik4oOcPQ21KbddH7a+iedpS7km5CY8wUkjrvJsA
         W3h+ZfhfEBIPknIsd8ejRv1ALQ7lrlKEdMly1DIQ320xNbg9Tsb7XPwQS95y2axZm+Ut
         gOgQNy5JsRPMpM4hFH0EvhEbo56TMEUc7wTQ/tGcqob5AURFq3xtOP2kL4ojRn9aja1W
         e95g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707268699; x=1707873499;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IALq/oq3h9hevE4KUuaY6CyXWslIu36itE2hrGdOodc=;
        b=ZRI4JxI+ZfSPuoGuHGqOPWJTMG5ve3n1Fgw4BDXfo8pQ62uqsswuqEPM2XKaCMweWP
         MEfoM3EfHdCU9hxoN5WSqbNrv2XwbKNnxckRnukJntlnyugVL2uN9KzSFl7nAklhMjDM
         zEC1jFpgqceDAQUWJWhdeRyL0iOUCFH8tP9LXU0JvijUSaiMAvhaKzVHYnnXjdraTH23
         bn8TkBt/5UfxOu0DRHgox2j0akFSDR6q9jK5bsGu1beCUzUM2TU9NYTvHWSC1YEgrrBJ
         kw2mfI/j2a4CVVh9a5YtHacSeh5YewqOUsI360ryyUVKb3ItOZ7A+vLXjestzX9JrRXB
         fGNw==
X-Gm-Message-State: AOJu0YxIzFRet5I0kXvkOP0pEB8uU598nAqVQufFX1c2pSt4XdOL7Lb8
	7EZF/4XbZad0aivqZU+h5TnlZ5v8FPYl1OVMSBid7brDmBX2i1HcSOsz74qOcBcERFQo1kGcmuO
	YIOVihDVr7wExtg==
X-Google-Smtp-Source: AGHT+IEfm4a88rUxhBt5lCf6gJ1kr+tZtTsbpaQYiZFB+DmCUF8SDTSzroVYIOyQjAf9f6G+i1LFC0K/MS0Wz2g=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:dc84:66b8:120:935a])
 (user=saravanak job=sendgmr) by 2002:a05:6902:168b:b0:dc6:d7a2:bc2 with SMTP
 id bx11-20020a056902168b00b00dc6d7a20bc2mr141599ybb.9.1707268698853; Tue, 06
 Feb 2024 17:18:18 -0800 (PST)
Date: Tue,  6 Feb 2024 17:18:02 -0800
In-Reply-To: <20240207011803.2637531-1-saravanak@google.com>
Message-Id: <20240207011803.2637531-4-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240207011803.2637531-1-saravanak@google.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
Subject: [PATCH v2 3/3] of: property: Add in-ports/out-ports support to of_graph_get_port_parent()
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>
Cc: Xu Yang <xu.yang_2@nxp.com>, kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Similar to the existing "ports" node name, coresight device tree bindings
have added "in-ports" and "out-ports" as standard node names for a
collection of ports.

Add support for these name to of_graph_get_port_parent() so that
remote-endpoint parsing can find the correct parent node for these
coresight ports too.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 7bb2d8e290de..39a3ee1dfb58 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -763,7 +763,9 @@ struct device_node *of_graph_get_port_parent(struct device_node *node)
 	/* Walk 3 levels up only if there is 'ports' node. */
 	for (depth = 3; depth && node; depth--) {
 		node = of_get_next_parent(node);
-		if (depth == 2 && !of_node_name_eq(node, "ports"))
+		if (depth == 2 && !of_node_name_eq(node, "ports") &&
+		    !of_node_name_eq(node, "in-ports") &&
+		    !of_node_name_eq(node, "out-ports"))
 			break;
 	}
 	return node;
-- 
2.43.0.594.gd9cf4e227d-goog


