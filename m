Return-Path: <devicetree+bounces-276666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLqdE6NKuWnG/QEAu9opvQ
	(envelope-from <devicetree+bounces-276666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:35:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A18B52A9F4A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FEA330C0FF6
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716803C2782;
	Tue, 17 Mar 2026 12:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aeV9Svij"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263823C3C09
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750826; cv=none; b=WDJun2n5s0PBnzm5wHvjdEkuPgP4BbJjrBKItOwcFxhgxCinVfibRcxT5Y6l11dh9GAf5xvt+6yQg6eFiLhpr/kwcDDyrK3lBXpdc6T3FHNnNHw6pZp/bga96BxcgryIKYm9baTs7ErWi9+98tdcwkmz8xnxw5Xo+PCcNsjwaiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750826; c=relaxed/simple;
	bh=U1xyH+WaAysADpcGv9hBQo3f+RrbdhtWzHz9smCQyLM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=HuEs2GGVoYnyn2ylBJZt/VjHV6pcDlxss9leUK/8gFO3Cs1MDsTmtPNC6i6dGRoU+WyOuNapbWhPaRbYHfW+9CZWz1/4pC/jw4vJBhQzmn8NjZdwv+c73AyaVSpvRmOWL6Dk/Q+4pCshlNTzQi4PsW7w1CMFmjY1wAmMQEsK9Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aeV9Svij; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-486b96760easo5156235e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773750822; x=1774355622; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JWEUgV2342X6jiRVtCFNtlvF+3T7N34UBOgJmY6l/Rs=;
        b=aeV9SvijMwJWX3fxDo0Kol+GdnRKy+bkDvGjdNACjpfUgwVN7a4YbH0yx2pDTexH8X
         j8cTFdjD2tFER0vts+ShHJDv7L35Xpgmv03OrPsvrfS+3YKiyjIQKm1ulXBNeMFO1PJG
         idGOchX/hZ7xdPs7KsCDVdyh7ye2F1/46gmFmIjf/oRObe9kEjaE+KE0dij6EcQh/aqr
         cbBotk5yafxYfFyDPSf9RriRNQFXUJBwx30H4GX6LPMBKpcZ760BajePpLzYMifYA6fL
         7FjOYs02EcqXnbJIkohfIuc+8W7jX7oMn715k8aN7+ONYNtjIej1nv7mYhU3xqyR0KRu
         PKow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773750822; x=1774355622;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JWEUgV2342X6jiRVtCFNtlvF+3T7N34UBOgJmY6l/Rs=;
        b=piU/hlpU8C5vlcZ8UzniGSciZEFlu5BiIAGPhR8UpnbyQjnUaqi6eTxn1phqNFcurf
         SlNtgEVUkW2IAUDbqJym7+K1ZjhNrGp3exnRmFU4lV+pFMxCDoN5dmJic+SexslvrO2S
         aOso8S+xDRHgeeewIykDUNe2OeGWESRmlsXfuJyD45YH/WS5/dt8i5wkXTtAAxnTtmvu
         As0jSIB8fQ8qBDm7Czae0pT8Gq7DMFRQxLH9h9hZU4QgcDy6+lsT26BBsswXqGA0BsZw
         RDa7hdVANA2hAjx7OxC3HvH2VMT+w00/njw4plkCg0zoE2eaCULQdG2T8Of7Xmd1VyK/
         jXfw==
X-Forwarded-Encrypted: i=1; AJvYcCWS/4oYR8joVxw6OrOvYDToN85kWZV1lp2CnowKNB30jW1zM0WBD0UEr6xxhPEXYYMwwRb2s7LajzJP@vger.kernel.org
X-Gm-Message-State: AOJu0YxedfE7JCJ7MXbdISFvC4K9UUf+XkfmypFLf8466KXamLeN/itH
	9voheyhdKt9n+ZI95AElhhnLIL9y1ohAnyWvSZMdXTYja90+WriT+uHz
X-Gm-Gg: ATEYQzws+obMTkJ9Rz2C1kGKQvy6xBVur2xzEaWAlAX/iIW8grX7Z3glr4sbHG6ipZi
	BVhZRHrDjgpFoslgKVbmk9BRxJ+DCENiG0XrCsKFoFGjQL60/nPR/OuPyjofezsG77Zpq18pSIz
	LSloNJ5i2QTTsri0AjMfq2U4UEu7w/Cf6Gn5k+6yjoYwfcbTWn/mcMn3R2BEmROLGVLcUgsuAxA
	kjT2sdAXk1Ka/kw2mieh2XhWYMcen+W82po+OXC23M4dEq6ojABwUD6gkGkLsHH19HD1A5uN2jh
	pAt9fNxPNbfSWWZQzwnM3renpIOdAjCsqykWlE0NxvVgbj/lxUD9c2SfthL3fNlh5cvNCGL1xd8
	IGSu3QjkpFHx7fuZG+Pe/bmWhCF/23jl4VJmyE+g9LLW0tmrDsMWpu712++x2twLDlL4c/4+Ioz
	IoQV/Ll21dVJxxN78yUy1FQlcTQqMl5aorSb8O7/TRChC+ncuIncz2
X-Received: by 2002:a05:600d:8489:20b0:485:3812:36dc with SMTP id 5b1f17b1804b1-485566d9068mr210984635e9.9.1773750821994;
        Tue, 17 Mar 2026 05:33:41 -0700 (PDT)
Received: from [192.168.0.253] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4856ea96828sm111917355e9.5.2026.03.17.05.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 05:33:41 -0700 (PDT)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Tue, 17 Mar 2026 13:33:32 +0100
Subject: [PATCH v2] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' from USB host nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-armada-37xx-drop-usb-misc-reg-v2-1-ddff72114414@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/43NQQ6CMBCF4auQWTumBSzgynsYFqWMMImlZKoEQ
 7i7lRO4/N7ifxtEEqYI12wDoYUjhykhP2XgRjsNhNwnQ65yowpVohVve4tFta7YS5jxHTv0HB0
 KDUiNKS5lUztLBlJjFnrwevTvbfLI8RXkc9wt+rf+W140aqyVcrqrStNV9jZ4y8+zCx7afd+/f
 sJPisoAAAA=
X-Change-ID: 20260304-armada-37xx-drop-usb-misc-reg-e9635498cae6
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-276666-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,0.0.226.144:email]
X-Rspamd-Queue-Id: A18B52A9F4A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The 'marvell,usb-misc-reg' property is present both in the EHCI and
in the XHCI USB host device nodes, however it is not documented. Thus
'make dtbs_check' produces warnings like these:

  /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,armada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
          from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml
  /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,armada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
          from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml

