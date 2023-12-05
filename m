Return-Path: <devicetree+bounces-21788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6298052C0
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D00041C20748
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9846E69789;
	Tue,  5 Dec 2023 11:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="TuG7clMs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97C6F1722
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 03:23:50 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3333fbbeab9so2415312f8f.2
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 03:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1701775402; x=1702380202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dWGEOgBlaV+9GD0eZ+EUXVzemfxXSkN0akB4k15I/sQ=;
        b=TuG7clMsgAuNCb+eIJ4lLSuOhYVfEOKcCcMWx53HP7pOcQIQ/5VnWAuPnixDYyAHl7
         YIbF8cT/OzjFBtxfYaXAqcM0YSipME1C+XaKznTTJRfqgUg3JADclvbwbeXlflzQ3/nf
         qpeHihzxGNAkei4lsgX4s875DZUg1hg2pT9S4Pkra3l1EZ0aNGZ9GmTh4JpRUAihJV+3
         gmFlFTd7mJYAhkJLdWjZJQK34vg5f5vnqhPTbEZfmpn9Vmpgubthb9cbo62Z4gfTHR/w
         dp7BgYDP+UHu3BnPv4QFOOIjyDNBO2wEu4bIYT2a7jsFMeZPEcCFGamaMAz5Zc0DBWxY
         dwCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701775402; x=1702380202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dWGEOgBlaV+9GD0eZ+EUXVzemfxXSkN0akB4k15I/sQ=;
        b=SC8lRuMeGogKo64R4ARVYPob8ENgeZowO0kEWro0Ic8u9biHYjPilvXJImuwZaMTpH
         aZGn+/q+J6+zAKU12KNQDTuz74q63+s03YjrtORcfaF/s+pGiOSjMBIsyJ/fDE4BEwzK
         QniumpSNKOikQLLB2zHu3FXbnYajsikjYGtrDeHKmj/VcLRNljqzUgQEDL8LZ/BZNBpy
         SozkV1IXB+L2qn9Mj++HjwwqYdiNlvCqka0pMMDF9E1eudxlQOr38yfyDRUtiko+BgRZ
         GZRkfYKZaZy+HRWJg/l9hXJfm1Tvp8qVSrCmL0cNEU9S2jh28yQ6Cw5BIUF9G4Ge3jKP
         2dAg==
X-Gm-Message-State: AOJu0Yxv/giQ9HN/d0y+5w3Ku3abLocVpVizjOVd/IEIpG9D3KW3MMf0
	9NYMB0rslSb00iBihbBvAvN2+Q==
X-Google-Smtp-Source: AGHT+IERJhbMlFae8VaZ0toP10wux4ZqDAU5aWYjeBHgjCeQv0tlJZg2P6EOxMzPBICtQOwgXli8Vw==
X-Received: by 2002:adf:cf10:0:b0:333:272f:b5a9 with SMTP id o16-20020adfcf10000000b00333272fb5a9mr4421979wrj.36.1701775401961;
        Tue, 05 Dec 2023 03:23:21 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2dd9:dce:96c5:9e9a])
        by smtp.gmail.com with ESMTPSA id p8-20020a5d59a8000000b003333ed23356sm8127775wrr.4.2023.12.05.03.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 03:23:21 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 1/3] arm64: dts: qcom: qrb5165-rb5: add an alias for uart6
Date: Tue,  5 Dec 2023 12:23:09 +0100
Message-Id: <20231205112311.16391-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Alias uart6 to serial1 for qrb5165-rb5. This is the high-speed port used
by Bluetooth.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index c8cd40a462a3..ce6ae0771d34 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -23,6 +23,7 @@ / {
 
 	aliases {
 		serial0 = &uart12;
+		serial1 = &uart6;
 		sdhc2 = &sdhc_2;
 	};
 
-- 
2.40.1


