Return-Path: <devicetree+bounces-269369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEf4JHvSoWlGwgQAu9opvQ
	(envelope-from <devicetree+bounces-269369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:20:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3237F1BB5E3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8F1473013449
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D2E943E9F8;
	Fri, 27 Feb 2026 17:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="kEhDi+F1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0E435A3B2
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772212847; cv=none; b=QkxDWYwoUJeoUpSXSuaV/oFzFJbSfAVW0vyxDRYtf2kLxY/wlm+9WX0nbIB2ZCTgYsM5pQziF+3tHGkH3yLKrWU0R8IgvWG2b1zsljZ1IQpcdtG7acLhLBvghtEeJw7rZHZs5kylp/JKZN0+RzjFlZe/082/ih1y0U+ZQkUbJuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772212847; c=relaxed/simple;
	bh=rRr3+vifUdF0hNY60dwmGGafi8luWOxE/yqZKA9fp8c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I93Ie4HhnloxKjg46BCBawGhbJm8Oyv4Kbgmum7vTgoAo3slLxfJfsKW5apsXAvgUmbclIjDRmHtungd8ZU+SwMW+pwLX8+s4iUjZrgELwdjU9hC4fNJgTQTA6gMJWWfpuk/MiVFjc9No9OWACGvAlfi2+QYQMjn3Fx9ZIZ4mlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=kEhDi+F1; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48371bb515eso31991175e9.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1772212843; x=1772817643; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yNaltXKAWAjQbwu3MqBmJgovVgpV61nuOt86Xr0pRVM=;
        b=kEhDi+F1zP4qu44zqriTDR379vWeEoMtS/jGVQ38ndii97mpgfn6OVr4e1pZCUCjOL
         /EdP54Y6gWW47p9nwh5tmfNYGS5fB0e3mU9OU7uqAdqG0a6+CE2AA/V5PupgMJPGjGEB
         8lKIclT+duw2ennoR0ePf+/buGe87oOyNHejQX7QG62L90qG1wlpu/QzkFWA1OLkSFEm
         n3sJiW1/KEiK4WnFh8mM+6j/wv9j96rBIzte9RnjIMhZDR8pst2tR445zXJTd04zBMPV
         36x5y9rK9hIJKJVhjgC378Go1stW+Agg1qCQD+Go4ku5YVb0aoK1D66QrrWEmgFTAAX8
         Y93A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772212843; x=1772817643;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yNaltXKAWAjQbwu3MqBmJgovVgpV61nuOt86Xr0pRVM=;
        b=sw922tUWyjz1SqkO15iGlbOSZtfm53xUpQCSH0t7e9p4R0EgLLotujhM/Ozd+MGmRP
         22PLXy029TSXDb4sIrls4eySBgNlqiBLnMdSDvpDTrJoh9GcyJNZzVhiXmcpKpdrdOXh
         SA7ZKGZVjhklWoDWYn2cnLu12xPCCqgGashjW1Bjo6ObmA5RLwqaFHncBGpGNumno1Ph
         zS3iBtmi6GRNqbUGhVxFODH/SMWu8J+Y7aZg/XtnH5AQj01Qo9q2sgdrVLJdTaIMQFjr
         uhLToXYCI9J/A/N+60uWfaXQPuyyjiroGarPNfFWWhaaX5PEtZLie3N9sdSaZGZoxlQf
         FEbw==
X-Forwarded-Encrypted: i=1; AJvYcCWIxfAXAPIgAQZ3rCQ1T0b5trxmVlDFmCFzJsC6YlOVwxyqgopBja8ECBTkCKi6u5QZmJHXmm4whwzV@vger.kernel.org
X-Gm-Message-State: AOJu0YzAB7eoWWPv378aL5GTiwGu7QIK7kSJBeUWUoAzeyv4fSbf7157
	g0rggGItYLx5Qb9ifJmnlonrMxaltTwjU6fMEPmXzwO+0oQetd6seLX0JkVVyTBTY8I=
X-Gm-Gg: ATEYQzzSIfmcVruQluAN4R5Y8aNNiLFzoG+Ni2rkhfnLkCepCeH8HGOFQmdXFN4E1Xp
	iMHJaIllaSvFXfKIYO/jM4pcnLy9hmXjwpNFgdH67Xvb8ZZ2ypgqZokhVi4erQ0kNmKE4oIeQ3W
	dnBLEC4q8Bxz3SaG6sAX4Ag51tZJBuSA5LU5I0iDVmGTBuhNSm/Hxa3m8Nr5SjgKhQVXSAa/fFB
	+PuAj5l+/SIJfyrWbqgSaNDD+OR2pAxgDf8x/YueKJet1aiEZxlB7+dVsiNYn8zdaJvhMoP0IYE
	e7ioRp072TMxdgx8Fl10YDRZdy3js7GEtA9TWUNUkPvjK3WpU8T3L4BJKiQ+lNszBgvBOPEBd1X
	M4V9GghtkAi1byPaPTZM6VxQXGJx+Ep2IqPp8R6OScOt5qQYlogv+plVsfexg7vHaaQ+jIxJQwh
	CkyLuzDEUAjIXVhQ==
X-Received: by 2002:a05:600c:4715:b0:47d:18b0:bb9a with SMTP id 5b1f17b1804b1-483c9c2a51cmr54872485e9.33.1772212842981;
        Fri, 27 Feb 2026 09:20:42 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfeb932bsm60828075e9.28.2026.02.27.09.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:20:42 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 27 Feb 2026 17:19:06 +0000
Subject: [PATCH v5 1/6] docs: uapi: media: Clarify HEVC slice_param
 bit_size, data_byte_offset
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-media-rpi-hevc-dec-v5-1-9bb3fc1816de@raspberrypi.com>
References: <20260227-media-rpi-hevc-dec-v5-0-9bb3fc1816de@raspberrypi.com>
In-Reply-To: <20260227-media-rpi-hevc-dec-v5-0-9bb3fc1816de@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 John Cox <jc@kynesim.co.uk>, Stefan Wahren <wahrenst@gmx.net>, 
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[collabora.com,kynesim.co.uk,gmx.net,vger.kernel.org,lists.infradead.org,raspberrypi.com];
	TAGGED_FROM(0.00)[bounces-269369-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3237F1BB5E3
X-Rspamd-Action: no action

From: John Cox <john.cox@raspberrypi.com>

Clarify exactly what bit_size and data_byte_offset mean when there are
multiple slices in the bitstream data.

Signed-off-by: John Cox <john.cox@raspberrypi.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
index 3b1e05c6eb13..a54e8ea29440 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
@@ -2399,10 +2399,12 @@ This structure contains all loop filter related parameters. See sections
 
     * - __u32
       - ``bit_size``
-      - Size (in bits) of the current slice data.
+      - Size in bits of the slice_segment_data for the current slice including
+        any emulation prevention bytes.
     * - __u32
       - ``data_byte_offset``
-      - Offset (in byte) to the video data in the current slice data.
+      - Offset in bytes from the start of the current v4l2_buffer to the start
+        of the slice_segment_data for the current slice.
     * - __u32
       - ``num_entry_point_offsets``
       - Specifies the number of entry point offset syntax elements in the slice header.

-- 
2.34.1


