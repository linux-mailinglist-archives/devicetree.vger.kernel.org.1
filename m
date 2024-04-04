Return-Path: <devicetree+bounces-56349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F468989B1
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 16:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D40D28BCF2
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E59F12A170;
	Thu,  4 Apr 2024 14:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov3kByz9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1536B12A16B;
	Thu,  4 Apr 2024 14:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712240136; cv=none; b=lqs4pqO6a8AS2ZOIkEWYkMstUB7L/PjmKpJlXz4leEYd3nh2ydnO4D4fHZwOQ6rErNeXtXJsfdSXt6nRmp3OvbDmzCyvdVASqB0J3hYuJKrhoEiJK4XPbED9uTkEnPnoyV5g3ihkICN1IDwIOCNajp02+8h/iNillURx3GoVpHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712240136; c=relaxed/simple;
	bh=I+WVKzCOzbEAVVpi7ed6GlAJIOFTPk8EzRQ1aBneYDQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rs5cMKflMEyR21wWw7G7F4wDRI2kbMbFCpnAwrBN6ZoxLaJJ7mhJ9E7o1knGcYi2q858v3mveNocmg4JUcv+ZTGt6uQrvTQsPypM79CBBZwnyz5q4MjBN5b1M1N/3AX/ffgPIgcxq1nsbRGO0nSlkDjIizuZM4yMfnX/0HEqOw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov3kByz9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F7EFC433C7;
	Thu,  4 Apr 2024 14:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712240135;
	bh=I+WVKzCOzbEAVVpi7ed6GlAJIOFTPk8EzRQ1aBneYDQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ov3kByz9QIRpI19+B4bygBuEdZ8gSQ3MTW/WrKpyDQwf1Bc3EG9p05rdeSgUbHCbk
	 5+TC9VDZEbhre6I9cW/apPvjbHvCNxPvdl4PY/TMBYqL7qM1E5LyxNFZmhc+tlgMV7
	 KL20D7qsWK+STZSoAlkLBYcNu4oXBVphE8iUxlmVlAiE+zJPNzcGD+xzo3D72CWyLe
	 aBzNChuHhSrESN0X4j8jExtJE21x78tCWPi6bpUjB8Dx/FsjF1mnAglGwEeqAGACcY
	 FOvBu+uHXh2z3VMbQEQAqgefA0TjRInfVVKClp95FuoeVhkd97G7oPe8lJEXubaE4a
	 ctCskTKVJOySA==
From: Rob Herring <robh@kernel.org>
Date: Thu, 04 Apr 2024 09:15:10 -0500
Subject: [PATCH 1/3] of: Add a helper to free property struct
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240404-dt-cleanup-free-v1-1-c60e6cba8da9@kernel.org>
References: <20240404-dt-cleanup-free-v1-0-c60e6cba8da9@kernel.org>
In-Reply-To: <20240404-dt-cleanup-free-v1-0-c60e6cba8da9@kernel.org>
To: Saravana Kannan <saravanak@google.com>
Cc: Jonathan Cameron <jic23@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.13-dev

Freeing a property struct is 3 kfree()'s which is duplicated in multiple
spots. Add a helper, __of_prop_free(), and replace all the open coded
cases in the DT code.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/dynamic.c    | 26 ++++++++++++--------------
 drivers/of/of_private.h |  1 +
 drivers/of/overlay.c    | 11 +++--------
 drivers/of/unittest.c   | 12 +++---------
 4 files changed, 19 insertions(+), 31 deletions(-)

diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index 3bf27052832f..af7c57a7a25d 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -305,15 +305,20 @@ int of_detach_node(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(of_detach_node);
 
+void __of_prop_free(struct property *prop)
+{
+	kfree(prop->name);
+	kfree(prop->value);
+	kfree(prop);
+}
+
 static void property_list_free(struct property *prop_list)
 {
 	struct property *prop, *next;
 
 	for (prop = prop_list; prop != NULL; prop = next) {
 		next = prop->next;
-		kfree(prop->name);
-		kfree(prop->value);
-		kfree(prop);
+		__of_prop_free(prop);
 	}
 }
 
@@ -426,9 +431,7 @@ struct property *__of_prop_dup(const struct property *prop, gfp_t allocflags)
 	return new;
 
  err_free:
-	kfree(new->name);
-	kfree(new->value);
-	kfree(new);
+	__of_prop_free(new);
 	return NULL;
 }
 
@@ -470,9 +473,7 @@ struct device_node *__of_node_dup(const struct device_node *np,
 			if (!new_pp)
 				goto err_prop;
 			if (__of_add_property(node, new_pp)) {
-				kfree(new_pp->name);
-				kfree(new_pp->value);
-				kfree(new_pp);
+				__of_prop_free(new_pp);
 				goto err_prop;
 			}
 		}
@@ -921,11 +922,8 @@ static int of_changeset_add_prop_helper(struct of_changeset *ocs,
 		return -ENOMEM;
 
 	ret = of_changeset_add_property(ocs, np, new_pp);
-	if (ret) {
-		kfree(new_pp->name);
-		kfree(new_pp->value);
-		kfree(new_pp);
-	}
+	if (ret)
+		__of_prop_free(new_pp);
 
 	return ret;
 }
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index 485483524b7f..94fc0aa07af9 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -123,6 +123,7 @@ extern void *__unflatten_device_tree(const void *blob,
  * own the devtree lock or work on detached trees only.
  */
 struct property *__of_prop_dup(const struct property *prop, gfp_t allocflags);
+void __of_prop_free(struct property *prop);
 struct device_node *__of_node_dup(const struct device_node *np,
 				  const char *full_name);
 
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 2ae7e9d24a64..4d861a75d694 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -262,9 +262,7 @@ static struct property *dup_and_fixup_symbol_prop(
 	return new_prop;
 
 err_free_new_prop:
-	kfree(new_prop->name);
-	kfree(new_prop->value);
-	kfree(new_prop);
+	__of_prop_free(new_prop);
 err_free_target_path:
 	kfree(target_path);
 
@@ -361,11 +359,8 @@ static int add_changeset_property(struct overlay_changeset *ovcs,
 		pr_err("WARNING: memory leak will occur if overlay removed, property: %pOF/%s\n",
 		       target->np, new_prop->name);
 
-	if (ret) {
-		kfree(new_prop->name);
-		kfree(new_prop->value);
-		kfree(new_prop);
-	}
+	if (ret)
+		__of_prop_free(new_prop);
 	return ret;
 }
 
diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 6b5c36b6a758..a8c01c953a29 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -795,15 +795,11 @@ static void __init of_unittest_property_copy(void)
 
 	new = __of_prop_dup(&p1, GFP_KERNEL);
 	unittest(new && propcmp(&p1, new), "empty property didn't copy correctly\n");
-	kfree(new->value);
-	kfree(new->name);
-	kfree(new);
+	__of_prop_free(new);
 
 	new = __of_prop_dup(&p2, GFP_KERNEL);
 	unittest(new && propcmp(&p2, new), "non-empty property didn't copy correctly\n");
-	kfree(new->value);
-	kfree(new->name);
-	kfree(new);
+	__of_prop_free(new);
 #endif
 }
 
@@ -3718,9 +3714,7 @@ static __init void of_unittest_overlay_high_level(void)
 				goto err_unlock;
 			}
 			if (__of_add_property(of_symbols, new_prop)) {
-				kfree(new_prop->name);
-				kfree(new_prop->value);
-				kfree(new_prop);
+				__of_prop_free(new_prop);
 				/* "name" auto-generated by unflatten */
 				if (!strcmp(prop->name, "name"))
 					continue;

-- 
2.43.0


