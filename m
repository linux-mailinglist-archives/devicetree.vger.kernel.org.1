Return-Path: <devicetree+bounces-266853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAH7OHkcmGnp/wIAu9opvQ
	(envelope-from <devicetree+bounces-266853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:34:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4454C165B19
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:34:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A4273097D99
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8293370FE;
	Fri, 20 Feb 2026 08:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="GslRCv4C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEA5309DDC
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 08:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771576104; cv=none; b=pcC8I5RV1bzVRI4iWV6HcVBum28b4dSawbfWGKUWwmS94It/ZJPaj0numcN5DvlljfDkqkxBBTrkDCk5r3HtevDI/E6pDCCRir/7GDoqh1kOwiREOEYjDzn6Oz6+A8/y652DB7Lc/V67eNWrzF1PIn4KOq7LBmdJOvgCpAFwtfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771576104; c=relaxed/simple;
	bh=4GANKwuw4Gmvjt4yzo6mJduIJtLD4oH0IHu2XPGqRsA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n9QMb+nLnfBrXj0u+TXxM6A5yimua/MdlpPg+QxbdQeYshMA44bhQiwspyXm9PjfFncjdVt0Sb7LvzfrG5jB4nz/1VMZaKzXJJXwYF/mrJDQklrzNtyBhZSLU6RABbRJucZ1szu+jqwAv6tupyEH+E/ObKTaJjrjJpfgskRzn3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=GslRCv4C; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43638a3330dso1497363f8f.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 00:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771576100; x=1772180900; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mcr+ylFRvbVQSvo6VBml7OoEWOKRfpbvT57xdCCmX1Q=;
        b=GslRCv4CZ8IGt5sclvgYvqLmarB80+s//Jk0Y3cnG7PWV0d2JkFKuLm//TV4J0KXrW
         t0ycaUAh14Uq7i6k8PZBHglsDHaoKyBFdqjhA3VWjOSuSIxcLjHXrYYnmrn+PHmjiZ5U
         EyfcQh5qfTt4ls3duswSPDmoKsEQy7i61LhUCvsGMX2/6Wa/xrTxirVQlY2vVlNCA4NR
         XW+F4MwLA7QAtc484pJs5/zFTArKtBYO75wL8iSYIWaRTADIdvBi/H48fNNHLl80o+ra
         9IBElF8+Rtoe9EYO0NVGvfvHMnqL6shJfBmcbKbBfD9S2INU/wyIewQF9QyPWltkaVPO
         Eq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771576100; x=1772180900;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mcr+ylFRvbVQSvo6VBml7OoEWOKRfpbvT57xdCCmX1Q=;
        b=KVkI1hg/0pw4gZuHAOL+sYOKPEpqRUoXm8JHpLdGCAYOWTZ0gVotCHuH2zUEigDbch
         oY8SnU7CLF9TxHRe0J58Ub+kuB5BTB/af/P5wowgDoWF66FBIOH+J2l5P9Hmsg8EXQ8g
         4sAIPpg5jJipkpBPxYbZ7X0rd+VajHMaRUyoBKhsFc1NxhmvjPdp2Uq9O18JJC4jpK9s
         TGXG7cHul5r6G6+v+FHuuyxUHddQ6AMF5wz0fUiEgAyJiQy8+x9l30wgSfCIhiJAGXxW
         yjFsViN+45abXEZA50DaGyHftodNDD7yCZz9I+k5zYGDXud12i2NCiwU+7F9FzmtB9NA
         vwvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOGxyLZS42Y8tB3/akDBhPcI6qgtaKlbUvD+Qv9tYb/EX+Kk70Y7fn93f9ejTJBGsL6NfRgdR8JsG7@vger.kernel.org
X-Gm-Message-State: AOJu0YwN8bd3spk/pPmPArkiiLyGGwGSGHXxnWTenTtXZUZZUXpl7a39
	QEyKBmFanfe1u0M625gHoI/sN6yX9+Q4yKgHp0emE9rMjEEVkYPSaWaMf/KV5pugm2g=
X-Gm-Gg: AZuq6aLaEoC1ruSX1ytw8t2PJ1lBtuYJQFKTc1wg1/kBEdBvAVCjrJ4DS3rqQlgOlgJ
	+DBap7TQ9ut31qjf/kRT+YHCK+qsfxiFJoEbZrhVtEe9xKrRxsgqyIo9l78q3wvWVvDu87HNLUz
	76zc5uzAhlRkPSVODmu5fYYYsw/3SQPG0/VPP6O7e8tOMqJdrIp0Ej4vJ1iEOtSU5TeGz50Egej
	PQgjzCdY7rQYeTNKQ65M0Vhzf+aA0VZbHtzLD2+4ZHgWH3x5MCrzhbENGLutFr2TRae9sRg8HsS
	afSoV6RWwRmlJwBGZqi3NBhnuGk1mZ2CpsE8WHSbMsANbFfGjHRZoQIYYqMbGy0dnX1osh45+5B
	tQOQvrwbGPUdvk+fZafnUfA0mcL5XCZXltH+Fw5dlDUcYe0z2XIdGhB4VIN5j9OVmgpQVoxwp5S
	YJM7rLXqumyd/Igu86jysM
X-Received: by 2002:a05:6000:2001:b0:435:96ec:679e with SMTP id ffacd0b85a97d-4379db61cccmr37806593f8f.23.1771576099874;
        Fri, 20 Feb 2026 00:28:19 -0800 (PST)
Received: from [127.0.1.1] ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6c1bfsm54717688f8f.13.2026.02.20.00.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 00:28:19 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 20 Feb 2026 16:27:09 +0800
Subject: [PATCH 5/5] riscv: dts: sifive: fu740: Use correct PLIC compatible
 string
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-fu740-v1-5-c8af54130c58@sifive.com>
References: <20260220-fu740-v1-0-c8af54130c58@sifive.com>
In-Reply-To: <20260220-fu740-v1-0-c8af54130c58@sifive.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Thomas Gleixner <tglx@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Conor Dooley <conor@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Paul Walmsley <paul.walmsley@sifive.com>, Max Hsu <max.hsu@sifive.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1052; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=4GANKwuw4Gmvjt4yzo6mJduIJtLD4oH0IHu2XPGqRsA=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBpmBr8A5x0AN6WLq/BdWL/ZvvVR001n1rPKS373
 hQAgd5vgOmJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCaZga/AAKCRDSA/2dB3lA
 vUkOC/0emc5DX/XLv6NvlYCRNIsC14BaTvJqWzTvJMubMPLS86hHgd3FKQ7Uyb58051WiOLwAsz
 cZ5AXNu8PWhFfZ+5aMcENxul9NU7y/aIYoD/m7oTozg+qnQ/Auiuw+sA68uBPKrR+nloV55s2/4
 y4L0wfIX9asSx+Wx1H9rVEWCSt0F7vyAJw2ZPxe63ySqy5Xo94rukEpaYDcUb2eCyNT7bpjyiv4
 BWMESgWKFLD4SERy6CSScQ8HgNkc9cuYdPLH/28EmfXvLqeiZtlAfcCmFbdRQdUQcXCnTiw8IyU
 bHvBM5KnFqNqVI4WlO2dSppzOYM+1fUoyYNHls4yC0x3v7XZpkZUvvniJ+wfD2ySZ9SmdhwOSx9
 nlEe39EPyWVPTjorh6pmsmrTHzcdAhma1I3FuhiD4+WjzpcJYmH5mhmY4jIifqvSgffVzDRpohV
 99j6p2JFWXqHmVfIA9TtlV+Uai6/eMHYdklOUmBQQKzTSc1q0dMYAPOUoVbPxQ7Nurf7A=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266853-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.hsu@sifive.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sifive.com:mid,sifive.com:dkim,sifive.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,c000000:email]
X-Rspamd-Queue-Id: 4454C165B19
X-Rspamd-Action: no action

Update the PLIC compatible string from "sifive,fu540-c000-plic" to
"sifive,fu740-c000-plic" to comply with the SiFive IP versioning
scheme documented in sifive-blocks-ip-versioning.txt.

The versioning scheme requires SoC-specific compatible strings for
proper hardware identification.

Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
index 15e11a03582a..a44ccbf4822b 100644
--- a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
@@ -182,7 +182,7 @@ soc {
 		plic0: interrupt-controller@c000000 {
 			#interrupt-cells = <1>;
 			#address-cells = <0>;
-			compatible = "sifive,fu540-c000-plic", "sifive,plic-1.0.0";
+			compatible = "sifive,fu740-c000-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
 			riscv,ndev = <69>;
 			interrupt-controller;

-- 
2.43.0


