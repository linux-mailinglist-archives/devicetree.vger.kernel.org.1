Return-Path: <devicetree+bounces-287818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNyPKa6v4GkRkwAAu9opvQ
	(envelope-from <devicetree+bounces-287818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 11:45:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6628740C90B
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 11:45:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 12FE3300B3DF
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 09:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3634439D6C5;
	Thu, 16 Apr 2026 09:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="awPlW7FU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106121.protonmail.ch (mail-106121.protonmail.ch [79.135.106.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8B339D6C9
	for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 09:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776332418; cv=none; b=LsdhGnjSl+rycipDuMMSonvhzDgLaB6PxDqiklSN56+9wn8ji4y7eo7cuUMS+AxUudRPtKHX4Szn0Zr2Uxl6jwKD9FmicmtTuLsaM3LHIjJdUAYxLpJA/xfqLR8tKyqvEtG+JL7M4ajaBy1gbAI2fK8WkQYdQpT5lbHn+M2l3Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776332418; c=relaxed/simple;
	bh=L+WoxkoOlxIRT/pd59o1iSW+ntv+TbCUXUSPbLwoXT0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PAqdS+y//f7uSZ7+RaxLE5pYPiOWfImMAHa3btlSSOag09ppFFPuNCh9ANthTm34ckbo3NiU8dVgGMkceACYOR9hBwEV4ZWr25Ssg3dUTyAI7lyGVumpSqWO+P/6SI2DnrETgg+6BDR6nlbyAea/Ciy42ujvh0x/MLqr4pfOK04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=awPlW7FU; arc=none smtp.client-ip=79.135.106.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1776332408; x=1776591608;
	bh=Ry+SyEti2UqT5WVYvlvsiyP6Yf3JAHi5YvU/FmfqzNo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=awPlW7FU6IMXBHCvm5P9nFX9u5gcp6MeHXl9E6lFpABGS0B0lA1O8v0Zq2+rTQms7
	 AdY9Q8x09t1/r44+4ZY97Kpu+dqhcvXmj+9JuWMAfOqB4YKSdWCXstZffWhzvkyMNb
	 ydFrd/QMYIGZHxkmx3ltlQs1Vssv7HRzkZ4jf+DejW5wo58se/5iCXh6wqOAtXpcjn
	 EVJXc0Qvg1QUGAvAiGHl0Ej2D9ejCuZlscMToAjN88fIS30URn2ZZ3e11Yez/5xwXc
	 PMMEJdxjK7Vf8eU8DC35qBQkuMbzkMGiRIEnwrhV6699qGTayqQj3q3hvFifzR0to+
	 p1mWE4IK/mDag==
Date: Thu, 16 Apr 2026 09:40:03 +0000
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH v2 2/3] dt-bindings: sram: Document qcom,eliza-imem
Message-ID: <20260416-eliza-imem-v2-2-fb7a71123451@pm.me>
In-Reply-To: <20260416-eliza-imem-v2-0-fb7a71123451@pm.me>
References: <20260416-eliza-imem-v2-0-fb7a71123451@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: c50a40bca3ba5be606fc84c83ef643a617166e4f
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287818-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[pm.me:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 6628740C90B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add compatible for Eliza SoC IMEM.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentati=
on/devicetree/bindings/sram/sram.yaml
index 8985f89170be..27e5e274c3cb 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -34,6 +34,7 @@ properties:
         - nvidia,tegra186-sysram
         - nvidia,tegra194-sysram
         - nvidia,tegra234-sysram
+        - qcom,eliza-imem
         - qcom,hawi-imem
         - qcom,kaanapali-imem
         - qcom,milos-imem

--=20
2.53.0



