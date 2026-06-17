Return-Path: <devicetree+bounces-313051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1EdeKRawMmqO3gUAu9opvQ
	(envelope-from <devicetree+bounces-313051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:32:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4025469A904
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:32:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=reznichenko.net header.s=google header.b=Zcv0payp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313051-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313051-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A2891300E17B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 14:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE6A3F4833;
	Wed, 17 Jun 2026 14:32:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AAD3EFD09
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 14:32:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781706771; cv=none; b=sHUNfHqsWtWr/eefExfR7elxcB44ChDC0yodcRoO3ByfM/YIAEMItkjP+pvdNWZ3bgQ2XwEFQdI6aPFNnvO9uXEN/tfLQWEjH5Bl3O6RLf594WfQvnvRFH8O3LVtYsEXS7NlUM8GFdp0c+5lbMXsMsUtbHvTEyhmdpm7QEmVPpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781706771; c=relaxed/simple;
	bh=vOS8KyHy9TpINr5MDiIPdVXkKcDdyNHO5YSf2SZW0n4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NS08GFedOhuL8bi0bQMTEKxjcYvSkLxeT3CB72IQIYEXJwTidVDqcoC6Y66zBbL5B606+4jUoeVJRA9iCpKWNLFgLjApQcMk9d0OLsozpuCfobl2/xC2YMm4wG6RvpXkEIFZ6k48Xbc9w5k6bBhHVsaZtZJP9r6xfN2JMn3z0zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=Zcv0payp; arc=none smtp.client-ip=209.85.215.182
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c88d1d4543fso99606a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 07:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1781706769; x=1782311569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SIB+sVIyO2GVi+Ekcv1ypmmhsYnRKgdWrBtHiIQd63c=;
        b=Zcv0paypAZhlZ60gMFx4vdk4jy/qf/KUj3XH6wRDs6nA/1tfTym/Whpz1COHvc6CiL
         5kf11VTEajpTzh8PjdoBXfircLSiTtOyEbH477GgOzPglHlAH1h9unGpR8NG3yB15Zq3
         Gl8qWNKnMNNyPsbrOhkPZLMOxXpLTAR+MqZIpmwNFfl8BMkyG3Z058RtQ3iWvzz/OnFd
         XniSme3E9G7jxfBZiuVWU78OSzul6JlYEUHKzcej58Ae/Hpe8lmaDByAg9g/vh94MrG+
         xBFKYHz0Bt19Sn7cauJr6BhY5Be1P/LoqPJ8TT72njDCskTy5vLWke98DsU7PfVgCY6F
         wAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781706769; x=1782311569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SIB+sVIyO2GVi+Ekcv1ypmmhsYnRKgdWrBtHiIQd63c=;
        b=rKUlAbmZHcZcOoYjoKIwkmvGaxdWyYKhKArLp3/sWIQRCtPZaIWK0nl4knfkIgS1bn
         AmHlHBCv3Ka/PrYCBMu49NNV4qhEEbiNU2CojYLxa8XmSPVN2gwCxeIs1HvuhcfS57WP
         n+lQy+QGSaMCMfDkQs9Cdnp6VFSPV4Iv9xg0c3yW5D+nT+Joxu/MrWuDfPiLJSScFJhv
         TK+wwHN+Wc2nG4pbh+a/jmv8UCE0Saz9M+1gYVTMN+AJThdr71rkqFUXpmQDyuatJQMO
         xczwizZKNnuebImh/nKir/iz7ZzJrknKs0Ekp/YAlUQFMoPppuHEjqcYMObNrWe483FS
         sCAA==
X-Forwarded-Encrypted: i=1; AFNElJ/YZz5DKrCDkZPzCnlFQoatKJedoMiDh87oT5DUvbPs5rKAjs+GcfmcW6TSVx7d2/Siqo2fy1Zp8Ezw@vger.kernel.org
X-Gm-Message-State: AOJu0YzE3CLJcKtxU3dY759snRdCHsfGR2uhoidlavYMSlzVXVTsmUkH
	SGKMGhnjz1cJ/X3MH+VZZAqT4ovmMQg/Cl/sOYXHGUTPuV0LjeaSy+isxEFBO9OEXgUMVt4fJ6x
	a9/dH9kLZSw==
X-Gm-Gg: Acq92OE266Z/N5YNd/7vxe9A7BsPUcAEgGZWC0FLnXLG6nylqH/E16nb3m3t5NjtlEY
	qajVSwH5mJTyiMsv55cvhRwnZ45SwNvHSUDTpc7UA+KkYJqd66UcDYiZKum0qfbxcIvaokwUZkv
	xGX4yIsxp4H3LTTWpsPtnbsOZ5a9FIsKHmUsaXQCVeNx6756/3kaDUFXOUk3A0ZnxckIR22odk/
	22XAOmzkFY6DbS3cYRR8YUPRtFVnSuFgoau00lRGFbqlfQUt5gRlrV8Aa9icumrX1nBqY5tkyaY
	3VgjYvFF/3eUA4F20hsG3QkE6QaT2QUX0qO0gBtfmKqC7lKoIW86lBdN1wEA7alECRUQdTNEB2U
	lGpmoH8QigZgwDpUBy4HmXFOVJI1QXLLvlEPETSwzA47BFWW1rHIFk4fmhfgeqWuXQUAzwd4h11
	oMIlemD8g2voIr8TU=
X-Received: by 2002:a17:903:37c5:b0:2bf:1aa9:6c8a with SMTP id d9443c01a7336-2c6bcfd164bmr36575935ad.12.1781706769197;
        Wed, 17 Jun 2026 07:32:49 -0700 (PDT)
Received: from z440.. ([24.21.231.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327aca78sm176065565ad.54.2026.06.17.07.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 07:32:48 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/2] drm/panel: Add support for the FocusLCDs E35GH-I-MW800CB
Date: Wed, 17 Jun 2026 07:32:43 -0700
Message-ID: <20260617143245.372182-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[reznichenko.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313051-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:mani@kernel.org,m:dev@kael-k.io,m:kever.yang@rock-chips.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[reznichenko.net];
	FORGED_SENDER(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reznichenko.net:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,reznichenko.net:dkim,reznichenko.net:mid,reznichenko.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4025469A904

Add support for E35GH-I-MW800CB 320x480 MIPI DSI panel by FocusLCDs.
The panel uses Ilitek ILI9488 driver IC in DSI mode specifically.
ILI9488 also appears in DBI/SPI panels, but those require different bus drivers.

This panel driver has been tested on STM32MP157D-DK1 in addition to TI AM62P EVK.
The panel works in video mode on both platforms. Additional panels using 
ILI9488 DSI can be added later with their own timings.

v6: Rebased
	No functional changes

v5: Rebased
    Switched to devm_drm_panel_add() and devm_mipi_dsi_attach()
    Dropped not required anymore .remove callback
    Added display_info.bpc=6 initialization
    Changed 0x21 DCS command to send 0 arguments as per spec
    https://lore.kernel.org/all/20260529062836.203990-1-igor@reznichenko.net/	

v4: Rebased
    Tested 7.1-rc5 on STM32MP157D-DK1
    Adjusted E35GH-I-MW800CB mode timing to a 14.4 MHz pixel clock with
    slightly increased blanking to make it more synthesizable across DSI hosts 
    https://lore.kernel.org/all/20260527062300.88928-1-igor@reznichenko.net/
	
v3: Fixed missing Reviewed-by tag
    https://lore.kernel.org/all/20260204060114.345219-1-igor@reznichenko.net/
    
v2: Added comment explaining the "focuslcds" vendor prefix
    https://lore.kernel.org/all/20260203054121.335441-1-igor@reznichenko.net/
	
v1:
    https://lore.kernel.org/all/20260131034101.307486-1-igor@reznichenko.net/

Igor Reznichenko (2):
  dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
  drm/panel: Add Ilitek ILI9488 controller driver

 .../display/panel/ilitek,ili9488.yaml         |  63 ++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9488.c  | 289 ++++++++++++++++++
 6 files changed, 370 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9488.c


base-commit: 4af021a977735420e8fe18d64bef18ad0608d981
-- 
2.43.0


