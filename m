Return-Path: <devicetree+bounces-288533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIFJMnnF5WkGoAEAu9opvQ
	(envelope-from <devicetree+bounces-288533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 08:19:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 316FD42720B
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 08:19:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5BD9300CFE2
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 06:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE7D3815D2;
	Mon, 20 Apr 2026 06:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=student.uibk.ac.at header.i=@student.uibk.ac.at header.b="rBodRtbD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.uibk.ac.at (smtp.uibk.ac.at [138.232.1.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7552C37FF50;
	Mon, 20 Apr 2026 06:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=138.232.1.140
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776665974; cv=none; b=Aww4fMn8HMmWthh9nMXAhPesENlGU55nc5LAX0lEwBU+H7983JzbLBSm7KZQ6V94CWTaTPTkX73b8HlrPMfBhDeTcP0ZE2kf1NIAIypTotkeZCKL+sB4Jr44cdXy0dLsPFbi/waurSOdZXTlrX5Jk9yvyeLg+oYKH4siOAnmr8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776665974; c=relaxed/simple;
	bh=b6DFPfLgNn/zuLzMr2wXCqttCiu0+40yPygIAKVA7bQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d4pDV1i9p3IqcJ3h+L9L8LZL7S2NkBVaG3BOyGEZnAkLSCZkxUwWUGvVDoEhJ3z+XLD3rgrj2b2xBPIWn4NtPYsyaP6loJ/e7Glfru1ChXScTIosWQ4kaaqZQNhYDTTYv6yQVYZPAca2FBsyWSRmViMEWqKnj7EHotn8fAsX3Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=student.uibk.ac.at; spf=pass smtp.mailfrom=student.uibk.ac.at; dkim=pass (1024-bit key) header.d=student.uibk.ac.at header.i=@student.uibk.ac.at header.b=rBodRtbD; arc=none smtp.client-ip=138.232.1.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=student.uibk.ac.at
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=student.uibk.ac.at
Received: from surface-pro-5.uibk.ac.at (ydWLT-U1-7-16.uibk.ac.at [172.25.7.16])
	(authenticated bits=0)
	by smtp.uibk.ac.at (8.15.2/8.15.2/F1) with ESMTPSA id 63K6Ito81297669
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 20 Apr 2026 08:19:00 +0200
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.uibk.ac.at 63K6Ito81297669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.uibk.ac.at;
	s=prod24a; t=1776665940;
	bh=Ugrejw/BFGpRqCO3FFz5D7BECiapNiJDFJdcWMeJfzE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=rBodRtbDxa7ddHesEZcPOqXn2tzk8H/5ri5DB0UhAxBAo9p1+3pPt0bCSZgxA5Q+/
	 30epiv5tvBOTJs/PSrRL7uFN2kZpW9wPfvkSEza5ikAgC5FXTBKOijk/N83agXxIAu
	 gzMuPzoueHPnboMlMprHKmSWO5nGek3A/uPQf27Q=
From: christian.koever-draxl@student.uibk.ac.at
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, khilman@baylibre.com
Cc: jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        funderscore@postmarketos.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        christian.koever-draxl@student.uibk.ac.at
Subject: [PATCH v2 1/2] dt-bindings: arm: amlogic: add X98Q compatible
Date: Mon, 20 Apr 2026 08:18:53 +0200
Message-ID: <20260420061854.5421-2-christian.koever-draxl@student.uibk.ac.at>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420061854.5421-1-christian.koever-draxl@student.uibk.ac.at>
References: <20260420061854.5421-1-christian.koever-draxl@student.uibk.ac.at>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Score: () -13.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK,U_H_APTO_LONG,U_RCPTS_11_PLUS
X-Scanned-By: MIMEDefang_3.2_at_uibk.ac.at
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[student.uibk.ac.at,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[student.uibk.ac.at:s=prod24a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[baylibre.com,googlemail.com,postmarketos.org,vger.kernel.org,lists.infradead.org,student.uibk.ac.at];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-288533-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koever-draxl@student.uibk.ac.at,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[student.uibk.ac.at:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13]
X-Rspamd-Queue-Id: 316FD42720B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Christian Stefan Kövér-Draxl <christian.koever-draxl@student.uibk.ac.at>

Signed-off-by: Christian Stefan Kövér-Draxl <christian.koever-draxl@student.uibk.ac.at>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index a885278bc4e2..82671d58d1da 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -254,6 +254,13 @@ properties:
               - khadas,vim1s
           - const: amlogic,s905y4
           - const: amlogic,s4
+      
+      - description: Boards with the Amlogic Meson S4 S905W2 SoC
+        items:
+          - enum:
+              - amediatech,x98q
+          - const: amlogic,s905w2
+          - const: amlogic,s4
 
       - description: Boards with the Amlogic S6 S905X5 SoC
         items:
-- 
2.53.0


