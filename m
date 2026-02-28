Return-Path: <devicetree+bounces-269454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLMbGmMxomke0wQAu9opvQ
	(envelope-from <devicetree+bounces-269454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:05:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B1C1BF514
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA9F73047BD2
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B7F2AD0C;
	Sat, 28 Feb 2026 00:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qq8SbTFr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C4EE54B
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 00:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237150; cv=none; b=QccvPUUQ3y6T8cOBwxxprRDYIjvSff/YtdnGue7DKvacWfZZLcvuHKEXJ1RnQzFq6bSxM3n1KQR0QHCbHLzHaoLGMMeVAtNzqrWtkRBOV82vPjYvJfOXbCy7wBH52O/M8PcQ4AA2a82/k8yMWBU9AXPz7UZgRxz2DlvEMevV1+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237150; c=relaxed/simple;
	bh=rhuH5bZWPXEvksruFJrNP1WLqN+56EEVyEMkg0zDSyw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PIPdaPKXj0Q9bwtkwp1Ae18LJ8O9CPbiCzD9ldc+EXwU4hJxgMHAVa/hAr6l/N8MBeO2xErDGlnm1jxXgvDCcPA5p3z3m4hRVwR+NHsz8nocSOIfSupc+TV8YSdi75mwQ6lZUUtFF/yRPd7B2JGf5BDJFzZaj/V5tAQuLflqRkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qq8SbTFr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48629C19422;
	Sat, 28 Feb 2026 00:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237150;
	bh=rhuH5bZWPXEvksruFJrNP1WLqN+56EEVyEMkg0zDSyw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qq8SbTFriBV4UiyiuEX0BwRXJiliHl0oCUDoxtFnrafh95OGIX51DY6wYTcuA+TNA
	 bovfPekB2LejmhY31inAHKITx8whZRWdZaj4lyBZtnOL5aiXcb0ehRjoDv1FhiCoJJ
	 knD3f3ZHxh/nCRlUJABsErchCn+TgxQA6fbD2h0ljy8t374cCczyb/uIqjdEiJ8x/Y
	 hPi067SUlFzsFZ33jHAsyC2lbIKtr0cmAde07CpKqARmeg3tD1BJYKlTYzkWxNcN2j
	 bA9KAyS/cF+dBY4l7HkIq5B/ZKxP3UKViH+n5ebudrET/OViZBodje+0VtNGmUOvlG
	 k/Z+7tkjLNLoQ==
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 28 Feb 2026 01:05:42 +0100
Subject: [PATCH 2/8] ARM: dts: gemini: Tag disk led for disk-activity
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-gemini-dts-fixes-v1-2-0c6f6d0fb4bd@kernel.org>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
In-Reply-To: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269454-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 26B1C1BF514
X-Rspamd-Action: no action

Linux now has a trigger specifically for all disk activity
and this is what the LED is used for so tag it like such.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 arch/arm/boot/dts/gemini/gemini-nas4220b.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/gemini/gemini-nas4220b.dts b/arch/arm/boot/dts/gemini/gemini-nas4220b.dts
index 6544c730340f..2488b9b24218 100644
--- a/arch/arm/boot/dts/gemini/gemini-nas4220b.dts
+++ b/arch/arm/boot/dts/gemini/gemini-nas4220b.dts
@@ -52,6 +52,7 @@ led-orange-hdd {
 			/* Conflict with TVC */
 			gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
+			linux,default-trigger = "disk-activity";
 		};
 		led-green-os {
 			label = "nas4220b:green:os";

-- 
2.53.0


