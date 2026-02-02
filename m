Return-Path: <devicetree+bounces-261630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDQTJ9E+gGkY5QIAu9opvQ
	(envelope-from <devicetree+bounces-261630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:06:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D691C8783
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:06:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C901C300F153
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 06:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 302DE2F5319;
	Mon,  2 Feb 2026 06:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a9vTXhpO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF352F3C3D
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 06:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770012352; cv=none; b=YfAvSCCzZexjcsV0LLgj9FrhZSMKPCjvE3imZpkiiv1tqH+M+y6DjKtNaT6sfjRsqXk4Fyv77LWJUPqw0LEOf8qwIYNJ8FcWlHI7s9zBZSUSJwA9VyiXPNITLB03n36PcAwFjGXJ1E6D6OcbwxRihnCF03vJOk/z9e8bqyTuH3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770012352; c=relaxed/simple;
	bh=awDe2howAZDyvltIFZvQ9S1Z3NdAcsc3EqMeuy1puZc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=boezPLzFl9UwOLlcRqcc6cGl75ObiZBaudXQI9UO++x5OuOAz4To+zwh3r5soUfHmSB75QwMQpc3qWuIhUPLrxMOKotsLQFBpfILWCnZf+7ojtVmpsKm8ZC21tJarsvxzJI37Wq3RQJdK6oMHLBbTWD5YIT9le0TGdCMXOTAUzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a9vTXhpO; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-29f30233d8aso25815455ad.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 22:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770012350; x=1770617150; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HE5glzw2S4WCKHAKIYJ8k8reipPAB965cTMWcHuh4wE=;
        b=a9vTXhpOYzV18Pr80DoyJQchF9ZHyUPdbwVB90Wy+VCk9RxWgHFWiqLxy+541G/lSD
         Id9Vq6Pyapc49ATnQKZbZiHy6zMTlSvDsv09LFXUEmWViqA0vY5Ts+s5tk3dg44E3BWH
         7eEK5J3K8a1WMX0qdxXcQutaHlYSnbyyMnLvHjQVEjBKijS1MbbtNK/D7CNiatV+/X0C
         JqNcNB43UUfSeACv9SB9cttxz4Tf0gTK24orcuIRpCUhiWmdy1M0x1Q4JdQ5e7uHrt1P
         eR8/v491+BBs952NOdT2eU8oW3GvTxJSSnZOUF+iUA8Sy3TA7+hxcNB7i09bm1/xAWyc
         XNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770012350; x=1770617150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HE5glzw2S4WCKHAKIYJ8k8reipPAB965cTMWcHuh4wE=;
        b=UfaRRatPmjewyLciTmeI2rcIENN/yLCgQREldxFzkL8/ijAcafTsCdW20yggLfPg8y
         BMZEfrzY25DMY/+I0h95rk+5jWNYZmHTCPWU7kIGZs+zYfutxgAL/6bbHF1ieufbYpgE
         FLbXXUPpVIpIZVoy1+1Rs6e0cz3ww6cVFpxiWbdIMXAsgVHY9SpZeGHTDjCXl+gY/lUu
         5iomD7yi76lREPJGzELMBXhTR8X6eZqKsatUQU/+CLBku2l21wrTMu/tZ91OgenS3Cqo
         XHnT25M+hlfyV5Bgq9qYF2rElDVy5FkxM413ILDUITi0DhKJvVXKizq0nX3KbP7jJJ/0
         xMLQ==
X-Gm-Message-State: AOJu0Yz2wkf702wpNz0Vf2xENw3YtbOrPW3mGzienH1UhPYBHSxjEAjv
	nccHyWIwEtsigCZ3YPng7aMcZSr3gxe99KqSMyo75Xsrzz6KjJZboj2m
X-Gm-Gg: AZuq6aLEHEqMOKHBDoq/6idkMhZC4VjmPRxyqT6e9ZuZ0sq9RavLwTET24XFvK7dQIb
	IzjqPM2TbH5RXUnoJK3DjC6K8S0hHOH0xjLJTr6BFo3EBHUswA6oK16/SlurFT4TMJ1nvHXE0Dd
	9DLXhcy35mrvvpapxYPsqr14rzN54tHSD3VKM+yZLf+sL7bNtYlgkTHuyhMgxQHFm8/OC+dLj9a
	9n20aP32qir0zPgDOsy87a0aNBJVurpn9iweCTchGRAwWpH7hP6eMiUaB3jqpVLecqsdVQogFCQ
	FnJGiijBHnn5lC+wsCRK4q26ijr+U8TYk3j5Rjeu0E+ktOsc8rR9v/iKup0feZydWkP1hDNqP+/
	xs3BbE5wT0kFN37toZ/SV8XvqofLGa4hbUIXobveee45mM5DK3oZcqpE0oSyclXwGVHymOJr3mO
	3CU7PAM/tGaNg7AZf2p3oXeHrbU1k//yPgag6MCY8Rw8u+MfxDF+R2dawbvEWi8hijbSs+CV2OW
	w==
X-Received: by 2002:a17:902:f708:b0:2a2:acc5:7a42 with SMTP id d9443c01a7336-2a8d81801aemr108152325ad.48.1770012350239;
        Sun, 01 Feb 2026 22:05:50 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5d99eesm132926135ad.78.2026.02.01.22.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 22:05:49 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Mon, 02 Feb 2026 14:03:16 +0800
Subject: [PATCH 1/2] dt-bindings: arm: aspeed: add Meta SanMiguel BMC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-sanmiguel_init_dts-v1-1-c0023ae41899@gmail.com>
References: <20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com>
In-Reply-To: <20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
 Potin Lai <potin.lai@quantatw.com>, Roger Kan <Roger.Kan@quantatw.com>, 
 Potin Lai <potin.lai.pt@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770012344; l=841;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=awDe2howAZDyvltIFZvQ9S1Z3NdAcsc3EqMeuy1puZc=;
 b=kEp9CUwnACmR9NE2TIjtVwLyacYjzLHZXZVw5BEazIRRzng2LDy+t2D5cYB+vLl5p49SqUkt7
 BZQ8VeQwu+HCJwN3aaRbYw/PF6VzsDrAOdJC7cddPQyYrAXH2ndXXaJ
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1D691C8783
X-Rspamd-Action: no action

Add Meta (Facebook) SanMiguel BMC board compatible.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..6c84e6c80978 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -91,6 +91,7 @@ properties:
               - facebook,greatlakes-bmc
               - facebook,harma-bmc
               - facebook,minerva-cmc
+              - facebook,sanmiguel-bmc
               - facebook,santabarbara-bmc
               - facebook,yosemite4-bmc
               - facebook,yosemite5-bmc

-- 
2.31.1


