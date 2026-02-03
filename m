Return-Path: <devicetree+bounces-262150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDILJj/FgWnZJgMAu9opvQ
	(envelope-from <devicetree+bounces-262150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:51:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B757CD71EC
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:51:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 690BA3012B3B
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29FF39B483;
	Tue,  3 Feb 2026 09:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cOI2ILRq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6D439A80A
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770112244; cv=none; b=ddN1Bax+W9gqb5VF41l2UgSlu8QuVh/izN2U6BvOJxMIX63oe/iNVFPwn4O3q/h1Qk04A63VfCyBnfspBEtESsWEhcLnam6S/XkbNbZ1uRd2075T/p0fJ4hByOIat9hjElMVhL6DJd5QIqd5bhEnkobrJpA+JH3iLpMh+Ugj+0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770112244; c=relaxed/simple;
	bh=awDe2howAZDyvltIFZvQ9S1Z3NdAcsc3EqMeuy1puZc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nVAW8/EHNt/xtkiBPjYXeheQxC/ND7IMW0jQoskkDuEwBo8ZU9cBXpdWjJkesUCJk2BEkYt34hKfYmRAXhU55P201MSqLKRGAPmo0gsPTgS2j4JoCNxvsP+5mcRP6IBvNeDmI0qM0pQaBMEXn7gPfqW2kAtBsI/LFQs7LhHu2Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cOI2ILRq; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c46d68f2b4eso3355227a12.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770112243; x=1770717043; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HE5glzw2S4WCKHAKIYJ8k8reipPAB965cTMWcHuh4wE=;
        b=cOI2ILRqsjIpgFL9ABLIEHNg+7cczOJD1CoPi4CL4oONB530JvN5RPsciZQU//lMt8
         3KGb485NhSJftvE3ba5jTowR69C9JwMv0XPfFgwSyc6//AnWq7/TDwBrNoYguKfTqroo
         Uw9/7L12omnXjZRh/RrACuavHOOuxAKAt2MHMR33AVgxMCs42LHc9Db7PfxnWX4iUomN
         YH9tACt6OccUXEUf4H+UEzFNTr7kEuak6wlWIr2Ms9hlfPovSFe6rU1Nd5QksCcQcrbL
         7NNEdaMH6hcLOZ931p1+VQlVwe0SdQOFOUzukwvwbxa1mMHxTr9I11EOunZESdPxAdYm
         vAJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770112243; x=1770717043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HE5glzw2S4WCKHAKIYJ8k8reipPAB965cTMWcHuh4wE=;
        b=JhjY0q6CybJNB/gKpJuiPqoyfVRFwvtMNs+h0lQG10EvH5FQ7rdoUsuGVR0mz05c4J
         8EGE7oW6VZFhT1qKcLCaFshBJJanV3UDCW2T+B9oIWFakKS3h2y8X/r84WLlP2uc7aHt
         ylL79+/Ht0ONrL6fJocRMXvTReEdkL2RYVtUEh7gmU4awk5KOtB83uJX+ZGTr6V2/Lv9
         BDtJgFzlrhO6yVbqXKP6njawNm911slzXGpTE344eAUhMBSLfaoNydOJAWozUhyiX34o
         aGxwFBXC1U6u0g56lD5iMK0lCKpDJWDVnHveswNAVIDPWzomPKvJfE9vKt21alQqz17g
         XTjw==
X-Gm-Message-State: AOJu0YxZljKnnVwJwRYiPzgTQeSClGNAma9SBd1Jfr6Lm+VPcIjG6FLL
	iHN+kUZprmdG1Kibt5K4z7px15FXAf4MUMILXgqg5hNzpWgwUZZGLrTNegKr+Q==
X-Gm-Gg: AZuq6aIvPFRKlZpHU5wOEdv2vsgj6zQ8NyfsC6WR2ncStyLzVdwb/mwSG/UKsEYCpy/
	ffd99Y+VFcKQS8pwoBOGN1H40LdD4n5v6CZXvOfLmeEaaKWhYOk6qXB765h5Cgn8JCuxmX/zgp+
	AJJK6z7JhfHC/2Au27TlHrLZHlpwB1cGdqRGYslDW4F7ALfz5wil43pK+VWmGzhytOnEFOQJdbL
	ujDpnOkhBoBEJkLQd80se74RmsLcJWTKy6gpnkWnpzQ+5ame1fHwVV1xbAJVEiykG3dB6xL/VFo
	/k1wi09/Wdl1psUy2Vj40J3JY4VsLbcO0lzcAtIhhVFxgK/zKEiMdrkOBJn0A47px5eFSkO0EgE
	Ro9TDru3zkoFgDEyRLIpMUh7tmU5AjWV/6dBZOEXVKuo8k6NEF9IE7vFeHFRGhmq1PvUUw+a2OZ
	uO5IvLDEYPN5B2eZLmATYIsGH5+n8Z0mahw7PuTk3R6jlvBsAEEftHtyiuqb0igQ6jYpBb0igqJ
	g==
X-Received: by 2002:a05:6a21:7804:b0:393:8fc:5284 with SMTP id adf61e73a8af0-39308fc8453mr7414208637.70.1770112242816;
        Tue, 03 Feb 2026 01:50:42 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642a336a1csm17535332a12.19.2026.02.03.01.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 01:50:42 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Tue, 03 Feb 2026 17:48:14 +0800
Subject: [PATCH v2 1/2] dt-bindings: arm: aspeed: add Meta SanMiguel BMC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260203-sanmiguel_init_dts-v2-1-6a5682c32b38@gmail.com>
References: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com>
In-Reply-To: <20260203-sanmiguel_init_dts-v2-0-6a5682c32b38@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770112237; l=841;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=awDe2howAZDyvltIFZvQ9S1Z3NdAcsc3EqMeuy1puZc=;
 b=6Btw6wU97hhwe3vFKaiSmnwtqfWoR5H5FeSRtHNAThM6D2qJ/ppeb7Nl+1bqScZU3xQ3yYFxs
 zv5FMUtvvQvDlQMXkVYE35LS2ReTJrYjkluEoxdLbqAdirSmUJXIhQc
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262150-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B757CD71EC
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


