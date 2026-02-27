Return-Path: <devicetree+bounces-269047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKa3NMcboWlhqQQAu9opvQ
	(envelope-from <devicetree+bounces-269047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:21:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 970511B29E7
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:21:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 971B4309F58D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 189A835CB67;
	Fri, 27 Feb 2026 04:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=morsemicro-com.20230601.gappssmtp.com header.i=@morsemicro-com.20230601.gappssmtp.com header.b="es0TYmKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC60346772
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772165705; cv=none; b=JQtlYEswJ0vWOfDI9ud28ItpGPbjfflOq1HXBlwKc/tF2HDmEi/h2DBjVkA0esRJmwjaO/sCR2dJGSiAgsgD2+knwdi01UXaFAUrs62inm30AHYy4OzEsLc2++ULO5kKw0FHdkETQHr7yWmu1ExVTOM9qsU6W+52bjvX0JICovc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772165705; c=relaxed/simple;
	bh=zIA+D0cfOdwllBufadNG5GljcECyt5qFPJTqx8Yj4Ck=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L1K0a684UZ0mPdSypIKmkpVj6zatZehC4hcItpx0PHObuqNCYkzVGAMIM3bte/Tu1zq5LBlldSdJx6nYI4SebwxojK56sX42gAsUzRUEuJVCdnQRexYGbYye+awmmCyMm7vgwX3aAhgjZDl+hzc1+0oyVsqk12Vt611VBeb8/Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=morsemicro.com; spf=pass smtp.mailfrom=morsemicro.com; dkim=pass (2048-bit key) header.d=morsemicro-com.20230601.gappssmtp.com header.i=@morsemicro-com.20230601.gappssmtp.com header.b=es0TYmKJ; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=morsemicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=morsemicro.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so15685235ad.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 20:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=morsemicro-com.20230601.gappssmtp.com; s=20230601; t=1772165703; x=1772770503; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QP8qu6Q5Q/zP1mUdhVY9epA2SUWcs6MH56zDH9i6F6Q=;
        b=es0TYmKJ3b1hsD1gspJcgoLYSr50Xw2GffSZwsOPlIXMF8v0KJ8geHlq7Pw/7zTwUD
         ErwRz6bykgDPN2lVMnHYAEMYc0J3Wi31kXrAIuHCUbZ7KBnhUyOyrjwANc8vN0KEsTs/
         s5uPf3pLbiAQOLS+OZ4oSv1isXPpuIYVywZpVA66LfE6WMr7OHejBfX1CUK+5y+EA+fc
         oS/AbmY5Yr1NVGuf7m5w7OJShLeP4JgX9bfIH2iKshjXLbkMAael09ujLEcUi2GIG3Ud
         UwaUokVEdJDjhmnrYEWtUWqs0j8giGkAZX0VuxE3nt37z9xh4gmdUwiucVqUAcSz7e4e
         uTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772165703; x=1772770503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QP8qu6Q5Q/zP1mUdhVY9epA2SUWcs6MH56zDH9i6F6Q=;
        b=QQnzaLYFpUxDRhAzT290i7CAR7R7XaJXRC+rt03CZUjeT46zT+fIk/seVNe9ZtoCMY
         /Yym5cXygfwQAJRF3DbGjqk8Kfn39A0hjRViieBIRKV+6Px2AhNeYbCh6T1WNd7uf6xa
         cWkCRg4cIA/1wqPfVy8Ia0UHdJKNX8fY3zrTCeE41CxEIK3gLv5QEiY8KTJOq6c8M20/
         FroWfoAFIsv9u/TTCTyUu4EP4sh4UJ2vgHWFrOC/TaKaXfVAHEh42Ki3wimahMCDQ8L4
         nNrPSriJ3Y8ZanolY+0oi/qYR14njVhcnKap0RwfoVcBR5F0u0VrhNWLvesb8UXuA7cV
         Th/A==
X-Forwarded-Encrypted: i=1; AJvYcCV8UK0JLVRX1tIyn92MBqH1WBBhht98Btr/BTJTWKpIUmCEyMqkQxPZmZmPYB6ccpDN7aSB9/jDtMfa@vger.kernel.org
X-Gm-Message-State: AOJu0YxTZ2wHzOubFTppB6dThLvMZI0yzioAfFowF6oZVHjK4WdnCr4T
	toXJcrha5y7dab+ERCpNDqdt1zmLmCcHj4AjCmN5DphZ4Q5cTetGifdAYbzBPWhEj7M=
X-Gm-Gg: ATEYQzxPgPx2tDvso1SxGmtj3LSEiu7xbnFWMRra4ggwIDxYMTFlfajfIZcN0aDE1kG
	suHUrtGR0XCSGu/Qa57n8PlMDjkdYy3AMwoSfDCNmA0ERTuxUXh2HyUC8mDXqJenije6cAHlQ8z
	h5kgYZWVhPKZDgRbbeecQlQaBrTJp1U82jDqAZvtSn+TO7g4ngtQ4sXkAYquhYvzCHEJ8rp7D7h
	FnUDuXuiPaz0DG0qYqlI/PZbp8CgRDRAqxnvcasBrMvYO8oIKsAarJUx5VwMPVAxUejkun1u1t2
	LqGN54diWnSwJf1WWFNBcJ4UHm4IW6/hRF4FzcvTWwrRdE+vomtU4WrZfUgCb+WODdfE4yyUW4v
	kfRb/fraM6WCIpVJSdE0O8Xs/bQqNGG0R0nFhaFqP+38CeXiYVNGt8lJkAeeFDYkcJgz8qGOizD
	ITK9qv+R0iltp8e2aA/oNKmloO5Da56Jkj0hkFpe0qBmX3bme9bpEfTPE5upUttUkWPFOKZuL8l
	aa5yABB3MXPp1dJjkzMd0KhlmfrHIs=
X-Received: by 2002:a17:903:948:b0:2a0:c5a6:c8df with SMTP id d9443c01a7336-2ae2e40a215mr13000525ad.21.1772165702734;
        Thu, 26 Feb 2026 20:15:02 -0800 (PST)
Received: from mma-H9MHD44.lan (60-242-93-14.static.tpgi.com.au. [60.242.93.14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6ba5eesm41682865ad.68.2026.02.26.20.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 20:15:02 -0800 (PST)
From: Lachlan Hodges <lachlan.hodges@morsemicro.com>
To: johannes@sipsolutions.net,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: arien.judge@morsemicro.com,
	dan.callaghan@morsemicro.com,
	ayman.grais@morsemicro.com,
	linux-wireless@vger.kernel.org,
	Lachlan Hodges <lachlan.hodges@morsemicro.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH wireless-next 31/35] dt-bindings: vendor-prefixes: add Morse Micro
Date: Fri, 27 Feb 2026 15:10:41 +1100
Message-ID: <20260227041108.66508-32-lachlan.hodges@morsemicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260227041108.66508-1-lachlan.hodges@morsemicro.com>
References: <20260227041108.66508-1-lachlan.hodges@morsemicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[morsemicro-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[morsemicro.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[morsemicro.com:server fail,morsemicro-com.20230601.gappssmtp.com:server fail,sto.lore.kernel.org:server fail];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269047-lists,devicetree=lfdr.de];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[morsemicro-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[lachlan.hodges@morsemicro.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[morsemicro.com:mid,morsemicro.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,morsemicro-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 970511B29E7
X-Rspamd-Action: no action

Add vendor prefix for Morse Micro Pty Ltd

Signed-off-by: Lachlan Hodges <lachlan.hodges@morsemicro.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..992edf0f40c2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1078,6 +1078,8 @@ patternProperties:
     description: Modtronix Engineering
   "^moortec,.*":
     description: Moortec Semiconductor Ltd.
+  "^morsemicro,.*":
+    description: Morse Micro Pty. Ltd.
   "^mosaixtech,.*":
     description: Mosaix Technologies, Inc.
   "^motorcomm,.*":
-- 
2.43.0


