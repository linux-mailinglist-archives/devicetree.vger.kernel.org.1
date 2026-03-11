Return-Path: <devicetree+bounces-274182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMdlCCSJsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:24:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 903802666B2
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C9A01300B556
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416C631E835;
	Wed, 11 Mar 2026 15:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="fvxsmHWw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA28248F64
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773242435; cv=none; b=GzlmaTBPEBtedkEuXwvwiuYFW7NLKoWleC1EYzgz65Vz5vZ0MzOOw8Jsch/5/gw4+7IdUaZ4jTIL6UiAwSItvK9Bjf/m0jQAys9DkxvIZDVCHev6LrVt/5qeprXN9hIo3h+nqG44nNy6Gsy3ohnm4NfKW5ko2fG9AIOvwiPSsnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773242435; c=relaxed/simple;
	bh=qIns13uQVIFngxNxMdLQKv/A1SD5iBfuaA1F7jTUhu4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QJd3+9VEoNvbk51THWsmMazXZ2SxXW9JAmAplbu/A9VBlKGML46tFUc54iFCgdVoqV/2KT6OU54D6HrSmCHhTEO0I0YMoWEoJ34CymEsruiQAm8bRV8BdxT2E0JzJo5Yfyl16ZE2BchwCe6G1StlSPOo1quT1d9fJU19xrQU2ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=fvxsmHWw; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48534237460so43649135e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773242432; x=1773847232; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L35iSGHl3sKnZzkhaQZmLKpUBP1SB2CXAb5fzFNXY4A=;
        b=fvxsmHWwOXg9ZogGYH5m2b9N4yPqAAiVhzdRjbjpaTh1vPj9ei7P+oiZlINe8224HP
         wo7cq7xUpqqRvgqhuhJEp3pHLGD+oc6Q7Yh1HAdFqtWqQOD3pjd0d1Kw4JT9qojf+v5b
         HPW48y+RtaUe+YtZFmb9G2/aGchor9CWF547svbhkNYiS+yK0yCXgowQoWdibpy6Hmx+
         uK6CdEGmKJJ6QLS1WpERbPqX8vYqPn/S05EulqgIrr5YrLugm5/Kxni5RiZB+7y6swwn
         WuJEyNaRtF4563k+nCJZ/fuRlPqNw9/OxE0utf/cTH74ojaqMZRzfSvqqnIlzcXW08a8
         ps2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773242432; x=1773847232;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L35iSGHl3sKnZzkhaQZmLKpUBP1SB2CXAb5fzFNXY4A=;
        b=bJBdEv5ZEyCtumYAU/qwFXyK8I9SYb5FsyUQKnmZUEtoA11HGHCG24seX7ujlB87Xm
         1fybwrspxEBki3f8b/dXRQj8RmPTFsLYynqD5w+hZSI8DtO4RcqhFaDNSnQyzPIoRQsJ
         bBvA0kMmY3kQUeihxKaEkGNOhdAsBJ6j1RmMHqNr67CV+thMhxGAeLk4lSvY9ifJwrBr
         ZRfX9aTZ+L69ARLZdmHnWvs1DoF07MZnCYlz47/mzM5APP3z5mtFdr1L4CZxbSebL9O/
         ZIFf+5Hq63gsQ34UK2OVCXFhwPij4Oommz7Fehv87DPhzEpsIgWpHfY4etvoGh6dml1p
         GXoA==
X-Gm-Message-State: AOJu0YxRC+FkfTsdJtlsXbpyb0wiVeT6p2T0ZWAnylXby7TVf9y2eLFH
	aHuvwu/szTMu5ZRfC885BBc1uDjR2Lmd7vC1G7rIt4N9LcaJ0Zxlf7xWxUfAEd0O08Al1l2OVB/
	L8pcs
