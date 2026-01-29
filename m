Return-Path: <devicetree+bounces-260818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIhwKrgze2lJCQIAu9opvQ
	(envelope-from <devicetree+bounces-260818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:17:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A0BAE7AC
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E27D0300BE3D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550373815C3;
	Thu, 29 Jan 2026 10:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B5ytokqH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22703385B6
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681821; cv=none; b=fLbVivqcmK8JZGIZNyIV4Rz/8GBCO4p5At3C1Gkx0UQO/fZxLspc0xDTD/+2td2l5qwqDJrsQ303gU4FXZ5vpc5ugHkhsobmHPR1xW7FH1zxIU3hR9Dp17mb2Y9Xxy//r4KE3h9N19Z+K5sPLrBLX8Wqgf4HpuZmKTbdXHgYVW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681821; c=relaxed/simple;
	bh=l53JAl1A5TRe2s7pqTepmBMNLndaNxM1i2f8fJ+CJTQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fW5WAGcrGIEQEsM98Hg+J0MGBUrDUnmoeev8yJMpGzfDdUG2fS7SljzXLKU+602RFL+q/+KHIi7aHeqpSr89PpPytKlg+8N0tNGq++FK2qOBOOJiQFOLXEC66FucmSEWK6Wrs5UcgdYbXHKgzCoNJ/Ys0wshv5ypHs/tzua2U6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B5ytokqH; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4806b43beb6so6029345e9.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769681816; x=1770286616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kt7uEiXTlV6e7nA3ca7sq5Y8eWxdpRVOenYUuxl1aik=;
        b=B5ytokqHOXE6HNDPinSMT5WL3E00A3POWmFiXns1tIzGFYxou8yfE9ypera1dWGU3b
         2JrbvoN8mlm7LJWiJnOurKJA3zIkNv3KxpbiWZ4hJRFsszkyLG2o3M6G88b6oj5QGFPJ
         PruwM0jJF/mM9vHnN9+L2WccsWnqpxzKDtFKCnqsIFzlW7VIYdx6Jc2A2hvHt9JkBQMC
         D8GEn352w4QfOrADzU2Y99uCSlhapdz+2OTxKt8A5JnNVxPZrLYC6sXWnMTMO13n/MNp
         Z8DBx5aSC4FYjiKj4cJESGfpkii1fhiw8bTbfb9lTScPGLhQVNsPs34g1v+iQRa34UAZ
         MDNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769681816; x=1770286616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Kt7uEiXTlV6e7nA3ca7sq5Y8eWxdpRVOenYUuxl1aik=;
        b=RhANmsuchRSIeVJiux3neyINL4t3xg87/zLTv/fwYDABZoNMw1Qa3m4vWCfD9OJFLe
         frjYS6zUFRby3ijVdUGXrH4h+rzL4Kr5Z/Rr+Ju0fpVs/QRL7Rrtj4SJV3UTo5bZ8w/J
         e3ujCsRmpCIIBV9QTrc/EoLZysqQPyhpLuCucYGryIaRt3VMpZRB8Rp/MIegY7XuEhw2
         E/gxa4s332czdW2omBDkJoNfSVuHtRdA+mKxXcDfEqg56VGiOvXjuLdaqbivjz/RUMfX
         owN4w6Gon3b4uS0mIDHctaZLiyhYWfLkCgObWIXF5/a9d/x46j2W25pr1NoCeXR3jxUW
         qvEw==
X-Forwarded-Encrypted: i=1; AJvYcCXo/3YHBzrwmk7efLWHoFLFEVvVsxnUloEKsSMCMF9t82E2qOqGsSxsc1Dp9yUrVJATCjIkEliHJ3Rq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz55KwAeZjUpvG3XH4BNc3GKtUz0zava4GLdKsh+bCbTHWpm37m
	1tmyMDcf3isBS5y6ZZbqj1/2h4qUWCo2g4BdZo6UoiPsW77fFzKEdQw1
X-Gm-Gg: AZuq6aLvAhIN+xUv3JAB11GsQ73lGvBtYIk3pHKMiVFyGyTugZHw3VHloTg7hCWEqKj
	RAoxkLRKeQtqoZ5w7Szzoh15fq9XkdPPwcJusvTWt4nL3/VMUimwSe02cNmy/csQsD+lD4JGbHD
	jOxPoCGi1YbPLK/7po68UrpT6xXMt3dqzDHDTlI7f1BxHBFGKyKbWi2aQqL3zrnVacj7gkiwLDV
	3d/BzWMGdR2lHDgTFckeIrRRrH1rJRHSVznSIIfXk8jMvXnABD+OzKkhWRx2o7lDNDF6+UkFbIK
	hA0PeXOUE3LNiLnd+19q9sXnjzI+H1Td5P7Mx3RYHi8YLc4JPBy89ynSiF8rKYl98qnguZVIdUL
	qydUb3Mqv0XDKSuImfEpNjXhi8p/seW9IzBDXs8hZ8eX+i1IRKcTBVqgF9zdi0N62EUskmnt1tG
	5qn9P5mVE1wJAFnRJY
X-Received: by 2002:a05:600c:8b24:b0:47e:e807:a042 with SMTP id 5b1f17b1804b1-48069c1c009mr101678685e9.15.1769681815992;
        Thu, 29 Jan 2026 02:16:55 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:5792:2065:403:a80b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066be77b5sm178642065e9.2.2026.01.29.02.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:16:55 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: biju.das.au@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH RESEND 8/9] arm64: dts: renesas: r9a08g046l48-smarc: Add SCIF0 pincontrol
Date: Thu, 29 Jan 2026 10:16:43 +0000
Message-ID: <faaddb4d8bce3aacda6cdf032c677d8380f71b66.1769681553.git.biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1769681553.git.biju.das.jz@bp.renesas.com>
References: <cover.1769681553.git.biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260818-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[vger.kernel.org,bp.renesas.com,glider.be,kernel.org,gmail.com,baylibre.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bp.renesas.com:mid,renesas.com:email]
X-Rspamd-Queue-Id: D3A0BAE7AC
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add device node for SCIF0 pincontrol.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
index 86db86335d5e..2f918830b8f1 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
@@ -35,3 +35,15 @@ &keys {
 	/delete-node/ key-2;
 	/delete-node/ key-3;
 };
+
+&pinctrl {
+	scif0_pins: scif0 {
+		pins = "SCIF_TXD", "SCIF_RXD";
+		power-source = <1800>;
+	};
+};
+
+&scif0 {
+	pinctrl-0 = <&scif0_pins>;
+	pinctrl-names = "default";
+};
-- 
2.43.0


