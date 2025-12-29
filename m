Return-Path: <devicetree+bounces-250062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C60ABCE6144
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 08:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 14626300160F
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 178CB2D8DB5;
	Mon, 29 Dec 2025 07:07:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3E72D47E9;
	Mon, 29 Dec 2025 07:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766992062; cv=none; b=KNhloSCapEh4JuMVKe8JNmF6yQNbFbdwoMbOzGQSpjkH/6Z2mtEB3PonAFa3ZdJNRJgihRNXLqhiAu3y62/UtRnxK74MjnCNa09xFYTTe4nFYKWczFOZnRWh/UQFLaf0qR6fjwGdOZN1BfQbp+7QFqRkKSgFaS3KIcWGoVosonc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766992062; c=relaxed/simple;
	bh=EVyZJB+dwiOvcHC0kjLJKpckCQRe8tjqYjbOsgxK9xk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O/CQInA1St/fx2b8mih6Gv/8P4kqoy1qYYGqH1VX9Qju1ObVIatdQyfaQRiHO7k1DM1Rrx5rYqnzkKLDNtH9/heH50Yd8hO2z1mDSI9C1sNDRzoYlBI+AGzCoizWkSkJeanfVXoVzSFmZ7fDA0cDfYw3yUv9V+LawmUoI06KYYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5F4CC4CEF7;
	Mon, 29 Dec 2025 07:07:35 +0000 (UTC)
From: Sumit Garg <sumit.garg@oss.qualcomm.com>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	akhilpo@oss.qualcomm.com,
	vikash.garodia@oss.qualcomm.com,
	dikshita.agarwal@oss.qualcomm.com,
	robin.clark@oss.qualcomm.com,
	lumag@kernel.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: agatti: Address Gunyah memory alignment needs
Date: Mon, 29 Dec 2025 12:37:12 +0530
Message-ID: <20251229070712.456138-2-sumit.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251229070712.456138-1-sumit.garg@oss.qualcomm.com>
References: <20251229070712.456138-1-sumit.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Gunyah hypervisor requires it's memory start address to be 2MB aligned.
So the address map for Agatti is updated to incorporate that requirement.
This should be a backwards compatible DT change which should work with
legacy QHEE based firmware stack too.

Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/agatti.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
index e705eb24160a..153916980ac0 100644
--- a/arch/arm64/boot/dts/qcom/agatti.dtsi
+++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
@@ -298,8 +298,8 @@ reserved_memory: reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		hyp_mem: hyp@45700000 {
-			reg = <0x0 0x45700000 0x0 0x600000>;
+		hyp_mem: hyp@45600000 {
+			reg = <0x0 0x45600000 0x0 0x700000>;
 			no-map;
 		};
 
-- 
2.51.0


