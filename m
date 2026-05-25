Return-Path: <devicetree+bounces-302760-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFwrKyJhFGrsMwcAu9opvQ
	(envelope-from <devicetree+bounces-302760-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 16:48:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 515255CBE3D
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 16:48:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9BB473005A9C
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F5B3F1AA4;
	Mon, 25 May 2026 14:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MoQ7A+EY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7783EDE43
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 14:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779720479; cv=none; b=rMgyQKH8XAIOZ2gWrP5Er08Ajf8ujzChi/44iokGI6g6SIjuX7REWgmrUpz6lO2c0lo/L39zB1pCKeXyMquCNglyc9CEE0kj4grfV7tulFOc9zu7IIWBFVAva68qn2nB3ZOhUbMhLgzKAJG21U8vPnaZbe3+9sly6USSwnR/Pw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779720479; c=relaxed/simple;
	bh=ApyTNGQqGjBxvFRvwMaHvvYHMwId1OBVvi//Xkx5AxY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kEusIXriQ8PdGLXaSTPsiLMhhqCWlLQ4AUkRF0WRmNSj2CvD71maL2ypfAVO1WQ6wQQAwZ7Otc1hmy3ET8FQZmMf+J6VZ7ztQ1tIPkpAIFqW4urPGIPPVbxIo8YAucFDk7ePFVUDk8LXTcc+E8NkGZgWS2VTI/6SZwQ91HTNG+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MoQ7A+EY; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-36974217d4eso6314371a91.2
        for <devicetree@vger.kernel.org>; Mon, 25 May 2026 07:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779720478; x=1780325278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pqwtJk8xmatM/f20tiZM3MnIEuWEW+BjNIaufm9TpJE=;
        b=MoQ7A+EYfe7BKJLVo0cLGDctXXJ1skLbBTwRPdiT5c/mACHra88EM8jRRPMcdroUj1
         SJxpG++n4pqxLuqzrmWZ8mFq5MT+W+nMlOpyxdZ2nciSxERtFw+nZD/A8UlCk0rvPksI
         xxkx8sRcAv+Ui8GyF7mGegHYbVShHUjczntM2J+YEtV6KN5li/EwXfSRZqHgfRCVQPPu
         y+QNN7r1EW3omWbmOyaBnRXIN+BFd68PfUIf2dq7sm1M2txLnjUcQicvwWo2Fptr3UtK
         JKfE1c1t4cKFBK+/7KVEWiHBsfUC0VB8iO6XNG0eHKLEtwh4Si1qKehYrmUODVq6Uc1b
         2fbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779720478; x=1780325278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pqwtJk8xmatM/f20tiZM3MnIEuWEW+BjNIaufm9TpJE=;
        b=afPEz05RCCsIB4yiiE4qGYRKPZ3C8f+/4wMqKeP43+K854KHcshjmLC6ckgNzbhH5Y
         1sKBL9mN/nlyx3F8hoyaQiuqU/ejhhcxbC1KKgrIljaCiZRRDZDv4jIyIQp8hqUnGBbt
         OCYOOJKX/PgFQDz+L9d2XEUX90wPgBZtblVUEop38r9Lg3bijnNCvjLFtllef863L2DG
         WS2cMmdMe8NV0Ky6e0TSWSbi1IXNW3QWBhtgKsoiD9AcZxeimV8qbbN+UjzFjzcIZdHb
         6T5Yjl+B6ZprRY0e3qZ7i2V5qZObQAvufiufEaMeDGzMeAMRHNI2bwS4an34EvZNJYMi
         NUdQ==
X-Forwarded-Encrypted: i=1; AFNElJ86KQNIyBx3t1aY6Rax6qASwk/yH2TEWWaAke78VzkKNoRH3bYlgGwOeYQkZKYguyGqMziW/ROPF4WW@vger.kernel.org
X-Gm-Message-State: AOJu0YyiLBS6rxB0P5/TOZtp5yVtW15+NwnYjJCPzO+HEU9JUIbQvt0W
	e5oxGHt3cmdSmJZJd2njz89iWefQp9WrGzUYlnKkkcVLZVLlY8hXMzVH
X-Gm-Gg: Acq92OErJ9gR8hTYj5cnBBy7+O2eNRqTkFi/FAKcrARYwxLyHNNWDLL5y1qoRYd6mz8
	KCCzmiz6WXx7iC1Twpd6usV/zniAoIejvZ9GR+cTXIQOAbnuf+ADecimPSALCh95Ysa9EihPBDE
	ZgM4c5Wr4xwO+6u/EjeBFtUVgcigyXOprNBmF9i0z8oD4XQbv7LC/ncQDyWh/gEDyo4hPFvWIVk
	difwuR7iv10dCYekXVtVkqEnEwk7vna/Hm0jRnQlvZelY48taJycn6zjikoLKqOcImL+M6uN9E3
	WgubqkPHARKtsu3nsoYxCB+8HyLwhrQwdB2Fo5N0TqqSNf1vXJoY7XcBvG6n8lzhgGc9AZgv2nG
	U/KZV7MBI8i4WtaRKiYth1fL6eB62E8yz1GZXMHIwZXeqsf2lDeUqBKXsSPH8lvNv5z1A3tk1Pu
	b2yNKbdZNNjuzjMsjO0ZBwuVdAMtqTeM2DgVwJMs9fYrz8BUXf0A==
X-Received: by 2002:a17:90b:274d:b0:36a:caa9:47d2 with SMTP id 98e67ed59e1d1-36acaa94cb2mr5894653a91.1.1779720478207;
        Mon, 25 May 2026 07:47:58 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a5f:4fa1:cc65:18c0:209b:38a4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36abfe17c95sm2721993a91.0.2026.05.25.07.47.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2026 07:47:57 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: linusw@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Vincent Knecht <vincent.knecht@mailoo.org>,
	Grant Feng <von81@163.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Alexandre TORGUE <alexandre.torgue@st.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Robert Marko <robert.marko@sartura.hr>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Pavel Machek <pavel@ucw.cz>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Baruch Siach <baruch@tkos.co.il>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org
Subject: [PATCH v2 5/6] ARM: dts: qcom: msm8974-oneplus-bacon: Fix sn3193 shutdown GPIO polarity
Date: Mon, 25 May 2026 22:46:11 +0800
Message-ID: <20260525144629.498630-6-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260525144629.498630-1-jerrysteve1101@gmail.com>
References: <20260525144629.498630-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FREEMAIL_CC(0.00)[gmail.com,oss.qualcomm.com,ucw.cz,kernel.org,glider.be,tkos.co.il,vger.kernel.org,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-302760-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,lunn.ch,bootlin.com,gmail.com,mailoo.org,163.com,arm.com,st.com,socionext.com,sartura.hr];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.68:email];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lumissil.com:url]
X-Rspamd-Queue-Id: 515255CBE3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The sn3193 shutdown pin is active-low[1]. Correct the GPIO flags
from GPIO_ACTIVE_HIGH to GPIO_ACTIVE_LOW to match the hardware.

[1] https://lumissil.com/assets/pdf/core/IS31FL3193_DS.pdf

Fixes: 724ba6751532 ("ARM: dts: Move .dts files to vendor sub-directories")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
index 258bbbecd927..c528d42bade5 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
@@ -147,7 +147,7 @@ led-controller@68 {
 		compatible = "si-en,sn3193";
 		reg = <0x68>;
 
-		shutdown-gpios = <&tlmm 45 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&tlmm 45 GPIO_ACTIVE_LOW>;
 
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.54.0


