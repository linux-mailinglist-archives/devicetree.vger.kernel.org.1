Return-Path: <devicetree+bounces-259466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCr3LXFMd2msdwEAu9opvQ
	(envelope-from <devicetree+bounces-259466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:13:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF208788C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:13:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D894730166EB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306B4331238;
	Mon, 26 Jan 2026 11:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QGzz1LkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01F0329E4B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769426024; cv=none; b=RnYiqRihKQMuzYQvXBqC4cOELp1c/C2kGND+8mBLmaZvTRQvKilW9NzIggbTB6LX+ctmwOT1wqLbmgu32IrdD0m65f3mGLwF6tLu1iVbuCyVf2oyqwIJ7tH2c7JyPBvt1FZjEmdgEJRApxOJb+3VcHfgBEb8dgZPGcGhL4P8xOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769426024; c=relaxed/simple;
	bh=FX+u7dLDurNlxOccyfrLQ21pHfY2VWLGsQf174i4Ot4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ibNPnncDrvuYz9NcN6yyMq1tIY3aVk4S2nvbFqbJ1qglBgjrAb/OnX9RxWDq9p1NruatEMwk1fBa2J0izwUNVmHPkuqporL0OtRqVUQto9OT1/dgDNFDj3JxCmGOneJXrdyJIAicWu3wPCwBhhCt/g7pidQGph3LmYBXC4Tp+x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QGzz1LkK; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-8217f2ad01eso3782733b3a.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 03:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769426022; x=1770030822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yjrX7lfZ60gmKC1KhjPLhFh8kl1ZoOz3IaYZdZMcIfo=;
        b=QGzz1LkK7DMWDiSlpFy2DQpSIQz+3ywcFCFvNwHk6GGvqp1jeoW2rEPO2gBrclB5bM
         wsQ3VMi6c75cwm54p1EFkPvMaCcQeARVhXPDOy61//9R2WDpzc+9z5ty6OKALZfVZo4x
         NszeW3LHEsfRv3p4cN39FnI5qrNoU3uVTjhBLEja1rPullZbuC0WTR8Tgm5p8CNrS1hT
         4HVXrK1JC1u8vYbtLHPbHv5boWDQa0DDY/lC7q6brnPMhi+hhgzL0vvmIxd5AiHWy+U1
         0iABWjI5KibJM3rBjQhXPX0GDjQV8v3JoevhwjIJW//+Yyq+KeeAPV4BPsluIulUefI9
         1Fgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769426022; x=1770030822;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yjrX7lfZ60gmKC1KhjPLhFh8kl1ZoOz3IaYZdZMcIfo=;
        b=EZhzmSe0MwPx7VfrVyEqGF4wTAT0eKjIRFSpSk90jVjObPBJ2PLkE4ORBJiBnptGl9
         50VorL38gLBhwE07o2/pIhnab0iYnY2oZ5SpjVz1qluxU3VWM8mCyXYdQDEQVvNNmEQK
         gaRpDe5V0HVB+Vd8HRCrCW8QZEXV+iCdv3wm9iU6E22MOhcTwWYt7oX0XKZcgR94JzDG
         27bYsf0cC/bV/LiO0Ek+9s+Eiy3FSrhsm2/ctCgC+WvSWWlAQZ6liDX78ImJztMIhnVG
         CYDglTU2wpsH8h2/j4c4/NxnaKNvCfLSq4y0eCxphNzuVdlcv+oLRkXAAn1EBVEheBzA
         rlJw==
X-Forwarded-Encrypted: i=1; AJvYcCU+ybO0D//qJBGPiXpG2ZknMw15RmlmmZLzfISfdAo/a97YRltMTa8QHpkNUlQWZHIXtC5LNSbg98ui@vger.kernel.org
X-Gm-Message-State: AOJu0Yylw3J0x8qZ5CMOl7rprZ3v34E+4JOwWWAkJe88t1tOhYnhxcWG
	yC08qRbNkIBTcYDG8gwaGB4Aa2nMvrDocHxOHyLYwy0S/FM25/HubLJ2
X-Gm-Gg: AZuq6aJ4mkhtUgpVucXW7sxJQE11fC7f6dO+sehV8YsBBeY5DtkgeQJj6+IKYjBqTUN
	ef3GL5oYTYX2Zfv82at+hkm7c/sQc+puUHDwyFZYhRJXMUjq+M9A4UV+aDpWRrHgfIaBMSf4g6g
	71RCQee4lDavZHyoA5Fbxn+IAzX6D1t9vtmO/guYnvRyibXC2wjO841trYKjxmkYU2jjrrzfbi5
	H2LfrJs2crCiTqochPN1N08lHGAE4ZCVDtj4aEU0cv4INFIOVgyuGTMia4lIctVsVuwJ/PgUefQ
	MNV6ysj+98L6ekVqoyJtDWKpMl3b4U6VnqW/Qo8u8fbuyN7czj98M6NX/7lX/Ww0ql9Kg2UzknN
	2/MLBvxjeTMdS4L07QoHzRy98eITQ+9MLCxIosKGNN8uSpl6pnHQCW0y246YuGQy8OIMNAjlRTB
	JrYjb5pkbmWeZdPMN35w8=
X-Received: by 2002:a05:6a00:218c:b0:821:afd6:c6e5 with SMTP id d2e1a72fcca58-823411d83c8mr3791919b3a.5.1769426022198;
        Mon, 26 Jan 2026 03:13:42 -0800 (PST)
Received: from soham-laptop.. ([103.182.158.110])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231873e903sm9068178b3a.51.2026.01.26.03.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 03:13:41 -0800 (PST)
From: Soham Metha <sohammetha01@gmail.com>
To: linux-kernel-mentees@lists.linuxfoundation.org
Cc: shuah@kernel.org,
	skhan@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	Soham Metha <sohammetha01@gmail.com>,
	Support Opensource <support.opensource@diasemi.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] docs: bindings: da9055: fix dead link to codec binding
Date: Mon, 26 Jan 2026 16:43:09 +0530
Message-Id: <20260126111309.22097-1-sohammetha01@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,vger.kernel.org,gmail.com,diasemi.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259466-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sohammetha01@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1EF208788C
X-Rspamd-Action: no action

The simple audio codec bindings were consolidated into
trivial-codec.yaml by commit 4acbfcf11cbe ("ASoC: dt-bindings:
consolidate simple audio codec to trivial-codec.yaml").

Update the DA9055 binding documentation to reference the new
trivial-codec.yaml location.

Signed-off-by: Soham Metha <sohammetha01@gmail.com>
---
 Documentation/devicetree/bindings/mfd/da9055.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/da9055.txt b/Documentation/devicetree/bindings/mfd/da9055.txt
index 131a53283e17..d3099bf56002 100644
--- a/Documentation/devicetree/bindings/mfd/da9055.txt
+++ b/Documentation/devicetree/bindings/mfd/da9055.txt
@@ -15,7 +15,7 @@ The CODEC device in DA9055 has a separate, configurable I2C address and so
 is instantiated separately from the PMIC.
 
 For details on accompanying CODEC I2C device, see the following:
-Documentation/devicetree/bindings/sound/da9055.txt
+Documentation/devicetree/bindings/sound/trivial-codec.yaml
 
 ======
 
-- 
2.34.1


