Return-Path: <devicetree+bounces-138623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0BBA1168F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 02:27:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39720188B648
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 01:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE6F126BF9;
	Wed, 15 Jan 2025 01:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HM37caCm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AE68633F;
	Wed, 15 Jan 2025 01:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736904414; cv=none; b=uCcdA25BTmGlV5iVVq8aNAfMdEizirZ/4wKGLCZplJLY/+X+lHntTZCjviD9CELdOxkTNFs9ZF+LpBR5lfPO3VY39yRm9laDiAuU5Sj9Da3QPgD66rMbhsQ254toJTvHiRiQlk9j4PxiBQgSNGOGVoz1uqHyEWIAY20i2cOC4V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736904414; c=relaxed/simple;
	bh=7QyXOos554TA5g0npv3XCcyipqB+km9lM8OtSYg8IHg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gJ8GNfhrdhiZ/k0Cj000dl6QxB4I7l7Zh3BqDnJxlyBy5ADZlMHG69y8Kw/hwZZap+0+uYIAiTDHVxx1eqrN1VD5GSXrFklwjLHZE+iwSh9XEas1HirOs71Pw+ypRk2NHjCILB13OQxF1wYV/R7XqiWbSHOg/2Pl61wjgWom5Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HM37caCm; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4679ea3b13bso51805511cf.1;
        Tue, 14 Jan 2025 17:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736904411; x=1737509211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gVssDOqm+J+pahSUoCWyMm9PmHHWDBPd01GSGUshCEI=;
        b=HM37caCmMIsTeYmKdJ32foIlDJYZ9uxnzFgW/GtOWwLE1irGRdDP49s/Co0WO1dhft
         OHcxhHui25Y6ld8b54YPkxAcYCpugf6GwYDaUqPMokLTOzZs25OIlOY0gCkWmtCM93yy
         Fb16bmgMgzb0LbzVsY440EzraXpgRVy6v17FPMxEJxDDWYG6iRmlAAyFheDhZWERRWhw
         jNJMj3SfkJw4DH9WHTPcA3jfISQC0w6Ai1X62gsnR7Rk3ez3I8pbS9YHa0nKnQ1EoMN7
         PB6uUmSQW5A25/qFBVZPBIdSsHEEevQWDutCLz3w9s5tTrQAH7Iq3hMQ/HOhQDWu2nfU
         olNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736904411; x=1737509211;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gVssDOqm+J+pahSUoCWyMm9PmHHWDBPd01GSGUshCEI=;
        b=xRVCLfl5wrF5zL+ZcCPR9H9N5t8inSYP2rQSfvIkwTTI0IiPB97CiAgy0a/eg2o3vS
         gXMyaOC+m5EpAqCZt63DjDvsKGU7tQ4j3xRYWtCD8hJ4taF4oLCCxA5Wb4lszOX3snb5
         grgo5/1QWG6KECVpmpBdjwBAisbSTnYZaLY3bMBm5eQS4DFNHYIjy63Sq1rqSuIqatTL
         lvnf13iJHH6IwoXug2WN421VG+0LBziV35yf+aO1tqCMWVbzMYtD9VxVUcOEUL63eExX
         Vcum7snzC2pdEDEl5npm2PKxBa/iFxDh1j5IYKaF3LrqRISHJ1fi5UvrGKyAxlqS+qG+
         nzpg==
X-Forwarded-Encrypted: i=1; AJvYcCWcbiva04i0sAIulQNW37c7Lgi9LM017jMchSybdTZ19ql9aPKcu1dVn2oZVWIBlrJPlAwyR4RYsB+k@vger.kernel.org, AJvYcCXWfACZan5Odm84OLMuBKmcsHVLYpOUDJvRs41U4WfiOl6m3fhzWHd7Y0jDiysJqNs6nNLC+P/97dfGbQ6N@vger.kernel.org
X-Gm-Message-State: AOJu0YwP9AUHgekhglX74Y4JkqiGE19im2nU9EWhGUSQazG7xxUg5nkz
	iiqqQbn/wmIy+miaRnbEd6jhjfLJUqPHTg9wEatvnqp3XFaOgRZb
X-Gm-Gg: ASbGnct9TzYAHstA6XBWGZ3dJ8mW2hXXwgVxhz7FptKExWDNYzMA0qSWSxt1hIVaqaM
	uiRxsh9pL6fcgnoB3Q0p+//P7ZQjL4FfBfYLb2aZmU12ZonE4oahqntkSBUkl03gmTesjt3Zhdo
	7i9DBcHLFETqQxGTuYRIa3xXdMhzD6x3Cwmxd3i9dwBkgYKB1HiecUUjgU9kj9+ZUGAaBbVGYi/
	A/IR0tqK8uiFktBNx7Om7KWtiPiX8osLXqPF0IKrUUszTAEk9vAtTSttX/f4PdQ2nMo
X-Google-Smtp-Source: AGHT+IFrgnJpvh7aaVGnucMvaHv2rELTJ/5OFWUkqkYUWq+MAPY2UvyFQanWVih4LLhOlXh3fh8rug==
X-Received: by 2002:a05:622a:1a94:b0:467:4380:76f6 with SMTP id d75a77b69052e-46c70fd31efmr447700921cf.11.1736904411316;
        Tue, 14 Jan 2025 17:26:51 -0800 (PST)
Received: from master-x64.sparksnet ([204.111.227.95])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46c8733130dsm59933881cf.25.2025.01.14.17.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 17:26:50 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: zyw@rock-chips.com,
	kever.yang@rock-chips.com,
	frank.wang@rock-chips.com,
	william.wu@rock-chips.com,
	wulf@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v1 5/6] arm64: dts: rockchip: enable the usb3 phy on rk3328-roc boards
Date: Wed, 15 Jan 2025 01:26:26 +0000
Message-Id: <20250115012628.1035928-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250115012628.1035928-1-pgwipeout@gmail.com>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the new usb3 phy nodes on the rk3328-roc boards.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

 arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
index b5bd5e7d5748..22d93c1901ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
@@ -360,6 +360,18 @@ &usbdrd3 {
 	status = "okay";
 };
 
+&usb3phy {
+	status = "okay";
+};
+
+&usb3phy_utmi {
+	status = "okay";
+};
+
+&usb3phy_pipe {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.39.5


