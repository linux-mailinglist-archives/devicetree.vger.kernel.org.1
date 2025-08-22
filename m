Return-Path: <devicetree+bounces-207980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F605B3141A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:50:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 031A0B035DF
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617122F60B2;
	Fri, 22 Aug 2025 09:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g9lRCpnS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C532EE608
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855578; cv=none; b=JqGztfAsqvGosI4BpFr+LkDpUJUI73B4TtjdDvrKZULm5U1jm58rjnMZ60tOapyBjl8O8ZwKjA7s8vDJ3dBhboy8lj6fmwdc4sSF2Qot6pY4tIhv7R4pXt4UHu6OH1yNBscNLSmRBqdIaix5Q32xCbqY1YnFxWoHfow6hZ1mby4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855578; c=relaxed/simple;
	bh=5ko4i4L9tA8qVtd54b2E1E9lIKYVWTon4MYsfOsVvK8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rR8Br6Z2T0ich5SMB2eiFcthGeozlJTwEwLgzaEMpXzJhhPPw/MxXbX4lVgpPPNfaR8tE7+ufPQRFpRc8EjCpuyXJcvUYADuf4/DT4FtI9OgWTm6r8fdoxfYmVS7lUwdWU8sbixjeuSUe2o3oI6/JDjU95moxzaEb/+UE3iChYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g9lRCpnS; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3b916fda762so1307791f8f.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855572; x=1756460372; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5nP/yrQ50t33Iy9TEWN0uWVEKysr4CKr2N4UpsQQsM=;
        b=g9lRCpnSA/yPfhmjatxY352YyW4Arpc04Ec1wAalOyVruBO4EoJ5iZkU+hzo4uPlwv
         62zExCAY69CcWVZJFk/JurA2eBSN6J235mLwVLKB60IwSDHzml9da/nnaPutotUb2JcT
         KKDZsSKsdQ/JfSW5HAqK/2/LWgV8YgnR2OifQxsh+uiOxvmQQlxkNMXnwOt5nouZvIz0
         b+1/rNhahJ8zvaIwF29B+pb2eEnCUy7qy2l51eEZ40L6xvbHGU9oy0to4gjN0wR0Z+p3
         Fv6QY9bC3ObJPA/lVXLPXV8Bj9MPOXrC/E7fGuInqK0NjHvxkFcc/G2tmqL3y1A95gN0
         tiaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855572; x=1756460372;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F5nP/yrQ50t33Iy9TEWN0uWVEKysr4CKr2N4UpsQQsM=;
        b=vEHp3dK1EUh3fq+7UixQWa/e7jjud4pAsAUpWg20BQAU92B+v+AYdObpez8qTuQBhv
         OefYH1i9vhpWQykF0gJ8BwyUyNuLtwuEA9hlEQ/KnVNmpFEmOz9f+PJDBhNqHg5DvKIo
         7K/cj2EOmgFTv77YsuGuCzTarPvTDPtmSR+xerDiOYFAuphI+pEkG3YhAJZJrzaXhA2Q
         oAp4HcPSwKgqsU9z6lisalOifQhIf0DY7OX6+RxybWqhpOjACZlXRCS1K5woEVZrumFd
         cYV1Ev8NZpbTSP9RnJZu3TLhwP58ZGaZL3Z8xUsNsVY/LHpO4s02C7DM/QaQqpwBLqYf
         ruYg==
X-Forwarded-Encrypted: i=1; AJvYcCWmQ53A7vpbXpniP40jo0XMdqIbJNfkNXbMdBtxdLLWkMfZPW/i/AnGAkQvBA/k2umXufNQOT4wBMTo@vger.kernel.org
X-Gm-Message-State: AOJu0YyNB+/++tqYO/331WN/U6IGW5oy/rn97Zk2nWLh2laAxUeSIbeq
	4dFlFmjJF8j+3/XNsfMTjw1XH5AhaAYX24GjWwBumwJ+vqG5ZCMpkPiObZ86aw+aLHw=
