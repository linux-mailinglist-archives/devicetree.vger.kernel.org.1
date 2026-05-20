Return-Path: <devicetree+bounces-300546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMnAAu6dDWpO0AUAu9opvQ
	(envelope-from <devicetree+bounces-300546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:41:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D09D58CC8B
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:41:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E46973327416
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 11:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7553DCDAA;
	Wed, 20 May 2026 11:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="n2cxeuCz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46166548EE
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 11:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779276649; cv=none; b=m/rbj5geI8Updg9BvRwDpd5vcDmSOx0OkZoU4JsjENoR2aY6i3DIiJz65U1RalsbtV/KW9tPe5nq7oKNJxmjnY5n/udBYx4h9mwdv08QtgLxYbcTi3hfMRUFW8DAYPRJT5HpU4XSz9Ldqnbrhs/70pIfncGoBn+V0N/0jLLkTBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779276649; c=relaxed/simple;
	bh=i7HpBJxWuy7OvuFde1Y45lZUPdSPRXHTDZiEPypnKuM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u3mdGgPOkUa8X3I1KVp1N88N0jenNdtIZA+XLDpbJM+bHRsmpaS+lRmBs37mQi8hM/Qw9PDgmNIK46FxCxcrbQxiEp+yDzJFOMXsLZGFKcKtqCwFKwRIBBqyxhvDBbL74RVGU3s9s/7nMy0ij7HidZF+y+A02fFOsKOpiPgtwnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=n2cxeuCz; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-488d2079582so45966415e9.2
        for <devicetree@vger.kernel.org>; Wed, 20 May 2026 04:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779276647; x=1779881447; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m/ucc97rappAXfofoT6AtjICBO6VsnKvFYY8oOP6sCw=;
        b=n2cxeuCzM4hc+pm5KBFDfelk+Mt+Dl/a8rb1uLQsxyR/CLJvDxHcES/C6SpwHhpTPc
         XdJoSyt61D6yuHqs9wu16zo9RdDqCoB2E8vT4KrDqnkgUae8EsIh3/ZVwWKaHCZBRE+f
         FpFlF6fIplA7crlfe9pzL2CrBIOLzewNNIvgkYDDXkvHQEvLYckkrgPLlk5yESMHXMUR
         L8W0+AUf/owCZrkgU2Sr201q0yOBb9UNeI3W+OWfg94IIPXW56abasmARRJqjXvfstqx
         /Pvwc6tZVRzE8lpDF3PZPqcUlasflB5YQ3fCZFPDKEwHOwO8jZN6ni656pfOQtcjdP9P
         aUvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779276647; x=1779881447;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m/ucc97rappAXfofoT6AtjICBO6VsnKvFYY8oOP6sCw=;
        b=Tv3tECfe75ZznU0/wbY3KY7FZikAnefkmESseZbIsDC9dKXigeAPe03gNO9ziRcmXl
         TqzzJNQ73bLVSuXfvvmFk1yLondKhwdCgxlBUNocIPkT1KMTSe3K8CzMDLUPfPKO/esM
         hT3uYUxXsOls66X+zVvgAMuV1bTz5VW5uCTl+ule/S0PZejIoQW95oHdKPR2h3OXP1u1
         jb2NbcOhgMqL1ArhQCvqPtZbsNip1yh5zn1HFxNDU8qsThJFVp9LhFz+ZBiOnx1h+hzV
         PxORPpj4nxntTC1dYMF00fJf2mLxOUj6y2QeQxOs3yJPTm/AzrJSGA+gpYffY48r252o
         eI2g==
X-Gm-Message-State: AOJu0YxH3nN0vCImWXk2WLSf2lkDmk4oJf+Sd4IvRpJ5Y1Qb/WuPPEra
	4+ZcqNUOjaWnTmNqG868KKvQxKNfxoIYe8Y7LZnSmKHGOIHaKJUFYDr5
X-Gm-Gg: Acq92OGw9FgGY/llzdSbZt0H2fboBEZS7VlO1IYR23GbXo3liN2kGdkVtf7E7pi0z2j
	3ApzaLkRcq5lmISafxkBDuI3cXXAlnra0XiOOwWgyVVgYYG6xjp1hPjK2f5fAMa0d+Qbv0lgU+T
	hD2vv0PhAI9LaeBXRvcepx8wrmcQOR0ablBD4J5U1bw3ti1v9hfXizrW2kMyv/OsIcpRgXPw2a7
	2T7GX5jDRt+2qgFS9ANQkW4tO2RN5w72brHm4Hz8Wbr+/AhRVA1RlTV1yaSmlK0+dTHw//453mn
	i8cWiVH0w3kR/mPWTBNIQTpNVr+dFAK+ovNL3yeb2wq44+vHIiy03p+UD2AlLL7LxjUqslId4hT
	DrS3e1Mp7WD/A4JePrHAzYJ6UqkbBHZEI26h42dgffBpSZxUxE2695bBGzg7kJ5uyB9sP/1D3WX
	PItXcxT0UW6x13uB7duoIZxgawMMKXxCfSRSd65lm7LcFGFZ4pBvnz6TjISGCOsTEBQmvvELdcI
	Tzu5+zkYE8Jt2N6kYtpEEyjeI+hqN9FxD2UlF7fDDZqXgNn77J93gYjLft776G6BUZlQAyFjJxl
	4w==
X-Received: by 2002:a05:600c:a11c:b0:48f:81ea:ebbb with SMTP id 5b1f17b1804b1-48fe60e4ddfmr269535155e9.6.1779276646522;
        Wed, 20 May 2026 04:30:46 -0700 (PDT)
Received: from [127.0.1.1] (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe5ab3977sm430363315e9.9.2026.05.20.04.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 04:30:46 -0700 (PDT)
From: Franz Schnyder <fra.schnyder@gmail.com>
Date: Wed, 20 May 2026 13:30:32 +0200
Subject: [PATCH v2 1/3] dt-bindings: arm: fsl: add Aquila iMX95
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260520-add-aquila-imx95-v2-1-06424a51e33a@toradex.com>
References: <20260520-add-aquila-imx95-v2-0-06424a51e33a@toradex.com>
In-Reply-To: <20260520-add-aquila-imx95-v2-0-06424a51e33a@toradex.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Francesco Dolcini <francesco@dolcini.it>, 
 Franz Schnyder <franz.schnyder@toradex.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.15.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300546-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fraschnyder@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Queue-Id: 5D09D58CC8B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Franz Schnyder <franz.schnyder@toradex.com>

Add DT compatible strings for the Aquila i.MX95 SoM and its supported
carrier boards: the Aquila Development Board and the Clover carrier
board.

Link: https://www.toradex.com/computer-on-modules/aquila-arm-family/nxp-imx95
Link: https://www.toradex.com/products/carrier-board/aquila-development-board-kit
Link: https://www.toradex.com/products/carrier-board/clover
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Franz Schnyder <franz.schnyder@toradex.com>
---
v2: Added Conor's acked-by
v1: https://lore.kernel.org/all/20260506-add-aquila-imx95-v1-1-69c8ee1c5413@toradex.com/
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 59f7f168bf7c4..ea4cc98dadebc 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1507,6 +1507,14 @@ properties:
           - const: phytec,imx95-phycore-fpsc  # phyCORE-i.MX 95 FPSC
           - const: fsl,imx95
 
+      - description: Toradex Boards with Aquila iMX95 Modules
+        items:
+          - enum:
+              - toradex,aquila-imx95-clover # Aquila iMX95 Module on Clover Board
+              - toradex,aquila-imx95-dev    # Aquila iMX95 Module on Aquila Development Board
+          - const: toradex,aquila-imx95     # Aquila iMX95 Module
+          - const: fsl,imx95
+
       - description: Toradex Boards with SMARC iMX95 Modules
         items:
           - const: toradex,smarc-imx95-dev # Toradex SMARC iMX95 on Toradex SMARC Development Board

-- 
2.43.0


