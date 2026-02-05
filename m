Return-Path: <devicetree+bounces-263073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHMMOIS7hGnG4wMAu9opvQ
	(envelope-from <devicetree+bounces-263073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:47:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A97AF4BC7
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D3D3B30059B1
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C8C935CBC3;
	Thu,  5 Feb 2026 15:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="eRXaSUtZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3776A35DD13
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770306433; cv=none; b=R7SVaPYsEF8u5XQ2SRMPijHpJiaZNr3yGzd316LOeXn+E9wk40aJaF3xvXA0Vmh5jxPHi61SjAnXePTX5z2NleY+FI5HFfRZUHnnt+BKcJMOo8qvVKiEtRaMZXxzQYy7Dn8Ac0p6oMn7WsdZDcuyteLDsqhHPl9IRNfCfZJJUU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770306433; c=relaxed/simple;
	bh=9fFg7iZ4BLRkkRd11i6HLfg5RsNOg1ZxYUv+OJhjzdQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YsJnKzQ1qA0v8Pr8C61E99AzD0n3tJgbPDi2gsz3XKhjW/ZFjn368uSLhRqrvJs8GgYuMJnNl/NJz2br0ZxufXs9wwpoWSgGVlYyTVH15sU8VkcoG48/urqSv2QdJuH/rbBF2QdSfSJLiQojbwB1PQpQl2odIrsh3fopGaGm7Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=eRXaSUtZ; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-35305538592so876437a91.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1770306432; x=1770911232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K0hF3OW+Yv0RrXHC9A+qZtxQcKZIs93sXxsfxaETwjI=;
        b=eRXaSUtZPCcfh4TlaS9wpOVyar8xTpgWWfQkUOVW68NtwFecVNomQCaqXuOu7Xbrbj
         2LVO+admXQKlZetYNg6+1ztFRA1Wkax27XOkjp22AmgYkCQNOcib8G4AfVC96MTeCMCI
         ns/YkXC696ZnUIz7MPjpYzV9h6uyqJV8msCqC2/EZb8AZtjblCILGtGMHQcgCJN4dqJP
         QTvW4ocKScQCe9mu4jBFI8cU8MTMOh/a8818ljoYRELXcx+CH5dbUze3Z6eBzgJG5VvU
         CoOsIDsRULscXCrWUOfOxjui9G85PyOAePw894Xm/siga4X0Ik8tOvWJd8XOcUTrTWaI
         eEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770306432; x=1770911232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K0hF3OW+Yv0RrXHC9A+qZtxQcKZIs93sXxsfxaETwjI=;
        b=J87CO1oobuC4cISk47vp/03nVsxaAoYUpbaVtTsTjbSy4MGt0He/s9u4Gzk4kIxNYy
         skNLtBXx7zZi7lzzYqUQKpXrzwfpkOxC+twUNkRI/bBt1sb3HFNQcXsFKvXkgwNGgjpu
         aOf3zwiOPamtRECo9PL5gQvXIEYHbtIgFcZieBqZdjsJZ8Yg2LPaJ6UF8AJQjcTPKZXi
         nzORATxr8mcS2Nf+HvLy9q3uPaPfE9DkeEgzqHFUT9Dbgxj/2Oktpde9Ix82hL4k1JEf
         WEVEIBcv9bvXozlmTGHLdy5dyGh1rJZN6wtdlDDILvTzKsVix9UBHu/kDKWje3FyZJGH
         ztog==
X-Forwarded-Encrypted: i=1; AJvYcCW13kiTPdBOfUFjQ9wz6MKwB3UdsvtnTOvxzhTxbGWrq+HMXMmTxqbbNZIgjWUgbIIBbCdsnEXQQS4J@vger.kernel.org
X-Gm-Message-State: AOJu0YzEuHh3QTury3b0g5j7LP9P2PatIrkpQgmoagNp/jUPlEFcXW3C
	fUuZbFzW05Fig0nL+VvqPYIXxEJsFcV4zVLfC2lM7Y9onTlgyxCvtxLWVagzRDRGKEI=
X-Gm-Gg: AZuq6aJJkkJv4OPvbiqMjcT2MOCMLWqfxa+vsiEy83ZZDfCYuFN3wX2N+M639Q5QnVv
	iQ/7XfGx3lnnD7hlPv8t3+lJQWJ+SLI8dwxFKR0s+MOlAyxsM0DidfhGWztiAOg2z6X0m+bthda
	15yPjceAJx+4qI6CF2cZpoJU2gIKmAgSq75CQpmBJsq/t4PnoS26v47e/2xgWlzW9uGvyhLTr7O
	1OcG6pK2kJNhnE7dr3lYesPRNtZEMKfa/hy+04YXLc1I64FdqjVkx7nfAxPe4QRkKyXdsCmoRdx
	opBabDkBatF454BGMiEJJZ77zVngSno7RE9X/Jxit34Rr7UzwaD5w7TSbTHvODElsWRMa2fg6Oo
	ivJHdHKRCNwXFamGGm4auv7MvRrMpYuwhUw3mGGP3z6mI4V2lEpuJGf5eoiE7IyxxEm1WoUiV6M
	gO74/QQSLFMpL4r4S85LYVdDCwvp6NcJ5qeuQ53zRzRu5R4t3ISPOVdnDYHQ==
X-Received: by 2002:a17:90b:4b8c:b0:352:d168:fc4 with SMTP id 98e67ed59e1d1-35487207d86mr5027605a91.32.1770306432572;
        Thu, 05 Feb 2026 07:47:12 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3549c09df19sm2792675a91.1.2026.02.05.07.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:47:12 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	jesszhan0024@gmail.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	mani@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	dev@kael-k.io,
	kever.yang@rock-chips.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dianders@chromium.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/3] dt-bindings: vendor: add taiguan
Date: Thu,  5 Feb 2026 23:46:55 +0800
Message-Id: <20260205154657.3085820-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
References: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.34 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263073-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 8A97AF4BC7
X-Rspamd-Action: no action

Add "taiguan" to the Devicetree Vendor Prefix Registry.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fc7985f3a549..a0fcd7154ff8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1598,6 +1598,8 @@ patternProperties:
   "^synopsys,.*":
     description: Synopsys, Inc. (deprecated, use snps)
     deprecated: true
+  "^taiguan,.*":
+    description: Shenzhen Top Group Technology Co., Ltd.
   "^taos,.*":
     description: Texas Advanced Optoelectronic Solutions Inc.
   "^tbs,.*":
-- 
2.34.1


