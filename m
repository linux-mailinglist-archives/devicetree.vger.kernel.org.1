Return-Path: <devicetree+bounces-276815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOjaA+ubuWmyLAIAu9opvQ
	(envelope-from <devicetree+bounces-276815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:22:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DD62B0DCC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:22:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7B413199468
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 866F53C6612;
	Tue, 17 Mar 2026 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="7RchHNvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9018037F8D9
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 18:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773770896; cv=none; b=CbM8cIKML3x+WjLsFrEFdbfYqG7hCyn9nGv6H7VW6FlZjQYz83EVmcxEkzu6HJX/tu3eKuBYAXzWdkTlNSuinuov9iAsbVLPJqTV2m0X0/y88DZgQC15jrX4O6+VJSxwGfQPcMBwWPCqs2Eewryw8FRG2OpdKJR5JaKgr66cpEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773770896; c=relaxed/simple;
	bh=T+J1OY8trN/7RzkbAWgyzywsuUmbTSqBleeNAx93u6E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kTDCZz4wYQ+zbeY3gJbHMB6bCijVvh8UaWdcPsJUfcWSrJgireSPEPk9DbdnUkyuzKju5/oyahKjGyrWiaNxqF7BG5JwsuFCmB2UXKqnxc+hWrwrEFtSIiQRNaTdZeIgMEQsMjueoVevQcsdAesk2UUomxk30QvHUQlZDeiM4nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=7RchHNvA; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-43b44c0bcdbso2273259f8f.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 11:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770892; x=1774375692; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S9sCFNxATE1UQcKX1OKooIck8dS1xOFB94Y0TqD1Dbc=;
        b=7RchHNvANxRoBoM/Dddt2pCx0uq+VrKATQ+lZPt4fyhHFwTRk+h7JKduDpDz76NQW6
         yYIj8gWlnfVlP5C78OzGw2qqQ2MtqbS65upsEToCjeatBzHguX+JUr9szIvY8I8yT2tf
         F2s/zPGqUIxt0yEZDtdG7t5L+MS6+63yHGSZI4y+zq5O9o3Un9v96KUocigEFOhWwtIc
         Y81pnHi8hZXlyfa+y9+PGVqzwP6AgvcMGy7bNm2qQ4RtWpGYSt4RKSwwQsW/+MYJoYKp
         HaaXQMEByRam+5ezQSu06GMRS30VcxhRDSvu1RJHyzEeFAiPmN/vYppkrgZ5HgKUWwGo
         GK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770892; x=1774375692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S9sCFNxATE1UQcKX1OKooIck8dS1xOFB94Y0TqD1Dbc=;
        b=fzFbAy5KKA7eMTBu2PeqQID2na8bhsP6LBovO+KBCswB+bY3MQPnKrQFoF/eu4pLL+
         3wNQ8IESPKg693kB1ncup0duU3+GgraI+eP5Mr8CZ02UD1MuVIVyK1WKeziz7+v9UYgR
         rV+AKvgtT2mn0pznr50exlhPd0/ZN2f8FPZ2JLhwddhrJiXLmZb8a831Pj7EgTPVgL0h
         1ce1Ty3YNPG4i8/7RBYivaXi/S90mpM9eP1bZZWazWJqUTXnvDFIMcaX85QQWlc3SaJJ
         eVzyrcL9NAjnf5UGNV+x3cGudTyBaaezUP6ggLrG+nnObEVvHSmNcAyHVNkusCo0cyqf
         nHWw==
X-Forwarded-Encrypted: i=1; AJvYcCVPZOkEHkEAm4MC219zu3RwPncn8kNfBJQi9cfX9ZQ8j861ce5y4pdU0V4AmzStqpKfBrJQavZZTaGf@vger.kernel.org
X-Gm-Message-State: AOJu0YwaEP608aF8PRTmm4SO8ri8p1JjvJ6qoI5eenZsUjT3SIjyWhGo
	tFlOCNBA84Ir3WPOXX3as9cghfZ1eElF2jgdkfYou9DXw3eVGFLis7BP9JtziWT6wqA=
X-Gm-Gg: ATEYQzz/Q+SaMypHN/SvNAF+TkXOXrfywLzJDCLvgBC1PhGJFr+wTmFyDTr4fGvDt5T
	IaF8b5shNXEGyRfaGzSEHJUGnE+3XwuSWbJN0m4Y5A0j5bsxOcnyXZARDXQc3tp/3guHvULnDL8
	LviY5MpDcYPxHcgW5euadvjnjh1d4nl2aoqlJksOvNjcMC6ltl1tjwkTwQdhz+0JxY7pqER82vy
	ruB+Yj2mCPGwRh/xuO4I6D+TisfI+wSRZgHsRHBdW4wY4uxDIGSamxmnwJ4XFpTeuJQogM9cvE/
	P+hbQvxZLBCTr7Mec5St9uQUQPtlyIm2A11fr8ePWVzmc+jXYVPpiW46X2w2KuWmF031fH2jHWT
	vyy5flloDF2swyc9KYczp86ZPkrCwTpAAYcVNcSRyTAHLBRkR5sQIaeqXtJa/TEzs0Djg2PRXmU
	gY1XNDuddealkxlgrLZ6GGASH8ro3Q+xe++Nh39QfnwzVqpcPAOWyz5iMZ41sSQZnQFRrBLQkoH
	Kt1JWdEevE35Ts1
X-Received: by 2002:a05:6000:608:b0:43b:447a:11a6 with SMTP id ffacd0b85a97d-43b527a0871mr372127f8f.8.1773770892007;
        Tue, 17 Mar 2026 11:08:12 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:11 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 17 Mar 2026 22:07:58 +0400
Subject: [PATCH v2 1/5] dt-bindings: vendor-prefixes: Add Hynetek
 Semiconductor Co., Ltd.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-husb311-v2-1-03c17c986abe@flipper.net>
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
In-Reply-To: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1010; i=alchark@flipper.net;
 h=from:subject:message-id; bh=T+J1OY8trN/7RzkbAWgyzywsuUmbTSqBleeNAx93u6E=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNGWxX9hHu/TwgdqBXVCqw4uu3hAfLto+YSe6Y4V/
 iZeR0tOdkxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVdVEM/0NfeRv6vWLZMTvtw74F/0IO1V7YEBDr9utKA/e3c/67I30Z/oesDEj
 NE718LvnIupknltQoM00srGFWk8jRvWsp1/pEjxMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276815-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,sntech.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,hynetek.com:url,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Queue-Id: 65DD62B0DCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hynetek Semiconductor Co., Ltd. focuses on intelligent energy control
technology, mainly for the intelligent fast charging and digital energy
fields.

Link: https://en.hynetek.com/
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5a806faf7170..3ffb1a8e24af 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -747,6 +747,8 @@ patternProperties:
     description: Hycon Technology Corp.
   "^hydis,.*":
     description: Hydis Technologies
+  "^hynetek,.*":
+    description: Hynetek Semiconductor Co., Ltd.
   "^hynitron,.*":
     description: Shanghai Hynitron Microelectronics Co. Ltd.
   "^hynix,.*":

-- 
2.52.0


