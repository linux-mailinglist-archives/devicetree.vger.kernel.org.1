Return-Path: <devicetree+bounces-208063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 352F8B3176B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 14:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38438AA0B16
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FDBB2FC875;
	Fri, 22 Aug 2025 12:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QMXyEwT2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503F62FB978
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 12:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755864876; cv=none; b=adF5dGqqffbK5z5/G1MS/aTU57OTmx6VPm+hjXM+J2kUagyLd2HPrlTYwKnDisTGSea7ndlcnmm2EIyZQb+mjJEuR+0MGMsz8hsj4r8kQsGw5fwDafW45VnpwRvX0tA+6ZzzQT5VFc+BWB1tzuWlmyuSnLOFh2c1wdY3IhZeh+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755864876; c=relaxed/simple;
	bh=o6g4sH8xwOZxvS6dJ9XIqGAPSYO6MiZyEWLPUzyiJHs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T9ZncZ4vcFyX0esXqPzK2EPvvkRk3coA7tUFxbL3cH8r/duSSB2mmKx+OhTBTPKi0oRpGXC0ZFJCftJK+qCEV6xsPXCHsNKYKelXtKrEwpJnBvTKL6Vh59AEcLIIeLYa0ro4h9iUn5Y+vwCltWifKzArJinvwmX7qVwLq5dIRf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QMXyEwT2; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6188b7400e8so226881a12.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 05:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755864872; x=1756469672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U6N5Z6+PPrN+8tmcPK9l7I/hMUuaNCiAWjah4ZlXQ5Y=;
        b=QMXyEwT24PVQCbRPzNDQmycgq8GhvspO7aCLxQuqTSwqRpCQDINZbz4qe/9FSWJo9C
         rQ5jVrenUh/okt63lNRk6PsTKlC/N7O+uLcIZ9rbNTZ/YxOALu+QbiOlnMrbMw7VYxY0
         wgGsdU3G3gjC5PEOkaDdimKpdiv0nslcmY6p9bue/hJ669Xj26glilr7e7i1MX2EFaKm
         ySTPc7gFwP5/J54k++i3PqssYP153AaOeIfQfPEyLrC1Py1G7m2iQJFFvPRFRDB0PXfn
         VRf9OaeHSyLzVxdEDtXRt370Vt88dZOdrcMXpV8pgUI8UqR5WCd/U6OFwYhk7EHMJhL2
         0l7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755864873; x=1756469673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U6N5Z6+PPrN+8tmcPK9l7I/hMUuaNCiAWjah4ZlXQ5Y=;
        b=TcQnHqGahDSOYoWq9KsznAKZhyt6cvjb6FQyb3lkuYYJi/WJYor75rNMfh/Yx/Qzfa
         xCnPHWTa/bn7w+ZXBnx8sZOSEshF/ioYwRcz74V53V3MxIuTz0qawGrU2EKadGYA/aTg
         zfpcz8FIIiY+oxhcrTvs6LZH3dwWcJDAl6xWrbzM4T3cJMsHf6gZpm4uEw36OUv0jYRz
         qo0J37H0lACx9q1/m1rO+XVbQ8lqg1E4m/iYOue67M0t3WzwVk5xtJ1wsmVcbK0VarRW
         VLjW605JMBbwlYXSXMgy+u+YXaY1sX9icaverE8DPAywhEeGJ8Bdbfzvl0IVW/BH314e
         nYIg==
X-Forwarded-Encrypted: i=1; AJvYcCVvx5QbX3gSYZSoNmPdTt6JE/vcGv7Fk7Pzm8JLrSOe+AHLynqq94R3y/zSiBL28FZ3Ur+A2mJxk+tB@vger.kernel.org
X-Gm-Message-State: AOJu0YzXi4zc716Njy+1T/aL5h47sDA5B1yCgh0a4AGnnM9l4GEUr+0t
	cB7wtx45TT0Tcj13fdTWeQYqZhG74I1AfW04KSeG2Vf5NRh8LLNPk1ZQ+7H/JmtjDfs=
