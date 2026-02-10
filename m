Return-Path: <devicetree+bounces-264524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AjXLBeIi2lWVgAAu9opvQ
	(envelope-from <devicetree+bounces-264524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:33:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 910BD11EA86
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E8F693018711
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 19:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F37B32ED4D;
	Tue, 10 Feb 2026 19:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J0U815zw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE2632E723
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 19:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770752016; cv=none; b=sgCYdG6cjN4JXWROs0E+s90XkLGyLbGJjLlhUR1TVz7lqw/0+DnOmnU7hElxZTfihyeiYO+lIlAjYJe3mm0JalqtMTNk45rRwQ8T6CY3kV8puPdbSNXwnnJ48yl2OrDJKW3bCGcu5yBAXqDTGSTqAGOAul4NtgZtU8mld29fiMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770752016; c=relaxed/simple;
	bh=VQdP4rZ9h3J0EhLSTARmuUSjS4BKTN3XyhFq/8TrgLI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UqsBBCMMUUYFpP3/HO0+8mLC+q+plWv8VTJ6d6Y5ok36CrtfV3rDV9Kx7XKXJj4PDj+HfDDLQ72m51TKIkBqJne8h/MUNrt/v5WXqy5hO6PiG5Fuzl7NMapXXuXX9jP/zfoZzAUCYYNMI/5xJfFurEsA8tevt8G7OFyA9cnOCdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J0U815zw; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4833115090dso11257065e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770752013; x=1771356813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xk71nUW+8tIk68OOiZ1p6pMbhgPda0w/fD/dlKzEMWk=;
        b=J0U815zwBIXDmCdVErACvPUDObfUGZ8zxx98hRz536JVdXHPvepHwBiejImrNRcOYk
         NNzSRTG8wtkXxxuEFBldwX2dnzqr3PhIaUK/tB8vkoUhnSlus/cHb88QlNmFhqP7zwBG
         15mEl9c20Z5oSIW4S5DANHAkc/v5EwLD3dCSrMOcYqKk6wNps3fdLSTrgrcIowDXXlmK
         B76vZwFG5qsT5YMZK6rl1ep2u+MeAvU8oPxny0Rk+r9yCiok9UdmV6WRQysJu9KvBalf
         HgKSsx6z9hNBU837i2Z70xBm2HDoWbTSOZxINmKt5+q1sRkTU6sI2UNggcWp1YKvpPaU
         64aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770752013; x=1771356813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xk71nUW+8tIk68OOiZ1p6pMbhgPda0w/fD/dlKzEMWk=;
        b=Veznx7+hmufBuKpgq+M6cxn+0XthPREt4SzyPGB3Jb07gBEtoXkgD/Uv8X0p2Sonxq
         oUtZ3NtaXb45LeAKL5SNxcnH5lMh5ndovEll5ytfBJ/gDW/3+GBv43lbTRGjB9DMsV5a
         xkRhPMX1TbTIQodvdZeJb2HAkpOlNslN9emXPIM4wBggZ4jAkRQENERMsho4YH6IMXwu
         1Av92rwG49ZAaVU6ftHBr8fp32GStTb5KZHtLLW+j+6vkvpIxR8mn7FMvcAjS9YPPHi5
         7FYvPSHIJKaP3EfEnY5yBGSbFo/fVIzEPS1IfgXPiRSQwk8p39e5SkTz8i+GRkK04I7L
         oDIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQzT/TCPWameElUKdPjUxmvMdr3n2ZV9TF74S/re6cxN7d6oJob0hNoYghcIEi7ZChnHqfmhaJGYAW@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv3dzWK5/rkI/Lkk+nBZpICToKtxXPS3UtYujeVIZInEHU45RR
	8t7uEraxjXbL8Td6IlMDcnkJ8y18FBUEqr9AdktuUT1RHEoTyHvF6OCm
X-Gm-Gg: AZuq6aIJHAzBVkrxBJYAZzWtaPEsUDHRx0BWoCP0a9NgJrluW3WFUKdOa4GQdOVhEWz
	spVFsaaYbNqvtDwfKTRNisRpGAnIB8oFEy+X2KxOMAvINN8hn/t5AGwy+PaquxilbNaaXyiFf1C
	PvzpHOQVH0Kuail7rQ4sVVhtWXbiU5i0h5+4kjrXrafJQKOder39SWXVP/0dnVWr0RIxOV0nIkS
	twt00npfsrgipbyEZJJMYiHuJOTI/EBf5oZT9oUlJ6wBAjRs5qcHnKXaI5aLNJUPA8BEl9Wld0b
	BNTAvR4GfhnDkuE0HM5EgJ/wQbx878Kc4rxZJFg7QhGx1LVDtHpsWeQZXi2a376HxQ8/vlKbAMN
	YYMI0DqaGYNfHRmduSJH/bZXGyYSVwjf+1QvQOxhp2tc0R+kup+RLyJ/tBlQU2WRyJ2zewbRz4p
	yeDvvrwGA9jfwx0XMl+7n/oZzrwNmlJ7W4bOG7sESxDC+zTYB2
X-Received: by 2002:a05:600c:3b23:b0:480:1e92:dc65 with SMTP id 5b1f17b1804b1-4832022b9fcmr255795265e9.31.1770752013268;
        Tue, 10 Feb 2026 11:33:33 -0800 (PST)
Received: from localhost (39.31.66.37.rev.sfr.net. [37.66.31.39])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4376d3a32basm19835831f8f.14.2026.02.10.11.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 11:33:32 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 10 Feb 2026 20:32:54 +0100
Subject: [PATCH v9 3/3] arm64: dts: st: set RCC as an access-controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260210-b4-rcc-upstream-v9-3-17ca1db7613f@gmail.com>
References: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
In-Reply-To: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-47773
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264524-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legofficclement@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,gmail.com,foss.st.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.162.112.64:email,st.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 910BD11EA86
X-Rspamd-Action: no action

From: Clément Le Goffic <clement.legoffic@foss.st.com>

RCC now implements firewall access ops to check the access to
resources. Allow client nodes to query the RCC with one firewall ID.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 arch/arm64/boot/dts/st/stm32mp231.dtsi | 1 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp231.dtsi b/arch/arm64/boot/dts/st/stm32mp231.dtsi
index 88e214d395ab..e283c760d94f 100644
--- a/arch/arm64/boot/dts/st/stm32mp231.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp231.dtsi
@@ -776,6 +776,7 @@ rcc: clock-controller@44200000 {
 			reg = <0x44200000 0x10000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
+			#access-controller-cells = <1>;
 			clocks = <&scmi_clk CK_SCMI_HSE>,
 				<&scmi_clk CK_SCMI_HSI>,
 				<&scmi_clk CK_SCMI_MSI>,
diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index a8e6e0f77b83..89e0b8f2fbf9 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1761,6 +1761,7 @@ rcc: clock-controller@44200000 {
 			reg = <0x44200000 0x10000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
+			#access-controller-cells = <1>;
 			clocks = <&scmi_clk CK_SCMI_HSE>,
 				<&scmi_clk CK_SCMI_HSI>,
 				<&scmi_clk CK_SCMI_MSI>,

-- 
2.53.0


