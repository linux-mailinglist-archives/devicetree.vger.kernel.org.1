Return-Path: <devicetree+bounces-275033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPmoIajRs2ncbAAAu9opvQ
	(envelope-from <devicetree+bounces-275033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:58:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB35B280180
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EF0703023A91
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D8C38757A;
	Fri, 13 Mar 2026 08:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jZwfzOor"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E2132D0F5
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392287; cv=none; b=YSijAj9P+mmhYqv8+OVB4RLaHHL5LDgxVh7sIkCUrQpJgxlg7qYainqggSbWMKhmD31hhzLjT/SJ/bmBMPHiR5e13y5l4DdMbCzxrhZZKuxefG1leBsI2bJYBWQGwWvHxjECdg8LOHx02pkEMS8GLIEL+aFHCt8rUxk0a23e494=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392287; c=relaxed/simple;
	bh=fIp545uC/6s05hgZyyH4DAcj/j/E7s0ZlK/E2cI6R/s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fnXQDlQND5rk2OH9/e13AAlsqN+XsiA3tBOQIHQLh/7mkkm0ENTDOTCtRLoiR4n/NNOGoXQKnGeLFFNnNq4G29hkghPDYU3GmWZyLgwrk+H3lhtNcgnSSeVRNYZmfj8SGycIJ6w13jIgOkgIrZ3sW3wJTlewtyu7LKe9xggquvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jZwfzOor; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4852e09e23dso16370765e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773392284; x=1773997084; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NpK/7gAydfr91Prnv9s4l0pBpjIN4z4bMzbmgBzMg4M=;
        b=jZwfzOorieQArGg/iqH644vL5bRqEx6qPkv/i/pyX4d+mrjHlp+RKDrdUg9iAxRUwU
         B0ZS1oDCazbDGQR9YWFzGL8o05L06BFauZ0WRKkk7+oTHxvaMoouuztpN45Q1b6hpyWg
         DLbLg3rv4i14KgpdaD3mfQpm4tYxZzM3j7hHVspSBR1QkYBfKV5vq0FM7TPBQdJfpsix
         6SAWIHaDwygyhVeoudF5kcxcjtsmya/VXpo7Y17X7bk0KsUeN36JLwLziE09zh7rDyPb
         TfC39iDcaN8NwIL0KG7iUPHeHT4OCSrIuRCcWNjHeOyWUdQrqKxMbr8ENRAuTOYOC9kR
         tZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773392284; x=1773997084;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NpK/7gAydfr91Prnv9s4l0pBpjIN4z4bMzbmgBzMg4M=;
        b=VW97CHg4mB4jnuxl4Q1GCtqwYbzmZvw7HxDeqCoZ5X9EW0owKpyDAqCW7YALp0QZ66
         0Iqe4bBGfUtbFuOIw0Qr1safPzWv0Tmw0PNRBV0ULKw17SoBclFVcq/NSbtFJxtpcfqy
         BOQUQSkasmonP/Zsf9FolS7RRM3ghtPAFlQTDzPQkdczzaDzt+WT8mWmkBteL4jtCCQD
         jjlQ42tZKBv8r+s/spuP2MOtKGIwoKgqOyOi56yXADEiV5ZmBF9NgbOo+G3S/tkA3+xN
         nhVs0ogl3V85uMh+Bi+gUlIdfPXnmhxB5HYf9vehEx162pNYuzEOuCLA1gZWtads2byq
         AhcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmb1HFzpEXMhJ1SCz72II49MbFD93aZgn77PcoVenB8ips6CazaOwuj4O9hfaEmv9QJU3w5J/VHA5h@vger.kernel.org
X-Gm-Message-State: AOJu0YybqeCoPLMJWTfWdSMApkdDS4bvdbDTUo274nOnfM/dGCfIwa5f
	7tTu/NiDCRMTeWoTKM5XN2UsACLDb4cp5Lq2xpJiZkRW5UGRNclpUtkQ
X-Gm-Gg: ATEYQzx6eMxhidD32cqECleQiCNtrZD0bWy/2Xfu96TkX8LbW8HewCUhWN1DeKs8Uh7
	X5IZYJZKG+2H6lFrneRAl/MHvv16lPiiMmx5Igod0PD+w1afpjejiIJCeF1kb+6H9bI9p5rTuo8
	GHwacqj0vFqZtgFYLWDyOtTIrVcAz+0Swi3mZ29V0+TUMVoggdep2TSfFrJQuXwAl3n3M4CLk0n
	e5A/U3titfgj7sem6xbvaGpxmp+I+KeGl3oHWGzuexohJ9NJmjuCHM86IMwb7vqCJEhCc/JQzH6
	67C90lUgs7K+X8MheZjIi+MTuxu4G//YGh4bkNcr2tjxpXLijlf44OVZIzNyS2gqfr6ze1UUZZf
	hqilH7WaGrJG7fpxAzdDu1K63uPGrJY922HestFU2gM6Uns6MNf6LFLP8ehDFsKi+67DEinYxAX
	a2lnZCdaOR0GU0Godv5QtPWmlnoi9sOJRpbUeqEKOFNcIAv3hDTlo9Kli8iqc+hyL+eNwWNnH2U
	rqsPJ8VzN9cXQrZG5wxZaKHw5k=
X-Received: by 2002:a05:600c:628c:b0:485:3b34:2f51 with SMTP id 5b1f17b1804b1-485566c9440mr34176885e9.4.1773392284100;
        Fri, 13 Mar 2026 01:58:04 -0700 (PDT)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43a03cfd18fsm7663718f8f.36.2026.03.13.01.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:58:03 -0700 (PDT)
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Date: Fri, 13 Mar 2026 09:57:42 +0100
Subject: [PATCH v2 1/6] dt-bindings: arm: fsl: add Verdin iMX95
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-verdin-imx95-upstream-frank-li-base-v2-1-bd488be7c699@toradex.com>
References: <20260313-verdin-imx95-upstream-frank-li-base-v2-0-bd488be7c699@toradex.com>
In-Reply-To: <20260313-verdin-imx95-upstream-frank-li-base-v2-0-bd488be7c699@toradex.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275033-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ernestvanhoecke@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: AB35B280180
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>

Add DT compatible strings for the Verdin i.MX95 SoM and its supported
carrier boards: the Verdin Development Board, and the Dahlia, Ivy,
Mallow and Yavia carrier boards.

Link: https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
Link: https://www.toradex.com/products/carrier-board/verdin-development-board-kit
Link: https://www.toradex.com/products/carrier-board/dahlia-carrier-board-kit
Link: https://www.toradex.com/products/carrier-board/ivy-carrier-board
Link: https://www.toradex.com/products/carrier-board/mallow-carrier-board
Link: https://www.toradex.com/products/carrier-board/yavia
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
---
v2: Added Krzysztof's reviewed-by
v1: https://lore.kernel.org/all/20260305-verdin-imx95-upstream-frank-li-base-v1-1-823fad02def9@toradex.com/
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292c..f0701143b237 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1477,6 +1477,30 @@ properties:
           - const: toradex,smarc-imx95     # Toradex SMARC iMX95 Module
           - const: fsl,imx95
 
+      - description: Toradex Boards with Verdin iMX95 Modules
+        items:
+          - enum:
+              - toradex,verdin-imx95-nonwifi-dahlia # Verdin iMX95 Module on Dahlia
+              - toradex,verdin-imx95-nonwifi-dev    # Verdin iMX95 Module on Verdin Development Board
+              - toradex,verdin-imx95-nonwifi-ivy    # Verdin iMX95 Module on Ivy
+              - toradex,verdin-imx95-nonwifi-mallow # Verdin iMX95 Module on Mallow
+              - toradex,verdin-imx95-nonwifi-yavia  # Verdin iMX95 Module on Yavia
+          - const: toradex,verdin-imx95-nonwifi     # Verdin iMX95 Module without Wi-Fi / BT
+          - const: toradex,verdin-imx95             # Verdin iMX95 Module
+          - const: fsl,imx95
+
+      - description: Toradex Boards with Verdin iMX95 Wi-Fi / BT Modules
+        items:
+          - enum:
+              - toradex,verdin-imx95-wifi-dahlia  # Verdin iMX95 Wi-Fi / BT Module on Dahlia
+              - toradex,verdin-imx95-wifi-dev     # Verdin iMX95 Wi-Fi / BT Module on Verdin Development B.
+              - toradex,verdin-imx95-wifi-ivy     # Verdin iMX95 Wi-Fi / BT Module on Ivy
+              - toradex,verdin-imx95-wifi-mallow  # Verdin iMX95 Wi-Fi / BT Module on Mallow
+              - toradex,verdin-imx95-wifi-yavia   # Verdin iMX95 Wi-Fi / BT Module on Yavia
+          - const: toradex,verdin-imx95-wifi      # Verdin iMX95 Wi-Fi / BT Module
+          - const: toradex,verdin-imx95           # Verdin iMX95 Module
+          - const: fsl,imx95
+
       - description: i.MXRT1050 based Boards
         items:
           - enum:

-- 
2.43.0


