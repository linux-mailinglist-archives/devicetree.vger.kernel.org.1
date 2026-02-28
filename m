Return-Path: <devicetree+bounces-269456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDdjNmgxomke0wQAu9opvQ
	(envelope-from <devicetree+bounces-269456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:06:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 530561BF523
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F1333054BA8
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 790EC86277;
	Sat, 28 Feb 2026 00:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSvaJFnX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B89438DF9
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 00:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237154; cv=none; b=oEoFStH5jn0iOapC/htQ0kbOKgc4jUgqLHjBuBG2u4Q5SsqG0WfhF8zmlhKIw9OwmRynVZirXhPXqlZBGMOG0YkfpouLm5lpFqS5U/mc+P5fBhfN8BloUUIEJPQX3E1R8j+xPLHahDdiLfCARz/0aP38otqRgp44TrGSCVxCIAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237154; c=relaxed/simple;
	bh=lOpOpGcPum1JnUIJAb5DSP7Q2DV91UwFGwFHhHgI4bk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i9dDsMkvO2YAG7olQcjevmlK5ftdRlfrUU89r+jWAHptGmZR8uhkIjoztcMmmZxPX4KgljEB+je3p5IcVYGi20NyW6oVnwNUNUizEeNngsSykPILQrfU7Olj9ufi6TKrOcWsfwdTnmgkebp+hf9ZXRQdTpn9PWwWU6mAcvcFxM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSvaJFnX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCBE4C116C6;
	Sat, 28 Feb 2026 00:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237154;
	bh=lOpOpGcPum1JnUIJAb5DSP7Q2DV91UwFGwFHhHgI4bk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=dSvaJFnX83cUmMhp6GKH3MAGWF8Gc9zLyc5pjJRtWI1Fi/9NbPu7JzJFUI6nCrwa6
	 MZ1N6LywtvAKvf1gvKI2As/Bln93ll0dWgSbggPWf1egIrm9xRuK1cyYbT+dFfI16M
	 pJCulxhq0m9V7MRiJ706sTMvTvMkyDJl1jfsFm3zaf4eLt33Ep7jhT8hLfzNaVQ1i2
	 Y6LnPU7fLzawPNlFfPF+XGiTLGG7KHu/c/W9IzZzHMUYHTFL73ZCfJ4sC70jlbFMhk
	 L/8I+TIKB870OIu82bdgeeiBBh3+nKz9/vZYZYC6ss+NN2vmWq3R9zN+CCyNIzMIN7
	 FHe7LLCRoDuJQ==
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 28 Feb 2026 01:05:44 +0100
Subject: [PATCH 4/8] dt-bindings: vendor-prefixes: Add Verbatim Corporation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-gemini-dts-fixes-v1-4-0c6f6d0fb4bd@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269456-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,wikipedia.org:url]
X-Rspamd-Queue-Id: 530561BF523
X-Rspamd-Action: no action

Verbatim Corporation has manufactured a few electronics items
over the years.

Link: https://en.wikipedia.org/wiki/Verbatim_(company)
Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..46ec1d935a93 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1761,6 +1761,8 @@ patternProperties:
     description: Variscite Ltd.
   "^vdl,.*":
     description: Van der Laan b.v.
+  "^verbatim,.*":
+    description: Verbatim Corporation
   "^vertexcom,.*":
     description: Vertexcom Technologies, Inc.
   "^via,.*":

-- 
2.53.0


