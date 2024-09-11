Return-Path: <devicetree+bounces-101971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE9A974F8A
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F49D1F24B89
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 333D8187FFF;
	Wed, 11 Sep 2024 10:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pxupbzly"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54229186E42
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726050000; cv=none; b=OmRMgEAPOE/Kg/mV72PaUU2ngeM+u9dMs+dUkNIKnLrgakZkbhpWmGKTC5LFPOlhsDVvZ6hXQocl/RY/UzOm7E7gCtPjt9botYgWz0cjOvwKCWSySp37Nwa0Ub4XCqrZaG3dUHN4aKOKQILKNch55v8po5ir1+hzsLxkQPaMwYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726050000; c=relaxed/simple;
	bh=6HkGIahaPO/Fnz6tpDmCQ5Zn0iibPrrjjojrxJR/2DI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ktkJ9nMDBH3SIRdOTx5W6w+x52tdYIAX4jovRK0zTpxgDGzcTKQt8WTKSNv8yUQ7tQRbOob5N4orXvZDaA7KlpBSaSiquWtnExg2BKQCgAIEpgBKcAD5aPh0O0MQywPfTAEtONKbSE4tswtaQK9nkyupgd5+QNUQWp0KiX4t6wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pxupbzly; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42cbface8d6so22852725e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726049997; x=1726654797; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=me22hCQ23h1Om/oU6Sm/hsVv2MUbHKFNehPhgvHyaEM=;
        b=pxupbzlyUllXrrDb1cdo1bRK/yJZ+LlvP7/pkgZWanK3Sr8vAA5Csn1z3pN352DdCn
         EjkCS/S2aP8HZ5U1XVHCEVlJB7AOSvBpjukJk7Fy2W81x5lKf/kn8OyHDc0I3jtiKEM0
         YShS1Y08qPXym6PeUvdH6zxy3Zlfa/orKBDgnFepeKQXlNIMKsSygqP6npC/ri6XEHfX
         vx17PYj/EWMPgxjjaD/EjAmNonNiwCQ7loueqK3fZFxzWv9tAOeKxX4dMrfTHan9tpey
         ke5Z5vEAoiuJeGhAsxV3SYt5vYqc9TBIVtEoZ0+vnfe1jOgucppd/yq9QgRt1E0My+/T
         W1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726049997; x=1726654797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=me22hCQ23h1Om/oU6Sm/hsVv2MUbHKFNehPhgvHyaEM=;
        b=vKht10nbGeFi0qQb/UIkvqc0GevLaya01N0kWIamaQBHwYFnt85YIw5z3I9ZCBABHH
         0ECiAyfVp4wxvjcy/Urp3LQgovXmgj0LAt37xDbSVi4UpjSbhHFZOYk9lUMCTsdwICug
         EuqbN8nJmmT0GC0HLs8m5F8w/lry+VwH/J0BeFbd6KIGLL3eKuQkT8AqFldAJylRRPat
         z0Tcslu6iflUSCv9cc9YgRfFq55q9DBPX9yWmQEHoq76IIwGONYkHYH23EZyXCCCnWhj
         0z01jbvki4knN4HgKjDEpIKgav0NG2lqz/XsVJX2ywZiE6OnbQiYJgQQW8KMAAGmOXEv
         l+sg==
X-Gm-Message-State: AOJu0YyWIyeJz3N0zumFENpZS9ptcEF1XEF8sDz9a1z7/zjXfpPy6s6y
	B+GxNMdHzuOHQcuiszJc3BBnn6BhtETTCJRbUJjD6pl0XjXWh4JjwVafH3gzH27Pr+Dx5knBs+J
	K
X-Google-Smtp-Source: AGHT+IH3Axor/ewUeeQs3SMNMrWCuLhgitgofIh8meuT+E2IsdocHE5ZLv5ZZVbVTp0xIAzPAGsGBQ==
X-Received: by 2002:a05:600c:1c18:b0:42c:b74c:d8c4 with SMTP id 5b1f17b1804b1-42cb74cdbc5mr99981265e9.31.1726049996492;
        Wed, 11 Sep 2024 03:19:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42caeb21a4esm139349125e9.7.2024.09.11.03.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:19:55 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Sep 2024 12:19:46 +0200
Subject: [PATCH 7/7] ARM: dts: amlogic: meson8: use correct pinctrl bank
 node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-7-feaabb45916b@linaro.org>
