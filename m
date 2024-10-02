Return-Path: <devicetree+bounces-107236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B598D3DD
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 14:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 509A01F22E8D
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 12:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BEE1D04A8;
	Wed,  2 Oct 2024 12:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="V26zbYtg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080091D0487
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 12:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727873911; cv=none; b=ObxveJm1pzsGLRmo43udkRDL9PwwikglhWkbGPQtFUFGBDH0METNt6akTBYnFBPngSaeqaoZYWp3qCKE8mel+vf/owtyE1s4zsg99t+v55p+HBXoKY0ipYzIzejV0y5/v+qIjK/LWgDNgQxGD3ohDYpsXmjHOqwbz3YZEyICoDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727873911; c=relaxed/simple;
	bh=xg7z/SeJzhmttlPdDZR21cOqf/AVpCo3yoWnuBllEzw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=bIiG/mDv1Jxkglaaqf1mCV6HnU/tg7EI1iRp8zfDYnzU9tZYzp/vk0aDd8UUQaNsjeMbkT9iIvG4tlqjBGXBGtURqKBiUkALvG20eQ4jY1yue3MuV0wbgSs1kz2/DkMzDLrEjBPjaVaw4wLBYEkOpyeE0R+sdCTIVwrEs75bQ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=V26zbYtg; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a8d2b24b7a8so152619066b.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 05:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1727873907; x=1728478707; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vh4uUBQqwVxTdhNiYiNFdtajRwq696yeQxZ3bN9pruM=;
        b=V26zbYtgziN6t9yhcTlSI7LdGQ2h3YMnWx5MHS9lpqSJUN23oeTTChIfEdDkjXHwA6
         RpxKHZI6FBUVbl82wMVJ9j5Hv0J/oTbxF54zaF5IeFp2pU2BgS9FUDpH039LCHYTAkd4
         hD7GRgg0ECqoYYR0dk6Z0/gClY2Twd3PBffI3Dl0ALUHMYrQweUCFRx478V06P/yfgAp
         o3SOkY0HwdfO2gOQtFQJPvTFQwhfDHIUvfecG1JqLnGSJSMn9MFfbMh2O1eJaMWdo6RS
         6mMZcsVUfbUes8tsFKgGRXZ0y/PwSZwiyRSeJYT0kAo8zxwX/g3iu1ZorwC99KvhLAdk
         q8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727873907; x=1728478707;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vh4uUBQqwVxTdhNiYiNFdtajRwq696yeQxZ3bN9pruM=;
        b=I4rS7bfGo2vx0ZOiuX5zB9i0EUwLJuoTXhWrEoEKLi4eeiRWsyA8cYNU6Ujo+iJ1zs
         4cjRoGT08IKlaEHY/4waGyik7asxh+NMrpa7hPs6YrMMaTJnG5kz7vlkyJxDzBDGzeDZ
         5F8swnE1/DYTChXh2xJx4Ezy3bBGIaipH9ao/QNuLrRtjON9Oubc14vbDArhmdIVmt6P
         qXrXQ1Qne6PX4T2N15F7KOfdYccTP7Fzpu0m7x5Uc/CgDJsKQGlkHF+J2IyAzMugQbzD
         IR7WQ2XEalv7LMCq2KQLk3J4cqdObyEQxQ5nwd8BLJTF2E92ljr4dfpbPAKdHnZwUlBb
         UnqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfXlFTHfDGgFu0fIt3+wxTM/zsSsbpbKvFbG6e9a5UNgxeTto5s8MPrQn9+KAUUetBmfQt4PA5YTa7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd+XKKFh6chqEnB6g78QyeFVbWBetSfi0cwgYv2J+hkjidTXdQ
	5d6BCDtwJuVms91Tr3YZuFSX++AUXVPAK7gL5FUTUTe7FIk4HQR2VCxGFlmfX+s+xL6DugbRRdS
	o
X-Google-Smtp-Source: AGHT+IEEsqp5UV464bTdTeAxjMKq8Z5FkvCHJUu8BYbLycd5NPxtGmNemMLEB6zomqETecK2RSD2/A==
X-Received: by 2002:a17:907:e2a4:b0:a86:91a5:4d09 with SMTP id a640c23a62f3a-a98f834cacfmr325571566b.26.1727873907262;
        Wed, 02 Oct 2024 05:58:27 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c27773cbsm857066166b.45.2024.10.02.05.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 05:58:26 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 02 Oct 2024 14:58:06 +0200
Subject: [PATCH] arm64: dts: qcom: sm6350: Fix GPU frequencies missing on
 some speedbins
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241002-sm6350-gpu-speedbin-fix-v1-1-8a5d90c5097d@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAF1D/WYC/x2MSwqFMAwAryJZG4jxs/Aq4sLaVLOwlgblgXj3V
 1zOwMwDJlnFYKweyHKr6RkLNHUF677ETVB9YWDiriFitGNoe8ItXWhJxDuNGPSHHNaWXecWCh5
 KnbIU/Z2n+X3/x5SwCWkAAAA=
X-Change-ID: 20241002-sm6350-gpu-speedbin-fix-2fc32b4ba0fd
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Make sure the GPU frequencies are marked as supported for the respective
speedbins according to downstream msm-4.19 kernel:

* 850 MHz: Speedbins 0 + 180
* 800 MHz: Speedbins 0 + 180 + 169
* 650 MHz: Speedbins 0 + 180 + 169 + 138
* 565 MHz: Speedbins 0 + 180 + 169 + 138 + 120
* 430 MHz: Speedbins 0 + 180 + 169 + 138 + 120
* 355 MHz: Speedbins 0 + 180 + 169 + 138 + 120
* 253 MHz: Speedbins 0 + 180 + 169 + 138 + 120

Fixes: bd9b76750280 ("arm64: dts: qcom: sm6350: Add GPU nodes")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 7986ddb30f6e8ce6ceeb0f90772b0243aed6bffe..4f8477de7e1b1e8ea5c4d193e16dcdadc20eb4ff 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1376,43 +1376,43 @@ gpu_opp_table: opp-table {
 				opp-850000000 {
 					opp-hz = /bits/ 64 <850000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
-					opp-supported-hw = <0x02>;
+					opp-supported-hw = <0x03>;
 				};
 
 				opp-800000000 {
 					opp-hz = /bits/ 64 <800000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
-					opp-supported-hw = <0x04>;
+					opp-supported-hw = <0x07>;
 				};
 
 				opp-650000000 {
 					opp-hz = /bits/ 64 <650000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
-					opp-supported-hw = <0x08>;
+					opp-supported-hw = <0x0f>;
 				};
 
 				opp-565000000 {
 					opp-hz = /bits/ 64 <565000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
-					opp-supported-hw = <0x10>;
+					opp-supported-hw = <0x1f>;
 				};
 
 				opp-430000000 {
 					opp-hz = /bits/ 64 <430000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
-					opp-supported-hw = <0xff>;
+					opp-supported-hw = <0x1f>;
 				};
 
 				opp-355000000 {
 					opp-hz = /bits/ 64 <355000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
-					opp-supported-hw = <0xff>;
+					opp-supported-hw = <0x1f>;
 				};
 
 				opp-253000000 {
 					opp-hz = /bits/ 64 <253000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
-					opp-supported-hw = <0xff>;
+					opp-supported-hw = <0x1f>;
 				};
 			};
 		};

---
base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
change-id: 20241002-sm6350-gpu-speedbin-fix-2fc32b4ba0fd

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


