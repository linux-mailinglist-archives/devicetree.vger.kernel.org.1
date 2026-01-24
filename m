Return-Path: <devicetree+bounces-259146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEeCE9BKdGlu4QAAu9opvQ
	(envelope-from <devicetree+bounces-259146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:30:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BF57C7A5
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6DDDC3019CAF
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 04:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA72E25DAEA;
	Sat, 24 Jan 2026 04:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="UA+d6W4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EF021D3F6
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 04:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769228992; cv=none; b=ot6L9OaSwjPMz874P39XZePrBTqfXq67M9cvfxOG0GkoNzJfixjrPbHz4GDLFcl9YNSrH3YEuG74/nnCVCJeMZL2kcgMJuYsOGAEiPLZ2Myo/LwV6gErnHBJuCAxloQp7IYqkbB8VNnhUiPjNuo8ti5KFcQdGTWwYoxPC3nWLME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769228992; c=relaxed/simple;
	bh=VJ7ICvLmTJ1YvBpVw8h95hbtFUhM+sT895O3kbXFvvs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jAaZOt2eZsq4QpYjz3PedSzLrcAZuBaj5DC/k02FWEyRE9XMb3KnPAdDn+4vM4nt/hNB7isFea5lUh7WlCzxVn2iiZIUkzaxIHr9/RiYl5EJXR72RWZ6ydcaCImRVicyW9FXG5RHGh8d0O8iHIFsmSLELaoXS353Wp/mIK7lH68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=UA+d6W4g; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-81dab89f286so1481199b3a.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769228991; x=1769833791; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NyfRLNITYR+AOfB6dobWT67hhjvc5+SsVTabgpbO9i8=;
        b=UA+d6W4gklIKZybfP6vsb99GFNixP4Xt75h4c100mTDZjuL2FjYd+4QPqFo4YXW80R
         baSNNVCvJXKKdbK3EQc6tPA4pMDKoXTfkAobARsEB7PUUIOyVzMKYT5UnefwsDjKERdG
         StY5H2CK3+iSSTCFNeKYDjMnsLscdKXdJ30SG7rLWMiy10PoIgbvtG93npcuNbWO2FUT
         nqF1yTpu9CgCsbG/ZJiRibIeKMjSCZQBtvUrsyEY5Jr3+MyEWoNepc6lVzLFN40d9yZz
         YJNGn0uhBXSnEawKLdM2iwVmmX9iBoMmHTA/G3Hy2PXQkgXMPc0ui1Ont9JNGc87pR67
         Kxng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769228991; x=1769833791;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NyfRLNITYR+AOfB6dobWT67hhjvc5+SsVTabgpbO9i8=;
        b=KzVaEHHTh5CJdTk6rZemeEtJoNGG6o9dALZZG+mFDeel44fOUjzr1984qfI01Xksuk
         ShzcsAnTurvF+kKHhBCCo7+aYWvHBXxjImz3dmFJ2i7RDbHxcfQVS1ZgL9wBSu1HhB7Y
         AjhZ9KtpbPLYS1AzkJsL+rPTYh3GEo5hRAi0wd22had5dvP9V9R7a3UoZV4ysNqZoTwk
         7UbalIEWDjkJhBuMjB1vsZJk2UPf1HVSdE2sj44mG+JpBLSfUk4VkWPiyhQyIEWLQZdm
         dCbgZlOdSFwlLCQvItDBlofl/uuw5EEsGqtw04vnkSMZSQTboRLAcDTAkdmkMjoWyld/
         PUkw==
X-Forwarded-Encrypted: i=1; AJvYcCW7TuK+/i154sdhtsfojopk1EV+9J1KhJ1ZUYXf0/4OInMoVZRc9TOP7k2VnH7vOIy6PJorX7yErMpa@vger.kernel.org
X-Gm-Message-State: AOJu0YyzSsRUGVOoLoXg54dK9jxtukykifwArrpQ5RNBmukony78vAGt
	v04zx/nSLTh0uaeUV4e1Gkd99DPbjx1Pv8mrocmm0NUeM2++fzWw5kD+3/wiJ7jmHgQ=
X-Gm-Gg: AZuq6aJf7oa7nj1OyEae17JKHw7dUSJlcPFkyzkuJkkdpyBEkTP6zk/NBLi5PB/U6Sn
	oGoJ0CXPiWbgg3jeNnnZXDqDq6cm9c13D0Qj9JG0H0+I0uPRiT+jCnxYW0wGntAuVAKtlGwc99t
	6AU7JGtv6hSx+3bQIU7t0Rv58tGkiI8+bonolMIlBUM07A/oNUZoLkjg1N9wLxmzGJmRNHnDrmE
	ZrC8vvEx2jNS7BQly+gT41zjfCG8FGjF+/ftSg/csC6Rik1Ia7ZQR89mLl2EKKeaC6Bjwu/zfYR
	RZRkDs1I23j+gIBraGtPBUd3ASdY7V7C55DP15WIyeB5A9hPrBrgnd3OUCEL/NPe6wfT0GC4mjS
	6zg7fWy2/FGSnPHgSIimP4Ou5Mmz0+1WVwfcDAMx+XFjBdifWpXBlqbdQj+XmLTXoAfFFpB/tIO
	Iavdwz8w+OJzXWc9+6hqE33VsQKUXHjGE=
X-Received: by 2002:a05:6a00:f08:b0:81f:2b25:ca73 with SMTP id d2e1a72fcca58-82317e00e76mr4405493b3a.38.1769228990885;
        Fri, 23 Jan 2026 20:29:50 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231871d51esm3469423b3a.38.2026.01.23.20.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 20:29:50 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 24 Jan 2026 08:20:18 +0800
Subject: [PATCH v2 3/4] regulator: spacemit-p1: Update supply names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-spacemit-p1-v2-3-2c86b06694ba@riscstar.com>
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
In-Reply-To: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Yixun Lan <dlan@gentoo.org>, Alex Elder <elder@riscstar.com>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259146-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D1BF57C7A5
X-Rspamd-Action: no action

Update supply names to match the P1 PMIC's actual hardware pinout where
each buck has an individual VIN pin (vin1-vin6) and LDO groups have
dedicated input pins (aldoin, dldoin1, dldoin2).

The supply is a board design decision and should not be hardcoded to any
existing power source. This allows boards to specify their actual power
tree topology in devicetree.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: No change.
---
 drivers/regulator/spacemit-p1.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
index 2b585ba01a93..57e6e00a73fa 100644
--- a/drivers/regulator/spacemit-p1.c
+++ b/drivers/regulator/spacemit-p1.c
@@ -87,13 +87,16 @@ static const struct linear_range p1_ldo_ranges[] = {
 	}
 
 #define P1_BUCK_DESC(_n) \
-	P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_ranges)
+	P1_REG_DESC(BUCK, buck, _n, "vin" #_n, 0x47, BUCK_MASK, 255, p1_buck_ranges)
 
 #define P1_ALDO_DESC(_n) \
-	P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
+	P1_REG_DESC(ALDO, aldo, _n, "aldoin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
 
-#define P1_DLDO_DESC(_n) \
-	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_ranges)
+#define P1_DLDO1_DESC(_n) \
+	P1_REG_DESC(DLDO, dldo, _n, "dldoin1", 0x67, LDO_MASK, 128, p1_ldo_ranges)
+
+#define P1_DLDO2_DESC(_n) \
+	P1_REG_DESC(DLDO, dldo, _n, "dldoin2", 0x67, LDO_MASK, 128, p1_ldo_ranges)
 
 static const struct regulator_desc p1_regulator_desc[] = {
 	P1_BUCK_DESC(1),
@@ -108,13 +111,13 @@ static const struct regulator_desc p1_regulator_desc[] = {
 	P1_ALDO_DESC(3),
 	P1_ALDO_DESC(4),
 
-	P1_DLDO_DESC(1),
-	P1_DLDO_DESC(2),
-	P1_DLDO_DESC(3),
-	P1_DLDO_DESC(4),
-	P1_DLDO_DESC(5),
-	P1_DLDO_DESC(6),
-	P1_DLDO_DESC(7),
+	P1_DLDO1_DESC(1),
+	P1_DLDO1_DESC(2),
+	P1_DLDO1_DESC(3),
+	P1_DLDO1_DESC(4),
+	P1_DLDO2_DESC(5),
+	P1_DLDO2_DESC(6),
+	P1_DLDO2_DESC(7),
 };
 
 static int p1_regulator_probe(struct platform_device *pdev)

-- 
2.43.0