References: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-0-feaabb45916b@linaro.org>
In-Reply-To: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-0-feaabb45916b@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2234;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=6HkGIahaPO/Fnz6tpDmCQ5Zn0iibPrrjjojrxJR/2DI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm4W7EGXUc0rkBN+Y856SSdLNy9Fnz93ZB9YaS5kBE
 zfGkRcOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZuFuxAAKCRB33NvayMhJ0d0+D/
 996Kgc1GvUGEptpp95mKwZaptGWH7QYeyM5Dq77T7oDfUpiyRsBS6tQWCod/Xl6i1rb+A9tOa6uppO
 /MgvXmSQF8OYFtxEv51h4eEMYUGKdOb+iUQ12c+yE6VJSKxgTw30HEhs/JmnFUFcBt4LJHkmTCGmhC
 5tSjCFKfRpNxkXXGfi92y3H/dc60HzEdYgtI+jyJG9Xje9OKtxPKG416yqOgjIfXpQa+q1c3y2pjVQ
 1H18TopuREjlGrs9Vec618BIqcRwBxwQ5t4yf+n5HDMtv1ijOLgU8S+vlex4wUMdY2J4kDZsAkt4Pe
 Z1zEUtac6kr/TLBnsdanxD4x73FzBU/tbv6c+9GNDHCSAV53cUMm2GGZfpmnpXSg5gBE42FBD3XZe4
 LSUzxXJQbEPJgAgwR+1FJfGHvlXULV+H7a7ILCAh72UU6tWV3gX1TbzIKPwDeKu0xAmK5Cpcu1ak0x
 +4ZN/b8ZxzPGI037olsW+vy8T6phi2j3YYZCc3/CUR+oHF4SQgqUo8U5OBgErZ0bENVCS4E4sxf1W5
 LWLBttHbsMBaa6lhSDvCiHYJ3HEhVtDue6pOfZz21fHBodOi/Wjn93DtKUVOubIeqoiFlNrreFHkhz
 t9xIyEfZbD74sAx5XsuqYMro35+IU8uzGpnS3TtBrwRXV/yHrjbjvBUT0sUw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Use the proper name for the pinctrl bank subnode, fixing:
pinctrl@9880: Unevaluated properties are not allowed ('banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'banks@80b0', 'reg', 'reg' were unexpected)
	from schema $id: http://devicetree.org/schemas/pinctrl/amlogic,meson8-pinctrl-cbus.yaml#
pinctrl@84: Unevaluated properties are not allowed ('ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'ao-bank@14', 'reg', 'reg' were unexpected)

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson8.dtsi  | 4 ++--
 arch/arm/boot/dts/amlogic/meson8b.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8.dtsi b/arch/arm/boot/dts/amlogic/meson8.dtsi
index 1023ff0a4f9f..6c7596c8b96b 100644
--- a/arch/arm/boot/dts/amlogic/meson8.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8.dtsi
@@ -353,7 +353,7 @@ pinctrl_aobus: pinctrl@84 {
 		#size-cells = <1>;
 		ranges;
 
-		gpio_ao: ao-bank@14 {
+		gpio_ao: bank@14 {
 			reg = <0x14 0x4>,
 			      <0x2c 0x4>,
 			      <0x24 0x8>;
@@ -468,7 +468,7 @@ pinctrl_cbus: pinctrl@9880 {
 		#size-cells = <1>;
 		ranges;
 
-		gpio: banks@80b0 {
+		gpio: bank@80b0 {
 			reg = <0x80b0 0x28>,
 			      <0x80e8 0x18>,
 			      <0x8120 0x18>,
diff --git a/arch/arm/boot/dts/amlogic/meson8b.dtsi b/arch/arm/boot/dts/amlogic/meson8b.dtsi
index 641cd60781a3..c8fbeede7e38 100644
--- a/arch/arm/boot/dts/amlogic/meson8b.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8b.dtsi
@@ -315,7 +315,7 @@ pinctrl_aobus: pinctrl@84 {
 		#size-cells = <1>;
 		ranges;
 
-		gpio_ao: ao-bank@14 {
+		gpio_ao: bank@14 {
 			reg = <0x14 0x4>,
 				<0x2c 0x4>,
 				<0x24 0x8>;
@@ -422,7 +422,7 @@ pinctrl_cbus: pinctrl@9880 {
 		#size-cells = <1>;
 		ranges;
 
-		gpio: banks@80b0 {
+		gpio: bank@80b0 {
 			reg = <0x80b0 0x28>,
 				<0x80e8 0x18>,
 				<0x8120 0x18>,

-- 
2.34.1