Apart from the fact that the properties are not documented, those are
not even used by any USB host drivers. Due to this, drop the properties
in order to get rid of the warnings.

Note:

With the same name, there is a property used for the Armada 3700 USB
UTMI PHYs of which dt-bindings documentation has been added in commit
e60958699afa ("dt-bindings: phy: mvebu-utmi: add UTMI PHY bindings").

Additionally, the property is handled by the 'phy-mvebu-a3700-utmi'
driver since commit cc8b7a0ae866 ("phy: add A3700 UTMI PHY driver").

When the nodes of the UTMI PHYs has been added to the SoC dtsi by
commit 05d168a56fae ("arm64: dts: marvell: armada-37xx: declare USB2
UTMI PHYs"), the properties has been added to the USB host controller
nodes also. According to the commit message this was intentional,
however in regard to the USB hosts, neither the respective documentation,
nor driver support has been added into the tree since that.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
Changes in v2:
  - add Reviewed-by tag from Andrew
  - change subject and reword commit message
  - Link to v1: https://lore.kernel.org/r/20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com
---
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
index ea1824f5321fbb32fc4373c08a0d94bca1dc793b..44c47409f8793ae1266303607812ef481edbfbc5 100644
--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -369,7 +369,6 @@ usb3: usb@58000 {
 				compatible = "marvell,armada3700-xhci",
 				"generic-xhci";
 				reg = <0x58000 0x4000>;
-				marvell,usb-misc-reg = <&usb32_syscon>;
 				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&sb_periph_clk 12>;
 				phys = <&comphy0 0>, <&usb2_utmi_otg_phy>;
@@ -393,7 +392,6 @@ usb32_syscon: system-controller@5d800 {
 			usb2: usb@5e000 {
 				compatible = "marvell,armada-3700-ehci";
 				reg = <0x5e000 0x1000>;
-				marvell,usb-misc-reg = <&usb2_syscon>;
 				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb2_utmi_host_phy>;
 				phy-names = "usb";

---
base-commit: 98226a594f313442fcba38cefc1df0b6c1691c7e
change-id: 20260304-armada-37xx-drop-usb-misc-reg-e9635498cae6

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


