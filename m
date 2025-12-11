Return-Path: <devicetree+bounces-245705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA29CB4773
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 02:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 039893015D3E
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3857027054C;
	Thu, 11 Dec 2025 01:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RgtwHo+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADF8263C9F
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765417752; cv=none; b=WGpneUsrZh5Tytrfx9my02yL0VZw6m29l/FWp7bmonZY3G+VpQksvgXyLXZ0jywRnGtQ90V2wxvJXiRXvWdN4oTxAlluIDxwLbBjJOBXXW6tBkfpqEthH79F0g/0SXRbCZB9UReB9tskFGwLIE2CnaeK4thbUb1/iqoBUT/Jzp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765417752; c=relaxed/simple;
	bh=6DKDr/25LQr5kXe8DDjOQecVCpueDt34M9W88LlMvos=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S6SUYmCpkhm1ic2zKcvNY07oirITPT9ympBhwguEJarf+9aM1Vfh/xNCRQ9XigOm3+XI8/sULWORlsze4iTUiJ2mY2KbME5Fw2nD+fQrEqZyCLbyFBHn8UoV0/Vnl8oc0Pt1n/XfGTpOwjyMbcqupJVPeZk7qql1pn2kFoela5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RgtwHo+8; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-88056cab4eeso3523316d6.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765417749; x=1766022549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wa8qDtdwKWqABstjmDFhVV9Ipjw33hVv7VY3da2yZow=;
        b=RgtwHo+8GuGWJRte7l3wQphmbwpSQxPSvswvvno7HCR9Fh983uCNJOhIlqGTLUyGmf
         BRKv1Wyi+JaS2u6m6X0epo295qwsn6qGsjG/s8VPShS8cx3bzu2Fa7+p8vtMKwcSTdEu
         ZHFQ9rlet+1Tgwh6Ipg3QEcQ7uFWzR1ln6+ifjPpLEf2Q+CPYRF6zBRAj4lxnbiE6PrR
         cdZ99rFHoPEHYTcRvMWvUcl5MJGTOhuU0NVwxBKTnVhEctQ7VDU59VzQfuwXEvX1JAGY
         FaGfCaWJlql578DpNY3CjfGAYKChhjFP12lClZErGSw+hAnQV4pIZZstgdkbpjOJjk86
         ViKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765417749; x=1766022549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Wa8qDtdwKWqABstjmDFhVV9Ipjw33hVv7VY3da2yZow=;
        b=sCkPEo4fN+TZKrvnITRtA+HpGtrgmN/wDB5y5A1/YEZV772MdQlN2KDQisFIk1eqHx
         o/smAhA/Zbtl69yo0ucIZLW3YiSEcAUsuw9IKOG40f6AKSMg+3p5ye3gY6EsALG19AEQ
         fz2hjDy4jePtVEEu16Hywgd+CxvCohcmHReSv9Z4hjqXW4YGPTZ1oIz5KVpKDTA41lOJ
         1O9G3w/BmNdezH3aGx5Jn7TGoj2fvlJkvIFAQI4pKIPspWa/+i606EKgUhxBarG7RTdC
         3x97ViaJ/P2M0r9m/FRZaVIaOOOzJLSzrDfQCjPm36c+zOOfjuWGYYBIRKW5yP+kv2Xu
         ingg==
X-Forwarded-Encrypted: i=1; AJvYcCXfcB044v4wV/8hC26X7s1/6eNrnojgxVUKscegdRGlvWgtDYlBFwrMw6Pp8GMQdni6sbc6bt+A3ZYB@vger.kernel.org
X-Gm-Message-State: AOJu0YzwRaQK2enby+2oQehSlpS5NefKSjmP5aLP2qsHp0g8gk0wXPjh
	dX96VKBFenJlzSCy3lJbzvFOj1yOpehIMrkQPsZgQ16uUJ5EWy5szN+r
X-Gm-Gg: AY/fxX6NuWp/T0Bn9dJ+A1/kD56txOsLbeNKLpwOyXblcUh4UgrgTEboVP8ClCN1iqk
	MT9B9I88AHkReVcUFVy81rOuPz8AWy+OlenIRXQ21g2ywJe5Jc7c9Q2r8mY0W4I/Xb4cQO8PZD0
	/WhNFoCQsKvfI/VOkdHYj34Qv/7Dpi9XP+Hq/uPxi8yEynM7Xcqh64resncYFWVO4V0e7BUxsxV
	BnnjFvvNce/Y59vjrQsOyezTQMW9pEWrPH94twVg4v6Yzw0SMAqpokwyh5XwQlahhVWhuKXjJPa
	6VenGvho9rxjbiN87JVv1iAYcBWDrlJND6xrgVyBu8g1oAYXcUgQKYFwQmh2jahHHPsYBQKgSqK
	LDfdLMOmt6T4110Wc/zYXXin2nnQh7Kq6QnGiS2X0HaPgEPn5i5qzRAw4J4/Kt8D2qCrCJFVMqd
	v72Dus5Bq8WXeDoA==
X-Google-Smtp-Source: AGHT+IGASqjNc42d8qiqfBf9BxfqyN435KFhyfp6jeSw9yte7DRyfq+sWLlhcCvsV4DcfigGhykvBw==
X-Received: by 2002:a05:6214:1d0d:b0:888:3d1e:f95 with SMTP id 6a1803df08f44-88863a9717bmr71718106d6.32.1765417748670;
        Wed, 10 Dec 2025 17:49:08 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8886ef0d332sm11910316d6.45.2025.12.10.17.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 17:49:08 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v4 3/5] arm64: dts: qcom: sdm670: remove camss endpoint nodes
Date: Wed, 10 Dec 2025 20:48:44 -0500
Message-ID: <20251211014846.16602-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251211014846.16602-1-mailingradian@gmail.com>
References: <20251211014846.16602-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no need to add these by default for all of SDM670. Originally,
they were added so there could be a label for each port. This is
unnecessary if the endpoints are all added in a fixup to the camss node.

This is required since dcf6fb89e6f7 ("media: qcom: camss: remove a check
for unavailable CAMSS endpoint") was applied, forcing all endpoint nodes
to be probed, even if they are marked as disabled. According to the body
of this commit, there is "no valid or sane usecase".

Suggested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Link: https://lore.kernel.org/r/488281f6-5e5d-4864-8220-63e2a0b2d7f2@linaro.org
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index c33f3de779f6..c275089237e4 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1768,26 +1768,14 @@ ports {
 
 				port@0 {
 					reg = <0>;
-
-					camss_endpoint0: endpoint {
-						status = "disabled";
-					};
 				};
 
 				port@1 {
 					reg = <1>;
-
-					camss_endpoint1: endpoint {
-						status = "disabled";
-					};
 				};
 
 				port@2 {
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


