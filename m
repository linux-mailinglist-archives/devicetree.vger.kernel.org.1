Return-Path: <devicetree+bounces-263306-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mM20EhvChWltGAQAu9opvQ
	(envelope-from <devicetree+bounces-263306-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:27:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DE389FC9F5
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 49C303006818
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 10:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479F6372B31;
	Fri,  6 Feb 2026 10:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lucaweiss.eu header.i=@lucaweiss.eu header.b="drbMME86"
X-Original-To: devicetree@vger.kernel.org
Received: from ahti.lucaweiss.eu (ahti.lucaweiss.eu [128.199.32.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D1F308F3B;
	Fri,  6 Feb 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=128.199.32.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770373654; cv=none; b=JGnxktyBQopcOAcmMXoBOK/dWVmacNhMwj8OJ0d5/zhwxQW3yEAyj3NP3sxqAUEOCfX4/kSkAMxI9eUqIFUsd5fL+BGqX7i4Hns6WTzbDe9JR4Lal12+ZpmVy+0nPN/WJpJ+29mL7f10qPVTSs51573SLCt4aE/gPu19gzNNyrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770373654; c=relaxed/simple;
	bh=hW1y+4RnYCDFlCJ8eDAD1QUcPOaENLmR0lDQL12MGuY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sxb5aRx1Sgojk+ljEGV8kFYd7PlpGRRgxwfbxDh3zFLRf/tg4HFLovhu/iCqDJ6Z2tnTJfd9Ad4B0HAqZKxYnBLnVtQpiK5Qg5gdl5Y3gGWNk1eHJtF3UACw1JZtQWwQ02v5U9sZ8aRHON+PSJVH4IcRtFEl+agAK026LnBUIv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=lucaweiss.eu; spf=pass smtp.mailfrom=lucaweiss.eu; dkim=pass (1024-bit key) header.d=lucaweiss.eu header.i=@lucaweiss.eu header.b=drbMME86; arc=none smtp.client-ip=128.199.32.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=lucaweiss.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lucaweiss.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lucaweiss.eu; s=s1;
	t=1770373253; bh=hW1y+4RnYCDFlCJ8eDAD1QUcPOaENLmR0lDQL12MGuY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=drbMME86Ogl6L0kBG53NS+yYgz/ZBTwwfzzrSrqxh8R2glF0mCy0RvYJBrlcoDP65
	 K8L3RipJxfuvRM4EbZIZ+RiffnwWDU2uHw+oBnCfBi0xprHg9CSoTjtEhYyAZpfiAw
	 8nPv17RebT3pWr4T8G2lfy1Mx51sliNeTPdAQaCM=
From: Luca Weiss <luca@lucaweiss.eu>
Date: Fri, 06 Feb 2026 11:20:49 +0100
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8516: fix syscfg-pctl
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-mt8516-syscfg-syscon-v1-2-96dcb37acdb4@lucaweiss.eu>
References: <20260206-mt8516-syscfg-syscon-v1-0-96dcb37acdb4@lucaweiss.eu>
In-Reply-To: <20260206-mt8516-syscfg-syscon-v1-0-96dcb37acdb4@lucaweiss.eu>
To: ~postmarketos/upstreaming@lists.sr.ht, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 phone-devel@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Luca Weiss <luca@lucaweiss.eu>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=717; i=luca@lucaweiss.eu;
 h=from:subject:message-id; bh=hW1y+4RnYCDFlCJ8eDAD1QUcPOaENLmR0lDQL12MGuY=;
 b=owEBbQKS/ZANAwAKAXLYQ7idTddWAcsmYgBphcCDpTDBsjyGZzws0QiiLO+nk5cJ1JdGUiv+k
 AzmT03sAi6JAjMEAAEKAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCaYXAgwAKCRBy2EO4nU3X
 VptJEAC3YRzi+gckFaL3vgrMJio1ngXDFN0ka3GWygwg52KRviu5Fv0S7Tx5K5QbV3v67pvQ0/7
 Iqosb6q5/bTFYA8t8bfiOyY75dLKtqnGcX03Cd2BfBJ50iFTgbAfbcUnnqWo7h03ubjBg/TVkVc
 W/Y+zZs/U7cpBpc40n07uFbEga0iIYhiYLlM2L/tviT47JeEi2SroXZi26JvuvbkkmeYAAnlUYs
 8iaWiQ/MWHXvmh7/T0NmxmozxqJt+4rSi1LU+shAIlLVvHeucBQ600ssN+YMBuCOsOOQRXEhj2d
 /MxEDHzmRFwsjXCHkerz7zaDVEgV2UAXicalqfp7TdM9ni3SGQ48XcuK8MsydauQ0XqyIlwMaiw
 590VZEZy4UDcLgurZi2HUapLga6Pd5RQ+5793C4Skkar4LA5Gy7fgB+9BbyyBGdUAVfvMCwUr4j
 yjSU6eXDWAC8I3l582kjFDjmCM6zUt+X0F7YNPLRC9BOvQ/YQAthryd5vYdOymsMMVC9Ti1vKUI
 uwS33bz+O9jugI5LBAkArXfiB1/3CDiugx7/eM9dy2FxpIfY0rHP7MXYt2t0VNxGRV4noTOqQf0
 r/PPto1A4J/NCKps5713VuriXeWLTjaWeCBeWHnyp+i9xAb1VfGpVoPEB0laDiU8C9FLgxh2DDU
 bdduudg3GXgZJCA==
X-Developer-Key: i=luca@lucaweiss.eu; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lucaweiss.eu,reject];
	R_DKIM_ALLOW(-0.20)[lucaweiss.eu:s=s1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263306-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[lists.sr.ht,kernel.org,gmail.com,collabora.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.152.158.80:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@lucaweiss.eu,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lucaweiss.eu:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lucaweiss.eu:email,lucaweiss.eu:dkim,lucaweiss.eu:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.152.170.8:email]
X-Rspamd-Queue-Id: DE389FC9F5
X-Rspamd-Action: no action

Just 'syscon' is not allowed by the dt-bindings, so add
mediatek,mt8516-syscfg to it.

Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index b5e753759465..67836407d0cc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -232,7 +232,7 @@ keypad: keypad@10002000 {
 		};
 
 		syscfg_pctl: syscfg-pctl@10005000 {
-			compatible = "syscon";
+			compatible = "mediatek,mt8516-syscfg", "syscon";
 			reg = <0 0x10005000 0 0x1000>;
 		};
 

-- 
2.52.0


