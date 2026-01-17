Return-Path: <devicetree+bounces-256357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF04D38C12
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 05:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 819273010D6F
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 04:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2328A313E24;
	Sat, 17 Jan 2026 04:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="igKi+hxP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33FE2F747F
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 04:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768622809; cv=none; b=VVE8OEUN/cRsIsZFRykA8muOQ9d7t/CVry1PXpC3RT4qFAKDsIuBsTFaNAqbYH9rZtWdmfq9+4yi7o6BeL8NLNCiDd7i03qP5/S1Xs+97wUvxRGdKfqKM5UnOCjIqjaQCiV1TS18Kmfi2edN30XdpmotviNurX+p2QbCPYDDEqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768622809; c=relaxed/simple;
	bh=DLYTLurhJa/dsUPjZdKrouNuDeRcN2aGY2f/dIS8jn0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rpetuco5crX+gXlrnv+9B6xEfkuqo6gM2x8uDZ3IHcP8+A8KxO3BBi3j0VBji9BAaHnQTKPihQSIkSqF67Ohb3uM1AOxv50yViwBP5A9dOqd77wKGhBi0y8Lu0N3gV66djveoE02xaC63LNz0Y85KUN5F/NRsEtZ/8kHBjhN70M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=igKi+hxP; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-88a367a1dbbso44337656d6.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 20:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768622806; x=1769227606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WqibFg67h3gtAqqjjlrzNhRlOJB4sCD3HtefP226Fgc=;
        b=igKi+hxPM9Zg2tfIg2I4VrZ0u1hW6UKupSJUjpLyO+TpUW8QWCPbchJck8sKAXekbg
         +kzhO/8R8vOMzjL5W38rCN0G1HQldV8alZSIoUAwgKt68tLXuTfNVaVRmca8sqpFJTgW
         vi0XmoLAWY+5je3np1sTFn3iyEsy2BWOSvolnDN+hJS8UX1b6Sa40dEjHPjiKZxaTjZ+
         iloTm2TXPa7IIMbi1LP2z6jTBXJ200sXKYlYb0mRs5V0micHWeJ4CryD5EUu41oV7Fly
         211ttRk/89iEJxlofynrOSogcBDc3PkPXGbMhF1U97gnun7vmFHLtE/7Uw/qylOpnf5K
         AVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768622806; x=1769227606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WqibFg67h3gtAqqjjlrzNhRlOJB4sCD3HtefP226Fgc=;
        b=DndiNc5XrbTIoKIfZNzJnLdS2maUg2TOmyS1HtKiS4z9LoP1W8SB1ENesXb8Qsfrbz
         vgZg2tZcfvp7grcWjMGMEhxG/hbGfFRd6sSMsTL1+Afu+P+WhJPit/8ubC3CttRzGRvM
         7cnKT2sSr2Vq7oPfoZmPVwBTUuvs3Ix/U7S1Cl3scYGWKR3sQffffzAQAK9x173bqxbT
         N3l8XeWdawhf13/9wnaF87g2bgRS4TU70GETwfPtWbkDhRlsLVAZkNt76goJ4WCbwZin
         IWkPdB+PvEo4DM+vUCP2lo9pkb7DC74iTNtFL2piECyIsVSayjpU61ZvC0ZhSxh7Bhyb
         OoZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq3vXuB+0AhzWB+j6lvB0UPOdS8n8QQ+E5W+DdKxKcpiwoNCm5kU6dn5R6XfOHC6QTuBuQQOQgHj4j@vger.kernel.org
X-Gm-Message-State: AOJu0YxU4KWbPGrJ8St3ak+UqrsaIWkuAHzDoMB5dtAG2+H8y0ZqfdAj
	lXNEAuAhAma/l005ajugD8Rq83aiXTc7mMzaBl7d+pYjY8IltecGO6Sy
X-Gm-Gg: AY/fxX4jz9MseK/VvZcz08UzWb1CgnCseLQZ2RBHWj794fp2oOEow3RT4eWoV0ROMg2
	Oe7+iEadfzjZAlT2jQctAUZU+P3jW2NWK65vbTlZje+/ybC+EfBuOMeFV71exN4HDT2G8zte277
	Ojm9KRjwHSYf98DKBI8YiVbLqT0ddA0SEGnRySu2wwx8jiGC4iIOZYbK9s5DJxbgv48k1VRHbOv
	4oL5CCkF39JWq1n8Xp/Oq8Uu15r4OPktk5GUxAQlsl9g0/eDY1PLP1iFLyn0Iy6DF72eC1lRhAE
	iUaUr1h4h0Oc7yO9EpbZCibYlyKWc7mMDfgRRVTaFu85Xh4QDAWx41Z1KjzaG/mEZL+tsrRPZ67
	hgeonSlpjDocA2kwAovK2m/sxDLrHj1A3XtruQrSeBvDqeVov7oelurayygtJlwUccelYIZZxkr
	VM3UEt0Yl57QgDWq9Q9hUJeQxeOj1KUajUTcNswHj4JPnXIk9fUa4IQYQZoBYpceYNeyCePCBcw
	e3+ij3U3rgOrw==
X-Received: by 2002:ad4:5aae:0:b0:88a:2c78:d62d with SMTP id 6a1803df08f44-8942e47a66fmr63179296d6.26.1768622805841;
        Fri, 16 Jan 2026 20:06:45 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e6d6366sm43908776d6.51.2026.01.16.20.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 20:06:45 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v7 3/5] arm64: dts: qcom: sdm670: label the camss ports instead of endpoints
Date: Fri, 16 Jan 2026 23:06:55 -0500
Message-ID: <20260117040657.27043-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260117040657.27043-1-mailingradian@gmail.com>
References: <20260117040657.27043-1-mailingradian@gmail.com>
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

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
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


