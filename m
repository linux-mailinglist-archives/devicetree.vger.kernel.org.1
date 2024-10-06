Return-Path: <devicetree+bounces-108234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB30992143
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 22:43:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34A761F21036
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D113B18BB91;
	Sun,  6 Oct 2024 20:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=me.com header.i=@me.com header.b="wxJ9gfMK"
X-Original-To: devicetree@vger.kernel.org
Received: from st43p00im-ztdg10063201.me.com (st43p00im-ztdg10063201.me.com [17.58.63.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E21C18BB8F
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 20:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.63.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728247405; cv=none; b=IitIXEgSuKBHasEedo2eO2s6Gpc8jX2CiJqIDqUwRXW+S0zAjyuC3L87AhnhG/iuxKCSmvP751waW3WRE9yW98BQnabyai5LuSCImwGVMCT/9h+VJ7bB32CfcPVD/rupCctIGaTCckop0d1k6bR8q06Z78FgJpL+gzmgdQE2PJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728247405; c=relaxed/simple;
	bh=2TdK4+ZA8bL15614fvrfm3sRznxUHiTTHVB2TQD4tiE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=moWau1sWfvamqkJgSbiffZUgwd17zBhhVloZzUezZICaZRhXEY3KcuRB6CAkP5EhsDwJiBrTkUWLIIH3nwJROWiUlI3YI1C/5CSniKlLcRQ02/+Z6F6dI/6736f12ARepq8SPon9FrdN+wNA/hbdjfp+rvYiRPhAWtE09d09Aeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=me.com; spf=pass smtp.mailfrom=me.com; dkim=pass (2048-bit key) header.d=me.com header.i=@me.com header.b=wxJ9gfMK; arc=none smtp.client-ip=17.58.63.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=me.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=me.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1728247403; bh=osjS0aKc7wwnlQfLLzTAWdC8plQ2BpZU14HisP5sgHw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=wxJ9gfMK1ApLOxEaGNiMe6M5v4BxcBsGt1H8n2mA0/3rTILo/WlrF7n0qwhGm445X
	 UTIFWUTaJkY4p5oqJE/2dKorqsTRZBxLpIHoSj+snpPGM2mprRvTLKKqRgDh1oABCg
	 V97uT4cyUa9sJFnAodamv023QDKkayBqE8qzPEXkN+rBVPyOzUeVq4ZN7zranZOM1n
	 g8ZBl3jyN/ilRR4wNfR1T43mfkuRrTSy4IdXo8P5p+aTaI/uv8NhBEkHrIEhN1P3r3
	 KROUG/OXF0iF2U1XEWCSA11JkOdWBpD7fBS3KHN2gXEyp1G551IwqbpgSs6gXtlIh3
	 1aw3gWUGDFj5w==
Received: from localhost (st43p00im-dlb-asmtp-mailmevip.me.com [17.42.251.41])
	by st43p00im-ztdg10063201.me.com (Postfix) with ESMTPSA id CEE4B98013C;
	Sun,  6 Oct 2024 20:43:21 +0000 (UTC)
From: Alain Volmat <avolmat@me.com>
Date: Sun, 06 Oct 2024 20:42:49 +0000
Subject: [PATCH v2 1/3] dt-bindings: gpu: mali-utgard: Add st,stih410-mali
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241006-sti-gpu-v2-1-c6bb408d6903@me.com>
References: <20241006-sti-gpu-v2-0-c6bb408d6903@me.com>
In-Reply-To: <20241006-sti-gpu-v2-0-c6bb408d6903@me.com>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Patrice Chotard <patrice.chotard@foss.st.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Alain Volmat <avolmat@me.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: zF7jydl3KZFwRplK61WTEFAS_J9CCllf
X-Proofpoint-GUID: zF7jydl3KZFwRplK61WTEFAS_J9CCllf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-06_19,2024-10-04_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 phishscore=0 suspectscore=0 mlxlogscore=716 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410060149
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

ST STiH410 SoC has a Mali400. Add a compatible for it.

Signed-off-by: Alain Volmat <avolmat@me.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
index abd4aa335fbcebafc9164bd4963f9db60f0450c4..9318817ea1357d4d66db951513d9bc033b222190 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
@@ -33,6 +33,7 @@ properties:
               - rockchip,rk3188-mali
               - rockchip,rk3228-mali
               - samsung,exynos4210-mali
+              - st,stih410-mali
               - stericsson,db8500-mali
               - xlnx,zynqmp-mali
           - const: arm,mali-400

-- 
2.43.0


