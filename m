Return-Path: <devicetree+bounces-252172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 654A9CFBF55
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:30:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5D4B30381A8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24972586C8;
	Wed,  7 Jan 2026 04:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R18fp8af"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C4524E4A8
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767760233; cv=none; b=W0fHS9cNudPYCRelrcUKhHeBdpLtQaWkBQl1W7//UEsL1XznRzvwdantDc1VNeTLtdHHFsDTixv9HVRIa9BuItx+obMb/1FHmA6AUrOPn3/H1DNcFb2Re7RAYkds3PbtRj4QIGNGpP9gwekgcs0agDsmNPyFhG2YyWTstVcKdQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767760233; c=relaxed/simple;
	bh=J9Fz7sRtOqzGWUn4OaalbhQscMbkEKJaXUTx0SI3dAk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sZyhgCkTyvyOcvyytjpcg+tZw4qQ8O3pGF1rmf9BYPOZCCnwD3y1kwlhjMRIejTGh7+4C2TOt6SfyfJ8gF2Rhw6/MZ0gUBNd+8frynbCs5Y7WiOuryIT5/FtUie13n0vZMSK1TkwaRMnuKSS9zvHEq+NufNIGnvSNIcREbbu09I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R18fp8af; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8b2627269d5so179698485a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767760231; x=1768365031; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IF0PSXd7nxzcgib/fF2QxJQOQ3zAiN3r11lfYK9VD2k=;
        b=R18fp8afWgdLQq2YpIcpyl7GB8W+qc5jhai+abXLs2hLpONAo4oe71rXsoNY7nDWJK
         RvAV3YvTozO+pXJ1jju936Lpb/iOZacj9uQT5ewHptvZhCWhonaj8MIdXxbsCXTHktY7
         u5H1n8BXZ6/Pm6nXF1cZCEcTWiw60QYiz7L2KNKHWa4iYgIja6chQG1dkckyCKAttW4v
         hYJVbSTVVqZTg5kVN564rGyeEcYkd+GRT+jhWbQgUaMV1Q7PwDUDpHCNJM+SRIgoxJfM
         feIXTn/EvbeuD+y8hQrgjIhqAOnBuKlH2EGXLc0fyehsFlUVvHbYWuc0SrasmeTP87UG
         c21w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767760231; x=1768365031;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IF0PSXd7nxzcgib/fF2QxJQOQ3zAiN3r11lfYK9VD2k=;
        b=LaOy+7EyZxh08DJTG53Zs7rlcsRaMoOmVREhoYXTgFhQozmKaHdknWjBe7MP+7vKX5
         IBo4xgiQaGQcQsZ4tp7ANoh1jkyS/SHFD3p4AaYCTVBeWmVR87FxCeQyof3wMbeTDYLI
         6wZrPvRmgy+Bznh/SU+Q/kwyV817qFcSSUL02T8SRHAZ+DHr4BLYy0ODJ0TiLZoPPm32
         5X/eZQ07bXdo8EIBKKJWZH6Auuzriq7vCTftmkowD3XsJcpNpBg8FOBO1yjkrVbx3TTn
         PocEiNiRlPqTfEV9BW0ibnARQPlsA8MohQm1PzoqNLK0UyjElzweXEqZUnoprzq5mNJw
         b2ug==
X-Forwarded-Encrypted: i=1; AJvYcCUAXGIbF7oEPqweepdWcyAicuYDPISwzr4Qhs4UTmyzAQk2+Onk+/mRrp0Rw29FNwWRYbIm/ZE0btVu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy42UB+wZ3PvvbV9gcLYYeX2ITPDwU12ONXjCnc1eNBYZza207b
	Oh5vCkbLhzJWtwXB/r4NMM374TjHIvAhpFjisN6Sqhp+8pt+aSh6jkp3
X-Gm-Gg: AY/fxX4meAchJ5bGBzMoUZmjc58rM3Cs7Fgz+6EptFBgMGJbzvjd2SqY8tNAmNxfy7D
	CzJGloHX4STgxgaNGfFlhpOuf+jCpfcWFPkbkgDEP43CrQywpANoFBU1gAeslwzyJZ97A2mWz/r
	xnMAaNOKBjT6l6dIcfTw5To5DL6uey2dOnQKVSQKZL8zBV9oMlwq96Wh21wIwqkf3uZbjZyirws
	N8q5YUxDmZDlXIPc+jNUeNNxmE21Crk0JzNuXxnJs2AtDeqaAxHCo2R+rIVu0OuR99O16TLDqib
	SnTat93eXFmABJj0hvLtutCLAjDLHAwYURXmXcrIWqQbHvBicHkPk/ewh5k//6JukKg3dshzv1k
	GFVo7Lxc4EjjjoKkCJEeUKelKYk0jrdTfbNhVeVEs7yK3Y1M2kAzJGNUYczmTNCw0aWKlgqxEwG
	8TKyg0z53BInb1yU0WaRAHaeCc6OTGKS30miMvC/M+RO8pf1QaQ/QWuuQm7CBrVkd8jE8MOiKD4
	iw=
X-Google-Smtp-Source: AGHT+IETyC4X98OhIHBp46gznYzJBy3d02/tkM3F4X2Rh0LLVtLU+yZjpl9/TdjSUKepyeyPRAiyrA==
X-Received: by 2002:a05:620a:1904:b0:8b2:f1f3:900e with SMTP id af79cd13be357-8c38941c68dmr155122085a.62.1767760230642;
        Tue, 06 Jan 2026 20:30:30 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f4a6441sm309316385a.7.2026.01.06.20.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 20:30:30 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v6 3/5] arm64: dts: qcom: sdm670: label the camss ports instead of endpoints
Date: Tue,  6 Jan 2026 23:30:42 -0500
Message-ID: <20260107043044.92485-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260107043044.92485-1-mailingradian@gmail.com>
References: <20260107043044.92485-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Endpoints cannot be pre-defined since dcf6fb89e6f7 ("media: qcom: camss:
remove a check for unavailable CAMSS endpoint") was applied, probing all
endpoint nodes and requiring them to have a remote. There is no sensible
remote in the SoC devicetree because camera sensors are board-specific.

The ports are meant to be extended by a board devicetree in order to
define fully configured endpoints and connect the ports to camera
sensors. For nodes that are only meaningful if extended, labels are
usually assigned. Label these ports so they can be extended directly.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index b8a8dcbdfbe3..3eb4eaf7b8d7 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1776,28 +1776,16 @@ ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				port@0 {
+				camss_port0: port@0 {
 					reg = <0>;
-
-					camss_endpoint0: endpoint {
-						status = "disabled";
-					};
 				};
 
-				port@1 {
+				camss_port1: port@1 {
 					reg = <1>;
-
-					camss_endpoint1: endpoint {
-						status = "disabled";
-					};
 				};
 
-				port@2 {
+				camss_port2: port@2 {
 					reg = <2>;
-
-					camss_endpoint2: endpoint {
-						status = "disabled";
-					};
 				};
 			};
 		};
-- 
2.52.0


