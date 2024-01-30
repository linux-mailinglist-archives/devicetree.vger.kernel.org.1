Return-Path: <devicetree+bounces-36850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46715842DD4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 21:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 798FD1C2445F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76F97995A;
	Tue, 30 Jan 2024 20:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="KhhfVz3z"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB15762FF
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 20:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706646489; cv=none; b=R6aHsPb3h4bfJ/oq+N4vOwbxwgUPWapvRoCXpaJgOqe87Ym7NuHVE765J6XJjyo+Za8RrIa3PG4kElzeBn2PIDGlFEsFIq3jyIBEEbmPXi5AXlIMHXo1hUvKlCFbdg9JIg7ZXssjYvf+y+UQhLvhISN2fsIcGbU/DKPk6AkVOOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706646489; c=relaxed/simple;
	bh=Dy2zvMNDx5j4KB9kQs25V4h/C+Rr0lg4r5Kq3B7dEIs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kXJUrYXbKbg3MvKMawZMrEB+RreHuL/Fw1fgplNfHDiCHcbcqRJ0tw+tLGXuu8aHrE07WSVz2XGRfxOoYcMq/WuPUdxDS8J2/12CNNhauHmKWkOmWWixZYJQ+lulJ26II/1lNvPu0ozPr17wwGwbIE4it2X9DIm79JvHLQhrOwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=KhhfVz3z; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1706646486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LY7BZBo3VlQecSfrnmuFqqqhq78U/T+UoPgqaF/JIr8=;
	b=KhhfVz3zGmjntxGbSDKile4pyQ8koKwKatxN/dPsoxL8Uxbla5w8qdPykcYQiGC8ZcdtfK
	4az9dYu8Om3vDFEmGtxsX4bFHZBcZavfWD0lKf6w2ncvKGsgiIDoQkxtRwxBZNp9uUcXAJ
	DFwDlBqTIXFJUgq3AIZ8t0rzijySRKKRbFwoSEcVMUp0acXQMCNU/my1G9HLqQB/4EAA+R
	EMZ1NVUnSIuhTuQ6lantMNIwX0Qzn+8v/nRNZ/kY9j5bYRn8STPVb44uuyFlG07ATnkPh4
	Hrd99Rdi+Lx8LoqFdQL33KJFL8IOTIakY04qizdeUGmMGn3xt3LvszVxYQib7A==
From: Anton Bambura <jenneron@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 5/5] arm64: dts: qcom: sc8180x-lenovo-flex-5g: Allow UFS regulators load/mode setting
Date: Tue, 30 Jan 2024 22:27:55 +0200
Message-ID: <20240130202755.2289952-6-jenneron@postmarketos.org>
In-Reply-To: <20240130202755.2289952-1-jenneron@postmarketos.org>
References: <20240130202755.2289952-1-jenneron@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The UFS driver expects to be able to set load (and by extension, mode)
on the supplied regulators. Add the necessary properties to make that
possible.

Based on https://lore.kernel.org/r/20231214-topic-sc8180_fixes-v1-6-421904863006@linaro.org

Signed-off-by: Anton Bambura <jenneron@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
index a8816ff0ba51..3e2c7846d95e 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
@@ -335,12 +335,18 @@ vreg_l7e_1p8: ldo7 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
 		};
 
 		vreg_l10e_2p9: ldo10 {
 			regulator-min-microvolt = <2904000>;
 			regulator-max-microvolt = <2904000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
 		};
 
 		vreg_l12e_1p8: ldo12 {
-- 
2.42.0


