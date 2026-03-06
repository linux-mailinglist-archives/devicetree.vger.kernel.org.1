Return-Path: <devicetree+bounces-271793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHy1ONcoqmmQMQEAu9opvQ
	(envelope-from <devicetree+bounces-271793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 02:07:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FCF21A1E5
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 02:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B6CB53025E11
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 01:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB8D301016;
	Fri,  6 Mar 2026 01:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PgPyyaQa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0BB2FD1A1
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 01:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772759246; cv=none; b=e1u0mkGD+5RCiIz1w/ZI9gv/wU0oWjs8WeggHj828vNNtTgM3VFYtjlcKFC0kdHwy+lhoQ4z7abz57XIbzxpBV2MdLqQLIrCcG544HTDxrgKDivXJOCn8CxNedDLNbcggdoI0qYwMVYeiz7RAzxcKQDaN22jH0yNym6Vq4r4X5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772759246; c=relaxed/simple;
	bh=EirEtk4w7F682q2IM7vbLDYw+PYMDpUGY6uN0GOHS5Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QTxSQo5bkIs74JRre5KCz797QHGnOw70WqJ9UCdGGZNA3jUTSRXJAQO2D9pfbPq/m2L40AecKPdBTGrGL5Zvf3D2VDszRXeuStXo/P5bpHh+RJ5m0XgBBI1CGaDZxYKJYbc5IfN+zkVd1H5Al6E7D/YrQi++qu2qYiRSgd3oXqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PgPyyaQa; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-8297310ce0aso1579420b3a.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 17:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772759243; x=1773364043; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7kRcXgVkSQhw0XQs+BeJwsxiCbRmgYGK7GY+i24Yku0=;
        b=PgPyyaQaexwc/WAwQMMccnzWgjuSPQNl6tb3g67+GM+Mm73OCpGm7HXuZllfMHaqEb
         TIuqM4rc3mNCXA3t/FqjH6C+GAG4b2x/AiGQcgNpsab3s1ukf9sjKpK0OQHh2cMR7PwH
         pAgLKTIpPlaGjquyii3zcEQaZZLJe+NTP2qMAm1N5lDSuNGrqYhLY6R1WMpziDzQitIL
         scR8TaGOmcibED8MJOgSZAMe5gblSPIIlDsOrYAbcERHSPzGk9sHn5nbmCCvWpLraphY
         YyresnUw166GduINLkA/NaiFu+TRAU0b/q6v/3NiNxNL4eEJ14emvYigmSmSt1LCWZkU
         V9IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772759243; x=1773364043;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7kRcXgVkSQhw0XQs+BeJwsxiCbRmgYGK7GY+i24Yku0=;
        b=XKDzOrisNJXymWyI2VQPL5EtQQhcqqOlOvHyFMLU8g33xxu2DAbgE9qGviuTw4dlAq
         Ojtlxe6VTovgEYfg348u21HsYnb3i2IUvFFXeg/EhhfeynO3pWzNQ9E70NiuJCK+NfD2
         h62OkfuSBn3IEHDQ/WzV/Rtp4vK1EXMSeQHQ39ZIB+hE3SYXovkAiYPQMuPfiMGWIjnU
         F/TNU1XljMvN+dYAxlycg2FMAhalP+8GtnHyC/dcry90VLVh54V5Hb5R3Fq5P9OkEMyi
         UipPogk2/4tr8EcHPHuqSKKitOz39Jd2TdqrCZdNJ2HYT5eKed0KN/QQf1Xmh2wMtBbk
         MvaA==
X-Gm-Message-State: AOJu0YzpEHz0P12ujkVqVYiuFmMC5lstchn4z9F0XRnB7W5ko1/wJ0E7
	ZkyNUa8DloKkgz9qe8J98h3eBiCLJSFXwuEuc3DdHSwbu5tkXCpew3i7w7YVsIuUvY0=
X-Gm-Gg: ATEYQzx/THhmdzGCNQU7UNrWfT+oZoy0y/xeOHY6pYJ0MFgdiHJb6E7yNgQVbKSRr5k
	GDwMVWmk82TIf93QgkWphtWN/Qz1VtCxCWjMNldwr+DYmwDzYRf4RmNnDP4wMBOOUip6baGue/F
	9c9xw7SLKgew5Tlv7gdT5WJpk16UElZ069smx1qnThswaLzfIZAAXZ8FbdBjFNpjB05svYFbeGN
	eTu/YA4e7Iatqnzs2MBkiySnpSThr9NzE7+kLXGagccxjtwbhdERQcxBZdFfR3DVPNw9VgDv+/I
	zdXDlb+XMIaEnN31kCcA6YmaOxulv9TK0KkQSon7P6V2jvR/b67n3b3xu6KPAdLsG7Tuo3Zt+QA
	ZdxYYoNxxvGplIvWTbpHYTx67xegYeYS+a3iMv9gispeVb77nuixLGy8A/i6PUxXHsHU07iHqP0
	SjVTaC72/+oLff/jvFh7eU
X-Received: by 2002:a05:6a00:1a8c:b0:823:efa:a657 with SMTP id d2e1a72fcca58-829a2f6fbd1mr253851b3a.40.1772759243445;
        Thu, 05 Mar 2026 17:07:23 -0800 (PST)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a010996sm22242994b3a.44.2026.03.05.17.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 17:07:22 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: aaro.koskinen@iki.fi, airlied@gmail.com, andreas@kemnade.info, 
 conor+dt@kernel.org, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
 krzk+dt@kernel.org, laurent.pinchart@ideasonboard.com, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
 neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
 jesszhan0024@gmail.com, rfoss@kernel.org, robh@kernel.org, 
 rogerq@kernel.org, simona@ffwll.ch, thierry.reding@gmail.com, 
 tony@atomide.com, tzimmermann@suse.de, andrzej.hajda@intel.com, 
 Mithil Bavishi <bavishimithil@gmail.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
In-Reply-To: <20260303203017.511-1-bavishimithil@gmail.com>
References: <20260303203017.511-1-bavishimithil@gmail.com>
Subject: Re: [PATCH v9 0/8] Initial support for Samsung Galaxy Tab 2 series
Message-Id: <177275924237.1445909.16957765309928368128.b4-ty@baylibre.com>
Date: Thu, 05 Mar 2026 17:07:22 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773
X-Rspamd-Queue-Id: 87FCF21A1E5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	TAGGED_FROM(0.00)[bounces-271793-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action


On Tue, 03 Mar 2026 15:30:09 -0500, Mithil Bavishi wrote:
> This series adds initial support for the Samsung Galaxy Tab 2
> (samsung-espresso7/10) series of devices. It adds support for 6 variants
> (P3100, P3110, P3113, P5100, P5110, P5113). Downstream categorised them
> based on 3G and WiFi, but since they use different panel, touch
> controllers, batteries, I decided to categorise them based on screen
> size as espresso7 and espresso10.
> 
> [...]

Applied, thanks!

[1/8] ARM: dts: twl6032: Add DTS file for TWL6032 PMIC
      commit: 3b142fdcae780cb67ab4cab61cf71647e9566411
[2/8] dt-bindings: vendor-prefixes: Add Doestek
      commit: e17a1b049128274386ebcc9bc88e2fe4fb81a4db
[3/8] dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
      commit: 3e375496c6d0f8c506afebc7de6bbfc392a6de00
[4/8] dt-bindings: display: panel-lvds: Add compatibles for Samsung LTN070NL01 and LTN101AL03 panels
      commit: bd861514cafab553b7b4dcc3b436a8036c90150f
[5/8] ARM: dts: ti: omap: espresso-common: Add common device tree for Samsung Galaxy Tab 2 series
      commit: f768d54723d13a10e7c7556aeb6087e8938f2951
[6/8] dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0 and 10.1
      commit: 9b2ee6dd895625155ad90c2430e85e9a8885c2c6
[7/8] ARM: dts: ti: omap: samsung-espresso7: Add initial support for Galaxy Tab 2 7.0
      commit: f1bf8f53355411d5afbf0421b59c7218d68e081e
[8/8] ARM: dts: ti: omap: samsung-espresso10: Add initial support for Galaxy Tab 2 10.1
      commit: 16dcd2c7535ed09e97fc075cad97814f0e8968ed

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


