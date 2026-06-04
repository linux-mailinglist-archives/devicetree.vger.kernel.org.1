Return-Path: <devicetree+bounces-306925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kJqkEcWQIWoBJAEAu9opvQ
	(envelope-from <devicetree+bounces-306925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:50:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D17E641103
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:50:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=B9ULWCpd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306925-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306925-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 119DB30FF578
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 14:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C278E480DE6;
	Thu,  4 Jun 2026 14:41:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F86480DC9
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 14:41:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780584068; cv=none; b=HhNIFHUdDbYMie8JrzuI2VDUQowMIIuSwOP6h/gdXnv3M90LCS6gskr4AOrnleG749B8kcCTpe1wdX4EmF/8PoWlDBQhUuODJk0vXtbqUslrPvII7BUavFJTvuWvX2s4FcNagJ1Cc2ZSNb61etnceD1fMJgDKTIis+3JwHGjmtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780584068; c=relaxed/simple;
	bh=1OzoCOim9hDEsqvWDijFcESv/493hyD2MItA98ME7aE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GGkKF5Qq4QaMaYdmvLncwa0Hfo5zJ14pnoiXEoNLGX/DD/3d+Cat5vkz9Mm25jk360qt3614MvLDyTNaQ6bb9KgEj0KFZdtdyYlrSCc55e7w5Q8PW7ofV9u30/FGL+5YBVIaF6raVTfy7ZcSXlkSBa+6C9gmEdY8hoZvQ2Kf5f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jms.id.au; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B9ULWCpd; arc=none smtp.client-ip=209.85.210.169
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-8423efad617so435580b3a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 07:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780584067; x=1781188867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WDorL60asuHDMnzOwb71UWK65drm8fFQ5Mbke9tzKcU=;
        b=B9ULWCpd+hPvBSSAsODIgp0WrASYNLJGJMjQEBysh6p66Vvm4jIFp5UxalM7yCoC/2
         QqZNTjYc0Y8GZ+Bmnx1xboqYvvuKc6SfVooinEnDvAlsyeQGyOBXYBblSHzK+9S8IfpH
         sb8Y6uf5Ek6IMLXlojgYwylBIm1ZKRoMM0ho8OOVUU76tHeyt5UOXj6PnNqdjl9MEDlS
         V7KMGihbv05ePH2OsgxsBQUJL8DuJGFCp1u+frZUkVpc6syF6QXgKkrXf5LPtjFlEMHd
         S4SijYQjeczeT4iicAUD+6kC1L+xm6CrbrZ8IgN6903awKWilimCY4+zPbUJQnOsj4BV
         3a2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780584067; x=1781188867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WDorL60asuHDMnzOwb71UWK65drm8fFQ5Mbke9tzKcU=;
        b=Ux3gadiJNCo3yp5SQqVxU6xjSQJfsPuVZTsvjnTU4WKFbI770DhwVm276s4G85YyBD
         RHrCFopvxJA2xSJBq88w5R/32YKcgno2NhLgsPWk3pg8kBX2bksusYAzEpXw4IUDzK5c
         NYCEugo53NmPTqKxQW4ff+ZhtzIZS09lB+hdEvLRt7/HtFZkNzaqbUTezQICvnIEoC5M
         tjDKwwHYBHqz1cKDF2jB2NZTFTPgwEGcSe24ophrbGRaHokY0lffdUEwMYB4oQTXlhj+
         tAXpIyKyMjKivC1NxmrqRkVC6fapbiVCIYObbMXXP4kTP4h5jaQuixRiSnkjI8mAsXHW
         2KBA==
X-Forwarded-Encrypted: i=1; AFNElJ+en8fPvayDElXbS1Oc60g0ma3Wadj2jRvA8dARBWI/R3p9eRxaXq2RKk8Tf8uSK76hi5GvOuD4Mkfs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx66d3oZE9lmImDV069mKIr3z2xnCqK7CJ1IXDxnCRBI3gVS6ZW
	/lxnRUEZkkMtioKG046AF8A8QLd4i233+ay3SAtZ1ewXfbFspRAk/1Kd
X-Gm-Gg: Acq92OHxkWZc+je3SPDAy5kHOiPn/XzobBTUW5BwL+/mJO1RxX2/IMPk3f42iQB7y+V
	9aKI1UO+mXA14aKlkdSL8jPbcTp7n2F2n1IaKzC19xOJVDEud+TZXQZHmoMVUMcyE7gF7X2O/yY
	m81U1YYu9QZ0FvczoCoV+lZPjlCaf2N4KQ9W6K3crwrRtW39co/b4i0MbY8BIV+CGW+FbjG8rST
	Ed+53C/LFnC7lkrr9v9JjcR60rMbFVMZuve0q0l4NPe8pvik//tBxegQvWkkibbnZSIz2CEOnBr
	CMdhVDBwwZaXIyTz0tiIJqRFK5s/INjbwah5ImS7+8XQ9QUHo7iq1nX08jzjfB04SNeyNnRxkUF
	koDSZbC13rRVdTUmg/KskFDawC5YC8RgvjfWLfMQyfbOU3U+Or6P9XbWGh6QicxAOxRQ0ExcWIu
	k/C+vm6kfzAAHBFN1DtvSyBkXXOGfVfYSPW5Nzz/gQ5meK+y6sLJVJL/D5J7KRHx9Nyheay+LNY
	3n/ZSviAVwBpCO9rGGvcSMft0txfj/4ZimLpBYrWcOksYS7iczxyNtnT//+rBUH
X-Received: by 2002:a05:6a00:bb01:b0:842:6004:3fd9 with SMTP id d2e1a72fcca58-84284e95621mr8345153b3a.29.1780584066763;
        Thu, 04 Jun 2026 07:41:06 -0700 (PDT)
Received: from donnager-debian.. ([45.124.203.15])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282372868sm7279753b3a.17.2026.06.04.07.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 07:41:06 -0700 (PDT)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From: Joel Stanley <joel@jms.id.au>
To: Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>
Cc: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
	Anup Patel <anup@brainfault.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>,
	Drew Fustini <fustini@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/7] dt-bindings: riscv: cpus: Add Tenstorrent Ascalon
Date: Fri,  5 Jun 2026 00:09:49 +0930
Message-ID: <20260604143957.668047-4-joel@jms.id.au>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260604143957.668047-1-joel@jms.id.au>
References: <20260604143957.668047-1-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306925-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[joel@jms.id.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:asrinivasan@oss.tenstorrent.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[jms.id.au];
	FREEMAIL_CC(0.00)[oss.tenstorrent.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joel@jms.id.au,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,jms.id.au:mid,jms.id.au:from_mime,jms.id.au:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D17E641103

Add Tenstorrent Ascalon microarchitecture and the Tenstorrent Ascalon-XG
core.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 5feeb2203050..2a57bd14569e 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -75,6 +75,11 @@ properties:
               - sifive,x280
           - const: sifive,rocket0
           - const: riscv
+      - items:
+          - enum:
+              - tenstorrent,ascalon-xg
+          - const: tenstorrent,ascalon
+          - const: riscv
       - const: riscv    # Simulator only
     description:
       Identifies that the hart uses the RISC-V instruction set
-- 
2.47.3


