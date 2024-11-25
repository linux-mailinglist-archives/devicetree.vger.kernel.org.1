Return-Path: <devicetree+bounces-124172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A7A9D7CD2
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAC941632BA
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9590188A3B;
	Mon, 25 Nov 2024 08:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VcvCHM+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE4217E00B
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732522905; cv=none; b=Lt9XIccQX3u6uB5ZmpminXe7lbM0AFOCoToq5pnYBqt3WuRvcVyqTQJixFpLidXlXis3HL6BAGbhONVdTPs98GUX07m5dxJIZRFZoP/zvtDyoxlo0VeIrAJDjBomZ7XAXj4FFWmau4Ae/tiWNBy6OVxpOOxRmV0hIB9n5SaJ2ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732522905; c=relaxed/simple;
	bh=+k4W5kdm2/R91a0sqKatP50hzxJmlQq0DzlqB+BMlgQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gXjOnx2KzHWuXhZFZi6QFVmoy5epoKY3UptRTMslbTqFJlJnVQdGcI2M4kfIFCyf+Sqg9umovd/HqY/5gMGR72Yz2RtON2TDvrWeD6XdefaCrqm896sW8NtTJrUYEcp1SRAxhVfsJI6M/A5Ws1Mx6H4fu0dDkfeJ5SSRPWNA2fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VcvCHM+5; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5cefa22e9d5so5009577a12.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732522902; x=1733127702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HPnYr8aIDFby+4dgQKR60j9AMYM1qDxkn1rBoSKaia4=;
        b=VcvCHM+58eyptvLKPGBpDtWxRc2AqU+RnJsB18a45GS4dNKfwmb7CqIr6Ez7dXZoim
         iqzIcoZUfDx3yhnGRjMa5j+wZ2J1LaIV27iqVzqgiRF1KRD06LyqQfPwehj4gMVrOVz3
         tnYncc5Pu6DCNA06BP9smZYw8wb/jAVlooNOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732522902; x=1733127702;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HPnYr8aIDFby+4dgQKR60j9AMYM1qDxkn1rBoSKaia4=;
        b=BhC3nKIky/KNcmuty/f4P/QFdMP5X8BtP+CCmDbSq+aOUO9ibbGARhlo1ct+bZm7Pm
         cY7lxVk3s/WR7prQjTbvgCL0DOR71HEEOZ2oemEFngfurLbOPE2/Aw18XZYFfHw3fG91
         4kwN8pnbMD6kwnKKuaa7yZhKnJYl6pHWvK/uGqYZNv411NNwAQvBqBwuCOzTfT/15ldi
         pQeZ72e89DPzKlKTy4JZGYGDsm7PKgVfsFt6FTcCzUVFA1g9Q6LRFBpiyASkZuEG3fNF
         iHpbx5U7wPkXwYQSgUedgi0S8vRbIOFt9hcSKqTWzg+10/8Zxw1Qjo5sAU47j2cgi3G8
         vFLw==
X-Forwarded-Encrypted: i=1; AJvYcCU5Q7jFBmWF+g6Z1J4kny6UstMw1RbLrhNqIHrAzvemGpX0Du4e2HKvGA0e8pQ0q4rS/F3aRD/E43q5@vger.kernel.org
X-Gm-Message-State: AOJu0YxV/iuNiJ5cOP7IsiupdLdEDDbdhcDoYjbugJTblxqQh/TR5vqC
	xyYmApN/2ltfppD2E/yl0pnDAWqX9vGe7VWhxJKdb4cxw20asDEH/BMFQXISTg==
X-Gm-Gg: ASbGncvgzIZVdNpTZ1XaKpYk1OHMXtqaJFsH1+IatFi7tl2LZX2LjLfsp5fwyGZ/v0q
	NuSwVakb8KjrZdy6/MhE+eYlXH6n/C9fcHZDSNWJgqNHJAWD4cto4fnos644DWb0P7vm9CH/KGs
	/XO1tLqZSdaaoYlWWk7cM7iUuxPRd8EkUOMsjn/EGmQWv3+b7nyNHoNIv4XLK5Kv5E+xliYzk4M
	XKHX1RpZw+hhEYVgDDU6yeEi3ausz+Pp07TIYzZdnr+hQVuzzIXXKDXwie8se8CvHO7Prej2zRO
	nH3Ge2Ug
X-Google-Smtp-Source: AGHT+IFnAzkhOOadrvOXWSDGzf+kPfjLpDwohhUu4l6LeAbOtGTBnyhEYnIeoSDJDix3CiMDzFUNxA==
X-Received: by 2002:a17:907:7712:b0:aa5:1699:e25a with SMTP id a640c23a62f3a-aa51699e2e7mr827925366b.10.1732522902261;
        Mon, 25 Nov 2024 00:21:42 -0800 (PST)
Received: from localhost (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-aa52e45391dsm318503166b.60.2024.11.25.00.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 00:21:41 -0800 (PST)
From: Wojciech Macek <wmacek@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Rafal Milecki <rafal@milecki.pl>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Wojciech Macek <wmacek@chromium.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: mediatek: Add MT8186 Starmie Chromebooks
Date: Mon, 25 Nov 2024 08:21:28 +0000
Message-ID: <20241125082130.2390310-2-wmacek@chromium.org>
X-Mailer: git-send-email 2.47.0.371.ga323438b13-goog
In-Reply-To: <20241125082130.2390310-1-wmacek@chromium.org>
References: <20241125082130.2390310-1-wmacek@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Starmie Chromebooks, also known as the
ASUS Chromebook Enterprise CM30 Detachable (CM3001). The device is
a tablet style chromebook.

Signed-off-by: Wojciech Macek <wmacek@chromium.org>
---

Changelog v2-v1:
 - Fixed items/const bidings description in mediatek.yaml

 Documentation/devicetree/bindings/arm/mediatek.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d9..6191a5320c148 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -263,6 +263,19 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
+        items:
+          - const: google,starmie-sku0
+          - const: google,starmie-sku2
+          - const: google,starmie-sku3
+          - const: google,starmie
+          - const: mediatek,mt8186
+      - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
+        items:
+          - const: google,starmie-sku1
+          - const: google,starmie-sku4
+          - const: google,starmie
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:
-- 
2.47.0.371.ga323438b13-goog


