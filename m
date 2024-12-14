Return-Path: <devicetree+bounces-131077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A849F1E65
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 13:00:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C594818879FC
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 12:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E5D417B4EC;
	Sat, 14 Dec 2024 12:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="bU9ZvT68"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C382619007D
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 12:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734177626; cv=none; b=XJb183Inj4vPhllldkEAhN4aYWyXu7VU/XoKtstf4qF/Mha6vetZWEjBVzGtZta2N3vMwOr5BBQqcij/S8EZgqIdUz9rEMbMbjiYPKw+fwfI1CJ6P95WSVcCL+apaaJZm25+iG6vvM1Dpf4nS6la2D9bfyJ6CeazXZ/VQm7zETE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734177626; c=relaxed/simple;
	bh=vZjQH4jLLh+PJA7ZEulwt93RcdAvvXTWLz4r72z3nAQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QYtB4B/HjNDFCzbMOqb6k0+3ttY2+MaSZqQwWqDOvUN9ZCwEanyp0zFYG/TIjr6zzl/RgPK9JoB6NZ9OCJcKYVXVhY5+irVkhShRLHP3nIyJ5HrzZCyZM+tKXUyBx+eSAQ3r3UW4WdYjqNar1HqWlig0tTwlMozoTaJelaia4SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=bU9ZvT68; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=bU9ZvT68b35Vnf/jG+nfSrI+u3RPLfDLpdt/v0IuELutyH6qBHcNxA/9v4cNA0OWm0qwy2Abbu4H+2hht2o6uFqsSWFI6qEwMkE538QD/8XH9Gim/mmS/2XBVmLuH+YrKXr7ebNVbY7Dz4y1aT2jeY914OjR4TmgU6x8DWAUW/D0ysEoRxPWnCguuxCFsPJIOd4VCvZ7PTZnjhMKntL3vECtxyYWR0bERB8zB8pms/9JIstrYj14q7EBkYmP57VJIOZbel0u402ZxNXiDYKG3L2LnYXGItR26WYO+OMsxmUOtO04OvYiLWrp0gWABCOtD3yp+lQlisy1k97U26A+qw==; s=purelymail3; d=purelymail.com; v=1; bh=vZjQH4jLLh+PJA7ZEulwt93RcdAvvXTWLz4r72z3nAQ=; h=Feedback-ID:Received:From:To:Subject:Date;
Feedback-ID: 68229:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 770029855;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sat, 14 Dec 2024 11:59:06 +0000 (UTC)
From: Umer Uddin <umer.uddin@mentallysanemainliners.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	igor.belwon@mentallysanemainliners.org
Subject: [PATCH v1 1/1] arm64: dts: exynos990: Add a PMU node for the third cluster
Date: Sat, 14 Dec 2024 11:58:55 +0000
Message-ID: <20241214115855.49138-2-umer.uddin@mentallysanemainliners.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241214115855.49138-1-umer.uddin@mentallysanemainliners.org>
References: <20241214115855.49138-1-umer.uddin@mentallysanemainliners.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Content-Type: text/plain; charset=UTF-8

Since we have a PMU compatiable for Samsung's Mongoose cores now, drop
the comment that explains the lack of it and define the node.

Signed-off-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>
---
 arch/arm64/boot/dts/exynos/exynos990.dtsi | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos990.dtsi b/arch/arm64/boot/dt=
s/exynos/exynos990.dtsi
index 2619f821b..c53df5d7c 100644
--- a/arch/arm64/boot/dts/exynos/exynos990.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos990.dtsi
@@ -46,7 +46,14 @@ arm-a76-pmu {
 =09=09=09=09     <&cpu5>;
 =09};
=20
-=09/* There's no PMU model for cluster2, which are the Mongoose cores. */
+=09mongoose-m5-pmu {
+=09=09compatible =3D "samsung,mongoose-pmu";
+=09=09interrupts =3D <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>,
+=09=09=09     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>;
+
+=09=09interrupt-affinity =3D <&cpu6>,
+=09=09=09=09     <&cpu7>;
+=09};
=20
 =09cpus {
 =09=09#address-cells =3D <1>;
--=20
2.47.1


