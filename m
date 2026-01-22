Return-Path: <devicetree+bounces-258488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNijD8ZJcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:01:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D85E69659
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:01:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A584D3006B23
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5786449EC8;
	Thu, 22 Jan 2026 15:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KdBn/v6E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ECD3D3005
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096620; cv=none; b=NTc2stz+Y0o72pCyMaewEE9IWkIeYTf1Vd/jh4dcbvMYxPUDGsvM+ockM25Ww+j6wMT/ih7Q3Nqghsaqgh+z7u0Piop9bvatcKS0Gw+kbZhTmkjpssi2d+KUsvtjajqroR+ToRd5OrsRpB5oBGiCTRpL9HdVjPrOHTO4ey1gCuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096620; c=relaxed/simple;
	bh=sXR9KtyAp4dsOisRc5Qon6HKDNpy4djntDCBxqC+GI4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mXmbuS1anZ3QQXqOWNVkTpdZWL1T5bomG73mmnHgRcveVw9KKbtnPq6Lc1OEKxduPWSSPguSDuASsrnaJVEyHDcPWY1SyrdbNWTAXCW+5AONAnvlUz7d6UjRSsSoYMUAbAxjSvDXgxIFim+htbN/YkgK1FZZ9HKnO9usdy1j4/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KdBn/v6E; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so1602399a12.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769096614; x=1769701414; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ae68cN22St48fgKU3R1GMDois55LwnfaO6xzCLCshFk=;
        b=KdBn/v6EqIeTCV0UdT9q+AgE02o4VVKrv7hKTsCcR2+tdPqPL+Hb4sxDWGxzCSjp8R
         qw6glICslciKi8oq27QwqFUJzDyKlCyHPgjyhU/cpGgU885YZho+ihVUE1LX7Bby7UTl
         Ojbp1F/OT7aeS6nQROqPHGxxo7Px3wGaKurkAanJIGrjMQQ1Ksw+ZmhKE4n9oRwZpcHJ
         ERuSKPTdFasnuLuzBSfvLjAGyRk4NOQSLNg44gJtcSxm+Ez4JPB/3U53neg0C3JvuUQ6
         +oJ6yGygMOtJDZtr4Mi6qVLNP8QbJqyUaTWUVewpV7ztN4svxkOkvQBJB3cs1CgjDg9S
         k0Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769096614; x=1769701414;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ae68cN22St48fgKU3R1GMDois55LwnfaO6xzCLCshFk=;
        b=YI/kphtagJmxV3XjwG5NTpom3pLQn+ItNa71AQ9LtKMhD8XBD91DMe0nu3zVnkVyFd
         k52VuLd26/6dcwnOky7XUApbrIJ52xxjAfvzAn9ZHn4dT3jdCbHa9roJQcpz999hr+xK
         YmRYJwiqGPbXcg3/q5WXQOJPyr8e5y6GX50tXr/WmhvKJlHDeqPHCJlNHHwxpQshv7fi
         jALIleJ/FY1t6erSXZ1UdsB5v5O2e9m1KfaS+LkoS6jIq7SNHS1ALESj+NrwJyESvnNl
         lYGLMqIw4VdF4v6yDiiRb7lPV7UeRtLrF7XDR86X4U8d150yuR2+dvvt+qTs3So+/yD0
         VVHg==
X-Forwarded-Encrypted: i=1; AJvYcCVuia7HrVyq2OctLpSNjoXVguqYbbOYze7f4d4ckOML3h1DLjUzukCE0su+fRIJpcBf0j9FfF1GXgvD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1GZf6m3UL03qtQp7Kw46znYNr3rL9Fv07zz2yqqT5cB6jzKv0
	3RTs1R9yKfWM1Ls5FtgeJ3PVQYR+d9VaO1dZwgt9fRdOhyodhAhL7kZ/I3nnEmh1qvY=
X-Gm-Gg: AZuq6aI7g0JWpaGWAOMkb3LquuDb22CtjIK5JgbRVUpVrJ1JqfuOu8VK4/l06diQfC/
	Hb1LgxYUx5P6Xomra8NhgpHTlcSnVrkytBgg5138/WcH4JFqP8j6Eiz6FrHDRDPs1dav8My9bYJ
	vS4OID1RmJEe/X9dVxZxKCGDX2yvn73q6gwmbWFBo/2uv0pp1zcqvy2KFP9oLMbJNxXdmHqHhB4
	vpvKpZADFIX9cHu9jP8RFdHH0iv23EnpQKFgYFxn8mXVMempC5DsFrhkvwJ3sufwhmVuHqqyEDB
	1ejzX5FS03aa6E/MMIebFGDrRajg18enlBwaaBVK/gYJRB8xC7IZsUT3wTSFUqsndeau6vbgPpH
	YXuF6AmW8f1T27DCuVDBaRLEc6bF2wTH0Efm6p5bV3XFgiiwWb2BTQW/2RipPcpGJoBKwOieJXx
	xyPn/0Hb9ruGCHi9Miy+KOyNFqnqTLIcueVZ5RvjwIqjwvMzFWuFPFUlNdib09DkWOam9g59NXb
	vgcMC+GWkzMSMHw
X-Received: by 2002:a05:6402:27d2:b0:655:ad4d:66a2 with SMTP id 4fb4d7f45d1cf-6584874b756mr38972a12.1.1769096614097;
        Thu, 22 Jan 2026 07:43:34 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm16334363a12.31.2026.01.22.07.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:43:33 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 22 Jan 2026 15:43:28 +0000
Subject: [PATCH v7 01/20] dt-bindings: firmware: google,gs101-acpm-ipc:
 convert regulators to lowercase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260122-s2mpg1x-regulators-v7-1-3b1f9831fffd@linaro.org>
References: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
In-Reply-To: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258488-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9D85E69659
X-Rspamd-Action: no action

Using lowercase for the buck and ldo nodenames is preferred, as
evidenced e.g. in [1].

Convert the example here to lowercase before we add any bindings
describing the s2mpg1x regulators that will enforce the spelling.

Link: https://lore.kernel.org/all/20250223-mysterious-infrared-civet-e5bcbf@krzk-bin/ [1]
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index d3bca6088d128485618bb2b538ed8596b4ba14f0..4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -75,7 +75,7 @@ examples:
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
             regulators {
-                LDO1 {
+                ldo1m {
                     regulator-name = "vdd_ldo1";
                     regulator-min-microvolt = <700000>;
                     regulator-max-microvolt = <1300000>;
@@ -84,7 +84,7 @@ examples:
 
                 // ...
 
-                BUCK1 {
+                buck8m {
                     regulator-name = "vdd_mif";
                     regulator-min-microvolt = <450000>;
                     regulator-max-microvolt = <1300000>;

-- 
2.52.0.457.g6b5491de43-goog


