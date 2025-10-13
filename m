Return-Path: <devicetree+bounces-225882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DA0BD1B84
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:59:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4C7764EBD4C
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 06:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644662E6CCC;
	Mon, 13 Oct 2025 06:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="o6ZFyDub"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2A32E6CD1
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760338764; cv=none; b=lY4nPc+BjZYGUWkTLteZnh1+uconsQL0GFN9OrtLvoVxtM6lYeC4CPJ7L855xoUg44b6qCgbEHOi14OeQ8mIs0+qQlCkR683eeKf3mg5nyi7JHFPoIKzrFaCWm/ZsgmQN3kisezc+01vBxF3YG7lr9LxDzX+S0vsYW6p63o7BrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760338764; c=relaxed/simple;
	bh=xWlK53CaSwa6hnr5xS+FvtF+Rl9CsmDftNxczEkSap8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E1SEGVDGiSu9Dlr8ecd3reMX2ZiMDnhtSCKJ4urEgI9M1RzYAWdblIE7MBKC1dEtQCryGz4V0hO5yV8SoGdrItwX8A6f4bDuzOMALlsT+0m4CUxQHxkWJLk8Vz+jLD2jI5XddckQs1jMmt2M8u2Ns7+O+tBSXqL+6yudj6lAySo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=o6ZFyDub; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id EEFB5240027
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1760338760; bh=vdFSblBB+c7p7EwEPuHzEd2UFn5pK5CI5ZtkGJjeLYw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:From;
	b=o6ZFyDubdGNIVVQaQFlBt1m2d+dDwrQwZKXLzdUxbTrdlWy+shBIH/CGsrwqeawgz
	 6zpnacbYZKKYncIj/kbyt/J7KEoptIg+xEc3J/FOLScQ0NQtBVZkjDskVBpLsJGVnQ
	 NKQw5P6z/4ew+CslL0Xbn1cTrVhSpGRv3Kvw4Tp+pMGqHO61+zh2J+RO7mMzkFoMvZ
	 T6N5WZ0PBsMZVbhPFTtKG6VSdqKgmvN4ntlQvPTLMaQrGx4dRkS3k5RrgDdt9oDZVv
	 7U2QaMc6M+vjHCkYdiQ1IlNZdHg9o7/VVS/Fci+xhfHA5wouIUsC9nIDPuyKuI+T2q
	 viR9lAq0BCEyg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4clSrR5tZBz6v1j;
	Mon, 13 Oct 2025 08:59:19 +0200 (CEST)
From: =?UTF-8?q?Martin=20Kepplinger-Novakovi=C4=87?= <martink@posteo.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Martin=20Kepplinger-Novakovi=C4=87?= <martink@posteo.de>
Subject: [PATCH v2 2/2] arm64: dts: imx8mp: add cpuidle cooling device to the alert trip point
Date: Mon, 13 Oct 2025 06:59:20 +0000
Message-ID: <20251013065903.35216-2-martink@posteo.de>
In-Reply-To: <20251013065903.35216-1-martink@posteo.de>
References: <20251013065903.35216-1-martink@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Idle-inject up to 50% of all cpu's time in order to help cpufreq
to keep the temperature below the trip points.

Signed-off-by: Martin Kepplinger-Novaković <martink@posteo.de>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9b59f53952d5..7ab321af9e15 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -347,7 +347,11 @@ map0 {
 						<&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 						<&gpu3d THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 						<&gpu2d THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&npu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+						<&npu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu0_therm 0 50>,
+						<&cpu1_therm 0 50>,
+						<&cpu2_therm 0 50>,
+						<&cpu3_therm 0 50>;
 				};
 			};
 		};
@@ -380,7 +384,11 @@ map0 {
 						<&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 						<&gpu3d THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 						<&gpu2d THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&npu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+						<&npu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu0_therm 0 50>,
+						<&cpu1_therm 0 50>,
+						<&cpu2_therm 0 50>,
+						<&cpu3_therm 0 50>;
 				};
 			};
 		};
-- 
2.47.3


