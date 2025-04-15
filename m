Return-Path: <devicetree+bounces-167321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF977A89EE5
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:02:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D111C166E9C
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B0802918F2;
	Tue, 15 Apr 2025 13:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="N/RvFUb7"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9031DE4F3
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744722158; cv=none; b=YKI3bXo30GwnG7dbHDyaHCcodF8913CDblhem7SY/4dOH2J2i/7sV7t1rlMccze0gFniKUiYo7DOxcosPogifsVv09xCebd/xZ8VXllO1vvGUPoQvWdiikVc5NJBc5XFzcbN1Z7d5yEu+dgaHvJrDV1bRDlW/oJjQRW/Na1XapY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744722158; c=relaxed/simple;
	bh=dqSohRqnaX3T4biyEYTa91cwEJw2TNovypV/CEmubvQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lYZwHcx0k7RT/QdM3dhahrX6xT+wrXRvpr10XL+edCDRAFiSP01iXDSKpSsFGK+Gow2RKQlRbZIwneb0qx5JHMF0IueMOmZZvnAXYwQDej6rmPacKaP04Y1KYuGkYKSSyOtBunTO/IfWNW/cX4N8mz1MiJi9W957lYmkXctAHUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=N/RvFUb7; arc=none smtp.client-ip=95.215.58.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1744722151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wNwI1U/mwji86+rRMoS5QnuPV7UL2iA5v/M6rqOfDNw=;
	b=N/RvFUb7IyayfB4EWy4lnoG3LdalNJuwYoFSvx2lgGz1dvoqYlTKQyKDRmXjTTA7C6/AVr
	JMJjpD1L5SH0Fz9eT8LqlZcGBfJ+FiNhM153kzNP4uJ2+Nbu33X9n1dAM90nYx2R3gegeM
	czN+83wuFoAyxIjBT6MKzD6KODWLRMLDOvIoa69H0iqwlnj9QD3tL3+jnIpBnny847Jmk7
	4LkeY/X3MQY9DHYSWylgzb+AO8e0t0e9dw+yM8QqPS878Bc0+KaFxPpDzWrrm9aNVw1ln5
	10kH4e3hZoB85p9/nBIMfVSS9nO+w/J8HC9Ph6NKHg/N3GO20tVY1H8H5u+V0w==
From: Alexey Minnekhanov <alexeymin@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Caleb Connolly <caleb@connolly.tech>,
	Dang Huynh <danct12@riseup.net>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Alexey Minnekhanov <alexeymin@postmarketos.org>
Subject: [PATCH] arm64: dts: qcom: sdm660-xiaomi-lavender: Add missing SD card detect GPIO
Date: Tue, 15 Apr 2025 16:01:01 +0300
Message-ID: <20250415130101.1429281-1-alexeymin@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

During initial porting these cd-gpios were missed. Having card detect is
beneficial because driver does not need to do polling every second and it
can just use IRQ. SD card detection in U-Boot is also fixed by this.

Fixes: cf85e9aee210 ("arm64: dts: qcom: sdm660-xiaomi-lavender: Add eMMC and SD")

Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
index 7167f75bced3..0b4d71c14a77 100644
--- a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
+++ b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
@@ -404,6 +404,8 @@ &sdhc_1 {
 &sdhc_2 {
 	status = "okay";
 
+	cd-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
+
 	vmmc-supply = <&vreg_l5b_2p95>;
 	vqmmc-supply = <&vreg_l2b_2p95>;
 };
-- 
2.49.0


