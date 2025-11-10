Return-Path: <devicetree+bounces-236922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA1CC494E2
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 21:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DA073B521B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFAA32F360C;
	Mon, 10 Nov 2025 20:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VV4ShlZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941182F12B2
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 20:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762807608; cv=none; b=p9LeIxzH/jWafUf1NCxg7nJYQmMIGMDshCPHSrke7wz83R84lJoyuyBEHy/qtqC2ECB2Scb8Oxi73fC3hQVM4Oo+N4MMun0u1BEQpzoaDzgp+P1WcITaVCI2zu0dkaMfIymocoaolCtNjXsriPdYV2FFKmgBsIVVsN74DCmkzQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762807608; c=relaxed/simple;
	bh=bDtYcr71OgalFhXjsq/M0epBO1v5ajAOo0i4lFgi594=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kbuDpvujHzqgZ/w+iPodytZEe5iOLD859DJKe5kP/8XiHd3H6antEhnAtA6ghhfgnoRj5YmmL9qj9MFES6lxpS8ALMTpZkosyJaA236UzXDnB5FQ4OmQ/8Wq5AQmeTmDbepGW0444audDpq/z9cLRJSF8w4CJKZyaeM6tRYq7XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VV4ShlZJ; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-298039e00c2so20490895ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762807606; x=1763412406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u2RwmV+Plecc2y6KltRNG/pcHkH48NeEz4paebpqfts=;
        b=VV4ShlZJ97k5xxH92Icwb2JsJNkFPF7M87O2nUvgElIM/f9geNEnmTO384sM2Jp+kA
         Wq789PW/dRs20cAV10P265xJ31SoVCl0ABtIXNCIm9CmGQIOoWrt9IHxaJIoo29eZMx2
         R3b4EGHu2i5qHnp9dZC3ysa8eDLs0P4p9thlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762807606; x=1763412406;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2RwmV+Plecc2y6KltRNG/pcHkH48NeEz4paebpqfts=;
        b=UISkeYSdUjEjebKBG98v1pj/YwR1PNKiZc3Z1r5Eu4Hq/zcGNgZvOlGiOVn84JxYZ8
         T/4DHah/07AEtLaZNCX5pmc9UaANDuXKetUSZ2pnmup8fqq8C8Ucn5Xg9JES263mr15P
         0FKts7K88er+O4Fpr7FZEFITN5RsG4AGVfzX8G92z3k9k4EoGNtStxy+kWfgYmWb/Yu4
         E3U7x0gUVJAHm6DncpcIC77zfGsRFRvcf/qNNmUlHvZZlHo5Vc8F1oqyq/uDOiY+u/p7
         cI4DPPHhgjfTCsSRJsX98RXMRRSKW/Tm/p5xVtNTGYewdNQZHe9o8HcW/LOWfWsXGMAf
         q8CQ==
X-Gm-Message-State: AOJu0Yx3gNB0r28sTkgnEMSt2WhuvvcISUyiRL72vWjT9DHkEmszX+SE
	M+1sTYU/HrFXeuyDIf2gZqsJox8i+0rWPnl0csXjU/5SYvL9jyd2vruQjgewzgOBUg==
X-Gm-Gg: ASbGncsFWX++B/lxnj3ImTrdRVaZPRODBxO5thX+5ctKDeXi+OMqJqD97wnfSKVpI7c
	VAF6CLbPryZ0z0ZTYE7n9L9SeEjcAMaPxMQSzqZdKMaB+Veh/bKpr8MWfnMdvvNEfgyo00qkLgi
	ojhXuXYMhXUv/xe1XXrPhV1C58BTpyY1dS/7mLm/VJ4iziImZlo1NzxUeqCNmZmJ8lXQ+IH80G2
	TvgjxpddjORvmmC5wctbBc8agDaz8XxTu1YL6A9WPgFQrvNhkTQmkBN699pfuuE5AY/Ybc7D22L
	nqbbysCdjRUZDbLUDU0jt9ezfLMpA9JHz+IEkg5Z4/xAmJf130ztoTvondjgxbKN8gxQ3YGPZad
	M+qS2GIrwXsbW+bDbkPpZiy49brqcD0E8MdcLlQSqNwHx9IMYqSx20DjHN1aDrQ/YQVZxRg98T4
	55M6dk/FY+tPrmr4FH01rXnDdVWy68So892gmSPyf3drjqVIyS2/DBriBQAlmgHryCkVPoCQ==
X-Google-Smtp-Source: AGHT+IEWkeVYOTxmIytyiphE95wWW2ERCqcvZC013CeVksHO653u902G5XjtKu0ZbNC0EvHGOvMNZQ==
X-Received: by 2002:a17:902:da4b:b0:297:dfb5:5b90 with SMTP id d9443c01a7336-297e56aeb4bmr117430345ad.28.1762807605810;
        Mon, 10 Nov 2025 12:46:45 -0800 (PST)
Received: from dianders.sjc.corp.google.com ([2a00:79e0:2e7c:8:51a0:4f1a:8141:37d3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5e5bdsm154992935ad.39.2025.11.10.12.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 12:46:45 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 1/2] checks: Allow "__overlay__" node at the root of an overlay fragment
Date: Mon, 10 Nov 2025 12:45:26 -0800
Message-ID: <20251110204529.2838248-1-dianders@chromium.org>
X-Mailer: git-send-email 2.51.2.1041.gc1ab5b90ca-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Checking a `dtso` file will give the following warning:
  Warning (node_name_chars_strict): /fragment@<num>/__overlay__: Character '_' not recommended in node name

Add the node named "__overlay__" at the root of a fragment as a
special case to not warn about.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 checks.c | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/checks.c b/checks.c
index 5d092164ee12..908df5b98ec5 100644
--- a/checks.c
+++ b/checks.c
@@ -192,6 +192,25 @@ out:
 	return error;
 }
 
+/* Return the path after "/fragment@<num>" or NULL if path doesn't start "/fragment@<num>/"" */
+static const char *get_fragment_relative_path(const char *fullpath)
+{
+	const char *p;
+
+	if (strncmp(fullpath, "/fragment@", 10) != 0)
+		return NULL;
+
+	p = &(fullpath[10]);
+	if (!isdigit(*p))
+		return NULL;
+	while (isdigit(*p))
+		p++;
+	if (*p != '/')
+		return NULL;
+
+	return p;
+}
+
 /*
  * Utility check functions
  */
@@ -324,8 +343,20 @@ ERROR(node_name_chars, check_node_name_chars, NODECHARS);
 static void check_node_name_chars_strict(struct check *c, struct dt_info *dti,
 					 struct node *node)
 {
-	int n = strspn(node->name, c->data);
+	int n;
+
+	/*
+	 * The node named "__overlay__" is allowed at the root of a fragment
+	 * in an overlay.
+	 */
+	if (dti->dtsflags & DTSF_PLUGIN) {
+		const char *frag_path = get_fragment_relative_path(node->fullpath);
+
+		if (frag_path && streq(frag_path, "/__overlay__"))
+			return;
+	}
 
+	n = strspn(node->name, c->data);
 	if (n < node->basenamelen)
 		FAIL(c, dti, node, "Character '%c' not recommended in node name",
 		     node->name[n]);
-- 
2.51.2.1041.gc1ab5b90ca-goog


