Return-Path: <devicetree+bounces-164414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0388AA80F01
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84006189DA2F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 111E522171B;
	Tue,  8 Apr 2025 14:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="hDTuHNwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833B61DF99C
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744123988; cv=none; b=tzQ3HvKwEs5NwVEuPZdULdXf/BSDmeCcIIbQwpGX16iT/z7atcx7S5jqFUFD840FC7dZnkUmHMls4Tu/0PIhGSI7Hykt5QI1moruh78mR2SPpG77toaV13XR6fwAqrtT2zuiR3MoBSamWxzSvL8/tFJwD2RebmG9i660xxhY1NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744123988; c=relaxed/simple;
	bh=XudfhlyxDLPOOX1wFwR7UqPkqsd0ooX/kIqejaHNx6U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TvYdhf2IMKmL2nok/+sSUlBm/Gr8HL4EhO2je7cGOjwFl7acXwcGnN2RgZUJloSu6vh/19yB476g9HNnaz1A8CEG7BCNRXMzm9AwRtQoKvf4fKTb6twHweAyyYiaGTj9yLspExylk3XwZZzsFrOij/CAI9VpCqbCkgVI0Hjto3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=hDTuHNwQ; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9023D3FB67
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744123977;
	bh=Cd2ekFBWQxwJj+PkZGNMgt7dWUs7CI9H/DRk609O5jc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=hDTuHNwQP7cMIzz3zdwn2cJxAAg7s0NfF8lsMMVX4ZoL9/kDdtfQzYtpwRHxnR2SD
	 8hlJ2Td3Us9CRFcZPZXOhyKPNZvdJlayxTIySEUSoyPAcNRSSFjTR/NOntj2pGzGJF
	 O/dBNNafKy/6JGUrtcHuyQ7jIJMosy0vNHYcCzfxCsLyJyRnpgeMUCiYrf6V5Uaolm
	 o4yIQVPoohDcOxib6zafwqsEaqxB7QV/vbvwMN/SaXCtsXOBjWzlxjFGmmcz6co20/
	 GBATxTGEiTpJiaVffgVCorouERriwKJV57yLmvjmv6s3vW4Ze0ItrcwnqZu0q7FhzB
	 kdXb4IGdCAKLw==
Received: by mail-ed1-f70.google.com with SMTP id 4fb4d7f45d1cf-5e6caac1488so6107720a12.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 07:52:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744123976; x=1744728776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cd2ekFBWQxwJj+PkZGNMgt7dWUs7CI9H/DRk609O5jc=;
        b=rUlndDFzbjgXpBj4chT2zK85hr1P/84+INhb0ZZGqLqwBwyAFLHDJ0jsSglzM0hgIO
         aUOoQ9DwBJIq1P6+NRFQWKvuBUj+xTIbQFgaOdA6P0B2yYO/n9AnIaimUCvojzDofIXj
         xjFWVzvxCHKsSHkI9wfEAfubhyccGF+BsFznZ6bqlceBk0G/3tVMoJCzIqBYUYlqNXgT
         di1VT13kOj7QT8m1yhMTHtEONqZB3WiHtqaBDe5P0oAnCWaR/XKAa45WLpe3fedFVRDC
         oAexK+10ceuorgI9vT30MxaqX0d69wyW9HFKPt6IA1N9EiGe49013paibmsKRe1VnODu
         QzcQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0Xh4hzMAZG1S1LmvZLCJSPdgO4KPOOx5XtP7JTlPdwl6m4AwsoiO2BJSUL+F0moCdmo1JkQanfBEi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4AhutKkmJn/aQNfnX+NaA1urOtj/aJzgr10JSFOCXHzXRFI6F
	fHwlxDMqzbHQz3eHfqGKXYf58CfvAXrR0IppoTqiWdZkFWc/Y8jaQlhWItUB1xLQeZwCHROLCwW
	Vyv4xprGan/hWbKx1a7XN7ESrE/JLaU6Knh4V90k9AwiTFWEunxZFUiRUm0voSoc6eC1E92OgL/
	4=
X-Gm-Gg: ASbGncsdQQPy5LytPMLn3qjDq6vSbJ+xKNq7idAvqXHiYQ6Q2tpKYFuv+yT6bl4gMp2
	EG9NJoLweTGq66yU4SNmu7suMFy+yhkSONwPGbRKI4/JAB2BLCW+RAsWM9PhnHHhJhpQTMRnq/w
	e2Q63iKX8JiNO0ESFr3hspnTakeVuDXRk4tYUAEVETuvxZGcDiHym7lNijoSdT20rj0fnD9zSIz
	TfEljib1MbHfYHEIxLG/ET1g/POV2290sxHg4/9grwUjRAos8wMTVU01aH9CvD+x7Mpa9ox9aW9
	9m68A5ZHiLkx8caOwKzLZfJCHG+ZFB1jxcsEZeKpICHw+B24k/GwgpMMCk/5
X-Received: by 2002:a05:6402:518b:b0:5e7:87cd:2479 with SMTP id 4fb4d7f45d1cf-5f1e4188c3fmr3261271a12.8.1744123975714;
        Tue, 08 Apr 2025 07:52:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJSPbTa1xrNkR3RkKbcBh/Wslpw7BLBT5lNd28/P/EXGJtdBLm56SHFhruqKigf0mxABLrkA==
X-Received: by 2002:a05:6402:518b:b0:5e7:87cd:2479 with SMTP id 4fb4d7f45d1cf-5f1e4188c3fmr3261241a12.8.1744123975334;
        Tue, 08 Apr 2025 07:52:55 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087eedf61sm8050455a12.32.2025.04.08.07.52.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 07:52:55 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v2 1/3] arm64: dts: qcom: x1e80100-hp-omnibook-x14: add sound label and pull out the model
Date: Tue,  8 Apr 2025 16:52:49 +0200
Message-ID: <20250408145252.581060-2-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250408145252.581060-1-juerg.haefliger@canonical.com>
References: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
 <20250408145252.581060-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a label to the sound node and pull out the model name to make it
explicit and easier to override it from other nodes.

Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index 03bbebff4576..06a53b3e8cb9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -166,9 +166,8 @@ linux,cma {
 		};
 	};
 
-	sound {
+	sound: sound {
 		compatible = "qcom,x1e80100-sndcard";
-		model = "X1E80100-HP-OMNIBOOK-X14";
 		audio-routing = "SpkrLeft IN", "WSA WSA_SPK1 OUT",
 				"SpkrRight IN", "WSA WSA_SPK2 OUT",
 				"IN1_HPHL", "HPHL_OUT",
@@ -1555,3 +1554,7 @@ &usb_mp_qmpphy0 {
 
 	status = "okay";
 };
+
+&sound {
+	model = "X1E80100-HP-OMNIBOOK-X14";
+};
-- 
2.43.0


