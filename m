Return-Path: <devicetree+bounces-155036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 08204A55471
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 19:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A9D31897BDB
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 18:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D95926B2A5;
	Thu,  6 Mar 2025 18:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IplnWniH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8192698BD;
	Thu,  6 Mar 2025 18:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741284727; cv=none; b=NjefOcwaz09OoC6TRyWkRvsJUdV2TRpCRJTrulpApGAYIl1c4QC8Ol0RN2YVLaxR5v4YoWWcLm+OQ5jg6EcBBgOK5QumoHCBQdinIx+n0pj6bH2A3rAAStZDqMJ8mIdX0dJ5aU2oaoWW0eqo6yDDoOybuKb7wnyvQ7go13dX//8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741284727; c=relaxed/simple;
	bh=FS4XQkrU2QPioySKoxOX8rzwFo3bvFpfQwHPcv0EQrc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GwdWDoghAfhbd5Q2CIHbHmfTVVsFztfDwstM7Yfxo+we4KgVxK4249Ng9caKLIjZmiyQ//mOUYT55oZHohlEfMMDCpc5G7d9xceQOY+d8NQqugu1Nv3++U17dWO05iLRt0ZEkdLPzqawd9hY3+P+yUZIhJAilAPp4KSV6LewfO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IplnWniH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37909C4CEE4;
	Thu,  6 Mar 2025 18:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741284726;
	bh=FS4XQkrU2QPioySKoxOX8rzwFo3bvFpfQwHPcv0EQrc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IplnWniHhChj7ub0otwd+2peS+dgOjPeBWENHDowYkwLHQ6nj8Z67RQkhrXRcL0c+
	 HHFPqz4GNPJjfft5mzy858FaZyKrgpUvA+jK/vpClw7IfAAtjBqRTAqRfBPkkESlYM
	 gqvvUJit7ogK4gwJ3Ec1LuoxMS2DXQG7hrlFAeo5s5trSF2c5y29msE0WRdKMYj+ZE
	 2zbnH1I6d01/MkoFE/SgrZe4i88ElHcCfWJ+Bsm/xb8nqgBLJxu5I1wXHjvsD699wG
	 oVLQvxa5LPSN8GEu4MbbnqyYTCHVMk8z0jf6/uhsaoOY+jeJjYhkG0zt7p85Fs1zMX
	 ym2PENBFaQWoA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 06 Mar 2025 19:11:16 +0100
Subject: [PATCH 04/11] arm64: dts: qcom: msm8916: Fix KPSS ACC compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250306-topic-dt_bindings_fixups-v1-4-0c84aceb0ef9@oss.qualcomm.com>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Robert Foss <rfoss@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Christian Marangi <ansuelsmth@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>, 
 Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741284679; l=1829;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=iaAVtf9qtby6vc6PFCC5GzwniUmkKH2UTVyQU9HYJlE=;
 b=Hg3hmMYnsoRQZZiKMT/GzcS198eP3oEGnD+mU23zdi+2VnHh45x0GMlebrA1KS1iPOoSzXv+G
 eACWh0uzmPCDsnFP+UeGU2dhT1H8LsdIbd54630mCsFTOHIdCzywh7Q
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

The current compatible has been used with no corresponding
documentation. Replace it with one that has been documented.

This has no functional effect, as these nodes' resources are only
consumed through a phandle reference, anyway.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 8f35c9af18782aa1da7089988692e6588c4b7c5d..33a28f8163dda0e53f4176d61738ce175efc096c 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -2574,7 +2574,7 @@ frame@b028000 {
 		};
 
 		cpu0_acc: power-manager@b088000 {
-			compatible = "qcom,msm8916-acc";
+			compatible = "qcom,msm8916-kpss-acc";
 			reg = <0x0b088000 0x1000>;
 			status = "reserved"; /* Controlled by PSCI firmware */
 		};
@@ -2586,7 +2586,7 @@ cpu0_saw: power-manager@b089000 {
 		};
 
 		cpu1_acc: power-manager@b098000 {
-			compatible = "qcom,msm8916-acc";
+			compatible = "qcom,msm8916-kpss-acc";
 			reg = <0x0b098000 0x1000>;
 			status = "reserved"; /* Controlled by PSCI firmware */
 		};
@@ -2598,7 +2598,7 @@ cpu1_saw: power-manager@b099000 {
 		};
 
 		cpu2_acc: power-manager@b0a8000 {
-			compatible = "qcom,msm8916-acc";
+			compatible = "qcom,msm8916-kpss-acc";
 			reg = <0x0b0a8000 0x1000>;
 			status = "reserved"; /* Controlled by PSCI firmware */
 		};
@@ -2610,7 +2610,7 @@ cpu2_saw: power-manager@b0a9000 {
 		};
 
 		cpu3_acc: power-manager@b0b8000 {
-			compatible = "qcom,msm8916-acc";
+			compatible = "qcom,msm8916-kpss-acc";
 			reg = <0x0b0b8000 0x1000>;
 			status = "reserved"; /* Controlled by PSCI firmware */
 		};

-- 
2.48.1


