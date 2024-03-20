Return-Path: <devicetree+bounces-51952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ACA8811A1
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 13:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6373285551
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 12:25:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77CFC3FB3F;
	Wed, 20 Mar 2024 12:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fEmbLziW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9672C40847
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 12:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710937537; cv=none; b=QN7T1YmX1dFw5Uf1sEycFPaQAdrOpICIBDUWbQJ9A+5irrqNiiFp3mGqxL1nlupZQYfbPz5enjzbkETEmDUEoXUNif0jYLYRJdRqufIleZ/c03oYBVZXbgXQG76ElIUVdTCGsiUMaChc2v4NbjzQ7z8Bu3/V8StFr2N5u0FswE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710937537; c=relaxed/simple;
	bh=O6nw9q4DjUyPQCcQqSpruvvcT6pJqqZaEGQnnbRnINc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aBDApsw6mIBHznsdZOUc+YJ1GWhlC2+eDMiCyNUwgK0aRim5VakqaeoBh5+d8/nwY5t/AdajaZmjbXWWOwioaDhrrT0MR6A6O34LzQks104qcrcXziLmu1W1pqv6IzwnYqHsJH+qgE1vosF2KNS7LB22l3TUkGaCFhSxVRfH2gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fEmbLziW; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d109e82bd0so89438701fa.3
        for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 05:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710937534; x=1711542334; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uYXISrxVZmG0cSqs1Z3wR5TStIOq15Iq2U3WIUX8ykA=;
        b=fEmbLziWRdImdGrFaFRieA5M9HTLr1tHmRdrP1WCzQZ7VXar1q23++wDfvPM3fBG7D
         St5VcQK29Fa4qQ7eOS8HW/q97DogQkWLUSrI952DmpkRfD/HgAGCh4SZgX3oraTSvQkY
         TCgCG+t3wUSny5888wNA9k84S9uVmskqHxDVI7Y/MwNrlXyDreFMDB1twALN5VLXuSCI
         uwaaQrZ3PBLaoWerGLqchauX2tMeF642SltB+N9hPZQOlylUBqEcdkHh6ThVH2i+mjm6
         Ago6GJ2hf53rdrEOIW9NrZLLbn2W6kQYIjug7G4IbWyJb7S51JzggmayIBEbmPVBion1
         886A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710937534; x=1711542334;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uYXISrxVZmG0cSqs1Z3wR5TStIOq15Iq2U3WIUX8ykA=;
        b=eTgOq9Em+VLrl5OSxWx+IKVNJwWyxota//aXkkJZPDOh4ZmcR3c5UNC0ckSasHVws6
         JxmPdkjAVWtqZOHkdgavSJ2hHU0AmoRHOx0CHJdQSacIKd/aqL6FdWu4m11TPBvDxrE5
         iKBbQBEgBrCwFY9fHZhwXiA6+CvtYfGH1RG74fDNPtUGQcBv7hyowwCc2LQy5g/9Fvsn
         CqL4y99uLrMbt2UtOSwlqLFpKoIieAdmpUU3qsRcF3AolWRg6IPvT5/UeFV9SayQn0TH
         pq/Xg/ZNFsBm2o5ICiMydKT5VtNXpsa6vNHqBAY7BAq/W/d1kZUrhvPDzy5yWhaE+x2a
         7zbA==
X-Forwarded-Encrypted: i=1; AJvYcCXHfRiYbowp+ns7VwTzN8UX/4ad2dECle4z5HiguuV8w54hrPbY9kRGEL1DozQV1Zp/X5fDPzGhB0qVOH4oS4UqOZfPTZ0uPiGQ9g==
X-Gm-Message-State: AOJu0YzHbG8FV4VFqzTwFDUacDXcwnJHAK2GKuOpn+RLS9MkxdeWw+u0
	Oy6QI7AlaX5hvLvKLWcKBzfqBe7iQQvRZsYhF228JdS7HnE7yDcMlTXrRdNPzMg=
X-Google-Smtp-Source: AGHT+IFSGp6onmwOCG9iC5No7m0riFr/aKFnD+fp7Jq7Vi+y3DuhgxvL8EoLl7vw8JPfZL+MNJ6sNw==
X-Received: by 2002:a2e:3c12:0:b0:2d2:ccd2:3a9b with SMTP id j18-20020a2e3c12000000b002d2ccd23a9bmr1242515lja.28.1710937533687;
        Wed, 20 Mar 2024 05:25:33 -0700 (PDT)
Received: from lion.caleb.rex.connolly.tech (host-92-17-96-232.as13285.net. [92.17.96.232])
        by smtp.gmail.com with ESMTPSA id p11-20020a05600c358b00b004140e701884sm2062938wmq.22.2024.03.20.05.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Mar 2024 05:25:33 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Vivek Gautam <vivek.gautam@codeaurora.org>
Cc: Caleb Connolly <caleb.connolly@linaro.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sdm845-db845c: make pcie0_3p3v_dual always-on
Date: Wed, 20 Mar 2024 12:25:11 +0000
Message-ID: <20240320122515.3243711-1-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This regulator is responsible not just for the PCIe 3.3v rail, but also
for 5v VBUS on the left USB port. There is currently no way to correctly
model this dependency on the USB controller, as a result when the PCIe
driver is not available (for example when in the initramfs) USB is
non-functional.

Until support is added for modelling this property (likely by
referencing it as a supply under a usb-connector node), let's just make
it always on. We don't target any power constrained usecases and this
regulator is required for USB to function correctly.

Fixes: 3f72e2d3e682 ("arm64: dts: qcom: Add Dragonboard 845c")
Suggested-by: Bjorn Andersson <quic_bjorande@quicinc.com>
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 1f517328199b..9a74464b8af9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -194,8 +194,14 @@ pcie0_3p3v_dual: vldo-3v3-regulator {
 		regulator-max-microvolt = <3300000>;
 
 		gpio = <&tlmm 90 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+		/*
+		 * FIXME: this regulator is responsible for VBUS on the left USB
+		 * port. Keep it always on until we can correctly model this
+		 * this relationship.
+		 */
+		regulator-always-on;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie0_pwren_state>;
 	};
-- 
2.44.0