X-Gm-Gg: ATEYQzyxby14lEf0uNxhENDl167SwvmAJ6Y9bP14jPfJReOiMuYtiR0dA1nqsLfJOpd
	12ekx2D8dKMGVEjpBk/OP58pINAULdOHhwhLlHs9mVaMQ2rqD1xYpiJCfpw2alAHvbMhJJdlcSj
	K1KdSYZ0HF3hesppLmQHAZ73lQsngXqInkT2OzH9xdA+8/GSLDAx0KK8Anm6FNEKHUiNglMYX1X
	rIdJdvQkPpenwqXn3dAM40CznqIy0uYuk+JiaJwy5cZbX+bG3pb7vLSxk+TgaVoXkgLrU+2i2Wz
	Yn7dcAel+o9h2ef9C3Z+uS2ooElAhhao/g+VZdxtYi1mc0Iw6dzsyWfQPwXfXxXCuldaBCiPa+v
	4RHX8MXCBr1rJ0hTg9+v8LSASBKUd3CBaMBAP64cxstF8Y4WPSjUpnP9C2nJtypcnhC9f2ELga1
	x3o0m0Bfs3cQdXvzJ8W0sfj1f1NScrpzk3eYU7n7r9OZY0etYCzSd4rLoVhw3u4LtK1psKq6mld
	OnZ6w==
X-Received: by 2002:a05:600c:1d0e:b0:485:3a03:ceca with SMTP id 5b1f17b1804b1-4854b10c86cmr51440335e9.23.1773242432249;
        Wed, 11 Mar 2026 08:20:32 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aa73dasm435519285e9.2.2026.03.11.08.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 08:20:31 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 0/3] Add binding and driver for Corechips SL6341 USB
 2.0/3.0 Hub Controller
Date: Wed, 11 Mar 2026 19:20:20 +0400
Message-Id: <20260311-sl6341-v1-0-0a890056f054@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADSIsWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDY0ND3eIcM2MTQ13DVNNkS2PLZGMLkzQloOKCotS0zAqwQdGxtbUAphp
 sSlgAAAA=
X-Change-ID: 20260311-sl6341-1e5c939c384f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Matthias Kaehlcke <mka@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1365; i=alchark@flipper.net;
 h=from:subject:message-id; bh=qIns13uQVIFngxNxMdLQKv/A1SD5iBfuaA1F7jTUhu4=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRu7LCb0sfYHyceY+5+vYr7jyf/leKzWb/L9VIOfd7nJ
 h5WWvKqYyILgxgXg6WYIsvcb0tspxrxzdrl4fEVZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNQx1jFi4OIUgKmeZ8PIcOfFw+PH3xZkG4hrGux6dvfigTPytyc5ak7faFA4pY1d2JDhn627W52
 t00rluvQu8171OYGL9crXCnHoVykaOS5a4rmQEwA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[flipper.net:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274182-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Queue-Id: 903802666B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Corechips SL6341 is a USB 2.0/3.0 hub controller with integrated power
management and support for up to 4 downstream ports.

This adds the vendor prefix for Corechips, a binding document for the hub,
as well as requisite entries in the onboard_usb_dev driver to let it
request the supply regulator(s) and the optional reset GPIO.

At least 1v1 supply is required for the device to operate, and external
3v3 may be used depending on the board design.

The reset GPIO may be provided in either the USB 2.0 or in the USB 3.0
node but not both (the chip has only a single physical reset pin).

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Alexey Charkov (3):
      dt-bindings: vendor-prefixes: Add Shenzhen Corechips Microelectronics
      dt-bindings: usb: Add Corechips SL6341 USB2.0/3.0 hub controller
      usb: misc: onboard_usb_dev: Add Corechips SL6341 USB 2.0/3.0 hub

 .../devicetree/bindings/usb/corechips,sl6341.yaml  | 79 ++++++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml       |  2 +
 drivers/usb/misc/onboard_usb_dev.c                 |  3 +
 drivers/usb/misc/onboard_usb_dev.h                 |  9 +++
 4 files changed, 93 insertions(+)
---
base-commit: 7109a2155340cc7b21f27e832ece6df03592f2e8
change-id: 20260311-sl6341-1e5c939c384f

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


