Return-Path: <devicetree+bounces-138805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A97FA12543
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E15A3A377E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 13:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71EC3244FBF;
	Wed, 15 Jan 2025 13:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F/NEDQo5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F079E242242
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736948652; cv=none; b=rTFggALg5FzlSyyYW3u1XHhutwF3bs4cPIREwRgShIFliiaSnoua1wGaptVibI/rcp1eO96WoM47zobaADD4FQWDbOwVcwo26GAIRAN5K2VeNZpA7HZyKsfXeS1EEpfq4M893pHotlRSVS7bbjSsEWmd7ereNi6Jj2dH9zMULmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736948652; c=relaxed/simple;
	bh=G+vZObNnRDWqAE6J7EdI3eZxpn513I1znR6UzYgEtJ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cbx2/XMg0o4Vw4RrNjGfopfhkJ+UId57ifB6KmoFbgrBG1s6kjwrtoOQzqZigKPPT+cEkAhCtOQHDQ7WdMOMShX9oK6V7txMuEkOYoa+n5DqKH2OhJy/bsjXFz9g3f73RDj9Z9No4cDs90CNXZoO17YZMtWXM2WfGC6ntrIJLUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F/NEDQo5; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-436a03197b2so47887565e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 05:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736948646; x=1737553446; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zhvyVviTU4AdLP13f2Q2+Swx0qWQ/KJ1oK5KBR+xFKA=;
        b=F/NEDQo5M+6JGxpYTeE146Yf8JUBG4iRW5wEeyLzUdPhBp7YXDkSe69R83RK1Tdkgt
         fYbaL9VGtWngYohvGEG5335drRmsKjjVMZRG/wTiwvN5EaiHHYvvumt03pg9RTXXiFc3
         YosKS1TDzcxB01xJqfTg7wCsuk4rFQtyJJVP+J7MKbzIvg3ZIrmKG1goJyVZ9BLKqyII
         CVkWq7yL90CSfD4T1eLu+TATSyb600W/iHuQSr3FkiVAIlKb2sU8RC8/Bq/y12tmQmCW
         VjeWkc40EodeF5gVC/MPvcsqTh9efQiehzGNG87kF/Dz4leKP1HREeXLaQvP3C4Qv4MX
         ckvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736948646; x=1737553446;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zhvyVviTU4AdLP13f2Q2+Swx0qWQ/KJ1oK5KBR+xFKA=;
        b=KfhCCk2F5Q1fGqR8+C4ffyNdLLef5eEbrlujKg+hSZx+YOTTC7n9zmS2W3+IAtQfcb
         RDKdfsIGTkUFbGdTkMnEEg2GFydd2k02l7sgaLwd+oPJ0o8UxYF/lQ3ab4q1fGVGCJYY
         BLcm0SfOmeq9Lci6XYy5b3bNwP+XZ32RYfmy/3dnrMiAkf94R1WuuGL7+kKTRTiKVJ5Q
         e0PzlxBlm51fKOzbq1NmAWERNACB0F3ck3icKlauac0GI69CrQtFwMoi8ukjok9qvxKC
         JI7w5yxsd3UdY0l1n+2gb70gdytrWKWpVdrt47zjHNKnQJJi87yGXJPZa+75aolNGwUB
         IsKw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ1OS2grvR2xYShjsZVIsn1cq2bmQ0DdFEUHcLgG3Gc2vTp67hi0e4YJdQyVDY8sdeTAqNKsZKylTu@vger.kernel.org
X-Gm-Message-State: AOJu0YzOg9t64wkfSyyBtvTPc6Ynh7xSY8eERpEU/Ar8oIG+08JMxnvM
	nVvRcj2AUySdfPoscgPXy32kBqZzGMt6g0exiIPgCSpOI3ohGr2LkqVSetlf1Vc=
