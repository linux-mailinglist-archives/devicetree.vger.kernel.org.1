Return-Path: <devicetree+bounces-218124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C13B4B7EEA7
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:06:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E16401C0478A
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 01:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8721A286D56;
	Wed, 17 Sep 2025 01:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="sWA3uhgo"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com [95.215.58.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9E32857F0
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758071468; cv=none; b=nX790NKs+msySrENRoiisAqeVcVsPN453B1+h/dKGbraWenNctq7tV1hNYHSRRpAZMCjSfc1CnqYT49AypKoGya4rmYTbb1Gv/n/I7RSfz4Lkxpz5dExWNfuF/ny3oAn2NUV2J6Aw0/94Ng+SlhNnWHTAky7P+VC0EqbGDxwj/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758071468; c=relaxed/simple;
	bh=c4YJneX4Q5A9yvxLd5vJdUbDWZrBmpDc+6nv3rce66I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZTzgfKBa3oGGHGO+iNL1f6loE50tW2d9KMpx9V5iCxDshfUPDsX/MUhT+1Hd28HSzJaw6xxW3ihTcRbeUHPqTeCaBeR8h2EdAo5KcgQcQD/4lw7Zff6NpuboUH8iYt/zvgM7bvMy32GFMr20IOiv2Ql3ti4lM9q5Zj19Dc0t9/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=sWA3uhgo; arc=none smtp.client-ip=95.215.58.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1758071464;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gp1qVHjpDVnJgq9Po7ok+fTyAvbzy4QvgPvvb9Xkeco=;
	b=sWA3uhgo6ZiANVUbF6VZRHMaCdZq5uxKLGXOmAvZOpGqnQqiIc/sx/DGi71yppV1SdpP2H
	thGeGXSvJ9fc5W94Sp9vX/DEEoUSFUHYFwAi+bIUcvunFZ4PN/qR40L8ZCX8VE99MNmRtm
	a64v1tL1Und7G5qMSiFzFDSCjCkSkcjsriPQq2v7riQjIHvbEnHhrkjrO24uPL7TmJv5gq
	nSoFfNUArPXjGLOUBmDZvfxDXYK6JEapJ6BVvnm/6rOhdXQg8llV+/K9jwhAPt7iA5sCB2
	L1sLy1ff7bNIOvjXOGYuUsV9vM02D/Gn34hhNhzYyR+UzdzsaDZf/oBKNIaMgA==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Tue, 16 Sep 2025 18:09:54 -0700
Subject: [PATCH v2 08/13] arm64: dts: qcom: sdm845-lg-common: Add
 chassis-type
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-judyln-dts-v2-8-5e16e60263af@postmarketos.org>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
In-Reply-To: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 Amir Dahan <system64fumo@protonmail.com>, 
 Christopher Brown <crispybrown@gmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758071415; l=698;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=c4YJneX4Q5A9yvxLd5vJdUbDWZrBmpDc+6nv3rce66I=;
 b=jjNKcy3/DhtnFlBzbGXbu6ob9CqyUEvt/rB9XfZqo0Ctfbz4VXsIhLplC9pcwoBsL06B4rTXN
 rD28fDeFUKDDqHOuwZZ+pswcug+diPqrtMEtic3H5AmxZbKlnBwRvLD
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

The sdm845-lg devices are all phones, therefore handset chassis

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index 01ac32ae8728558741d5d47fdd00219b349f225c..920a87e422518df980fd36a70b47f7b728536d23 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -28,6 +28,8 @@
 /delete-node/ &wlan_msa_mem;
 
 / {
+	chassis-type = "handset";
+
 	aliases {
 		serial0 = &uart9;
 		serial1 = &uart6;

-- 
2.51.0


