Return-Path: <devicetree+bounces-276606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIPKKvoquWmVtQEAu9opvQ
	(envelope-from <devicetree+bounces-276606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:20:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1C22A7C0E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:20:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CCFC83032CF1
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805083A2549;
	Tue, 17 Mar 2026 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bt8f7Jel"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC5481724
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773742593; cv=none; b=T/ORopBYo0SHFNzZht3oMY9NuZfCaUJ95MKEQL880t7xli/1IBY5joUx21iVVaL9ykGlT9dinG5vcx+WxDkbzjzqGRA2IE1tnYzxa3ebiNZEdlsACThXWJdlx8ty7CH+PpPqVh8E82GS8ji6gu3xjEzPYzcHwWCNLuPWEWTTOVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773742593; c=relaxed/simple;
	bh=ABn9Ni57R0ZkpGLX2ZIwE8vOk53v0f5Zak751TrF5w8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YC+RCLUx6PSW0dTPz7dotxCUUbtL7m7Q9kCft8NoqYKZXriJaZPdnFexQgL98/jIAaEnMuMs2gUmmYAJJOrlTo92Bj7c/vIiWbct1OSAkKw85VRUSTI6U0N0z2v9Ga11Q5CjcU/frlU9lcQtkDtox58w2dP4vQvnuFIDQmyPG8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bt8f7Jel; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso49399205e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773742590; x=1774347390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oxpIVyCSKVrX2DiLGUQhb5TMOZpG4m6V2TbsqVVpj04=;
        b=Bt8f7JeljAb+cWcPNtxImOJ9/dmJjqgIF5JVMEXx+dz3VU7/h4oPprOGZXEzB6nWtN
         IhnCIrTVELTYstyYJRzJAuSoW2wEqDgj4TG8ME9fzK8EcCPm6OmW2j/O9EXviRkm+bPB
         MG83lytosBI6+mZuqR+oXHBI0hVMjTqfoYtI0n3qhNixxMhSgKYvY+tfP1FWWaN3/D7N
         xHPLgBp4NMoOYpA+TB1ohksEwc6zQA0/ayJq84ce2KuSuZyCL9UTAZEWrTQza0C/LErD
         EuQAUeo7ZRSiN+//luaux8Y4pu49fgHZM5yevQziRCdM9soFZCcBIWgoozBnY0D4taMA
         l4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773742590; x=1774347390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxpIVyCSKVrX2DiLGUQhb5TMOZpG4m6V2TbsqVVpj04=;
        b=RSjtc63ti1/BkVRgWCX1rRjN7SbsA9rdXlJBYl4/aOKZvuT3RyVen1MYnPHNFoRF82
         oxD8oCSsfDDd8u5b03VjEAoj6BAvbMxlZ1U9JhrV+7fEPBuTDwIj/TV62/nBVsJIry0+
         IZIMxcb3qFUzn2Ll9mrpL1qcZQmbqSUuzONTgNhNxqAWW4Z+ZmFCV7WiHAOh+x7XNFkB
         wxp0cDM216nq9ROxUo/QDLYX0Rg7/zrsgzFVi1GqKDNKgljYKARadG7+WpgRzGPYS2e5
         w7T0swiTuJvhCJ8E8d2D/AP6SB0M/w5Dk/l2Gw5b0C5KuBAQsn7lRmgI74IOx5Vy4GJO
         NtyA==
X-Forwarded-Encrypted: i=1; AJvYcCVuyvxP2nDkt2EnbPD28HQJUt0l83KnnFswsDPGMwtW6fFtt/xxg5oAOYN1ZZ14hwPAJ1qCXUNX+95J@vger.kernel.org
X-Gm-Message-State: AOJu0YyKsVFh98Z8RypHDGz1dKWcg5Hyr2t7mfXEgXNX0bk3HqmaaGyW
	vXYZhfyy3QpfEu5Eo73AozcxLojAXySN4oE8LmUa6zHtGxhOiacvPu4q
X-Gm-Gg: ATEYQzzYOdtLUddGS+KsDR0F+9XWk2XlNEGIj/j4EsK9vsCy3wUdAiK6kxxXFjGSA+k
	loC8mwi/xCVTFSUEvpR28UZwUSlAAPVJnJVGIwmYBd3GZTCZLHlUxD9++EqiLucsvJtIoEagFzR
	25wXONEHYxNotYHnSqF4U47A1duazUiAia2UlXHlG725RQ59U0j7iSPCNFnRCKs4jHRDrQ0Nw4a
	55hHFDwAvcCLmUBs3zLtvzKURRX9AZSVsBnZaskv/xhCscUwvPO4Dze0dohmcEJ+uNceur5JQDL
	gdaS15p7hYGOLAiqWib11xbLbaD0hDgYJV3Gl8emsQo2bsPt0tTZ7AHLa08YKA5JPsbR816YZs0
	yH+1VWKROJbQWaCsrxecJsglxUTCDOhcXdkUS0ri3EdbpiISXKS3XvP+bri4w20dwwN9xfy2DQm
	eoF9Z36EBscGQ7YmGWFqXiHWVKq/LWbE+t5Rv+W+SRaWGNAVvjK9ZmeJ86Gyo=
X-Received: by 2002:a05:600c:a15:b0:485:34a2:919e with SMTP id 5b1f17b1804b1-48556710fd5mr284691515e9.33.1773742590244;
        Tue, 17 Mar 2026 03:16:30 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e16b:fc56:e220:9aa9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaee510sm53903275e9.14.2026.03.17.03.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 03:16:29 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 0/8] Add Renesas RZ/G3L PINCONTROL support
