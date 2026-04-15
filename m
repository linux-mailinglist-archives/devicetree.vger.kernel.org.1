Return-Path: <devicetree+bounces-287516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIQ6AIdN32mFRQAAu9opvQ
	(envelope-from <devicetree+bounces-287516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 10:34:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B0E402083
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 10:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EFA3A303148F
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 08:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB1B3D16F7;
	Wed, 15 Apr 2026 08:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHsDKVAl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1933CAE68;
	Wed, 15 Apr 2026 08:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776242052; cv=none; b=Eq2tdHUW+37mwP0nb39MdANjuQiilanPu8u2/Yn7y5Qty9ZVrYuEFaypdR25dk+q/tGqIzwc3s7+NtGiboPR1xqId6ZRdIEkmFzGCXTW0635QjpQ7LWN1t3G4DsjHZ+XyNWJlq38hOHmjRcXgp9yaK2T6nC+DLhICHvDdCNYiBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776242052; c=relaxed/simple;
	bh=gGJkbjQ1NGX6fgwdB9YUsJ0pPiyL6JdM59/u6GrsAC8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lM3ggfPDyeiXpP/AOCvQp0YZqj8Ct2K7rQbTZObjihssDUpsGMn6fXz6pZ7qMYqY9kkSz1wJdOBRDunOOlp2afTYnHrc5xiXUOqmtYesYNLzclqB8bQv3XT9hMQvY0ZPh1N3JVGwrUEuQhU/GdoLYgmYaqvIt+qnS5gvIrSpMhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHsDKVAl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D682AC2BCB4;
	Wed, 15 Apr 2026 08:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776242051;
	bh=gGJkbjQ1NGX6fgwdB9YUsJ0pPiyL6JdM59/u6GrsAC8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=DHsDKVAlRdMTwqDHEgZvhEt1FgyxR3QIY0FR2sVtVRaJWqc901JwpKuNON+Q9hcgr
	 TnON9sjJLHf9H1hc4EMRp03VP0pWpOwwqAbMRkn7H5997xwNQlcTvsIf3oCmnaj/f2
	 J+bj/AFq6bgXgsr+KX+Qku9AepMDMTKVuKKu1v+de938cMPTJnYy44MgIEvLghGg85
	 ljlShhYxSMZlLMbrzxRgopHFBf3Gr7DFpTmNbi8k5WcojYrG0yIwSjY63LWJVaxAUu
	 7Jdkcv7Uf3J12tkqBjMn/XADVtZQqkMh4LuZpCICAJ3dn4/mkA5SMH7mcDvQiTrP7j
	 8+GZnpEch2ohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0239FA0C4C;
	Wed, 15 Apr 2026 08:34:11 +0000 (UTC)
From: Jian Hu via B4 Relay <devnull+jian.hu.amlogic.com@kernel.org>
Date: Wed, 15 Apr 2026 16:33:41 +0800
Subject: [PATCH v2 1/4] dt-bindings: soc: amlogic: clk-measure: Add A1 and
 T7 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260415-clkmsr_a1_t7-v2-1-02b6314427e6@amlogic.com>
References: <20260415-clkmsr_a1_t7-v2-0-02b6314427e6@amlogic.com>
In-Reply-To: <20260415-clkmsr_a1_t7-v2-0-02b6314427e6@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jian Hu <jian.hu@amlogic.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776242050; l=872;
 i=jian.hu@amlogic.com; s=20260415; h=from:subject:message-id;
 bh=IimYeGQJ3sTp582FUYGP7eCFxCNOvcMVP+spCKBvEZI=;
 b=FTtwbJROifIZYLVA99AKO3wSGTKbZHs98icsYsqYtO8Mg4ZRTH1mFCDUFtUYCdfYrMNBcBx9g
 rFXH34gR4B7DiKr25FVbcU/cYUJM3rIkkFv+1vTLJf5QJdu6By1eyXO
X-Developer-Key: i=jian.hu@amlogic.com; a=ed25519;
 pk=zHUE+rNtH9z+Sb8au1/elWknjFQmy5QDVkBoxleuOIA=
X-Endpoint-Received: by B4 Relay for jian.hu@amlogic.com/20260415 with
 auth_id=735
X-Original-From: Jian Hu <jian.hu@amlogic.com>
Reply-To: jian.hu@amlogic.com
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287516-lists,devicetree=lfdr.de,jian.hu.amlogic.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[jian.hu@amlogic.com]
X-Rspamd-Queue-Id: 87B0E402083
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jian Hu <jian.hu@amlogic.com>

Add the Amlogic A1 and T7 compatible for the clk-measurer IP.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 .../devicetree/bindings/soc/amlogic/amlogic,meson-gx-clk-measure.yaml   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-clk-measure.yaml b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-clk-measure.yaml
index 39d4637c2d08..b1200e6940ac 100644
--- a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-clk-measure.yaml
+++ b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-clk-measure.yaml
@@ -24,6 +24,8 @@ properties:
       - amlogic,meson-sm1-clk-measure
       - amlogic,c3-clk-measure
       - amlogic,s4-clk-measure
+      - amlogic,a1-clk-measure
+      - amlogic,t7-clk-measure
 
   reg:
     maxItems: 1

-- 
2.47.1



