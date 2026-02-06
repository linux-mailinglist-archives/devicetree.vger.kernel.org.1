Return-Path: <devicetree+bounces-263390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dleNOMkAhml0JAQAu9opvQ
	(envelope-from <devicetree+bounces-263390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 15:55:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60434FF507
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 15:55:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 280CB302C5EE
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 14:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52BB142884A;
	Fri,  6 Feb 2026 14:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i0aorkFC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C80D425CD0
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 14:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770389451; cv=none; b=jQPqXW4wSXBiMs7MCYYEZkKygHvv75nDyuAmGnB9E1MESlohY4hZuW4fzf6gsVlRc/gv61ZSeeFocgMpsH737HOsbf4Lz5gohcl80jiMtjFDN37+/Skb2MlyriXbY5045fdwIGohonRotQiiccCYzJ0fZk6YEaY4cu31G3CNsPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770389451; c=relaxed/simple;
	bh=xjSbwzZtG5gO7c0c14CObzQrxd0ynl2lj1Czc800QEA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fm2tvga/8I2F6iZTQpzGOuhPyfM9aINijHoCSURKOPM/7Cyt1YcG5rw0lMY9Sw6Xx8jbhHmZOBIYVKN0Vpm9QxTzcSZPvfoi8tVbqzO6Hj9G07OYE/sq0tlChPaUoO8CyzOrAA4D1R7kOQORnbqoSElHQyw14GtxSjQE0HD+hZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i0aorkFC; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-47ee2715254so14278475e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 06:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770389446; x=1770994246; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/S0eg0m7isWhJo/g2N8HxsSID1GAb0gdwF9PpLKomXQ=;
        b=i0aorkFCznCoPibSub6kpOKyeDFgw5BAx5m46zB8uf0JmChu/HrIa6mLHKmJSJfY+m
         6rBYFgwgO0q6FG4WvR+q8EtB7oJaWn17GJ/GZIkWleOmyDAyj4mJmJ0uaIrPMVkR2Soc
         VSYQMxUvKzoMw5S5Y/H6hHwckh7Fok8SghmJRtbxu1TO/8bno7LNk3ZNQWEjdWwRJdLB
         tCV2tKH5QlzL1k6BRhICQmzaToV0BX3vvKZLfWCkFoHeGYHZZug+1nrqIioAFo6A3B0J
         XC0r9UvK9B9VcxGoOKByiKXfSAcupguIGoF6aoIQu/sGan3So7ZLYq5hM0VNsanF74L8
         hEjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770389446; x=1770994246;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/S0eg0m7isWhJo/g2N8HxsSID1GAb0gdwF9PpLKomXQ=;
        b=uDH2aPh3zyAiHVJQ53H2cdBwgmGUAwKTyTmSzSW7dv23rmVgTxVFnW8j1cI+c60D2P
         cFK8zHCQWNQ2iysgZZ5H8fu+WqZSFH4Cjq4JMUT/ivqb8GTAhXCqYcOOV2KN0jV0nWRJ
         J5o8GE+b4cGybQvbaaK2nFWhY6Rot+gkk8h2WO6zApPePalw5hJWIkWIPq56UkZYjDKu
         6fF8Ab3Alsjjg14Gmgt9EodC/b7cCh/4yP27y+aqOHchIelokEyZE/dAqfptZLWdg3tk
         rs9xOq9oIOrRbTvQHgjebvM2GSQ/7SLyq0xbjdGFNB6aRgAckTeQ/DZDRj+6OXZ7mWim
         0N/Q==
X-Forwarded-Encrypted: i=1; AJvYcCV1jKH8Gzgt+EKXSLIDYeSox9Di9+N4PGMlHjBnbXruO0KmHdm2Vx+eQ7r1tAvJKh35/npBFXD4/Oph@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3dXsRj7cVpWCKNXSLsI6G8sXcBCmkXz3b91qc1rGjAYh7MVh7
	T1V15ogzLYWtSLnX/OB1SsyFo8vSDxIfaMEY1fmt1jdgyhDcYIJi/BnL/bQhRLfhpJbq+ENE7S2
	xb/9ChOE=
X-Gm-Gg: AZuq6aL6T2keOxKyF3LGDyqRXVJSN+ZbDEPVZy0LOq3g7ojRzUQQ7VvXOTcqNJKS1rF
	YN5T4rHmHb3TO5CaXoaHDiNoGiuAqAZSx7u73ysuqIQPWHyHu+9Tf4eduo3xc/5w630AgT7aenN
	xdRQRooq8s03NGmco+PT9GGBXdLNDbOk1lokVDPo5PEGIju+gHgvhPHeiPDtlnPinbBscQVNJK/
	1+mibZwWwwSTD4dnfn+Ex0BeUkXtGUOXCGdO/ZsHmSj75zY+KPL5iGlcjiumIwetFazMYmY2G6K
	UFcxCcM0wR0Ns6FsvoPIP8LcAN+SSyAFdCwNbHE69voRkdrq/v8dsfZ+6ILye7ZGSw4KMXDtwku
	zfRpSH6QH+9MT2m0lSTnlRfJTLPDod/3nqalM0PSZ+pivl8L774d5vSPCPzx7GRexJgXf21q2hm
	YtpQNOzzfwxIEGp/uudQWTtQvHt4gmeZ5t
X-Received: by 2002:a05:600c:3f08:b0:477:a246:8398 with SMTP id 5b1f17b1804b1-483201dcfc4mr45291315e9.2.1770389445562;
        Fri, 06 Feb 2026 06:50:45 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4832a38425asm3825805e9.7.2026.02.06.06.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 06:50:45 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 06 Feb 2026 15:50:34 +0100
Subject: [PATCH v3 6/9] dt-binding: vendor-prefixes: document the Ayaneo
 brand
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-6-5b79c5d61a03@linaro.org>
References: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-0-5b79c5d61a03@linaro.org>
In-Reply-To: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-0-5b79c5d61a03@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=982;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=xjSbwzZtG5gO7c0c14CObzQrxd0ynl2lj1Czc800QEA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBphf+8g+1NPjgeJYwBAdgU+CA8HJk/PsNY/WtwXdyu
 i3Q1KXSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaYX/vAAKCRB33NvayMhJ0TJiEA
 DK9zFBLu9rmXyXa5in0iqKaKheQVxSDqnHAbfbf3BXqiEmnHuedAe9egyNmclZSJ4NOohRn8GVe3pk
 ztmewIdHh/6pQLHWjZMt8i5/l2vXZ0wosRXVom0ot+22LwCh5oufi/RMCiJff+JhdM9Ru+epbf3KFM
 J1s1rIUMDnF/fd5N0Eu6BVklVQh2UIQCn0C1Ya4kAhj/6ElouepZllyAR/jaK5H6z4pNuu14imyfSW
 38xlF8sBmpyXsoYXTZMRqe61qh5eR02Q4tZHjrK9QGPMWJkUtbKf1WzwJZ87M5O5aLuqnJtjTlv+j2
 NTy4RCxKQzMRLMK8qUOFZ+bsapALsB1ZOstCRRPKPCZRJgwLhkiT9kWltlsVqgj2yb1gaALM4MndTc
 32X2SgvyxLg2lrxXoqBZUdxRx1ZJDSShwWZdZo8OyISYBoPbwEx2ZuwhWtXft1BHvjpvQlFLhkS1mP
 nvyF+1u5TbBY39cCom+gUh1Kkwx5o9Tz+w2+pQCAm0gUNuakVgGe8ABOHnPo7m6TrDtP2mHZByH3oC
 +7hvPhq+a1J6jKmkjqQbJCYRkZvAYykYHoU81FiPo4+EaOU4yVZkFXxOqX1Cm45FDeFk7N6MbpniOk
 zRFxYjShLB6j8itkdh1lveosi+F0TgjtrGcm82hsfNFR3yFBVTGjWvO+b7og==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263390-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ayaneo.com:url,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 60434FF507
X-Rspamd-Action: no action

Document the Ayaneo from the Anyun Intelligent Technology
(Hong Kong) Co., Ltd company.
Website: https://www.ayaneo.com/product/ayaneobrand.html

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..45fb1a3a3a06 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -217,6 +217,8 @@ patternProperties:
     description: Axiado Corporation
   "^axis,.*":
     description: Axis Communications AB
+  "^ayaneo,.*":
+    description: Anyun Intelligent Technology (Hong Kong) Co., Ltd
   "^azoteq,.*":
     description: Azoteq (Pty) Ltd
   "^azw,.*":

-- 
2.34.1


