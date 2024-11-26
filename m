Return-Path: <devicetree+bounces-124590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B1E9D9521
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DFB6B28F05
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F7E1C07C0;
	Tue, 26 Nov 2024 09:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RQTjzqYR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178A0D299
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732615066; cv=none; b=eH92HZu9tLuRFz7IUu/dBcTqt9wQcz1lpMgJPR66Au4QAtKFdw2gKhEEjjF6wA1VnHqCSUXiT/6DzgILnN2aDwmJhEWbWU/pMQ8jKYj3Mf+Pg0jTkJBq3xJfHuZQPs6AuipkJPXW2NouTW11wP/Eg/6KYh/v1EYQk0oIbM6XDkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732615066; c=relaxed/simple;
	bh=EkEuIRKJ+kwix625DNAR61cZ3wXWJ1POlV/hdGwN4lM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lXL2Mqcgy0hbO7M2PjtN6jdPaPt/9QYnSsmnjXkSiZhSoEE4/IMM3tv4azWotsMRD86TvLTwVuSiRM4EAAbHQYj+G366T4BRSF3cDpBSGy8RbNwT8qQj02SfULwdX6uU71G9XnVNLqmctblRNAEbvlJBqGQ/GRvu3v06Og33KDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RQTjzqYR; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-212776d6449so58939175ad.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732615064; x=1733219864; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/Mk54wWOTxtnUjWD4fc+DJyfim3lSux+/TbFhyd5wc4=;
        b=RQTjzqYRe4hSTDD6/QN3WDtv0KkAdJ0Wh2MkEpRDFvCgyOMvEEjVJP1pgnaZhwynhI
         mEQ/hpbHm6ds3rACxG9Ylh0x44KMqS8/rpwM3jRnSQn7Ka6SDXFZJnqEPeSnQGnF+PPX
         gN5dWINNhQWaLw5iT/me9KNCmZ1Lee0jy/Too=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732615064; x=1733219864;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Mk54wWOTxtnUjWD4fc+DJyfim3lSux+/TbFhyd5wc4=;
        b=u1qNqmfBObyYB83elychHmJjtCRINokGbP5hRkv5tZpnFxQO1mNsTDqpLckpG520vF
         2LqbAdUL9VOY5hdPNGsvMhBHWmk9b5H70QLvpCEi8yuutbbpD7mFpcoeaEmeeHkrIObY
         QoDIpNZ3UsQD1wc+2hcaDXhLKEYKtrsFb9EeEq3L17rIwjRsRJvuGmfXlizFnSJt+HVL
         y5Mv/GfP3Gf/vrYbmoHRpzQLfMwiQiJSSxj7V0/LV0iWSYWJh0ePzMFv9EJB1Ct7Ctij
         gUyxU32FIvprYdyM1Mdd/YMRUO53RFP9lQa5WsBDhm7VrkiTTDWfxfxNdm2bZJkKeIxi
         rDmA==
X-Gm-Message-State: AOJu0Yyk1tGzwzfT7vQbHZ8l8O6UiUWbF2mBbk6cianypAQjpHHlYNDg
	d56EAw1Pll3bdCft/bjapHlBWTa3PCtC09NSytfjjUwSCwLL1EKgDzE9mhs/Bw==
X-Gm-Gg: ASbGncvWeBp3Y2ZLyo57tA8mZtIDKQqzKO6we5vmxPATSOOTNJaqq17cG+ygM10winX
	plbkrd54qknLtFP0IC4/7V5bwrsba9jPhlFM8SoyZxY0WSvzNq+ONneQTv3XLqhSWLQMlhvsn0h
	kJC1VBFK3ZYnW0e7rA1060Z1Q0+J8B46bjGDqYQQbjwgaZHjc6n5q2zcTkz793NIn91bkpx0e33
	C2bAWORTVDutzm7LSOatUVSrgJ563eTWCSVUz4Y6kJr623qdkjyDVDzg4ZGiJup1j4imVfsEN/x
	xqZQLPk4wg==
X-Google-Smtp-Source: AGHT+IFSDVH3rH4UFp5xBcT+SP0jqNRzEoGUEI6ov6sZL9QTnujK3nAAwyk2B7XeTcH6vPgj3iPXZg==
X-Received: by 2002:a17:903:228d:b0:211:f335:aba with SMTP id d9443c01a7336-2129f5790edmr273271445ad.31.1732615064355;
        Tue, 26 Nov 2024 01:57:44 -0800 (PST)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:a3c8:df68:1f94:539c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2129db890b7sm80908485ad.9.2024.11.26.01.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:57:43 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Tue, 26 Nov 2024 17:57:40 +0800
Subject: [PATCH RESEND v4] arm64: dts: mt8183: set DMIC one-wire mode on
 Damu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241126-damu-v4-1-e746eec2cb52@chromium.org>
X-B4-Tracking: v=1; b=H4sIAJObRWcC/72PMW/DIBSE/0rEXCoeYAyZMjRrh3asMoB5xAw2E
 U5oosj/vcRD1ahZunS8p7vv3V3JhDniRNarK8lY4hTTWIV8WpGut+MeafRVE864BMYM9XY4USs
 CD0K2WjJDqvWQMcTzgvkgb9v37esL2dV7yGmgxz6j/YYwA4ymEelnzEgLp0C5c5L5xoou6E3X1
 0w8Dc8p72/oPk7HlC9LwSKWB/ddiqgI4EZ2GkFpbu4RtxpFPsrJmmu1cS04rxqufr3+Fz+A+OF
 XBsApo4B5/2BH8/cdu3mevwCVSffi5gEAAA==
X-Change-ID: 20241009-damu-a3f2f3478409
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-2a633

From: Hsin-Yi Wang <hsinyi@chromium.org>

Sets DMIC one-wire mode on Damu.

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v4:
- Add Reviewed-by tag back, which is dropped in v3
- Link to v3: https://lore.kernel.org/r/20241009-damu-v3-1-1294c8e16829@chromium.org

Changes in v3:
- Add missing Sign-off-by tag
- Link to v2: https://lore.kernel.org/r/20240910-one-wire-v2-1-2bb40d5a3cf8@chromium.org

Changes in v2:
- Add fixes tag 
- Link to v1: https://lore.kernel.org/r/20240910-one-wire-v1-1-d25486a6ba6d@chromium.org
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 65860b33c01fe832f3a4b2e21d24ea6b4f0cba2b..3935d83a047e0827b6feddceb3e4dcb4fc3407cc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -26,6 +26,10 @@ &touchscreen {
 	hid-descr-addr = <0x0001>;
 };
 
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
+
 &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_DAMU";
 };

---
base-commit: 7eef7e306d3c40a0c5b9ff6adc9b273cc894dbd5
change-id: 20241009-damu-a3f2f3478409

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


