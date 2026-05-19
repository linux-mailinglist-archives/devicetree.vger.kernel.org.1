Return-Path: <devicetree+bounces-299888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YALGHTAhDGqiWwUAu9opvQ
	(envelope-from <devicetree+bounces-299888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:37:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F5C57A3C2
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3516E311D463
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB7F3E1D08;
	Tue, 19 May 2026 08:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AGM9D64J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143A13E1228
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 08:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779179079; cv=none; b=mmyydB/gRMB+5nvgywCPRs3h7XvqDkO4aJ+R67A1ccngMeuReLDbb/+5QO8svgSK0V759i1ebGdJlwU8He/5xuY8SsFPEkczAm6ygU+LmvZYuUfOWl+GAVMfRiRPbmRxhSCF0tp7hu5dy+fxCWYZczH0Wncb4AVnbD/kgsBCXPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779179079; c=relaxed/simple;
	bh=CkstdbjcyxCbFYACRa+dH3E6m7IV7Z9T7BiW3Y+DXR8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fH21WI8vh7hugcyXxUBYe/74bdlxPW3UNWZIN5lsJQgS1cvpZCfDCzAWFjEbCX8uKBcwtXScsOgM17ejfjTlBE+z7QhF/AC1fwWMPRNSQsahhHKiqCUoInJVOBiCyK1+fdn4ut57yeZFY83X5WUVNFiUU9TbS/6g6E9+eQmamMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AGM9D64J; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-82f9fdfc965so1386271b3a.1
        for <devicetree@vger.kernel.org>; Tue, 19 May 2026 01:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779179077; x=1779783877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hWIfLWdmt/c7x4yuYJlj2y5vCVFFJpw5Nml3m5vGj7s=;
        b=AGM9D64JwCdhNey+DtCqHFGFqxD5qKbcA8ihhB/rvkL1oirEoxRSMXQoIO5WEil7ge
         lpf1d+BNRtErbrp8II3ryx3sSY188aDOY7/0+Z0oSxRbtUf1ZTNYq2Q9+TVk5sda1IBS
         ihAuuRqaVsqihhmifeGtNWCwqHOjiQQbbMerNndmP+U8TUdxEvd5pVe9lFwqqdP9DYsp
         DV+l4levYqbOV1IodpffFYv0EOdv1L6fzwlhAIzvRhKwlKEZsDYe9Al58NulG5GmgpWF
         pXa33PuiLqtC19lCZGNoVhiVD1HYkrlofPu0h3MKitV3Ah940uS0DDqCVyXD0NY0TkB/
         uWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779179077; x=1779783877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hWIfLWdmt/c7x4yuYJlj2y5vCVFFJpw5Nml3m5vGj7s=;
        b=cjSv89YCKB3SYGwg3N1okZPTCjUDAHsuba/XCRPM1cPUGKN/2TscyHQAQvc/GP0YiK
         LrhuTLZfm/DGTmb0lwxDQbd/F3hQTFhYyyU4aoyP+o8zM95+PXGmeayiCm1JXhq5AdwJ
         FW/dRL1POdaJNKOIFovVL/yiAjDRXw1QfyY68Yb3CysFAJvgOHxc6op2x7Hf4kKY3mx9
         iA/uB+HKqNKFCC43MUF4bqIZmmGXUK1KbsvQqvf2LLzPe9uR0xsHXJau34wx/pRIuAZa
         n18ISx+JrGS6oGGxInpAV2hLAsiu2K5FxBynVRtLycUS5nH4VxZD+FQAYLZLcNKLESnq
         zLZA==
X-Gm-Message-State: AOJu0YxMHgk00agoFaz7Loj/XwnjwoBo8q8SgJIqT0klIJUhIJxEDxJO
	VHKYWDQmORJvklS6NgfsWM/W5SbSwVYJHdy3woiEhCnuiuhc51abDYZu/p/azSguTL6H8Hqv
X-Gm-Gg: Acq92OGZFhUo0wBfV4p1FmIv52qSSW+2lZWQCoCmpRxLef3W0KEE4HDhn7uSPv/Nl5e
	p1EBcUJ/JdBZ9Axp92PQbqYXN5n4hc+e4uOUVcL3Z1Z9mYSWxCjxnvz8p6jEcl7vXpZGVnOIAvU
	IHvR9lP6SSkQS4o/s7jD21WDva7sAvgUGGis913lEMzCGhvD/19vnYIbifTDkkmVGRKHV8YbMyc
	cKqcuCqIW57WlYxxyYZxPpDkYbkcCNn7M/m37awnsQ59ibXmD78XNBJzE5BIbqQoWd6Nftixqvk
	TsCqi13xZ5kkedn3Z9WB2WRqmbAyffyjq3lxfARYGpfC81kbfmkuIC+wL8iUWLiauDs2ScPQMX2
	WiBi5GMck2FoCSkuqDk6qIc07sbgYl2dWVNMLfoUbjHMpgU4YqXLKgXzAhZRod7zSIZRP7LOHm9
	nTD+WDWyUyb2f26N2Pjgax+nUFduvadLSv3/q+9YoIvGw9k/qi
X-Received: by 2002:a05:6a00:9094:b0:82f:5726:be23 with SMTP id d2e1a72fcca58-83f33ddaab4mr19553785b3a.49.1779179076711;
        Tue, 19 May 2026 01:24:36 -0700 (PDT)
Received: from intel.company.local ([210.184.73.204])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19c5b4bfsm17822898b3a.28.2026.05.19.01.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 01:24:36 -0700 (PDT)
From: Wandun Chen <chenwandun1@gmail.com>
X-Google-Original-From: Wandun Chen <chenwandun@lixiang.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zhaomeijing@lixiang.com
Cc: robh@kernel.org,
	saravanak@kernel.org
Subject: [PATCH v2 1/3] of: reserved_mem: avoid unnecessary memory allocation when __reserved_mem_check_root() fails
Date: Tue, 19 May 2026 16:24:25 +0800
Message-ID: <20260519082427.4181476-2-chenwandun@lixiang.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260519082427.4181476-1-chenwandun@lixiang.com>
References: <20260519082427.4181476-1-chenwandun@lixiang.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299888-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NEQ_ENVFROM(0.00)[chenwandun1@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lixiang.com:mid,lixiang.com:email]
X-Rspamd-Queue-Id: F0F5C57A3C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

total_reserved_mem_cnt will keep the init value (MAX_RESERVED_REGIONS)
in fdt_scan_reserved_mem() if __reserved_mem_check_root() fails.

fdt_scan_reserved_mem_late() calls alloc_reserved_mem_array() to
allocate memory according to total_reserved_mem_cnt before
__reserved_mem_check_root(), so if __reserved_mem_check_root() fails,
the allocated array has nowhere to be used, so no need to allocate
memory.

Move alloc_reserved_mem_array() after __reserved_mem_check_root() to
avoid potential memory waste.

Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
Tested-by: Meijing Zhao <zhaomeijing@lixiang.com>
---
 drivers/of/of_reserved_mem.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 8d5777cb5d1b..7856dc857d65 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -265,14 +265,14 @@ void __init fdt_scan_reserved_mem_late(void)
 		return;
 	}
 
-	/* Attempt dynamic allocation of a new reserved_mem array */
-	alloc_reserved_mem_array();
-
 	if (__reserved_mem_check_root(node)) {
 		pr_err("Reserved memory: unsupported node format, ignoring\n");
 		return;
 	}
 
+	/* Attempt dynamic allocation of a new reserved_mem array */
+	alloc_reserved_mem_array();
+
 	fdt_for_each_subnode(child, fdt, node) {
 		const char *uname;
 		u64 b, s;
-- 
2.43.0


