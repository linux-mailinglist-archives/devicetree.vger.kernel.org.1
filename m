Return-Path: <devicetree+bounces-308470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LwUNAngIJ2ohqgIAu9opvQ
	(envelope-from <devicetree+bounces-308470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:22:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F51B659AC5
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:22:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Xu6hRl32;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308470-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308470-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C269E31D6B0F
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C9E0364EB1;
	Mon,  8 Jun 2026 17:57:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8003D3489
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 17:57:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780941463; cv=none; b=mr17iizt/3aIU+kUYkm1u4C/H8TfGtIKJXsDyeoiTA6XpG/J6W7cnMB31N9vG0vQOLF4GjnXZgLkpgxuEcJodTYPJ3xRNp8nITH6YuN30/w0S7qFRfO4kxHOevzEsfanbDnR5ZPoUqTOZGao1Rsl5tF89ypVJqVVj/HoPdXryyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780941463; c=relaxed/simple;
	bh=dQnacLOtfh1x/EVTAVwP8evevCXXsKE9KJDE9DiR4UA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DgI3O2rSQl3gWnqrWPBVMVc4m0ELiRKMW6+MZFJiCpVF8LV9zcs1DeysWSE4hJrOBnTuzFGCfV6dZhHXosUtk4ajWSEANnL8IyQkyNel/qfeA+cdJ6gW0rqau/MGjAF2jDe+gZudFMC2MhAAzyQ64iaKOoI0/w9rbKoss/C9tF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xu6hRl32; arc=none smtp.client-ip=209.85.160.54
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-4414d76270cso2067872fac.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 10:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780941459; x=1781546259; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=Xu6hRl32HrYrIYiKO4nohiM/w33m+hmCW8JwfBm+vPDBre3jhJ8nMDkCsbkYL/Zevz
         ys9YCgAtV2t0n9fG3IsYTrv9AaukouEtIHPW53U+i144qA60NQ/JsSU8BXV52sKDAkQR
         1M2fBvKXxx84WjCHjw9adGV7O5UqP2eJoUhn4FK5j+ZiKXV8IJ0FrgFOZ1SrB8ldEzG/
         X4ocGhgSjYrR5aH8eTzAOHNeJNQS48r27MRgkfLLJjfu7tYJi+Mj98uQM9+fP7dF6uCb
         q0RBjdrOtBeXoL4dUVITCcPZWO0aVRO5vswtBPsv7xX92gtLKUDTVRKqdBfkJ6Kb7aFn
         S6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780941459; x=1781546259;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=jYX7pwJkE7vckMXlK3RVDEM46JE6vX7+rE6V+9b+BxcJyshWi3JHGJoK0WhPzRDDNj
         FX0R1QAxf/TNQx72Sa/NfQCC3dglZnqQrkGy9tnFudcZxwrmVBeuPDLAD3DTev+qBy4u
         bzYXums+TapIBXSp6BSVyks1kkwolLma7zN0QHKuttTni/sfO8qQ5LiPJL4r1jzHZP/N
         S7kBYN9XAJ31U1LX5O35kLAxS0+JpOYY90B7o84uSzUumaabyWeZ8NK8kcPaUI+swOI/
         FW2IEHCPB6TlVLDOE8ch8sw51NOJOlm0oVy6yePsKTt+tvcEZm2hixBHzVAaFuhKPo0d
         H1Dw==
X-Gm-Message-State: AOJu0YyTtQKdprHKzFv4eSQaVUuTv+XMQMTaVx3YYDFj7oaEPRbHamZX
	2YWSBOhIvkeoOBsz7TQ2P4IIQhiqHQD9FVhF+u+zaiQvl2cAFpoiZPi/
X-Gm-Gg: Acq92OF9iQM1r6hwCnVeehMPi0hGl1CfnceZ5PuYADtxe02cgoSrdhGQbyb+wguezS2
	d4in6ANPxq0NWX/wzxmy8PJ0dOOVBb+WaM/kJpjIOEBoDMk8XxkXTQ1mYz/sMllKCpQIfoUGR6T
	DIQxX9oqIROTzmBK2vb0gX8CeBCJWC6U65qUuH+arYBSyZUB37S5y98UxgLz3AlraC1em7Cini2
	2syqVWTawfC6n7EzYUpXS4IgLDMN/fY/3a75LXjUes+QlNbzrKhQfTnLa9DIMhbYofaqX8fgD7R
	MVzXAWBq6TyIZVCCxVzYrzKbU3GX82HT/0a3/yEY0s4vQfZYcBGI2QK+75D2xRJmEPl5WDlI5xQ
	XQyJ3XvpvmnOtOGuhrCdGK1eT1HBNUpax7a4CbdUZbjr7xsZZBJv1NtyfzT4UXFr2J3V1HIqJ8c
	qC2fSvNn07LBJr0pl189WNVUdBhrmNTaFolQZqkqT4UA==
X-Received: by 2002:a05:6871:6c0a:b0:430:3591:26c4 with SMTP id 586e51a60fabf-4413d6a1654mr9148000fac.7.1780941458671;
        Mon, 08 Jun 2026 10:57:38 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d8297395sm15214316fac.11.2026.06.08.10.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 10:57:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V6 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Mon,  8 Jun 2026 12:55:20 -0500
Message-ID: <20260608175521.67449-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608175521.67449-1-macroalpha82@gmail.com>
References: <20260608175521.67449-1-macroalpha82@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308470-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,rock-chips.com,kernel.org,ffwll.ch,gmail.com,suse.de,linux.intel.com,linaro.org,sntech.de,hotmail.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:xsf@rock-chips.com,m:sre@kernel.org,m:simona@ffwll.ch,m:airlied@gmail.com,m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:jesszhan0024@gmail.com,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:macromorgan@hotmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F51B659AC5

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


