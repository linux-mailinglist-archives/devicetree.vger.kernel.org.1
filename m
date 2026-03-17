Return-Path: <devicetree+bounces-276817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PbuD9mYuWn5KwIAu9opvQ
	(envelope-from <devicetree+bounces-276817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:09:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBD92B0A6E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7A810304DF85
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8EEB3F6600;
	Tue, 17 Mar 2026 18:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="Zyzrl0kT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78043E4C85
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773770901; cv=none; b=RHCYzB5RoId/oQzO2ecMAAE+51sNjwlX5w41SieziCglPV2/VPFykkIIzQTylRIH1vqzhZ28FkHNUAnN/oRW9hsmjeZJzEP5V8mJGY1CDQ/704RSnErnrlqjSDjFwVMpzCzF/mErg6xYK+dBtY6HRHJZP6e94f3VyJemKb3mde0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773770901; c=relaxed/simple;
	bh=wc0GFxLbCGBVmDS2XpWAyiiPfvrBfgtTcVXRLT/pt8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AZ6oW5j1iB1YsEL/viN0Klcli/EhDV1b7yakRMCj6C8Iy/XHGtoJw1EzatED5TAwFIvDfzbGcYDVeY8jWmmmdD7RsdZsD0p7W3P0Vg+lxHEZjg5YqHB5givhdSU1ws1fzQOXDVoX9HENLRWyWJ6W8+cQ+F/RiRBCBJv4Sn5vlRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=Zyzrl0kT; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48534237460so65409015e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 11:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770895; x=1774375695; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L8XGsFBJ+hu898M1fjVVq758+iOj2O06p054bPmG3Zo=;
        b=Zyzrl0kTRsorwuvn6vMVRAu/CxDMC8yrk+bEDId11kRiU1Cm1L4IZf2lQgs26XgMxe
         vSV/nQ3Ruyv1apT6DMFL32d1xIG0KREAnE0sjAfN3Ri3tOHuvcy0XuGhj31Oj03C0yBG
         UjVoK92njwbQckFtGiDI2K9WmPU7dJUc95MaAx2WLUZugykt8YvoDOVRe6ewj3e6DxwH
         AlyCRyLSEkgV+Pma7qp5Ko2meAzmQ8uS74CTTCovn7C2kvLb0a7D1qPQnN62RujCKQNx
         uBA6/GioAXMdmT2XzXqHEb7O/9hxtyw91W6ntEJWR+3z4NDdMAnV5Da3nqRmeh6FthcI
         TzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770895; x=1774375695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L8XGsFBJ+hu898M1fjVVq758+iOj2O06p054bPmG3Zo=;
        b=T5LZTk+Kz75A93Ub2/xBgD49FfW9HnaaSL5Kiecv12fwdyTZTvpzdr8ZGwmUuJWpww
         HSHElaG5FYj3oJnArGxl7pqF6VJCS0WRK30SwmjioTOEvMrAJG7ZEyzPzYj62KljxF7b
         VsuJQFCShiuAIErl2AZFls8f5rTgA29XvmebVq+FJPVAzLrFiBT+ldOFe5UKHSyYJAl5
         G4QKMWUyij5HGNObdul1jCoKlChnl/x/6sFBqEVS4gT4o5VpYOKTlKKZeyoWpNXYeHdv
         YrhEIUnOKUv9VQMfeJKbpp97R5yNuxoJ2Muo71Hevk9VnCN3MdM0WJ6MmQNOZ1LWe0RU
         nV4g==
X-Forwarded-Encrypted: i=1; AJvYcCUMPA1wzOTNTxwvY/SNDBkLLAcYau0nYeHO6APsVbmAHveztAg1xHcuQt6yHYFmNhzGvQx3mV8RLMKp@vger.kernel.org
X-Gm-Message-State: AOJu0YyHU9d6qaYwFEKwsF1yOmKB2wDf7ufIopisOZqyOrGSkQBlReMB
	ZcMiByPNuzdc4jHnqhu3thVdKvQK2jfabqlS27Q7hwGZmUo967hdE5lYkpjqoByQ2Ww=
X-Gm-Gg: ATEYQzwylFSdpFzyum9ewFW1NhW8rpvauKsQiSWdnqBUPohmxT4cJAJe/uC7OPisWAl
	vglXiu/jldsoHn1wcsGA9h/GEvAl88joexONwJW+Jd/gF0UfmTJJVV8DXMM4iTu18+C64oH2/GA
	0Y0+7gpU9KL1ckEfgFdUDkfE1H3dCoqfa2tX48jYrBa5sZwFblkaQaE1fmoQpNv9Xrxa5DgK3ob
	vhwJluPduGD606zxYR/ZT7BNSG4G/mJtKOoKQemTMvOx3l7QuEqRERA/zTrc/vR2qC62ZtzWHdW
	tzrjA4gGjoVfgRRc8Rur8i8NDW94pRGKlaet+eyHORCiM1f/qtVR3RJ6SqAx/XhTlEhJG48WseH
	CBExmd2M4B2O3/bT9TcDtvxNyh4Mk6ed57LZy8wxpJUdAqN6SVCqYdF5agrQTRmVbHgabItb9xi
	IlygRgdsnFKHC/S58dRG3x5lAzy5oJ81pjttJIxcKewUZrRWaO9WcdczvRhGWa31ckF1CDJjZGh
	ZHdaw==
X-Received: by 2002:a05:600c:8518:b0:485:4328:407a with SMTP id 5b1f17b1804b1-486f44435d3mr8363685e9.19.1773770894941;
        Tue, 17 Mar 2026 11:08:14 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:14 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 17 Mar 2026 22:07:59 +0400
Subject: [PATCH v2 2/5] dt-bindings: usb: richtek,rt1711h: Switch ETEK
 ET7304 to use a fallback compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-husb311-v2-2-03c17c986abe@flipper.net>
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
In-Reply-To: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1456; i=alchark@flipper.net;
 h=from:subject:message-id; bh=wc0GFxLbCGBVmDS2XpWAyiiPfvrBfgtTcVXRLT/pt8A=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNEWf+r0jqyTf7R7hK55CG1YtH5PxHqmuXWVk9cft
 W1Y6mU1s2MiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTUMdYxYuDiFICpNo9l+J8gFf5eUVz4LvMOAXtv5j3bO1s0nzovXVTZlpusmDunJZOR4cni7P6
 5sr+5LxqtPfBh3tQ17lelD2z6Ei3+S0bi5qLJlowA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276817-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,sntech.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EEBD92B0A6E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As stated in the commit message of commit ec53fe37a560 ("usb: typec: tcpm:
Add vid and chip info for Etek ET7304"), the ETEK ET7304 is functionally
identical to the RT1715, so reflect it in the bindings via a fallback
compatible.

As there are various TCPCI chips by different vendors reimplementing the
registers and behavior of the RT1711H/RT1715, fallback compatibles will
scale better.

Fixes: cd763789d31a ("dt-bindings: usb: document the Etek ET7304 USB Type-C Port Controller")
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
index 1eb611f35998..62169daddb4c 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
@@ -18,10 +18,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - etekmicro,et7304
-      - richtek,rt1711h
-      - richtek,rt1715
+    oneOf:
+      - const: richtek,rt1711h
+      - const: richtek,rt1715
+      - items:
+          - enum:
+              - etekmicro,et7304
+          - const: richtek,rt1715
     description:
       RT1711H support PD20, ET7304 and RT1715 support PD30 except Fast Role Swap.
 

-- 
2.52.0


