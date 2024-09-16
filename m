Return-Path: <devicetree+bounces-103169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F6E979C85
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 10:10:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B487284905
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 08:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34EC14A4D6;
	Mon, 16 Sep 2024 08:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mAveGGEz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BD314900B
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 08:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726474134; cv=none; b=FM9YhO+E+IvnKX4JhZ2+ofj2Y53S59uW8ubNNt4u7g62HiJDncg8fBpyrLUM/fmHEmCL7G/5sT1qOGGB3LV8ktW9hUgoLJe6oGnVteOfVMIOUQNDW4OzKkX3QwPt/wpAuaqn+Db2SFx+nMo6o+guniKtTC/9jYJQYNlVyRzw7JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726474134; c=relaxed/simple;
	bh=FU06qT+NPvOm3hhLmS57lMOIKalbhsZ4lUkeWm62pBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zuvt3NDeyhuCO6LPsXM8lc1C6YxdOs8xQpS9F5QSgOmaOo9yeB3vLP2yqaVux2ODRWxuFGWDUQkfTKmkxOYtG9nVf3nX4Kd2x9g1mkWtoZ5GyivnF29WbQ7Lp+8bGvIxfTdobzbDKaSHfelVdqdVmoFiIERcds1yCdBoXf//yTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mAveGGEz; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-374c1120a32so2833055f8f.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 01:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726474131; x=1727078931; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=580RMZg7BDFC75JF/Ebwkba+nsn8zF1UwtVo3GvoGBo=;
        b=mAveGGEzJpWP2TBveEnaHzHePwWedc4uDo4toX4kh35aHr9WwkkPc/uVjosEvrd8rP
         eGLxv6iGQW3ajS5Orjk9hmrSAcOL3XkscAmo53mPSLOWKLHZvd+wTeYEu9l6oGNEEk/u
         8eRtnt+GQiRdo8oKLNRi07qQQ9inPHcCRtWnl0c3/9PxkZOegjd2Q/DkYWdWHAUd+be/
         Mj8+Kdp5L2oa7dpxTrPrYQG6PJcje2yg7XffwckRyE4VX0JuHLaS8CDIV7NFDN6pdSOr
         i/V0GQBx0krRQN61GzkjCURPpqLSNhh99CRR8YKXpYyJl9EBMXDA7XSZ3XfJjNJh6f03
         YpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726474131; x=1727078931;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=580RMZg7BDFC75JF/Ebwkba+nsn8zF1UwtVo3GvoGBo=;
        b=Nm7dfUnO3XnOxBUvnBfiOe2TpLIiIC5hDQL/U6FlvGyt30VdMFEtkaSZ9t/dkXPVbG
         mzuTAhHHjcYJSIoTXeXaTM/kaDwy1LIe2sylSg38Ozp5ntxj6DvQBbFRT6ISKxf4lstP
         SCHqNBg//c0MCInBviL43LEzRMkNo46UERf76Y8bNjtesQDEvB3HVDWiPL/8yfb3Xl6k
         dlQRXTml/SqxwhP1l/B04Rknd71yoUVo135xabBvsf6pnIcFEEVlaLoUB3m9/0zMZSmd
         icnM+6Y9voxtJis4ZasGPMrqg0qEnClG/V96tHos3LlFFq9gchar/wNJpTZLXPrq1AR0
         bCSQ==
X-Gm-Message-State: AOJu0YwsS0e5pJNd6qU6kyAJlSRgive/EdHVQXmqinWySEEuohLZ6yNB
	7WENBFjKkoXgxJFl1GpZ4s6h0lJtArXI8x1M8y/iQGzipYtCKW/28CzWIQJpnJ8=
X-Google-Smtp-Source: AGHT+IGMREgifms/lDTUpClDP5pCg/sFWOg3A40dsdRdMnpj+FRfgzEkbXrVVJZCs/soJ5ufFsVqDw==
X-Received: by 2002:adf:f0cd:0:b0:371:7c71:9ab2 with SMTP id ffacd0b85a97d-378c2d55524mr7817208f8f.52.1726474131002;
        Mon, 16 Sep 2024 01:08:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42da22b900esm69309465e9.1.2024.09.16.01.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 01:08:50 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 16 Sep 2024 10:08:38 +0200
Subject: [PATCH v2 09/11] ARM: dts: amlogic: meson8-minix-neo-x8: fix
 invalid pnictrl-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-9-0b20ed4f0571@linaro.org>
References: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
In-Reply-To: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=963;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FU06qT+NPvOm3hhLmS57lMOIKalbhsZ4lUkeWm62pBA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm5+eIgjcR0Jy3c1zFVfb4awqVgjM5vpv5Gc48MIoY
 coRQ0gyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZufniAAKCRB33NvayMhJ0VPTEA
 CwOtatXF+N+5O1QjEKU+cxwJQAKmdFc0sDtqao63cmeT8zsT9MtMuPVVGf4NLU9XkLxOSHPcSNDDDh
 Z7vwuLpkaZVKzT+rpZjiZVUeAtN8bsyT9SGM0YtCFRtN6YqW9hVJARwRbezPuii6eIUxU3xHT4U11y
 hFA1ng18uIfH1c4+1blVnD3saIdjx+fi/HcL9jlEzkci4VpQh8N2ZO4g76xIfJVuT8VyNjcBb66k5M
 wqNVkeUh0DRO7ZMcQqrU1wt7oSkarpPTNk2TslZKsHaObTL0gfZKenOgO+cqEF83KQjy8MBebkFSMj
 aUrRG9syBUACtmrCuKbGVhUSznZQ0FjUNWQfTknGUXT/yTooCRfKxqGoSUy2UQ7VJj7mEuSng7OGhu
 nk23cTjLpqIF9wair1ntQmTn90dqYbTZYmc8PKJMXYXmeNLokVexmrV2qolrwo2LeA/QfznLDCJmzg
 8DmbCa0YUdqFcSfhVaiuICt5JbzqxO/rvd5oGl1XxjrSxnxdf1brK3oIj/NFZ2c8U/7qeM8KW5w1mZ
 UQSDzSU2AEPwGglAwAZV8zkGmnySRzNPMfRx1fv43nK+ViaYlnrYtG62GZv446YsB95e6Gjvmt/Jdf
 64tNDAmmIZRCt09bMsI6ICz0FZBeju74A5YduCkfNgZ9UuKBfHRVVSwriVDA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The property pnictrl-names is wrong, rename it to pinctrl-names and fix:
ethernet@c9410000: Unevaluated properties are not allowed ('clock-names', 'clocks', 'interrupt-names', 'interrupts', 'pnictrl-names', 'power-domains' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/amlogic,meson-dwmac.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts b/arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts
index f42f97f2c7e7..62987eadc747 100644
--- a/arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts
+++ b/arch/arm/boot/dts/amlogic/meson8-minix-neo-x8.dts
@@ -93,6 +93,6 @@ &ir_receiver {
 &ethmac {
 	status = "okay";
 	pinctrl-0 = <&eth_pins>;
-	pnictrl-names = "default";
+	pinctrl-names = "default";
 	phy-mode = "rmii";
 };

-- 
2.34.1


