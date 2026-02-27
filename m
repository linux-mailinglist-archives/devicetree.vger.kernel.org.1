Return-Path: <devicetree+bounces-269088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mC3mHIREoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:15:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFB11B3AF3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7FDAF303136C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A35F9332607;
	Fri, 27 Feb 2026 07:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BZpfxDqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FCD31579B
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772176513; cv=none; b=D7orZu3yqvCgFDQ0dx0eGjwPZtWhM4UthaunvGXbp4SH1vhYZbJRJ+PbInUr2Hfk/VbD5/bBUooTKMttFKezqqxaVKP7jHvzs1lbb64ZF2w/vKBTIcDLYXGCQWCBWsGjioPm1BZfWeE7/clBFjnIF/oPONDv17chnkZ3ujtZpx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772176513; c=relaxed/simple;
	bh=/augY00zIPRmjio8jqvj1SCmtf+8/FE6pZ+zQ7AN0mI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C35e4iENkt31LVgLqUfEnNesckcZd32VwsBjkLp1luF6+1AoJI0QMQ7hYpmnZbRRwTqaZx5X+g2M1KHYzD9bB5yrLbRmetsf5fNiUmB04PONaDrL/Bs+k37xQdaQi7/QE7S573am9t7XHOgvTbBPLJ0hBNyu/TvZ+1k/nDqnl5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BZpfxDqx; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-65f73225f45so2948762a12.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 23:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772176510; x=1772781310; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PE+eVQ/Q4S/u1SH29EMKN7g0w+RRX3/eaSSvWEMkQE4=;
        b=BZpfxDqxQskupfXeSV3uxV1fqMm4Rfz8Qf1Y31jq15Y2wOhb9KEGkP9RY/m3XMxe0g
         19ycnh5/USh6CT7EUHrrNKsPjG/NeqGrADETztc4XyvjDqAzL6koQt5sz7aZSZPad7VU
         5ilLmhpR4LBxMR8XIdpdMAJL855mdTtTF7t2x3i1B2Yzl6pvq0kOJTr/unRahXL8VkXF
         RtVTVFZLKzZPkKB9Teiy+Ubk0Zqro7PGoTvDB9U1JgFWaspBGm57EcdizRPiqKpd/2vG
         eExJIJbhBxIpkkwPDN8R1Ot8etD4H90bGoUstH/nbjTCGYxa08LO9DIfkjD/EB5/9cfx
         NogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772176510; x=1772781310;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PE+eVQ/Q4S/u1SH29EMKN7g0w+RRX3/eaSSvWEMkQE4=;
        b=e+Rsf5G21kn0m6hBKTT8VBai64oBtMwS2JY2/T74jB+G5u7ca3c/JX+cWk/HC8zhl6
         NYCau5eY1rpTnlQ7vNZS8h2gEiPhio5u+4X50KiOm9qFv3yQLnIhcA7CCvHvdPe+iirj
         YPqdy/ue/8ljezJDl2lR9KIW3E8XMIl/DwHE9kaBfaWTDgtfkMT4Etp4fmXv+i6pjWsV
         GDUWx83b3oTUnC5M/wlbV2WG8MvvsAQEh+qtyAfCI4mOwEdbL9LedfL0PK4FJv4BiHIm
         VYDw3P31LVBO5CYJHXHflOei6ftJRalC3QemrXM+e3DJQaP7TGbbasKOVZVRS9bWyx00
         EGhA==
X-Forwarded-Encrypted: i=1; AJvYcCVK6mE6D0qEhBa3WxkP2cc65iEyvEEz+J7VuVVlVQFRXOIwewTZLvT+Aks2CJL7jk29ia+DwlM31p0b@vger.kernel.org
X-Gm-Message-State: AOJu0YxsKNFLfOEArgLox+6lVwTy4rHlqnubH9qsfEdPgFs9gOp2wtF1
	eAOjApIsYoxaJvCaGWVal+O6kNglt7YreM5em0ff1ITUQ3aFmnqmc2/cqeKicMl0gLo=
X-Gm-Gg: ATEYQzxnqyGw/6VAcjuE1NrazT9lD5TVi/JBpSfSuVddICwwTjKWzfCmcv2Q8U+/hVo
	tn+lwCLBs94uMguUZSjDJ6FERQZe61CDXzRTNnPq3g0VcD5Gq8l6nEqwJO7W6sf7RSvlvwshFAq
	39b4sIRaAcixJQJE2bYSByoRvjRmvi8QI4kOEcrVMxwaFCDaIuT55iXA9/WUifQ1qPBdV2BpChf
	KYtpoTa6rZrJI5CkSJKBaTFKPcGuzaEy8xAXxy8FBV2mDTg3W6TGJg7wldDSBvVjFw9XE+3aZt2
	QGSNmpGFKbCEA/80LGWxNwj/Bi8fMAaD7Drxqq602cSISLUGdQiMmf0bo4NNK2CNMuFGyr1Yegg
	fcTwH1p0mtgn7OgFjlcafOuvKvVWuclh9ePTNwYepYQq7sM1Qq5B1zuT3VZ+OH7bp1kDzxiXsPr
	sctKkJveJ+jrXOWsjWvTOeDHkGazIaSFhTJKoa2h/+ignUjQwb5GMVR2sWI0lNSaKWOIL5r1dwN
	xDMLkfBYJfhxwnsBA==
X-Received: by 2002:a17:906:209a:b0:b87:38e0:4403 with SMTP id a640c23a62f3a-b937654e1d9mr59219566b.40.1772176509910;
        Thu, 26 Feb 2026 23:15:09 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aeee867sm124205066b.66.2026.02.26.23.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 23:15:09 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Feb 2026 07:15:06 +0000
Subject: [PATCH v2 01/11] dt-bindings: power: supply: max17042: add support
 for max77759
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260227-max77759-fg-v2-1-e50be5f191f0@linaro.org>
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269088-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 1BFB11B3AF3
X-Rspamd-Action: no action

The Maxim MAX77759 is a companion PMIC intended for use in mobile
phones and tablets. It is used on Google Pixel 6 and 6 Pro (oriole and
raven). Amongst others, it contains a fuel gauge that is similar to the
ones supported by this binding.

The fuel gauge can measure battery charge and discharge current,
battery voltage, battery temperature, and the Type C connector's
temperature.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
index 14242de7fc08..055d1f2ee0ba 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
@@ -20,6 +20,7 @@ properties:
       - maxim,max17050
       - maxim,max17055
       - maxim,max77705-battery
+      - maxim,max77759-fg
       - maxim,max77849-battery
 
   reg:
@@ -28,7 +29,7 @@ properties:
   interrupts:
     maxItems: 1
     description: |
-      The ALRT pin, an open-drain interrupt.
+      The ALRT pin (or FG_INTB pin on MAX77759), an open-drain interrupt.
 
   maxim,rsns-microohm:
     $ref: /schemas/types.yaml#/definitions/uint32

-- 
2.53.0.473.g4a7958ca14-goog