X-Gm-Gg: ASbGncsZWr1aq6DT1IOwP7XxRSRvM4spElMfetXudBBzlvpDRa/W+7f/VqESodVVQIz
	5BzhwqhJhH+dM3FH9Lj5ZQtD8+1+ELJEFb89F+HgS1jycG8aner7BvqQMDPCJZ0wAR76bA98R46
	LjYHZPgJFdSV+IKAoea0iiAfzHPXhMHmqzr+ivcYkOVE3qY1NQCikyKmfM9Xj0m7/ppTyDg5ZLJ
	VIXRBBGM+ljf1I22ztIX2UGsYwpi7BDwpmugxghoqzh95H42Z5PN9sULSh6bHMlwdjqcC2SVSiR
	zQ==
X-Google-Smtp-Source: AGHT+IHzIBqL27LZE9vCqM6EM7Bbpb+1qg9xx45Ns3NFmQfydoj8etGWJrlR8QXtZ4kccYArfEHRTA==
X-Received: by 2002:a05:600c:1884:b0:436:f960:3427 with SMTP id 5b1f17b1804b1-436f960357dmr115648405e9.22.1736948646182;
        Wed, 15 Jan 2025 05:44:06 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7540ae7sm23454655e9.33.2025.01.15.05.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 05:44:05 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 15 Jan 2025 14:43:59 +0100
Subject: [PATCH 07/10] arm64: dts: qcom: sm8650: add USB interconnect paths
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-7-eaa8b10e2af7@linaro.org>
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=977;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=G+vZObNnRDWqAE6J7EdI3eZxpn513I1znR6UzYgEtJ8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnh7udSn+2/bhWZ2zBwrBRnfa02lshVMtGjp3rdd6y
 coLFAV6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ4e7nQAKCRB33NvayMhJ0bxVEA
 CdfWZfgBJlv8cQzBPlvMNiNcHfzsVFC4jDBlNUOzmYndIQTR2IblKjNuyb4oAs0yntpXT5x0B+JmcF
 B6YugZtWO5dS8bxdeoHFzQeg/NYtW7+M6t4sjrPreVLGhCgrWKsIDLkj9292rJ3tVvQeGeV9LlAD+H
 cp87PggkCNsvNiFhOSyTR+ShL4/Qf7ZFwqK6ub6w+S1ZkDkA02N2iR40yduJeURx3XB1Qt94kgBi4N
 lRuvcgncMVeeMuaOvnaiXY2bfb7Mc8b5lMwaV3aHbyB6gB95LMmbrhNrr5qIKlNyH6ORRjGqVZWnT/
 grRgAmYqzOaZnkX2jx6M0B7n2eD+Vts2ztCC0ohH/YI78xT4Azaj+FraaJDLZOjnICRhYWBon8nATf
 aE8E1ITbd3/JkBtyMRUxneGf6V+xEf9ewA7aPChK1GmJmWwWrXM0M9tfBfldi3ybQ/AJeX5jqfURY3
 7iHCJr3JwKME3xWf08WgDyai7iXn27/2ilcQ/kdoKUpUzFAV8l690kWbdRSWON9X3v4EoiGqRcM4I9
 cGeJoiLP1KUVDrbfC2fH8Ho3vlhTJqzZpMYvsNBOtWVc3wx6SlePpGtB8iZeuRp6LgwLGXXPLSPhQs
 gdlLIdy8esNCP1/oXoRMXNrVjYuIWoMh4Z+YjjsT2LGOgvJ5hCRt96CHu8XQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the interconnect paths for the USB controller.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index a72087d5255899fba03ac90a3f0241ee3905504e..5982fd4d66d903d638f0eeaaac221f3007abf68b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -4148,6 +4148,13 @@ usb_1: usb@a6f8800 {
 
 			resets = <&gcc GCC_USB30_PRIM_BCR>;
 
+			interconnects = <&aggre1_noc MASTER_USB3_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_USB3_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "usb-ddr",
+					     "apps-usb";
+
 			power-domains = <&gcc USB30_PRIM_GDSC>;
 			required-opps = <&rpmhpd_opp_nom>;
 

-- 
2.34.1


