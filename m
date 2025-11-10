Return-Path: <devicetree+bounces-236923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B55FC494E8
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 21:49:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0C0B3B55C3
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F75258ED1;
	Mon, 10 Nov 2025 20:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gv/lxDhG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D9A2F3C2C
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 20:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762807611; cv=none; b=VKtYI1wrgKlcEqdSrrILReOunsAyh+axrO8JdQG0j8BtkVrtg4ZHU3MmuFq61QISJQ8v/pvWxuYJgZjzLA+n5r8N40S39CEdNqeqQMazi/pIWlCVBYvoQiTRATuQz39N4XiX6lF9Ks+V8e3JMCGCo1B1DfcnvQtYi9gx8Pdt2pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762807611; c=relaxed/simple;
	bh=TCOQiF7Wl6musoZt1NXg/XuNGShNJ+PlUz3atHPrYYA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vi5p7ttcS3/mi6sfhG/HmJRtpjppp3aF7yHZIo34irIFQkEqP1RY3vHp3fMTGGtpkMiCE8I3s6P3nvG0QAskatoBk6dUFJdFP4gNkAmhsyKBXgqLDYd9/kUpmitfx8WQJUMbTQWMV01+QZBXJbckBEk5/B1xpgfKJgar16N3r04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gv/lxDhG; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7b18c6cc278so3483676b3a.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762807608; x=1763412408; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qp58ASEtK8Ln4QwD3CPLPvKo2CrxmxJzZ9RPILDGftk=;
        b=gv/lxDhGF0wWPDp3zZE83Y/Nn+XJuB4352MifhHcmaHgJedwWZEYde92GO9py+J/Eb
         4xc5ZUixLPU8LZezRniusTZmJBIWGjoUs6xDNb5+Keg1+NB0VgEGQdVr5IttW4jUbnbA
         zZiapBeu+JJEca/lXccqBNa/udg2RiGaETdYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762807608; x=1763412408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qp58ASEtK8Ln4QwD3CPLPvKo2CrxmxJzZ9RPILDGftk=;
        b=PTNrV9a8xoXPcsmXU6gXGgfZ3un5yb12pe8Qj+sBGEYz6+gGSrF0jZWupEoF4h+es2
         9F/hTDzsd6WgAT2MwdNMpThiKVd8Sz6gpzHsSZVKNCpD27kdim4maDNvOtW8dwQLuqG9
         e8vFasZn+QkO01izxe/dIrc16QcO8H60+04pSQpxHVB8LOXzjuHpwaOZq4en34wQIoCh
         we5Usb2oqVj4rbMRFsrPVlfXnvS0NTsJSaR7kYsX2PJSvHU5x1kmNzAdYr88PgFGYoqx
         HWQszPriFR7DcJy+Je/WG+SQM64cyxJnEtZG/EMi80R00xS6YE2C+EbhBZjPXVynwuVl
         FZSw==
X-Gm-Message-State: AOJu0YzRcTOsyNacQGiOVteq18HkPJQX+9iM2q8hqzMXNJGzsI6ZnGdX
	PuHa50h3as5OwPIjWkb+Gx7L+ZZ0AgqOpWztHx+WLz5JAAihzATxR5k9b4FXgiVlFZKN6uJe0VZ
	pyE/e/A==
X-Gm-Gg: ASbGncsWo0UzQ+6qkXKEE8TIh/zw0rc57gQYR8OWnUD1foQtGkGMMCF4wiGK96vvSKw
	jgZ29m2TlTiqRbbnzSb4G1ztqzQlasDupxsK8OiGg8iie7QSs9lPHEj8gJCqgB/oj0XqwNZrQzM
	ZUxKOX0FAyI6Qcay4X4TIyq2lIeK39iTwsUaHuA+uqdnMxJt/HuiqYterSvlDgts5/ne0VPDR9O
	kLbCBo8MXsuQDNzkxIbrmgpQABWeJ6tUZ9xSIMtPi6HVQH9zVFSoPKdHF+G1LdqcJhirzrIL38C
	xORtp/Vh22GiDoJiIc4vYtiwTu8reikXnUCsNf3FomtMtGEHFJM3nxWjcHmgv82AKGHWIIUyQ/6
	ksfVm+ZL1hdJi92q5woWWnmf8+OOsZre/dDRscVg4qtTPDQ/DuXsNb+rGBO4cbcwxJPsziglqlJ
	y3X9lt6Y3fADTPDx9697wLKNTX0LnPPOYZGcDGgmBbU4gowLNO5moNpV4XQOrxs/YNR73kLA==
X-Google-Smtp-Source: AGHT+IHpNugVwhN66sp8s/fVAlqYJENh7+AbuxeoUCNsBciGIRGabou2bvWmDiCpMZvOkDMk9xeesA==
X-Received: by 2002:a17:902:cec2:b0:298:1830:6ada with SMTP id d9443c01a7336-298183faee1mr58705175ad.30.1762807607740;
        Mon, 10 Nov 2025 12:46:47 -0800 (PST)
Received: from dianders.sjc.corp.google.com ([2a00:79e0:2e7c:8:51a0:4f1a:8141:37d3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5e5bdsm154992935ad.39.2025.11.10.12.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 12:46:46 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 2/2] checks: Allow "chosen" node under "__overlay__" for a DT fragment
Date: Mon, 10 Nov 2025 12:45:27 -0800
Message-ID: <20251110204529.2838248-2-dianders@chromium.org>
X-Mailer: git-send-email 2.51.2.1041.gc1ab5b90ca-goog
In-Reply-To: <20251110204529.2838248-1-dianders@chromium.org>
References: <20251110204529.2838248-1-dianders@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If a `dtso` file adds to the chosen node, a false warning will be reported:
  Warning (chosen_node_is_root): /fragment@<num>/__overlay__/chosen: chosen node must be at root node

Allow the "chosen" node to be under the "__overlay__" node at the root
of a fragment.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 checks.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/checks.c b/checks.c
index 908df5b98ec5..d28e59494757 100644
--- a/checks.c
+++ b/checks.c
@@ -1371,8 +1371,17 @@ static void check_chosen_node_is_root(struct check *c, struct dt_info *dti,
 	if (!streq(node->name, "chosen"))
 		return;
 
-	if (node->parent != dti->dt)
-		FAIL(c, dti, node, "chosen node must be at root node");
+	if (dti->dtsflags & DTSF_PLUGIN) {
+		const char *frag_path = get_fragment_relative_path(node->fullpath);
+
+		if (frag_path && streq(frag_path, "/__overlay__/chosen"))
+			return;
+	} else {
+		if (node->parent == dti->dt)
+			return;
+	}
+
+	FAIL(c, dti, node, "chosen node must be at root node");
 }
 WARNING(chosen_node_is_root, check_chosen_node_is_root, NULL);
 
-- 
2.51.2.1041.gc1ab5b90ca-goog


