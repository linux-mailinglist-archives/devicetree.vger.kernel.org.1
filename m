Return-Path: <devicetree+bounces-323553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vcWYEGRyT2qdgwIAu9opvQ
	(envelope-from <devicetree+bounces-323553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:05:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB1372F540
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:05:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=HGewnmle;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323553-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323553-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D96C3305A9BD
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C46E406272;
	Thu,  9 Jul 2026 09:58:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F246B406809
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 09:58:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783591118; cv=none; b=Qxy2/0dLbG79nzlncIoSG+Ih3k50SXKHDIXrkNfnaixURI3gZtcOwAttbJmfPNNwy4Y6uCpk11MoZbCH/mOlbqyiswOC0tSqJfCPOTauMJVEjzx3KGdxe1lVRlLLiXjFJOBut/skL98kIX46SEZfww4mn0zOmwouJWZrovccdtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783591118; c=relaxed/simple;
	bh=wBafzaV3gjSM9m4C5Xt10gLLMadwusWzqQ8Oa+RTMik=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sKGVIinEqeL14w2EDVh5kScXM/VKsIwPoWX0KJEN6IJXE6nsDkJpYDA6OyyltQk7g/FvpHDYCjZj9SXCGX61lMvtd2M2aEc48GgokZcky/q7vaMWRFYGgSb57RgKAVriAJlGpFNxUxVlvUo0j+XgeVv6D8/64GSg03n89HQGZmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HGewnmle; arc=none smtp.client-ip=209.85.214.182
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2cca0c5799eso14101265ad.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 02:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783591116; x=1784195916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+6qS8sNKqohtOzh0Qv5rdb1r/B7Aj2Rva8hJLtH9EXY=;
        b=HGewnmleUf1fRlxmhIvnIY9EShmWAYlRiIQ3qU5pDd72sg5Qmc3Q8PXc1/6Kd1BZq9
         OgEew67NURfR+qa42DXyz1uvm8K5/XRA3Dic0+kygI1hPhbL21hsXRmB5fobDa/VpXLs
         /wxg8fcUDutpgbVKSJdAL00O+/s4BduLJqIBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783591116; x=1784195916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+6qS8sNKqohtOzh0Qv5rdb1r/B7Aj2Rva8hJLtH9EXY=;
        b=ZM7070lcOxA8dtjKHd/S+zFc2gSwA38OQTgLYk6u+M61FVUf2eoh0dJC0nMLDObQFI
         0GdukETh9UeM3Tf9nWmTxiC7w+pGD2SPPc4r1PWGZ1YMybS+QWIQodsbXEkC5d3XMVag
         IqvDhO+qcO0S8/jphSoLjsFp00ulFcSZ52IE9tAnNzO1pTV6eFAVwChNQ3qXVw3OhwOh
         sJI6/efCeR8isydUL96ptwweb/WCJF5IWgmGrdtSJMIhpD/MSgPhwSD5vqWUAmuIyxdV
         W91Z74KrNL5J3ybYKTDFAID6/GBZ8tnItdktWA0/YJUMKSX9UIceOQdayD9xiQ0O/dXa
         ajPg==
X-Forwarded-Encrypted: i=1; AHgh+RoH/gkasquZBO+W4RBUoyRaBSnvvCYGUxNpA7oihOF2dEFxbSeDTrH2L4lrFsPuxb4fq+dMw2UN8ZWl@vger.kernel.org
X-Gm-Message-State: AOJu0YwPUJI+oD3nzO9pnruWABi/LnCAPiHnmbp8Q1tm0aRf0+5uz2qe
	PaUpGFTHNbAUrIWEMS2Z0iZVpZ5/VDbiLRE3GL5S8fN3/k0lo52QccpSd2ws/cPatw==
X-Gm-Gg: AfdE7clM9/NFSf9nYGwOz8KCla94FCa860Jf/HAGJ9w6fJBujHp6rxRpe3Y54MG+ru7
	vpIBujoAbwUhfMSx25S8YtC3xoMJzHXzutpL3/QstG+kKED1Sw0SxUEl2BDdJHeTQeKuKrb3wCF
	sC4XjAzhNKEwdMez7U8zrgAaPCjYujhFAAg0GN/6fngjVUftJ+S966rOBGkyO8oC1sSr2B9wP2+
	a4vpCvqsWURpRi8q6ZRH/30gs9BXZNpXD9vxyuWOpviCUfBAmPeNeA411hIJWjeMBlOAJfqAFam
	f68vEWOausZC4UnQfO4X+8VCX0OyX7/1fJIyAI+8ctO9X4jbjrUTuJxQXNwlrLuda0HrJ8zjGo4
	tPad2RHk0R/+RguyZOUTCYOWeUavNr6EdSiDyhdDVfsK8weYtpscICzPb5dHacFenQ3Irt/r1b2
	8Hx6cs+CEop+kqidIEo319bnuE15WJgOZri3OBurjK3P5C2l7qpRI+YpEAvnqdcgXBhXki5g==
X-Received: by 2002:a17:902:e74e:b0:2ca:e106:8e69 with SMTP id d9443c01a7336-2ccea371b50mr70745585ad.10.1783591116169;
        Thu, 09 Jul 2026 02:58:36 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:bd09:6ddb:180a:69c5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d5bd2fsm41082155ad.78.2026.07.09.02.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 02:58:35 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Bartosz Golaszewski <brgl@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>
Subject: [PATCH v4 11/14] power: sequencing: pcie-m2: support matching on remote "port" node
Date: Thu,  9 Jul 2026 17:57:16 +0800
Message-ID: <20260709095726.704448-12-wenst@chromium.org>
X-Mailer: git-send-email 2.55.0.795.g602f6c329a-goog
In-Reply-To: <20260709095726.704448-1-wenst@chromium.org>
References: <20260709095726.704448-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-323553-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:from_mime,chromium.org:email,chromium.org:mid,chromium.org:dkim,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCB1372F540

A USB hub can have multiple ports, and this driver needs to
differentiate which port is being matched to. The USB hub driver now
associates the "port" node with the usb_port device, so here we can
use the remote "port" node to check for a match. Then fall back to
the remote device node for the other connection types.

Also rewrite the existing "remote == dev_of_node(dev)" with
device_match_of_node() for consistency.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v3:
- Drop redundant device node validity check; device_match_of_node()
  does it internally (Andy)

Changes since v2:
- Use device_match_of_node()
---
 drivers/power/sequencing/pwrseq-pcie-m2.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/power/sequencing/pwrseq-pcie-m2.c b/drivers/power/sequencing/pwrseq-pcie-m2.c
index 83fe6a1396bc..733190175f84 100644
--- a/drivers/power/sequencing/pwrseq-pcie-m2.c
+++ b/drivers/power/sequencing/pwrseq-pcie-m2.c
@@ -175,9 +175,18 @@ static int pwrseq_pcie_m2_match(struct pwrseq_device *pwrseq,
 	 * parent matches the OF node of 'dev'.
 	 */
 	for_each_endpoint_of_node(ctx->of_node, endpoint) {
+		/* USB port devices are tied to the port nodes. */
+		struct device_node *remote_port __free(device_node) =
+				of_graph_get_remote_port(endpoint);
+
+		if (device_match_of_node(dev, remote_port))
+			return PWRSEQ_MATCH_OK;
+
+		/* Try the remote port parent for other types. */
 		struct device_node *remote __free(device_node) =
 				of_graph_get_remote_port_parent(endpoint);
-		if (remote && (remote == dev_of_node(dev)))
+
+		if (device_match_of_node(dev, remote))
 			return PWRSEQ_MATCH_OK;
 	}
 
-- 
2.55.0.795.g602f6c329a-goog


