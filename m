Return-Path: <devicetree+bounces-274026-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNAVEDdUsWlHtwIAu9opvQ
	(envelope-from <devicetree+bounces-274026-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:38:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CCE262FC5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:38:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 509E23007AD9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:38:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A313DDDA5;
	Wed, 11 Mar 2026 11:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YFA/Mv8z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27353DCD95
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773229104; cv=none; b=rSFN+oEwcdtJO8CtbCsWNUYYMe8CWcqQhDsSerG/J0masCfg340YmlfIfz1WJ0XVusMACUMPn+7eWmkk6h4zL2SpdIqH0ZRE6Fb54T/tc4E6L8F2E/EwxfvU9UzIBLBkB+H5LApLbmjT0Ati8P0/Xg/5rNPxfMpA38vG170JqD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773229104; c=relaxed/simple;
	bh=xtGiKjEnBQpQPUntP7CaatfwfFSBZpxu8M91vVnlSNA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UDurq1SiIHd4Ni6nWy3k/oL8zuOdEqK/G7yGQAPVCgqiaUK52qlRF3bpaRbBLcSJ7hDKIVK1xIl+1vPWsizJ+XOgUIXjCzckWZaDhhPItARCyr0SZjxC5z4BODWNvyuYendMCxSi/G9zErzbwUqRqoAzfitUNUu4HAyQD0I8TeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YFA/Mv8z; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48538c5956bso9359365e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773229102; x=1773833902; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V54kHQSlYQm1LF5g5xy9u1LvyxUv6rsWTsl/vLq0rrU=;
        b=YFA/Mv8zPgMhKIKkkqOtZ1Arczl26+uiu5XndIrDYRrspF9l+U0/hqM1HgxW9pLUJv
         iNoXffyQJ/9T4HepdCzm/wdgh9ZuP03qqgKyXUbr0aEywBXSXOsGfTy/WWQCsqN0wDIk
         eshupzR7oHMxDq4yiWvPmWX4tqKBxybSqD7o/qSp3kUPkOrgFO6/qZW87ixUA+IksBKa
         xZSdAHAPhy30QVKL5xHWqCEVJO2vAMC1UvtcIvQUXuAoO/QCwDCgCe9ld2D/a+rpSGVl
         GOql9XgPlRu1tmBxZAZUyOqVMvm4QVaNmwiSO38kf04FDWzmOD7JdAUwiwMp27/1Jxq4
         wKMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773229102; x=1773833902;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V54kHQSlYQm1LF5g5xy9u1LvyxUv6rsWTsl/vLq0rrU=;
        b=ss1fj/RXKxPelClV8fO3wE6yoiNnXRvsrQVbrtoIkpYXAeYccwjLhMxne9RHdt/kyO
         d+2i2Lf7TAUH+4XkE3rv47LxGoOYqO18zIb5xx2aQkQhM81SypTB6CtTN4AHM1MvAXLo
         yGwe/zVv/6/d3JtZ+c1NZXJwoIfNlsjwQ/mbPSRcyZexuDhuIm9zbHAw0HC/vrs/C9xA
         AxioSKOXZH+M4fRcJHRqXdJTdlnbRMQacvpphipx/iG1sZdqlShyfxWQpFuIY8E1DicN
         hn7ENgGrLRBwA0gIzsjMazPunCl5s8+bt/Ut/ELTmTYQgtJn18+m2RFkJ54LQzxOx35U
         9HMw==
X-Forwarded-Encrypted: i=1; AJvYcCU2Wm02lyKrHFJsEZJdnk5XD8OcN3hUuyexzvfD26Cu46+nOFbQzmg5hZAxCG868FHfAZ6tdEnqDf9W@vger.kernel.org
X-Gm-Message-State: AOJu0YxushFfS5J1WrPxTKY2wRB2p3HKSmrBwd/hPZdxi29jCv7DwCKP
	g48ZgL/y1pmsZZArWSuNCajVGQorVZIvIJ8MHnE5Yp4F9dmnYrh0DuYA
X-Gm-Gg: ATEYQzzdc43+GZ8npow4txC56cKH6gxIBR8yBtHZKe/Ao10M+fjm9fKzxf+hiUX7tT3
	e/7HS4Z3UxXBNihsMzK1sBCqN3Ab34RGZeo/oQCwhTjR1w6BTa4ZRz7Gset82ru5uPnWxYwTkUX
	eZMLKaLAqs9isYEaFMZ9ttUyfR7TQoaHAaJ3woi4pOiKgbQAGDPmq1+Jw2DMCLy+86Uu8qlzA81
	jNshMOXz46Z8klc2j1MI7pR+e/LTFwm5y4LC0Shw4cqB4R98fqYe7ZnYfetw2WzxY0ymqQKd9qX
	Dom10BblHHnF/Uud8ragd/o8dJAHPAd9pNktvQXfeIuoiQZat+5M8m0MaJR4nUSdxWme8tqlYrZ
	Y3fNOopft0LDId/xVbjGU/pqT6N1iA8KKWiC908ZYl6ZdXye3Se2MQ9YqhXCt0+RiI39NjCRWp6
	vKuc2c/gHB0taSdEeKPhw16Cgl6g==
X-Received: by 2002:a05:600c:6808:b0:485:3cef:d6ea with SMTP id 5b1f17b1804b1-4854b2916d5mr29289375e9.13.1773229101905;
        Wed, 11 Mar 2026 04:38:21 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6b7sm188681855e9.9.2026.03.11.04.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:38:21 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH 0/2] iio: light: vcnl4000: add regulator support
Date: Wed, 11 Mar 2026 13:38:01 +0200
Message-Id: <20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MMQqAMAxA0atIZgtJFRGvIg61Rg1IK6mKIN7d4
 viG/x9IrMIJuuIB5UuSxJBBZQF+dWFhI1M2WLQNVoTm8mGrEdEoL+fmjqjJjH6msXVInhvI5a4
 8y/1f++F9PxrthidlAAAA
X-Change-ID: 20260310-vcnl4000-regulators-bcf1b8a01ce6
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 45CCE262FC5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274026-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

This patch series introduces support for voltage supply, I2C and cathode
regulators. This fixes an issue where if a regulator is shared between
the proximity sensor and some other device, and the other device is
powered off, the proximity sensor would be powered off as well.

One of the commits includes a Reported-by: tag without a Closes: tag -
the report was done outside of LKML.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Erikas Bitovtas (2):
      dt-bindings: iio: light: vcnl4000: add regulators
      iio: light: vcnl4000: add regulator support

 Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml | 7 +++++++
 drivers/iio/light/vcnl4000.c                                     | 8 ++++++++
 2 files changed, 15 insertions(+)
---
base-commit: 7109a2155340cc7b21f27e832ece6df03592f2e8
change-id: 20260310-vcnl4000-regulators-bcf1b8a01ce6

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


