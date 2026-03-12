Return-Path: <devicetree+bounces-274613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFQuNvTKsmlUPwAAu9opvQ
	(envelope-from <devicetree+bounces-274613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:17:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D19273296
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2B9C7300C0C7
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2390366565;
	Thu, 12 Mar 2026 14:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IEQCmaNJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26910351C27
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 14:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773325039; cv=none; b=KGIL7Xk607V87mHWOx+pTdvWquZU7KtCzpYXl97RIQwTstCDyaixqqgBkOAWieB74a5UkdNlOVCdH56YTTj0nKARen1Q9WkUeZa/cO9DtAM+5KAw099093e6BwbuL0HlgZIqBFam75+85fIGRhuIKWHOfz/fLoAvIq3evFeXzMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773325039; c=relaxed/simple;
	bh=SARy8VEzsEDdpJbYNnKTnv8sN+N/AGYzaEfpN1XAaEk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Eqqw6nyyQHwNTazfDeAUlzVv/z23M8t++pb5N7o/nhihYqbDcrIbarBfebQW8jr6tPAG+lWJ8EtoohhtSKn8vI6jDC+4rtr+m0yqNcQxEzPKqXvWB1P7Gu+Vp/ks5ro12eZ8ALOf2jITRO+c/PT/pMC3SwO1epWL8C2QqeT8KvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IEQCmaNJ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso10038215e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 07:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773325035; x=1773929835; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xr82Hs2jDNHg3VJOi+/ZysrSfr6DqCub9a4ab2Pxz4I=;
        b=IEQCmaNJ7dNln0Y/hR0XH2ivzF9DOdNz+9iB1NAJtD+MKWUu5XP9FSGPuNNF13XGCU
         QgQ5NDJ3xWnPMLOt9aaYmpCyoCFexo1ttVJqyfOW88y0IGzdKMksZbr9rtrl2sC5/85e
         P7WW3h5j3nT5KeIu13mjF+jl+mbv37sULnwvLBcl4Vf6IeYd/mEH5E6ltmMtxqkpxUG8
         yDnVYuSm24YmLbB0mIUVSHt6NIyb/HFi9UQE6g6XUzkE1uUNcUjuPpcdCuYPxShRovHp
         vXxWhMQtk2c6tNdayUYsC2p/hd3IXmFrqysz8F4QF/42VKnH4+2BVh7HDlXivC3D80ws
         3abQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773325035; x=1773929835;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xr82Hs2jDNHg3VJOi+/ZysrSfr6DqCub9a4ab2Pxz4I=;
        b=R9RYQGZe5kDbw4C6XtEAcpfT1X8ht2DskBZdiSG7ENsvXaGUFD8o84k6UiWCOna8zl
         qd6CWgAAjA6822YmWSu2pYZJHq1FBjRtXT0u7SqU0VMwliNyeqZcrA4tBJNF+dYzAV2L
         gdkBFzE3QZ/DybL0+KKKvQUnw2aHJq3lu29ncjV0mS7xL5/4/cxCBvc3VdPIFUrhrUs9
         Wu7R1Z4qJ6FuhvF00Jw3Po+1NFjqX0jv6a+Oz2NFoVGrF/l7VHxQ/TaBrQXsQlnXejaR
         aDxIV3fNDwWEqIdWvjD82TmDoH9ySJ5WfPPAZwQHG6XzeMGgOA+bIsyPrP0O4FVhL163
         4wMg==
X-Forwarded-Encrypted: i=1; AJvYcCXw63CleOTmrnMuno6Grut6SXesAmAibYw1SNYRishWeTG69etMoQ7NcRnX/u6SmSLKUokKLDJYVwtr@vger.kernel.org
X-Gm-Message-State: AOJu0YyakDfdAmRLW6aB46Ld4fIaRrGLCG/6Kcy4Em2pZcvjJ439VQr6
	2i+xXrf+jIKj59tDe4vqhe4iRxRP2kMXcPpi+6jwOWhA8pLJtUzYvl/nOaMeqcilCnw=
X-Gm-Gg: ATEYQzyehkuatGGcXpC1SQ4t3zWmOvOViLFrW9Yw13fuJeE83SZ+rFlpzRTgZPauhm2
	oUHOIqv+rQU8f4kZNCZ7DQ/lb1ZfTFc+CnOgLfXGG1MB5/T715697uhd2gdX2G+iNfdGuXUVm/d
	RzJMODQSen5iS+CqTym1P3i4aaVwdNqcVLhBf9+Nv+fqP06tEtUQphsqurpTNMhEctthlfw4S0+
	lGv+8npQfiYqlrrkpCPQh5wMMRsmBU3OMcLGDqR+ifZBnzacqehMNYreyKjlskH7FvOAPxIBX/T
	Pgt4O7IRYpMsljHsagrGGND61vKJt7Lsa477MeXD9H9c8eXsWSQ98szYUXmdiaK1w7XzINRUh/m
	s37jXGBE4frMqa1KUCOtfdJMjYSuUe68VjvjyH6qJ3XCoEaHhSyRMPJkWnFyC1TPk9tomxWEuqr
	muyng7PPwb30wLjWIDjaoIAEucokxo6q0kqwo1J0W4JPMGG1+wRRA=
X-Received: by 2002:a05:600c:4512:b0:483:64b4:79da with SMTP id 5b1f17b1804b1-4854b124e7dmr108714785e9.26.1773325035381;
        Thu, 12 Mar 2026 07:17:15 -0700 (PDT)
Received: from artemis2.elfringham.co.uk ([2a0a:ef40:eeb:3801:59ff:f478:8b7c:4ecd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19ad9asm9407142f8f.7.2026.03.12.07.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 07:17:14 -0700 (PDT)
From: Andrew Goodbody <andrew.goodbody@linaro.org>
Date: Thu, 12 Mar 2026 14:16:57 +0000
Subject: [PATCH] ARM: dts: omap: dm816x: Correct pinctrl register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dm816x_dt-v1-1-ed3370b20799@linaro.org>
X-B4-Tracking: v=1; b=H4sIANjKsmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDY0Mj3ZRcC0OziviUEt3EpFQLC4s0Y3OjVGMloPqCotS0zAqwWdGxtbU
 Azv3dUFsAAAA=
X-Change-ID: 20260312-dm816x_dt-abe888f372e3
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>, 
 Andrew Goodbody <andrew.goodbody@linaro.org>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274613-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew.goodbody@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,0.0.3.32:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 45D19273296
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The delcaration in the pinmux device for the pinctrl registers is not
correct. These registers are actually 32 bits wide, not 16. Also the
mask for functional bits is also wrong. Functional bits are 0-4, not
0-3. So the mask needs to changed to 0x1f.

This information is taken from the TMS320DM816x DaVinci
Digital Media Processors Technical Reference Manual.
SPRUGX8C March 2015

Signed-off-by: Andrew Goodbody <andrew.goodbody@linaro.org>
---
 arch/arm/boot/dts/ti/omap/dm816x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/dm816x.dtsi b/arch/arm/boot/dts/ti/omap/dm816x.dtsi
index 407d7bc5b13a364548087dd5fb2659286bbd8537..a1e0e904e0f05cd725e71da70bffbde2dd2b2e38 100644
--- a/arch/arm/boot/dts/ti/omap/dm816x.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dm816x.dtsi
@@ -94,8 +94,8 @@ dm816x_pinmux: pinmux@800 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				#pinctrl-cells = <1>;
-				pinctrl-single,register-width = <16>;
-				pinctrl-single,function-mask = <0xf>;
+				pinctrl-single,register-width = <32>;
+				pinctrl-single,function-mask = <0x1f>;
 			};
 
 			/* Device Configuration Registers */

---
base-commit: f90aadf1c67c8b4969d1e5e6d4fd7227adb6e4d7
change-id: 20260312-dm816x_dt-abe888f372e3

Best regards,
-- 
Andrew Goodbody <andrew.goodbody@linaro.org>


