Return-Path: <devicetree+bounces-110548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B9899AF40
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 01:20:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCF4D283C03
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 23:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4163A1E2841;
	Fri, 11 Oct 2024 23:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="bc4Uy37e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6391D14F0
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 23:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728688825; cv=none; b=oK5K1APNQ8gfgGpFdxkDMby+ZXfgaBpP7YvskNHFcHxKjG3acpwyTchbtGLJmRXTmrykXEZloC1ZC35VRje/HFdhSiKXXaJWElO+oNqlwxFH2D7yl2HbngxRZPNzW/DdJXJzr3pmPLmkPqsbqXw/MOgcrblpIUxkYIu4Tl3tayk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728688825; c=relaxed/simple;
	bh=nDNDo7ALv+O3cxUau8Fj+PX+xIMtyBWTHRXfMjz46/M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Jn1I1wZQEJzv1QFIyUOxf+gi+7yUN4pl22r2q3HgqBpwhF1pkCXnXVZe5nZmGYqH6zrezVHjyhZF5vhOyKXWCIQHJ2hxokiJyUwiec8AK1WrU8GCNPyEv/wSHMrWRcN7cI56b5OeI1caas8YmFcrldqdknu/M0+SGgdvw0LS9xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=bc4Uy37e; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7b120428a3cso34191185a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 16:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1728688822; x=1729293622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AduvL8sRkCTgfrWSsu7rKhjd0f6vDDJasPZpnT/qEYQ=;
        b=bc4Uy37eU+yFaQyNBGmAEw/avs7Q/VVscCax3yO4kzspawxhHSj41mf7dXyQ/NqncQ
         249Kt4Z7Co010gdTpFKh5ffAa5P7H99z4rNTc13KQLYhyR8IUxey9+bKS7b6qd3XuzOd
         qwLzlEgTp17BjX0vW9U93axNcfwUGYgus5rbH054QWcijpcEmr0jHl6n1j43V0a4Wyja
         82d9h4XhtGkyVh5o5Qgf7TY+cuJZl0haNzvbXMppOIE0a9br3rJp4SzMrsY658N67piP
         i3oz2HLCmzu81rdnXbjKATx1DGlABConyu6+FMBWQ3DrwrDKF+mWK7Fj/J/E3hoKQ0rP
         x3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728688822; x=1729293622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AduvL8sRkCTgfrWSsu7rKhjd0f6vDDJasPZpnT/qEYQ=;
        b=sBwN9Z4/UDYMM+AW5Ztt6qX2XD0rThAfTt8wBsZfpDRDxregaPBbGF3Hfm6nXz573K
         jXBq/f5sCBMT60rmXyEFKK1GfOEe9J4zxZK2IihrGWkbsa17FIzy33nngVYCwrbaMoTN
         TCZqY1DNNgpNIfbXeoHFvU3R49j10wjOahmO1hp9fso3rd8X4HBwQ0xaXfEKoxkJeP0k
         /OZ4qPYcim0xHbSccw6WZwE2rVNNQ9NrkGYcx6vB8JnoPb1b4rinH6CHdzzSmUx6Vs58
         6Y9QBquk7h9+ztORZ9CLQbSKkHntHq+XIkGNFtFgbK9QS1f6TZ0oSHjUi9rEtofYgKkz
         NzOg==
X-Forwarded-Encrypted: i=1; AJvYcCXjb0b4N9k6RmDW0izcKZGCKbSZ6Xn8JV2JZUkFp166xELn1TIfwnLXll3nXZJ30rG1iFeCTLfdvD/j@vger.kernel.org
X-Gm-Message-State: AOJu0YzHO2Tmjk/N7NFl1sRI8GmW0e19Um6A7P/d3rTcqgF10Y1E2oYv
	zO8pP5Onr7oLbAwSNxNvz8XO+m9adlzf5uKfvyLl3AFxNDDjg8Ae2nEJ+CpfpVM=
X-Google-Smtp-Source: AGHT+IHERRNksDcH4woDGxy6Xo1Vuyyg8Mbm887V41NlviKjtKHNlpNjAXx0lyE4C/9XGCG4TpjpNw==
X-Received: by 2002:a05:620a:3f85:b0:7ae:2f04:bf9c with SMTP id af79cd13be357-7b11a35f56dmr600500385a.18.1728688822487;
        Fri, 11 Oct 2024 16:20:22 -0700 (PDT)
Received: from localhost.localdomain (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b11c0a8902sm89949785a.31.2024.10.11.16.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 16:20:22 -0700 (PDT)
From: Jonathan Marek <jonathan@marek.ca>
To: linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 2/3] arm64: dts: qcom: x1e80100-crd: enable otg on usb ports
Date: Fri, 11 Oct 2024 19:16:22 -0400
Message-ID: <20241011231624.30628-2-jonathan@marek.ca>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241011231624.30628-1-jonathan@marek.ca>
References: <20241011231624.30628-1-jonathan@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 3 USB ports on x1e80100-crd are OTG-capable, remove the dr_mode
override to enable OTG.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index eb6b735c41453..bc66f4713b231 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -1568,10 +1568,6 @@ &usb_1_ss0 {
 	status = "okay";
 };
 
-&usb_1_ss0_dwc3 {
-	dr_mode = "host";
-};
-
 &usb_1_ss0_dwc3_hs {
 	remote-endpoint = <&pmic_glink_ss0_hs_in>;
 };
@@ -1600,10 +1596,6 @@ &usb_1_ss1 {
 	status = "okay";
 };
 
-&usb_1_ss1_dwc3 {
-	dr_mode = "host";
-};
-
 &usb_1_ss1_dwc3_hs {
 	remote-endpoint = <&pmic_glink_ss1_hs_in>;
 };
@@ -1632,10 +1624,6 @@ &usb_1_ss2 {
 	status = "okay";
 };
 
-&usb_1_ss2_dwc3 {
-	dr_mode = "host";
-};
-
 &usb_1_ss2_dwc3_hs {
 	remote-endpoint = <&pmic_glink_ss2_hs_in>;
 };
-- 
2.45.1


