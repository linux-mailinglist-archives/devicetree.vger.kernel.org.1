Return-Path: <devicetree+bounces-37934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC969846D80
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 11:14:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86B02B277F3
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 10:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD317E0E5;
	Fri,  2 Feb 2024 10:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qhf7tuAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1217CF27
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 10:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706868816; cv=none; b=DA7OeqAM+JByO1Dhmr3xFoB5N4mKu4rlJQUf1qoH+d5wQEWEoyva3qJtIFP+rmAG0e3ERj83y3CBE4Y3aX+VCR/7grDbouGAXmbVXUmeu6NXGtT03TOUW8frplpckWcxWLy2LnOLcKM9YRa2bwf5cUyQIzBl7OoG03424csHnu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706868816; c=relaxed/simple;
	bh=PJHamj29rRPnmcKigV5i/g/eYFjHdot+aXYjPD55b9A=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=u2Jb9iqzuckYqoSI0Cr1LcqI4lXkJedw0yfHt+G3ouw2/ouw8qchdWitXhDQ0ZMJHehEfvyTyvYr9L7rwyCxQlBu1FIhqb5O/XFW3CMsRt2IXj1iQaklh1C+N5orvByF/PplZzGgh1xVgwg3oWkI6fBilGQwr1m8Kv3+/Wng5y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qhf7tuAb; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dc6dbdcfd39so3041462276.2
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 02:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706868814; x=1707473614; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=MmGh++VKQQZ2V54BTT2UNO9KFpQjbrHNRiYoSPHg+q4=;
        b=qhf7tuAbPqa3DyhMI7DqkdD5a3vJEYC79d27UG3soDoQiQAw+i7tvlDRE2rgGV+wzQ
         Bu+hKBbsBjgV1JlcFmrBXzUYh4CP9LeuZrS8ckkdwjCE3xanE/UBGpAHTti3oaweX6S5
         pDaqrtJoagKqPnom/3w4Hi7XutGVtCfujLWYpiVofqpaD2PizNszOgI7TPz2Nfd4P8Dl
         d4Wx0zcNpnOte0RDFxjodsq/DmnSOu+arLt7wiULjp1awrqlSjmv3UG1K8HiyggzR6Qu
         mD570K2VB8Zp/ISAC4kGngiGqe6T9PTmjrt9R6U2CsyhzFKnPnoNIU1DIFOkRlbaWtLc
         duUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706868814; x=1707473614;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MmGh++VKQQZ2V54BTT2UNO9KFpQjbrHNRiYoSPHg+q4=;
        b=YgR/PMp1dYp/MxRfeO3S9b6ML+GLrLtsk02m5RXxHOogaSbXDIPf5AzdI07Y/PhcsJ
         w+7JVgUeZ/MhIy4TaveHPApGJqJpY8GOR2OHN0cvcMV2kXaCtRKQ8g93BibItuiLTZ0w
         T0oTMV/jX9PaoTLbFImFcF8fwVUjCaMuo3zg6t2PO/uMURdxiLtBxn1+q69Z21ryKZmz
         aNYlOuvUyiWhHa1NsWIrWV74NrhY7OxtlO2dOjkrvzT2bozD5JAZbwpHs213DvJxD8aR
         iZ/K3uIq4eBRlRu7jp9uP6L1/bFSyGoTrS1g9JU/sGDH+UxRwsFLXOylnpBunjtVnc5y
         F3qQ==
X-Gm-Message-State: AOJu0Yw1EuYiOkcQXoZek8b+vbtDn38h5tPHjk4nBS75EbG4JfXSblrd
	RFW9+4jBl3anOV31KJC2xGj5JWJB9LNHzdE2EcvssSEnCeIPZ7tl6UX0nLfydCqRROtWOpgBEPk
	Pqj7Pm/BP6GdReg==
X-Google-Smtp-Source: AGHT+IHQuDuJH0mZGbsVco2iwKbDb58UrPvCTOyPc5GNYofsRrkiUKpKuGdcwTQbpesKZsxG1/P8Eb8Eln40n9U=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:6f0:da10:9cb3:5b3])
 (user=saravanak job=sendgmr) by 2002:a05:6902:2186:b0:dc2:466a:23c4 with SMTP
 id dl6-20020a056902218600b00dc2466a23c4mr499035ybb.4.1706868814499; Fri, 02
 Feb 2024 02:13:34 -0800 (PST)
Date: Fri,  2 Feb 2024 02:13:25 -0800
In-Reply-To: <20240202101326.876070-1-saravanak@google.com>
Message-Id: <20240202101326.876070-3-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240202101326.876070-1-saravanak@google.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
Subject: [PATCH v1 2/2] of: property: Improve finding the supplier of a
 remote-endpoint property
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>
Cc: kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

After commit 4a032827daa8 ("of: property: Simplify of_link_to_phandle()"),
remote-endpoint properties created a fwnode link from the consumer device
to the supplier endpoint. This is a tiny bit inefficient (not buggy) when
trying to create device links or detecting cycles. So, improve this the
same way we improved finding the consumer of a remote-endpoint property.

Fixes: 4a032827daa8 ("of: property: Simplify of_link_to_phandle()")
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index ba374a1f2072..6c168446b647 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1232,7 +1232,6 @@ DEFINE_SIMPLE_PROP(pinctrl5, "pinctrl-5", NULL)
 DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
 DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
 DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
-DEFINE_SIMPLE_PROP(remote_endpoint, "remote-endpoint", NULL)
 DEFINE_SIMPLE_PROP(pwms, "pwms", "#pwm-cells")
 DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cells")
 DEFINE_SIMPLE_PROP(leds, "leds", NULL)
@@ -1303,6 +1302,24 @@ static struct device_node *get_remote_endpoint_dev(struct device_node *np)
 	return to_of_node(fwnode_graph_get_port_parent(of_fwnode_handle(np)));
 }
 
+static struct device_node *parse_remote_endpoint(struct device_node *np,
+						 const char *prop_name,
+						 int index)
+{
+	struct device_node *endpoint, *sup;
+
+	if (strcmp(prop_name, "remote-endpoint"))
+		return NULL;
+
+	endpoint = of_parse_phandle(np, prop_name, index);
+	if (!endpoint)
+		return NULL;
+
+	sup = get_remote_endpoint_dev(endpoint);
+	of_node_put(endpoint);
+	return sup;
+}
+
 static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_clocks, },
 	{ .parse_prop = parse_interconnects, },
-- 
2.43.0.594.gd9cf4e227d-goog


