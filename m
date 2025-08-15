Return-Path: <devicetree+bounces-205107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F547B27EB2
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 12:52:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 613793B1A91
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 10:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815172FD7CB;
	Fri, 15 Aug 2025 10:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="GRcUo7e8"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com [95.215.58.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385362FC89A
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 10:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755254912; cv=none; b=l4jPTl4TShagodl+pN58qUfMGCE58UuvsorX2JV6sCNKkiU1cZdZ8bIwU1oBgB3l6ghKYGX6FAIQNO0i6vBo6bECAQ4ZWjdonV6DiIfE8oWLtHX6BJDKyoyZJKTTioPp0SNzyN/M0WFWnJ745s9e9XznuGOFWjyjU57bDLjHtcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755254912; c=relaxed/simple;
	bh=42OCUCCiMqcxTgQxr3TgBWmcEl7+262s4gsEOcebIbs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VF+j+O06YZyOn4IfNoI7ZVnhYOR19sOIaUEHs/vR+OP6ZEwX2QbaoMveTGAVxDxDu/Gn4eSB20ZSN0GI74ta9/5uyKXOGNBd4r94/e/aqoxBs3ex5TTYCeR1t2Yx33BG/brNaByob/xC0U7FBhYuPopqdoakOFVMuCte/RTmP5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=GRcUo7e8; arc=none smtp.client-ip=95.215.58.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1755254898;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PJd4mKAX6RdUpjrrwmUXazuqsCN2PZfrowEzcn0Hg5M=;
	b=GRcUo7e8ncadhrPZPmqSKbQBPcnbagqMUaNukDVPLohMx/EgcWoP+S1SAmrw3ZH7wJlwxq
	/x7+9s/aIOlalGm/ZFhCDNbV/I4dHZzxxE4uz0NKFjotzvv/6iGtkSA3wuav+M5Ssf6z5G
	rcJY7MdOL6jbSRN5BW9CwquNsFPaZwc1mFLsumV/xOLzglLjTa5RGJyo/jKy3e6ptyinG5
	eDJe31rFJ2ev/mjNnNs46LBrjXH+/s6uw1yRaztJZUG4ukNK9LzNJN9FV+qe8FrvAPorRC
	tV71LF7msadNyAmRpiXbdDN/l0tsS/KQVzhSwQ9ktUjimUir8J+Ki/Ykm3DCCw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] dt-bindings: leds: Clearly mark label property as deprecated
Date: Fri, 15 Aug 2025 12:47:46 +0200
Message-ID: <20250815104805.405009-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The text description already mentioned the label property was
deprecated, but using the 'deprecated' property makes is clearer and
more explicit.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 Documentation/devicetree/bindings/leds/common.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 3e8319e44339..45ce9e13c7ff 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -58,6 +58,7 @@ properties:
       no other LED class device can be assigned the same label. This property is
       deprecated - use 'function' and 'color' properties instead.
       function-enumerator has no effect when this property is present.
+    deprecated: true
 
   default-state:
     description:
-- 
2.50.1


