Return-Path: <devicetree+bounces-277058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLegMJpoumnnWAIAu9opvQ
	(envelope-from <devicetree+bounces-277058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:55:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 697072B88BE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E628301653A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E212E39900C;
	Wed, 18 Mar 2026 08:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KZDtNW+H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C9E285050
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773824102; cv=none; b=GE416dc2HgM03FR5Gs/EvpIMFHkY0TI4LxC3C0Zs3jShkWN+yEl0wiA9shAvbhQ5Ts2sv6k4/bWee2J5cPm3ieUsaIg9c8b83WcRv50q0jIrFmcOlPK9+oQxIWZyh2PYPBDMuNeW5hoKqQPpE9WzAKDyRE8HXODjm6Pm/wztVqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773824102; c=relaxed/simple;
	bh=DWqhZ8OS66vHAdfmqRWFMZNnWQN9i/viTVXUCLXce7o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hik+Pec88vuG8frt7nF8v9fAz16Gkp9ABBdaEHxBqsGAQ+n9rDnPCI5DBki6JRt/Tfomd9DE+mj81LVHvzO5BAPedCpYQlgIv0O2FDQCESBpyaiJad8sZoyNRMQYDUWjVzdxgV0p3QyC7KHIc+Rvrbqg5kG+57CWHP2rwXpIlUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KZDtNW+H; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6676d55d01dso1699116a12.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773824095; x=1774428895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4j9cjdUWxfJ3jGQMDt+azVJCkt60E4vJjjkI8IZ8fI=;
        b=KZDtNW+HC9mNeAH3FluqHPfou5B1gIVucs2g4yE2HeuNI+v/T5JZbeAozTdcdSfcZD
         dxp7mQvROivjZSgpzH9DKRJELKLjSR1pWA5en6fq2lQXR3SMRe7RDpuzHH58Ue/cnpR+
         mS5d19q5+Xz2fEHWOP5vtFT6tXeJ5Se2jbtI+rMc1LX/5K5Ugyv7CZopRlbXwT9zL7D3
         cpdEXtKhbxJqsoJ88JKnAPrGvo174tM2vPPlGfV5etUVmMfpaIWqqz7okqY+OkgC8g0Z
         WrWm0wPi1BittyNUTQ7L2md62ko7cGgvrrIj2X3MckGtFXaaeIEJPA7nZReH7nV6wpqM
         BEIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773824095; x=1774428895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j4j9cjdUWxfJ3jGQMDt+azVJCkt60E4vJjjkI8IZ8fI=;
        b=FRmCXemUMSnwar6ATzrGl8J99VxgPbrQbDahmD5x3pyBZBaqEAblJRFredDZXVnCB3
         CFaSRNOHl3dItO0n1Uc+1Y7hXii0l2Wv8b6whoTzSTKjug1i/AWVkUUSjGhsleO3CBmC
         dJbME6D1k2psnfisFeGD4aQvcjyNVrDSEzQj32l35/cwOESE4djLfw/XPuSub7K+dRfV
         Vm953qa5n5757wyz4xaGJRfGAPsD7DYHz/E3S0GdCk7RYLGXvcyVQBV36zmt8L5pOPr5
         Aq97zvJXchhrk+GZ1H1XrHVm6d0LoAiM/lj7ATopsPXtmrCjV3jivsijNOb6HpZp9GY4
         MMrA==
X-Gm-Message-State: AOJu0YyblTXI56ARMfsaG46H6uU/2FhYIYG3YxT0qNeI00A4YJf3BC2A
	DWR4dZto34qDJQZ8OWC1o0fI0TPAcX7tWr+0BP0kYFTcpKJY5XFYnJEVpnI3oiwn
X-Gm-Gg: ATEYQzzKIHl+5BIoZHbi9SyriC+lNwyeJIvNv5F2awRwoMQ0y0k+ITohwQEBJgKMfgE
	gtqZc6iVKpffdvGGAYK3AOKDN5k2ZqOvu2FldKH8bxPF6bDTwWhAGliefAR0N4HpUFQfd8kj7ha
	km9Fai9Mwc/ZDgD2+rYncq4DEZNIq+//ottbvWaKkYDlcXfjeunTwMtdOn1bkHh6EMcUzBmDqVs
	r7eNKIa58Ryam6uBGO01/byPI+Qq3YNx5baE/CZPf/HNZTnU6kPMVjfouqJhDE6YjoSkVEecVZx
	ZUQ9pojpfXmB3+63YkjvbJ6+kOt2p3dwgWcuC+r9Vnzs3/jg0olcmE+amDOJmTtm6OUlfvXSQyg
	Kv8W1Uapn7LIJUt4Z1wKaqfonORY9TkP/J4iqwIIg/YdNqwjz9HCbjjK0z8WY7C/g+bPPAR5CMK
	5BPhKQhjeU0sBGdanCVIRi/llvR3yK0FnSt7aQBy0F/M/qyxMyhjHnaj+qj3Sq4AVPCVABR5OZ6
	+n0aorB
X-Received: by 2002:a17:906:30c1:b0:b8f:9bea:ad6 with SMTP id a640c23a62f3a-b97f4935695mr107418366b.18.1773824094605;
        Wed, 18 Mar 2026 01:54:54 -0700 (PDT)
Received: from fedora.tux.internal (85.191.71.118.dynamic.dhcp.aura-net.dk. [85.191.71.118])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9801c11fa0sm72259866b.28.2026.03.18.01.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 01:54:53 -0700 (PDT)
From: Bruno Thomsen <bruno.thomsen@gmail.com>
To: devicetree@vger.kernel.org,
	linux-omap@vger.kernel.org
Cc: Lars Alex Pedersen <lapeddk@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Roger Quadros <rogerq@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Bruno Thomsen <bruno.thomsen@gmail.com>
Subject: [PATCH 2/2] dt-bindings: omap: add kamstrup am335x emperor platform
Date: Wed, 18 Mar 2026 09:54:20 +0100
Message-ID: <20260318085420.7680-2-bruno.thomsen@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318085420.7680-1-bruno.thomsen@gmail.com>
References: <20260318085420.7680-1-bruno.thomsen@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,atomide.com,baylibre.com,kemnade.info,iki.fi];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277058-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brunothomsen@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 697072B88BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the kam,am335x-emperor compatible string.

Signed-off-by: Bruno Thomsen <bruno.thomsen@gmail.com>
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index 14f1b9d8f59d..9b1b4286f4fa 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -105,6 +105,7 @@ properties:
         items:
           - enum:
               - compulab,cm-t335
+              - kam,am335x-emperor
               - moxa,uc-8100-me-t
               - novatech,am335x-lxm
               - seeed,am335x-bone-green-eco
-- 
2.53.0


