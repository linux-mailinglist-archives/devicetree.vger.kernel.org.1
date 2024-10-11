Return-Path: <devicetree+bounces-110467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E3099A7A8
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 17:28:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D02BA1F24AD6
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3741A19938D;
	Fri, 11 Oct 2024 15:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="KxtzA3RV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7F7198823
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 15:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728660458; cv=none; b=pcqhMdLtZdYY0ZsvxJBWUXAlkqAvEcbPT7yopebIf2Gh3KWXbEKJJ/RL/qTF1ptrvnOZykFvdI0PjaBrd0+vWe0I4Rsto0Rt2/QxNggfCferW6j7FFgptwQfi4BdqvXwDW/OYCxWRpJ3Y+M9OELJQNeTV+wXz9HX4ViVMmt3S7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728660458; c=relaxed/simple;
	bh=PP45Dg1iGyv3y2H3r24fUF6A1hgqS1Bu5leVBaRAUcI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QdY6QrG432YMWUAYaV4WBWyd90V1qBBYH1KQrKZSw/N4Z26j+Odlc6R39HlywL9Q4l8+2aTpR1PSs38K0xreKspFNYfaMdw7NxkTlq4N9HUnyd/U+7wZ0slHHOI+XcbahZ++w/SrjXsCD8yODadFjA5g+Ce3tQs0u8+KIG2U9ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=KxtzA3RV; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-45f091bf433so17257681cf.3
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 08:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1728660455; x=1729265255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nfIq3eRh8OI9mTcVWpkOySISef6TcE4+YhZrQqF6xqI=;
        b=KxtzA3RVMif7UHb+6bjH+A/aOKt5C3ETC/+hTEvr4MDG4ciZkhnTWaHGCBq8lEs4S7
         u5av0gZSodxkt57nb4IyX4jTGncRQLBxNj7iyAC8kKOmNuMtE7CvQqEfcvQJI880sYQU
         vZeiDVKIO+THsGUBzYPi3MwEnI5AT3n3Ovn6W9KGZb5r45pY2n/esU3YpwP+LNU15/vT
         fXifnrB3EvyZ4YnP2+itPRduGLgUXeDNKgsc4IWLDanaIdOXBnT6qV096XTY+rE7+0To
         gG0D7MZz3oIykJ863CukGk1XXQbnbn0JSHfg6XBsDO1LD6ZMQeWq4Bzm99pBpJl8ACHy
         k/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728660455; x=1729265255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nfIq3eRh8OI9mTcVWpkOySISef6TcE4+YhZrQqF6xqI=;
        b=dz6WjLM7u8RJUYCJNVEIddg4nqH8m//ReHwdP7ceZA9Rd5A5E0zy+0hKOGunJo4bK7
         Pg4DBdqK4oeekJIdjZmtaVqt+VmJliuEr9+qCKMDTwgwtn/KD9cGKySY6vTLg5HEiDzx
         ZQICyAqL2sn+ajB+aEEE1RsShoHi/LHo4HAaEez0Z0YhIcG26PuClCD6gIYcpdE3sGjm
         yeYSuiLKL20aIkhc4zkNc97uS5+Iw2U6HX4vM7bv5r20MDJGwi3KF6JnZe3GLqfiwNeU
         Jq+mCqu/9cwuOCVb3s9lwhgCiMvp+6/YnwywB6yD7GgrvkKG26LQfouaGv08snebzBcS
         QogQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVsd74Vf1iwZS68TBZl01n+x1TW3n1lh8WliPP+nNnAMa3TF/quKDfyiQjbhrG656QnGOtMrz3TuRi@vger.kernel.org
X-Gm-Message-State: AOJu0YwICSVlBOxqOJRpPXXupLdSRXX2kQUmBgY/a24wOpWNqQGSjGro
	gQU/NkkG6N+mDlccfYiK2If+VN1F9CKGZykLVOKadiY5/JDS+WPhkNGMe2PEGow=
X-Google-Smtp-Source: AGHT+IGQig3AH+6PsHNsgNhCOMU6nyFyU97psC6t2DSMG/IxFOgutRPzphS2AY3CaiEXqetYDbD+Nw==
X-Received: by 2002:a05:622a:4c8c:b0:458:3154:4d0d with SMTP id d75a77b69052e-4604bc2d776mr43570241cf.37.1728660454899;
        Fri, 11 Oct 2024 08:27:34 -0700 (PDT)
Received: from localhost.localdomain (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-460427d5220sm16344131cf.32.2024.10.11.08.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 08:27:34 -0700 (PDT)
From: Jonathan Marek <jonathan@marek.ca>
To: linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 5/5] arm64: dts: qcom: x1e78100-t14s: add rtc offset to set rtc time
Date: Fri, 11 Oct 2024 11:22:43 -0400
Message-ID: <20241011152244.31267-5-jonathan@marek.ca>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241011152244.31267-1-jonathan@marek.ca>
References: <20241011152244.31267-1-jonathan@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

See commit e67b45582c5e for explanation.

Note: the 0xbc offset is arbitrary, it just needs to not be already in use.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 .../boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts   | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index 8cd08c3a93382..f406c3a63d6a1 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -897,6 +897,17 @@ edp_bl_en: edp-bl-en-state {
 	};
 };
 
+&pmk8550_rtc {
+	nvmem-cells = <&rtc_offset>;
+	nvmem-cell-names = "offset";
+};
+
+&pmk8550_sdam_2 {
+	rtc_offset: rtc-offset@bc {
+		reg = <0xbc 0x4>;
+	};
+};
+
 &qupv3_0 {
 	status = "okay";
 };
-- 
2.45.1


