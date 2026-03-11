Return-Path: <devicetree+bounces-274228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNmsBbyWsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:22:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B14126740B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:22:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00E39301F1BC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301CF3E2743;
	Wed, 11 Mar 2026 16:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="XyysYn2e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2273DE444
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773246064; cv=none; b=eP1mp2QhTpVXVbNqHzd7Tdap4blvnxWecEStMEbjXJskvvRLD6JSecTOCH+l9WFaJlvKtK5DlxAoTSsm5D3KdwvigMKPwBAq5UM1K5qjCcMWK4AGe5FT2EM3HvZiQNsDUFjerzdvW4IDkEDvz6T6L3/vLHSQu5eLpJRzYH7IQLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773246064; c=relaxed/simple;
	bh=bMf9TRmYtn46zMSSe2mzXvRDTFA7QHx3kPDHNmgVLZU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gFjPjAsv61CrUE/K92A8mD/QNcbxW1BfjIu8tPXVr3e82HdpNx53GFP7P7FD5hmygN7zOgp8Dg+qTR7w82qMcHAF5ZQAFL4P4HrhNhHKnFlgVlLz16ldzZ1rHUQ+s2sFKa/QlubjJWuqBFB1fQE6BL/DxRviT01yJ0Y3CvWGF5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=XyysYn2e; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439af7d77f0so67208f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773246060; x=1773850860; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n7BFBm0ORq4+JJOt2QbOg12ZPSD3QFxst8CC7tIRj8k=;
        b=XyysYn2esO5Wz6Wb4aZF2ec+aIfhvekfASh/1RvatdxJjNj9dzrHTuR5a5TDdajfO4
         0W3vWvniaxyTdUB/NXkzuDklAJLPcPfrli4OSTUpHyWbTIvfRb22IyMzcm/02KMbIykN
         2Tfbub9h0XjmBIJ88RUD1aHfZwFJN0HDuNMbeca9EHZxG8jj8/qg2+xA1XTz4RKyfT2H
         Fun0RVgs2vgbwma8w9hnAAh3O0cIqtMkUyp8iM63P/SkEqTdZHLmyUkzPSASWl9ygOkx
         s0P8RFlOm6r5cdm8kxXa5wJ7YxJGQaeKlbSLelPScdjqipkmCJFNMc0sRLKgvr12D7Mq
         rAXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246060; x=1773850860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n7BFBm0ORq4+JJOt2QbOg12ZPSD3QFxst8CC7tIRj8k=;
        b=heRBet4h1xUKVsIxVPQgjqwcGTyaWV3fXnsmWsno0cX4GPRj8nxAMKU+dgy1SoT9Xs
         3aE8NsVVcHgU7cbk/muHJkpu7kHzbSRmX0uvmw0FnffCQsZYsBPGzU/Cyjj6vGbdmVrk
         sGURm3wLQVf6G8V9WyDdJN04A6EoiT4zY6/F1U6omlR/F/2bG4TMavgG3mj/0tp+4FcH
         ck5L+lh7oUyDvgo5Bdfu9yZBRSHKzmcI54hxvgpCiiN0DnybleVg9EtJdUIh1uKm8FX6
         CqvcmsM9hCbTqFd51+hRngxYDWwt/RxIYu3Y481ga+JjlNXobfbBE0ebv6pc5cFTE61t
         7dTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUggdDddTLDAY3XDv6+yvg+kJK1YN+XbFK4UY/H83sQzn56OtxQBdZaQo0f4gkXKTOhh8/povywWLn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg5XtD4T1zeLOOPCNhAuk/zpRQlCFqE1Zx3IHsBw4uQ7xRqhP9
	D02rrs1nfCDLb9C3y3F/UBMpBs/MTUIU+gxGf1dsJyelox32p9PcFatrT4IRz8jz5YI=
X-Gm-Gg: ATEYQzy3I5EIrNUWMGgD1Y7166hzk/K+CTg7aZCWKNAl9C6XKSKndasFuQUKAorJSsl
	5NDmd0PcpiQuckQ9/Jno93ps59w815I+dXIr+4w43R8Suq+8rcsnA+KTCGBX+XtI83W4QiEWEIc
	dAhXcu4o3qYtifmYcG4PvYtT1drcEq69YOh6zCD4An5uwrHEl/SS68eklMqxW6A1iw2Bd9DEoBJ
	z+sTrvD73QAi9Pbwl6hyTHnHfY8uZnGmLAbdNMmCBgG5pjKlNL6woQbm0ZEr5RJmN87GoL70bRr
	6awGdfJdrQCedpBYVvkth3mFKKp6AMyOI76tIUl/fXQbm44qsaH8FaTb4y63sOpnOVwQxrz+dd/
	zPbyQgXegMLuHQA/tjO1ChYqcOmaRFCvsjrWIjf5UXoFw/KBTZr3nNc0He0Hg5XgiyDG1p18BgU
	//egRt94eTPzvCdKfPiPYpuHHwLJan6fGpr7D21vOJjlwVOCQ6SdezsKhYyp9QKD19vcpL3Imh0
	GA1dw==
X-Received: by 2002:a05:6000:4312:b0:439:c1b7:890d with SMTP id ffacd0b85a97d-439f8219facmr6362482f8f.26.1773246059591;
        Wed, 11 Mar 2026 09:20:59 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm283952f8f.23.2026.03.11.09.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:20:59 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 20:20:45 +0400
Subject: [PATCH 2/4] dt-bindings: usb: richtek,rt1711h: Add Hynetek HUSB311
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-husb311-v1-2-f25bcb58cff7@flipper.net>
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
In-Reply-To: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1200; i=alchark@flipper.net;
 h=from:subject:message-id; bh=bMf9TRmYtn46zMSSe2mzXvRDTFA7QHx3kPDHNmgVLZU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRunJbcc2jLT4V9ix4K200se7ToyfSMgN7pC59fnRV6j
 tVEp5drQsdEFgYxLgZLMUWWud+W2E414pu1y8PjK8wcViaQIdIiDQxAwMLAl5uYV2qkY6Rnqm2o
 Z2ioY6xjxMDFKQBXbcvwP/zaNvclqs9M5l+x+LTT/OzkBxrf6u8Z7341Y+cZ77S5K/8zMsxIy/j
 1mfvvhL+MrE8V/04w/nD/w+9XJl0WR/N4Hyvf28cPAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274228-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[flipper.net:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[xkwy2018.com:url,flipper.net:dkim,flipper.net:email,flipper.net:mid,hynetek.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7B14126740B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

HUSB311 is a pin-compatible and register-compatible drop-in replacement
for RT1711H, so add its compatible string to the existing binding.

Link: https://www.hynetek.com/uploadfiles/site/219/news/0863c0c7-f535-4f09-bacd-0440d2c21088.pdf
Link: https://dl.xkwy2018.com/downloads/RK3588S/03_Product%20Line%20Branch_Tablet/02_Key%20Device%20Specifications/HUSB311%20introduction%2020210526.pdf
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
index ae611f7e57ca..b24502bc8213 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
@@ -21,8 +21,10 @@ properties:
     enum:
       - richtek,rt1711h
       - richtek,rt1715
+      - hynetek,husb311
     description:
       RT1711H support PD20, RT1715 support PD30 except Fast Role Swap.
+      HUSB311 is a rebrand of RT1711H which is pin and register compatible.
 
   reg:
     maxItems: 1

-- 
2.52.0