X-Gm-Gg: ASbGncsoxYQrh3NfWW3KlFNVM1Koe6yi/mO/kq6PvIY270haPsDZaIKXf4B5sYZ5iwE
	DtHgLAmTEQ5Ix5FsYZQbstGsx50mMDeZAo9DVBpejDa8cpWc8itDPEs/eMpuwP/R6N3Gel35M/f
	KjJV+PQmNx9pgMmNnujYuEr6VCQSrpb2pFTiYO+ZsztwRJNb6HDt7oFyPucmkUEUfaX20IG1Mk3
	EUpMjHzDYsfH/aKMXXHMEZrq9RFc8ae0OxNs756HlR3gglQ1zn6T+eZFlP02yJrItdnesV+cWJ6
	FBFCr/9QS3Vx1BFpiuUalWaNaeM98ezWqJvWc+TihlIY5mFRu5aCeL/jYMAv7Ji9ff02F+vDGDJ
	1EADbbsC6Q6IDZFa9zaho8YxXAzaMKbxfiq76AXvQBHM=
X-Google-Smtp-Source: AGHT+IEU0ZUZLyLdx2+COkkvlLe7/dUlq5SYoy/50RXWriFyXY4/HDi/2kJhLbJPizYCI0PL6F6uFg==
X-Received: by 2002:a05:6000:2481:b0:3b4:9ade:4e8a with SMTP id ffacd0b85a97d-3c5d4806aecmr1800904f8f.21.1755855572323;
        Fri, 22 Aug 2025 02:39:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:28 +0200
Subject: [PATCH v2 16/16] arm64: dts: qcom: x1-asus-zenbook-a14: Set up
 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-16-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1050;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=5ko4i4L9tA8qVtd54b2E1E9lIKYVWTon4MYsfOsVvK8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrIXGgP2D4oSjjrI9UcNQFgc47mx0ehtbx5VSjV
 WmgsdWWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6yAAKCRB33NvayMhJ0WVRD/
 9gFM6gcQF4jbIYLwAGLmD/wkor19gBmDRUf6jpl3v6MN3lFzeQE4S8TI4n9O80DdtL61qQNlTOI5Cm
 1W+LzIvnDFC6yU43tbaQfWGHMV7bTVLC4VmzZ+xzCzgIcKO4cscDdLPmpeDvmzS1VmgJRjNHbHX3cy
 Hjvlqb8qp/DOWkzHXNQA3INGfFykMg3cn24TGxiYpeEec2MLMYbDs7cvNzhMxRtOHqHmGGn03fBZE5
 CnbkKpSFijhpvz6zea2UFmzZPChJGsbKWxzqW56F7YtCsuPSAEz2vsYCcjsOetEIEF2xCC6vq8YSj1
 Sq3L3L58cRoh2kj/ap9rqRgQU4s4/UZvfyStNeEayq2JGc7vpAqhE5r5/n0ihwKrfmaHIvHt0peHpO
 MyAInWMh6RHtQkDhud4px2ciIRH4DKGFeJ5jIraL+d/5V7ag0fowgN4iNEl1FvtB/eW4Fx817E89Hv
 6HMq0MpxTsH5h/umJaQd1hB/jPzaHOMstH+sqKmzmU558DN/0P0yF2pUnG6NKPThd9R4B6m+RRGMUG
 8tjjCTziEbEWwbMR7OAXyoHJZTNv3T4+ZES8q5AoqriRu8PBl13JnLhEboeeAxZ7hvEzs1FNGhiLFR
 oYDV9CZ4lM7UTgZvUIJ/6HxaHfT5hMOs+t86JubErXxGM/GxShLD8Rn+0QWA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
index 16d045cf64c08c02c420787e000f4f45cfc2c6ff..14045f91393fa91b2e78802dfc53bcbe2c7d514c 100644
--- a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
@@ -985,7 +985,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -994,7 +994,7 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 

-- 
2.34.1


