Return-Path: <devicetree+bounces-263482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFA+D2EvhmkTKQQAu9opvQ
	(envelope-from <devicetree+bounces-263482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E37101AD2
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75B953019517
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 18:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6408F426D33;
	Fri,  6 Feb 2026 18:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fbh/6rf/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F279425CFF
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 18:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770401626; cv=none; b=Qw2kAUOXwDXhtn1sBufoQNkXj2AGhX7xTQR/6Ll87DJWn7amKVx2Xo/KTluYu/ULfUBvXDux6gFhDizjukERbtBpF/Y73h+ybQIqDpyTkB4kWyMJVm61FYKFrI0MuGMM4R9xBMlgSApJTdRVZq81LRLYlkVb6xkZ0LiXrIFGhkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770401626; c=relaxed/simple;
	bh=w6ja4XqPdnEZGAzC1U073dbvIZyVKdxaIJOqrcGQjts=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZF1i8lNhL/p6SGDElqlRDpC++No8sW7yQqDJF8+DS+gGwUQjJQJeOuLC/5DZ77ACXg6HP00ZXee/CNaykTR/gZ7SB2mqrtOeFVdxPvORv0DIAqvPFk0kF0b7UMtfkqX9y5c2GMrNcgRbaDHFV0SUUy5i9me2uKMr0svw+cK8JPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fbh/6rf/; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b73112ab62so967521eec.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401625; x=1771006425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y3hTTn8/BfH12xfKx3d1mYZAsZyDm33o8jMO2oagM94=;
        b=fbh/6rf/GHzxhyqp0DUEtC9M++4BTmm2moJvF0QRtrnK339CgFbi2p9kBaeYnPBLrk
         nrWdmru+a6rKH0wVcO2SXy2NSmlhlYEYS0IWxX9QWO3PEkAspjyip0Dbl8847yoh8gZP
         JY4jlTOrFKctvDJaHhlFBTFvOU+cJf9iJMn7EuuOf/gFJt8oZNog+Z04gA2Btmy0+g0+
         bPS/mRMaicezNqHwRvE/Il/SMMaosgH7haw63xry/eVnnq3k2eUpWQ68/3aMmgkTv8z8
         NPiCU4dqp9AgrEZq/knL0okGd6ohdiBS/aOo3bZ+ijys5Fa7oxE6kfFbnooixr3EH0Z3
         9GQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401625; x=1771006425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y3hTTn8/BfH12xfKx3d1mYZAsZyDm33o8jMO2oagM94=;
        b=H/pEEs28kUHYMpPgSywnF8KEzBJ0P/3LyesvYztN1gPY0Ok2xLpoxMziYp82yGY/Su
         8hkRWl72vAFrnD1OAUAZWLiQyEBGfCq3f4FWXZGl51iMBc+B9Ao/fnl9XmoDh66D29ZR
         V66UWx+UzWF7pMb5c1SlO6EEsFVubbhvaKBEdVEpoigicPCpzxTP4jt7mKuRvBmwOB73
         rw10wfT1CyiYNjz/FXiKTm2PKKw887OA1xlNuPn6z4s7n9Ni/iR1Kdr2uhWqvAOeeMnT
         3fjyoT3GwL/i2S8QkBOhgNFNuZAw9DjnuggU8R6mC5cuSb4voCZ1KG7u9Rj1YIlpBUDZ
         Xa4w==
X-Forwarded-Encrypted: i=1; AJvYcCWNkBhMcfQ9pKZvniauujNQ8fPglr2sPO6P5EnKO2gOQU+e7pD4tU3/9pYbc0VyXWcmI4ARLik/eco6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl7zFAxFDug151Eh8MbLL9OCTqCtUpRmjDg0ZByWUDY9fK6BU8
	d6ShG0Xh1TU6hglrdRdA8OFuRtAavuOPZiE+qj1D+aq+qHv0bB/i/OE3
X-Gm-Gg: AZuq6aJ/ee0Llv/3Zs8mxvCCwY8wzbSJjgHOqHGBb+nqW58iDm2JR4V1Crvpq0JSEPR
	UoCEXp0sgn4ZYeQo2fTKutC6CK705PFnQfo1Kk2X7ogm19Z3z70B343xQhl515vAu5UHD0muY2Y
	1a6LxQ3DyYaHvhPwAAvNbUgGKMhfrAQOWJrtLf0QPFazD9OeSWaadXsLJOY6OWwYb3c4ylXetJ5
	cGw3RMPBUz4TnZdzlJzSdfwclsUTuEUQOIeQWynHL/IpVg80Ku4G8gxjx4YuCC9p6LPk0O8j5ld
	YtHlX6z9ddfgL/8/kYRNJtHfubldVpmo5qpkJRVzqE2iOh09/etH3Umc1ywrIMDZ/wzuKyKfc82
	Wo2oqvPzTPSLZf/93JKsoAkM4Py8X06nj3gxonHP7dt4cAE6vYAoaC/CWGYWMtdtpiZwufH6PgP
	dSAAbqbhnM0qzMXb7jQLDA/fEy
X-Received: by 2002:a05:693c:3016:b0:2b7:3678:2d2f with SMTP id 5a478bee46e88-2b85683deabmr1506556eec.29.1770401625405;
        Fri, 06 Feb 2026 10:13:45 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:44 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 08/11] dt-bindings: soc: rockchip: Add RV1103B IOC and GRF entries
Date: Fri,  6 Feb 2026 15:13:06 -0300
Message-Id: <20260206181309.2696095-9-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263482-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D0E37101AD2
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

The "General Register Files" provide additional setting bits
outside the regular IP block register space and it is accessed via syscon.

Document the RV1103B IOC and GRF compatible strings.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..9ad7a60c659d 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
-- 
2.34.1