X-Gm-Gg: ASbGncuxk332SWQVcoJMMHifcclJzmdgV4DyZtKwqi/61FKgH1Y3Aw2uOxS6MeCJ/K3
	z8bGDf1YZ13mfIaPGV7xzO9MI+CBmZO2WZzHAWk+Nhm6NIu77uapyQtLv20mIP1P6CUwnBsoxH1
	7KZfM/ExhV57DEsw66Z8pUvaxRhY8kICu31CVwJL6RebBC/zG3fUvT5modDMhRRerOhiuWbVpH6
	jQhDonplyMoqBLeg051EQ1UwRVt9NCYZG06XUy9MRR4OeXbIGi8NujXW+S91m/E/0VRYa25rwmM
	xQbMWNUCkuB5NnNcxn13bObX9wQye7m/UKBVLZiveFhT0TERTHWwIlMVGmiSpThn4tXePSjKXYI
	CxieHjJTeKBLPmzxMl1+hgGDJCDHlVaouKA==
X-Google-Smtp-Source: AGHT+IGIZr3bIv6eaIbf1dIX960O0mePoQhjaIFsVAHQscZR6OAVAyxebm4Tv8WtSLatPWQGfRyMPQ==
X-Received: by 2002:a05:6402:5112:b0:61a:8b68:c01c with SMTP id 4fb4d7f45d1cf-61c1b4ccd85mr1211548a12.4.1755864872537;
        Fri, 22 Aug 2025 05:14:32 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a75778c5dsm6842065a12.31.2025.08.22.05.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 05:14:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	linux-fsd@tesla.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] arm64: dts: google: gs101: Add default GIC address cells
Date: Fri, 22 Aug 2025 14:14:25 +0200
Message-ID: <20250822121423.228500-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822121423.228500-5-krzysztof.kozlowski@linaro.org>
References: <20250822121423.228500-5-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=818; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=o6g4sH8xwOZxvS6dJ9XIqGAPSYO6MiZyEWLPUzyiJHs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqF8gR1nb5IgNLVHHNEvXLhk3sUV6XknUzyyYq
 M+ZiJ8wRp6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhfIAAKCRDBN2bmhouD
 1/q3D/9o91Na5DN7pJ8BWw5OySzlA3p+PZZCA0SrZfmVb/+kEk3YlOsfZM0s0U/Qs1HgujTv94W
 X/e1SoQ5634ngY9XzVi5L4paRCJJK2NY5hPnYtr+HbdnfQPi/aDVHkbYupYtwB98OmqXZFsoiLO
 PL0Jzuju3EPhY37SnY3nSvnY2gbSywewrj0bxUiIw8hKlrAZ9wwxdue3XkszAFvCj+KsUWr4uER
 lD085qYnarxWchBt3QeZfE9OVIyKdHe75Pnzkoi+9VS5LoiSAVCcG+K6AxYQihZcwvRJml6ytI+
 Z9upgrNHt4CWOLYW/zKzvFB0HpEXO6zUh5Unu5Vx602PF/XbUYqzqsBK7xQLlbj2CcQUREdF7ll
 4RnnGs0TpdUC1+1SX4TTIG47toGnNFQ6kq018BbWrNERIDKGPQehNFJ8Vzraq8qO9vBYfl/X44X
 kQdGdJ93jKHKGzcL4raJZo30tYwy/rHKbOVCkQWZ8fqF5NLR3n5I/y1DP4WxdnVbqKsWUBDSRM9
 YR5iJFOFbPkiIzDx6KSOUCb7tzUJY6hjCuZBAejjdzJ5xrFwATUhoQpeZ1sZaZmk182qyq6KDDY
 E4A0cJSgsqP9+rq7W1UE2Mfdl7JbGR9z0r/aKjoA2STmCXX9RqvOXH7IFhF3FJM46BghM7Fc8Ha HiBogtOwSFCZBYw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node.  Value '0' is correct
because GIC interrupt controller does not have children.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index c0f8c25861a9..31c99526470d 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -341,6 +341,7 @@ watchdog_cl1: watchdog@10070000 {
 
 		gic: interrupt-controller@10400000 {
 			compatible = "arm,gic-v3";
+			#address-cells = <0>;
 			#interrupt-cells = <4>;
 			interrupt-controller;
 			reg = <0x10400000 0x10000>, /* GICD */
-- 
2.48.1


