Return-Path: <devicetree+bounces-261867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJCaMce/gGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:16:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0DACE0C6
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:16:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 399BF305E75F
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A596C37647E;
	Mon,  2 Feb 2026 15:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nLcmCi0C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDD736CDE4
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770044691; cv=none; b=KtLSXfYDugNv/CweVGP0KguvedRsNToiGLFrloKILHCS8yKAeAzZmNYngj13URfBRh39GSRyf9ebVcGWhIEva1fJ043aVgtfvjnEEOYCNPwojlCtU4yQzmDWkfo8TelhQ4ZBjpzCB+jU0GMnomSW8wdB7SL/+zOxvm0f3qR/qYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770044691; c=relaxed/simple;
	bh=uEzLtpceybLfw332AhOTwLVADotmlIOh34rWiIlsAno=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oepp3fk6fILJWmlg10e//yACXyS0Hf6aHsEziTyejPYn55LmkN/xqDxtJXWrlY6q+3Y0kS3i5FsoMDsMWpX02JJ+Hc/Im+wCaH6d81Qu6oSDFmfkx38yChs2JzLXgCRU2qmT6AisU+BVsnEGC396C1CZ/MIfKtMq1+5aUOFdI/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nLcmCi0C; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-82307c6902eso2312857b3a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770044689; x=1770649489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSDNEyCwakS1Ym6Pza3YQfvhZWkeeNtC0qOGvxZYQyQ=;
        b=nLcmCi0C+P2XL1VzTSadCzl/CpsO/rcfhCGjik8KKu5j5mYrio1/6l34Bpr8u9xyBY
         GYSgvt9q28EFxGVcai4xmksiOI40Z/2g8RCAmVNGz4Wy29C2uYLVjm2+9FGaTbdd8BXX
         faYtpQgTiNpZHddd4s8mQ6zKvw72EdkyiRW0LVwbfztawkCEkDOXj4TMP8UbgnmwhAaR
         1zoAsdQ6ZpJ9Pp5lMh5uBR9QqifOyP3XhBafYq3tjJm0/QlnomE6cyVw3+egENUoOJir
         5qGV41PxzPdGAPytrpk0W2iT5NRUDZaVd0kxVkKhF4OoKwn4GE7tRRj6Q8mtxdQSGlEX
         9mEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044689; x=1770649489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iSDNEyCwakS1Ym6Pza3YQfvhZWkeeNtC0qOGvxZYQyQ=;
        b=F14SmQkw946op47JvCHPZE/4RYPDllWxOuACgisEAG61/XAs3PkYznLOSH+SsM+f9N
         HXPbF3MaX+CJ1DKTD4YHJLVT57eGxdLXNzX0FVfeWVzIHJN2hE5I9mzUTsIxfa9T0Riu
         XHuf/I/XeMLoqHyxhRpkjPH0Bo0W0jckhCp5Hy/jFvKcm5LNP+LOJoH2eTDlJ4WvPyTA
         5wpETjRYGG0kuNxeiPdS1pP4JMqbiEyG2Hy8sTrpsVzi5rTW7Oie4SC7WiGka48SHopH
         62kwGV5T5/a159mb6OpP/7zgPAOYD6NUzAKf5udQJd1rpRWNryPB/wAi9pAvgyJWgiy4
         Bu4Q==
X-Gm-Message-State: AOJu0YxAGY4EgE6HC24+2QC0sj2gDe9l1cKW5v9f0ULTravcaaGLGaQp
	y765vQFa3A8aNyFIkNvUcIvYeWrYCf+gFemYTqYLpl/MeGDA/BmoX07D2kTzLluy
X-Gm-Gg: AZuq6aLUOCwQ5mpo4eqIdEpyuo9ZQa30i1YZqmJrNzfYPGlf/+EqxH/8AVTAg0CLmnh
	qryS15wD+20og/aQsu6vj+xpZcEPDF+CvNYW6BY2yPCE3R9yTbYfNkHpDd6CqX0XPQhzME3bMvI
	6zgkS19CkAX9KvU1zykp/mLpCJiGPJ7CpnViJwVAIBCt1hdggnMVEHObzLAXynP8HHrkldtRSbh
	tjjyJ/xK4z2xELDaZpFei+wRjJCPsSRqmkTcrrEBelP0zusK5d6KgqXR9Kmxx3F6NZXbCWBc94A
	UACqngtogz7Ljp699o6ZIV+m4Gqq70bAzwYvsminpIIfJn4Kp/ne7vXOuGC8J8h0coUSkxl4p+s
	vP5JD0y44Wvzw+3il5pYAie53NRXS27o4PXj4Wsc61OKLYM15Be4rb74DRuiiF0wmt2fkzA1Tr3
	/cSupJD/DP
X-Received: by 2002:a05:6a00:1c90:b0:81f:9907:e503 with SMTP id d2e1a72fcca58-823ab67e71cmr10570020b3a.16.1770044689452;
        Mon, 02 Feb 2026 07:04:49 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c21112sm15948480b3a.54.2026.02.02.07.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:04:49 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Mon,  2 Feb 2026 23:04:01 +0800
Message-ID: <20260202150437.270567-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260202150437.270567-1-jerrysteve1101@gmail.com>
References: <20260202150437.270567-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com,microchip.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-261867-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3B0DACE0C6
X-Rspamd-Action: no action

OneThing is a company engaged in edge computing.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..49607cf2941e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1199,6 +1199,8 @@ patternProperties:
     description: One Laptop Per Child
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
+  "^onething,.*":
+    description: Shenzhen OneThing Technologies Co., Ltd.
   "^onie,.*":
     description: Open Network Install Environment group
   "^onion,.*":
-- 
2.52.0