Date: Tue, 17 Mar 2026 10:16:13 +0000
Message-ID: <20260317101627.174491-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276606-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid,renesas.com:email]
X-Rspamd-Queue-Id: 0E1C22A7C0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Hi All,

This patch series aims to add basic pin-control support for the Renesas
RZ/G3L SoC. The RZ/G3L pinctrl has an OTHER_POC register compared to other
SoCs for setting the IO domain voltage for AWO, ISO, and WDT.

Document the bindings for the RZ/G3L SoC and add pinctrl definitions in
the driver. Some IPs need to set the register IPCONT_SEL_CLONECH in SYSC
to control the clone channel of the IP. Document the reset-names, as all
SoCs have multiple resets.

v2->v3:
 * Dropped clk, pincontrol device node and pincontrol support for SCIF0
   and GBETH nodes from this series. Will add this later.
 * Documented renesas,clonech property for controlling clone channel
   control register located on SYSC IP block on RZ/G3L SoC.
 * Retained the tag as it is similar change for RZ/G3E thermal bindings.
 * Updated r9a08g046_gpio_configs[] by replacing the typo AWO->ISO.
 * Added PIN_CFG_PUPD to RZG3L_MPXED_ETH_PIN_FUNCS macro
 * Replaced RZG2L_MPXED_COMMON_PIN_FUNCS->RZG3L_MPXED_PIN_FUNCS in 
   RZG3L_MPXED_PIN_FUNCS_POC macro for setting power source for pins.
 * Added clone channel control support in the driver
v1->v2:
 * Split DTSI patches from bindings
 * Fix typo maxItems->minItems in bindings
 * Collected the tag

Biju Das (8):
  dt-bindings: pinctrl: renesas: Document reset-names
  dt-bindings: pinctrl: renesas: Document RZ/G3L SoC
  arm64: dts: renesas: Add reset-names for RZ/G2L and RZ/V2H family SoCs
  pinctrl: renesas: rzg2l: Add support for selecting power source for
    {WDT,AWO,ISO}
  pinctrl: renesas: rzg2l: Add OEN support for RZ/G3L
  pinctrl: renesas: rzg2l: Add support for RZ/G3L SoC
  pinctrl: renesas: rzg2l: Simplify rzg2l_pinctrl_set_mux()
  pinctrl: renesas: rzg2l: Add support for clone channel control

 .../pinctrl/renesas,rzg2l-pinctrl.yaml        |  35 ++
 arch/arm64/boot/dts/renesas/r9a07g043.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi    |   1 +
 drivers/pinctrl/renesas/pinctrl-rzg2l.c       | 514 +++++++++++++++++-
 .../pinctrl/renesas,r9a08g046-pinctrl.h       |  39 ++
 10 files changed, 588 insertions(+), 7 deletions(-)
 create mode 100644 include/dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h

-- 
2.43.0


