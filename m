Return-Path: <devicetree+bounces-304067-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KrxKsUiGWqVqwgAu9opvQ
	(envelope-from <devicetree+bounces-304067-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 07:23:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9925FD4CF
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 07:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D86203033D53
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 05:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB80E3A1683;
	Fri, 29 May 2026 05:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bEk0OV9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8066A3A1CEA
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 05:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780032177; cv=none; b=P1v6BDmS4dYDLrgSJgvHf5ZnuCTdoJGOQCIxG1/cf4DRp/4AhaAS/TbkXS/3ydufHVrSsNY2tgePdDEYKgU7ZKS8Fr3fcU7zcY75RsuM4oJj34B1L7qkBaCOsTVfR/fmx4DUxmnXWwYDV6B0SJbLH0tk3yygLP6YUj7u9pIGWtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780032177; c=relaxed/simple;
	bh=T4zdCWM1w4bByz1c2cKlwQxSjvPUfAWxKCPZoEfbaaw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XVGI6HhKpktTJwq9I9HkvdV9Kpb2cNEwMeTOMl0jYszjyIkKd5L+JBG93axVxoGtGCnrH5E6rLJFUsXFWArbG80Rh6FkVkeKCicryKgvXmsp3vjQ0CctItnOV0YA3vh5LNOHzpn7zTjJW0KMVUtVo7YkgNjPsMU3IpnOG5rqbcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bEk0OV9j; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7df05fc49e5so13164808a34.3
        for <devicetree@vger.kernel.org>; Thu, 28 May 2026 22:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780032175; x=1780636975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q8y9FkhHEIxGsnXBCWmwSdl4mvBOFnGqj5GzxpKDmAM=;
        b=bEk0OV9j5MhXcLpOG4M3BtcPjzQtGedrdafbiKEL5fA/80u4ibpfB8QdWiT+N8hEGI
         kofIVM2hXj6MjFEybPNSaEOqtatA97LbA7FRW/1BYPXXblLC9waPZmT4jFdhtXFCnThK
         AzObzdlr/YS7+b5yjOQW3+6ICfNJhRtGrzf2Mrze3d8TGr7c6VXxoE6QjPX02gg0djoE
         qksZ0lPDpn3ovc+H4+8JRyqjhqke8NSCoAcCl95WN2Q77MCEOs1QuGGdeO6p6O3FLech
         i34DP0D0uvAd1hRoqSIe0o10VfEdEKPpWLRNVdc7hlki3jeCQkFJeZAgyit6Ci3SkNiB
         apVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780032175; x=1780636975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q8y9FkhHEIxGsnXBCWmwSdl4mvBOFnGqj5GzxpKDmAM=;
        b=iDaNXfFZSJdGPLm9NL4NEyND6dlwUDafhbl117SVaz4vYt4529QBh5eHkYnvDPDuht
         K5ocu+P29xSwJNtfFo/Uv1FYwllG61Bvp9MjoAQg4YOK9VLNHCNuoQGy12winMEiGRtq
         JeGaGqTZrHZ2Zsjo4+5KfjmmyZTGs4+otJHboeQOo1kHBI88mTB0QFsj1fGOpL8j0+nv
         d/4bN5lmkZLdx07AIOM5Oo8VsNLTu0TDHRJpIJjU0r4YYxG9SJsKi/IGwxW8wdkJ8tGH
         M6uJTSLaYBlHKtmWAbOGpLi/j5+fdMPT/aXgvCAhBCfEnEaI+IWPLfJntj4NVHhHd31J
         FQXQ==
X-Gm-Message-State: AOJu0YxB1BWtTWfMvTSaOZC9LejnPEEru0/jBLqksx4cyjVSqsTeGb98
	67mRpMjdadCXC3YF6Jubiu1JOIKiCFV/yWtJYmDbPbsH9/8h3UlSD0Dzz/w77Q==
X-Gm-Gg: Acq92OHH1coeemVh8oEnRWYae243jAA26cU0wZauC/TJi4nq6f1GPFyQmOyKbpF2n9M
	2IK+gbGJjIykbzai12mDchEhdnm5d+vxP8I6MlUoYr0SMG4ZyRBM15t6wFxAKRdegZaRbg+jx/s
	a53QSjVc2NEt7/MhPUs9vkZ6B7urR/G99LijHaq4ophlG+6Zv/H/UDC5rSHROgSj7XjNrxJNtg/
	xYhR1LdcTu2knObdgOH28WvzLGcmjSOW1WiIEZ04BaPXSpPGderDfgyAsgWbPQRo1oNDHQWDNh3
	IPFMGjhvS84qabk5TaQafbZ+d05Y6iRRkuI3a9wD6wwVYpbb8j6ysO3PWNH/teHjI3pGo1pRYst
	pwLdPUzdiQhFlYOg/HMJXWTe7OxkzjvpT51cn+l9bnDs0AIs8LTjnDexJ6YDjy6PnTgEGc2PmOY
	KhcZHD8wRCz7pVtOluMZUZnD73ZmVaEsjdxeW42m+WNiwF2A3IfEd53gjSU4X2ayo=
X-Received: by 2002:a05:6830:8285:b0:7dc:dd58:50a1 with SMTP id 46e09a7af769-7e694db77a3mr1174335a34.15.1780032175559;
        Thu, 28 May 2026 22:22:55 -0700 (PDT)
Received: from fsh.attlocal.net ([2600:1702:56e9:4b40:e3a9:78c5:641e:a58c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e695bd790fsm760909a34.10.2026.05.28.22.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 22:22:53 -0700 (PDT)
From: Akash Sukhavasi <akash.sukhavasi@gmail.com>
To: devicetree@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: media: remove obsolete rc.txt
Date: Fri, 29 May 2026 00:22:39 -0500
Message-ID: <20260529052246.4934-3-akash.sukhavasi@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260529052246.4934-1-akash.sukhavasi@gmail.com>
References: <20260529052246.4934-1-akash.sukhavasi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304067-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akashsukhavasi@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: AB9925FD4CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

rc.txt has been a single-line redirect to rc.yaml since
commit 7c31b9d67342 ("media: dt-bindings: media: Add YAML schemas for
the generic RC bindings"), which introduced the .yaml schema and
reduced the .txt to a stub in the same change. The .yaml has the same
filename in the same directory, making this redirect unnecessary
for discoverability.

One file still references rc.txt, forcing readers through an extra
hop to reach the .yaml. The stub has not been touched since August
2019. Update the reference in hix5hd2-ir.txt to point directly to
rc.yaml and remove the stub.

Signed-off-by: Akash Sukhavasi <akash.sukhavasi@gmail.com>
---
 Documentation/devicetree/bindings/media/hix5hd2-ir.txt | 2 +-
 Documentation/devicetree/bindings/media/rc.txt         | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/rc.txt

diff --git a/Documentation/devicetree/bindings/media/hix5hd2-ir.txt b/Documentation/devicetree/bindings/media/hix5hd2-ir.txt
index ca4cf774662e..f777c2707e65 100644
--- a/Documentation/devicetree/bindings/media/hix5hd2-ir.txt
+++ b/Documentation/devicetree/bindings/media/hix5hd2-ir.txt
@@ -11,7 +11,7 @@ Required properties:
 	- clocks: clock phandle and specifier pair.
 
 Optional properties:
-	- linux,rc-map-name: see rc.txt file in the same directory.
+	- linux,rc-map-name: see rc.yaml file in the same directory.
 	- hisilicon,power-syscon: DEPRECATED. Don't use this in new dts files.
 		Provide correct clocks instead.
 
diff --git a/Documentation/devicetree/bindings/media/rc.txt b/Documentation/devicetree/bindings/media/rc.txt
deleted file mode 100644
index be629f7fa77e..000000000000
--- a/Documentation/devicetree/bindings/media/rc.txt
+++ /dev/null
@@ -1 +0,0 @@
-This file has been moved to rc.yaml.
-- 
2.54.0


