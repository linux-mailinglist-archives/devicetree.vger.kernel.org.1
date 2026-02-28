Return-Path: <devicetree+bounces-269466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJdqAt9Fomn31QQAu9opvQ
	(envelope-from <devicetree+bounces-269466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 02:33:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A74D1BFBEA
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 02:33:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7CEF83053A49
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A9823AB98;
	Sat, 28 Feb 2026 01:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mMqCbw/U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAEF25DB1A
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 01:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772242393; cv=none; b=PDV2Gji1AqKwq/vgH+rGIPi9b5CvLXknWmjAb/YvUnABxOlqlNhkMbAPRPXqieAFrevbD6PoodxSGSluCodWdIh61Fn4rqMefbEmeQCRmw2RPcFSNZxJcCfW3jXMuMklqRCMxqQcUF2FWMEbviZ6Whd2lS8B+9sDqOvju72LBTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772242393; c=relaxed/simple;
	bh=ZrY9oTQ4YsKnr54ZGL+5Lv2Nnkj44yiF0H/W55vcK48=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oVH6P1ZXBDEgKVaAE5bHuppEwlmM9ONupr0kC96bgUiFEHtPMwuVwPzc1V3AZqjxGO97Wz3x5ABr6FG/JBgoOK0Y4gn2Vg8RngBk0JP+aiJGQu1DjICfdKDi0QdcPkmvwShPGOArWFrTc4jRYpQkbwk9dNituKSY/QWQketMxTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mMqCbw/U; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56a9a7e762bso1972897e0c.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772242391; x=1772847191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yacvo8FTXmtUK6kvMPHtNgDomN8fLaxrnZj3UqvDkYk=;
        b=mMqCbw/UiQc9cR4YLq1mJEYpNMS0Getv2mmJNo1OpuYW4rm7y0+vdszMgxvmbm75e0
         Oxqkk29M9G3/RkBJ0vWhmTPRZ6TkHPNdCl9pusbYHg7RIqxHYli+Bs6TCyt+b1m4IVCd
         sTvPb6Lny5O/dxoeoiWW9IKqSrCPnUxQ+Z6kgv97hSUOB2kKSZnKwItGyOn8USBxsISL
         vFtejQN++wmp41m9VQNLZZrBmuGT0QTrsURXxn6DGWsOTC4I+17dHHRgEK/dmL7xDa9y
         eDpGoxOAkBZGPx/7VLgt4+7+TyB1Fqwx37PKB4zoSc9QfZAS5HEFte+5bKQRUrvwICGx
         VmZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772242391; x=1772847191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yacvo8FTXmtUK6kvMPHtNgDomN8fLaxrnZj3UqvDkYk=;
        b=VVh8IgBZupLbgdUYj3aZwba2RZp3UIaTkhyrRVezCB/h5Dlqfuo2VHXRmnfc74f/+d
         1rayUPgfrXNC3i6C0FR6BYzSBUeicJlukdJHYC6KFWUztVpt5bt2B/rz+cYXUAFHp86V
         9kadbnBXtUzfFxwy6VQnipyJGdDUBjEpDMMPoWA1DnF6X4aeYpmHULV3FVg0I+lTI4ON
         tNWyvKo8k5bxQUJ0wY9CJQavOSJhT26DTEbmcu7KUw7O746JtSqzida4juGQhy76w2a8
         kCX/yZI/Z2IQ5C761jpu3aRmFK2nS0YtsVq43ZaABIp+n6uWq1txkYSUaeMrzhxnB8TB
         Ezfg==
X-Forwarded-Encrypted: i=1; AJvYcCVp8B19TJo551r/0ewUJtGCfueAzpdfJpNDQDPHsL7L0Q6fvN4rbDtPt0Pgowf13awmZ++YYX/elk1B@vger.kernel.org
X-Gm-Message-State: AOJu0YzRckKCxO051u5Ij/5SXzupA9ucVxwe+TvruwOeuP1d7sugCzas
	GclOTgOufXFZ7Iw827wwcMXatUEqDBbniImzEUrWIEsK2xAbt1xU1ih7
X-Gm-Gg: ATEYQzxdU7A+P/lZmJKDvM6OdfCQzX73eHhWITYDtioRQzANs3Ab/9jJ98MXr/+e4Zp
	iEO1db8rmGbRvNZ1Eyo0wkjtwxiXsW5q/pU9ns+TSVvBN5M5kCOeKI+ziwE8AO2+DMtrUTD1Cxz
	Ig5mK62IvGArvDz8VA+wzvGpiDLRGiCdcjSslMlskslAeEzdF44CPraBwxmLvFOgK+XiPiLATMo
	pk0ucsiZDw0hjM8UQkkQFubKTKjYaN8AqSPNaCz/s9egy8EcjZUQqFnGK+PiKT1N2tVx9c5zygS
	MijhdlBDwkY8Y6WwvZSqvhGSW2TLuW13Uo1wHLIisYUqEXw+TT6fhWb6NdawOESfZqhnLBW2b+J
	QhvPvtNPz8Yw5IOvp1zEf3CE1DXgOHdxfyzY1qZlSTivNLSmAjMzbVWAJygrvebvbOvrOtBgD8I
	EwHJFngGug1cOpEDEasOMRd3ZdYSRn6Ch6Cjz7qn4xfjO1vgJ0plqXDrVm+JjUdMr4kiLY
X-Received: by 2002:a05:6122:4d85:b0:56a:8c20:2d9b with SMTP id 71dfb90a1353d-56aa08dabd3mr2771676e0c.0.1772242391379;
        Fri, 27 Feb 2026 17:33:11 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:2e2b:437e:ccf6:b644])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91b8c7a8sm8950597e0c.4.2026.02.27.17.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 17:33:10 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/2] ARM: dts: rockchip: rk3288: Remove rockchip,grf from tsadc
Date: Fri, 27 Feb 2026 22:32:57 -0300
Message-Id: <20260228013257.256973-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260228013257.256973-1-festevam@gmail.com>
References: <20260228013257.256973-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269466-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ff280000:email]
X-Rspamd-Queue-Id: 6A74D1BFBEA
X-Rspamd-Action: no action

According to rockchip-thermal.yaml, RK3288 does not require rockchip,grf,
so remove this invalid property.

This fixes the following dt-schema warning:

tsadc@ff280000 (rockchip,rk3288-tsadc): False schema does not allow [[53]]

The rockchip_thermal driver also confirms that grf is not needed as
the rk3288_tsadc_data contains:
 .grf_required = false,

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index 4e5e7509de48..4f2c048aee54 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -551,7 +551,6 @@ tsadc: tsadc@ff280000 {
 		pinctrl-1 = <&otp_out>;
 		pinctrl-2 = <&otp_pin>;
 		#thermal-sensor-cells = <1>;
-		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <95000>;
 		status = "disabled";
 	};
-- 
2.34.1


