Return-Path: <devicetree+bounces-257403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIc2MD6HcGlaYQAAu9opvQ
	(envelope-from <devicetree+bounces-257403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:58:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A46C5324A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CBF6080C688
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F0843634C;
	Tue, 20 Jan 2026 12:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gjC5Rwm9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83468428820
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913563; cv=none; b=BGRyY7yOdk/iup1p1pdWs8pzSaCzAVnNYPNrRN4by+Iw7j5ZShMEdpipsIsZJH7LO5Znk3OUOFfVynkjT3Em2j5cd9kLlv1i3kuHRPPW/ahEwJY04233pTB5vYopFNIWrT6hYO6SOHh9q4ql3+yUp9+IulG9ZT5PuQoljsp5Tjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913563; c=relaxed/simple;
	bh=XZ2bJVtApcunkQJ+ZcmoYT6hY8nmcZSiai50sivYXco=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UnOIAYtZRqd99ugJYSfnJcM10E5HZuw0tOqaLAFtHL/t/6ooyEQvgoExS75LBKgSSb2IQaGi8rwlqMjrQ4LR1JmpJ7tP40yoH7tdgEcqu8vkFoLmU0CLCPtVwgqK/5i0eC7KZw62p4g0orUA4srD4WN6TWkWkkQCDFmKcX4yhbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gjC5Rwm9; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b86f69bbe60so831722766b.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913558; x=1769518358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hVwkPEr3F26ihv8o6A6abL1apqiuDiV/AwZGXoykHlA=;
        b=gjC5Rwm90ttyyiFQ5K4K+L9GTZ7G3O5UaYDDOVMKyabwEpHe4nEB+4fCLSUJdDz4gV
         aQLXIjr023G0Anj3qP4GpBmKBVZ49YcM39vGURiQaeMw8jufCUPPLlBL2d5K3XkHJ1QB
         C1T55YX3nlcfhpXXmyyFnm+6GnTxz+pallkYulWu5FelzaM0tbOJwZNoxgkzFifpB472
         XF0q496t1K78nVu3LkukijINB4uAwBUwb3Ov6dM+3M10DxrB0o6KFRWTDZrOkr1K7tCS
         im+DKtcizdk+p3C23UO5u9ZLJGiPr6grPn/eN8v6SWDBmNajm0kdK1IKLBx+ssvf5RxD
         C2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913558; x=1769518358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hVwkPEr3F26ihv8o6A6abL1apqiuDiV/AwZGXoykHlA=;
        b=POLAGrA78Nzt7kL7xtGXq3qk5jk/u1+6XxY9TyzWj9DO0ou0XMI9e7szw/3jW5txj+
         j9a+lP9wkQPPi8btqXDA23pnMjmDmleZAIstqRHwj8hrlyLPg+CrmoQNTnwYX21EjxFa
         dPvXT8MTrpYdUaonJ2tnOjBz8tWmEwO18OA+ygGKCjNkarMM1g8YGr1Fe3Qja4fwJ683
         YotfQy+7Cuqz58M52raKrfLBWyljA4YDLqiVxmaPFXwoV0hcHfl3IheZAcWU+drVYL8N
         g2gLkwAhSvJS5MRNBjfsKmL1TYbaAQp2mYlnYA2EfQEN4LnaOk25qkbSUzvgaldwWeor
         odLg==
X-Forwarded-Encrypted: i=1; AJvYcCU96xsKYpjlpxNgFSPME/WFuEcSqNLZpDdUF4WjTP3cG1AyhiE+Qwqqydcqf77Tvjg8O4gHzyqhPpwy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9aW3DmRizFeheh+e+zUrzYxG61dygXyY4TmZbLjB9CZCgjMAc
	M+IqWPKWQpiF0yOjXanEtTkXgJd1Z8Rko6MACAUDb0WQTXzyTDLi9Dug
X-Gm-Gg: AZuq6aIMSSTrteMQL5eCRpodC1g83NHTWg6hCsZqMvFMw5H147HdATtzVrHsNrGgQGA
	br6B8s8r2dH1GpOtDzxfDTceF5MCEXU84UqTlEb3xheUdRcEqjVCSbhqTMGgLWmzFTzvUv+/40Y
	TupUFmuLy9hFP4KVj/92ScHmU04b7yTxkT92fwctyclcHB0gFqndfSRs+soPuSoU0BitEBfSgCD
	urpnqPYe5hS/1rIUDB+OkUkP/EZ9zSS8Iljue0danF5Zhq/Sk2b2GUEpa32M1o6JDhIAu8RpH06
	SKuyD8kf3W3iHmuOeM39Aw0UBmHFxJkFNg9ocLbdeBYDzyncPo5LoXQFRtJnNyuP9aUCi3FB2q7
	HoaFgqdh6DCBYTzTjyJEK9O39I0jY/xfjjnIvY8rLZgIU7ckmwizeyg4TV8pmS3QB8LEda6Omte
	9I3RKzZxRRbVTuZX1Hs1o1a5ck/mLaF0HBgUw=
X-Received: by 2002:a17:906:478f:b0:b84:2023:8fb2 with SMTP id a640c23a62f3a-b87968b6ad2mr1127034566b.5.1768913558253;
        Tue, 20 Jan 2026 04:52:38 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:c8c7:2ef6:8ac5:5556])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959ca32esm1420626066b.41.2026.01.20.04.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:52:38 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 05/12] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Document RZ/G3L SoC
Date: Tue, 20 Jan 2026 12:52:16 +0000
Message-ID: <20260120125232.349708-6-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
References: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-257403-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,bp.renesas.com:mid,renesas.com:email]
X-Rspamd-Queue-Id: 4A46C5324A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Document RZ/G3L (R9A08G046) SYSC bindings. The SYSC block found on the
RZ/G3L SoC is similar to the one found on the RZ/G3S.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 .../devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
index 4386b2c3fa4d..94ae72eb8fb6 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
@@ -24,6 +24,7 @@ properties:
       - renesas,r9a07g044-sysc # RZ/G2{L,LC}
       - renesas,r9a07g054-sysc # RZ/V2L
       - renesas,r9a08g045-sysc # RZ/G3S
+      - renesas,r9a08g046-sysc # RZ/G3L
 
   reg:
     maxItems: 1
-- 
2.43.0


