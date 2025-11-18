Return-Path: <devicetree+bounces-239738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E52D1C68EE5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:56:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C6A7A367546
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72533328B70;
	Tue, 18 Nov 2025 10:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hb47JOG9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9626C34D4EB
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463213; cv=none; b=MCDfPqMlXpX9NqOvVCDTg7G2d/loRjs1Lhk3hXH7RJfaVgtnyiWeVbGDAZ6NmGsJSM0KI19u795HvqIaAG+ukhxH06BzW61ncTpMi5+PO/LKMZcGdDxDxKepxvCZoeny98WjzS16Doz0wCF8n1NakvQ2ghl11R6GyLNK9mjb+yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463213; c=relaxed/simple;
	bh=B61xDsu9dYZf19PlWoIS09j6kYYtBqsX7QXm1aJx68U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Vc586FycgxcjYCXKfmsoCRzYwk4tGRSWc1dvmOC17ILWkZMNIZOOES5m4lTnhnCp9tJ2HhOHfUYBO4WZHMSQTTZsC8lvVa8CJv31KgVekqPFuaERygIO2ICc1imhGF9oNMSMM0O2WJpTHGdW92cpUM/X0lQQIW6PZVHBo1hdgsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hb47JOG9; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7bc248dc16aso3048089b3a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763463211; x=1764068011; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GNWvzmtFgayxDKFBCqPDOF8dv3RuxqQ/CWFcJK3lnBY=;
        b=hb47JOG95t3T9EMFWWpao/++ecz1miones4V8INWRFs3+4n2hhYG8fyeh7t8d58y0q
         FpUD0WpkMxeQl8UpEOxCyPzOFiv7JfJn4bx+M0ytl8rkm8pNATO7QGO0d3/tW8EJd78S
         idBF9xb6TvqN+vcOoF1Dakj7HA47dlPuYEjYfficyEtfh1sd4BpYM59CymAHrnTFiXbD
         1ST9XMGfCLmip0T/KKtHriFvRRwdewzsucQBWQrzt6+VzO0uHHXM+UDflr/I9QJdNP+A
         +wuMYQUa1ACzBREqrSwrlaAx3Imd1OfOo+WRmxDhKx1uqTQjKAY8T1J4NdZlfaYeUQf8
         7dFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763463211; x=1764068011;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNWvzmtFgayxDKFBCqPDOF8dv3RuxqQ/CWFcJK3lnBY=;
        b=fXOUXSnQhrtYprGKPjuutb+z6bLW16gOUamcMlkp4i4yYMdmU6PLa74yTmT+mm8ZXY
         mosCUiPxTuJgTwmyAZ4jePncQ0/QPbvF/i9wH8g5hIHfphq6EwSArU69I5ElTXixhmn4
         YjRe7N+kWV22Fg7NkZBPd0azyK2HXosyGLBTthN+1sx6ekpXsgakTqe+Adwo8qmcxASM
         MMOhrC9eqUgZbqNknHQlIb8W7756W0EgtYGeqTfZvpJfFvh+zctc155dqek0RV0iy/Cy
         5jyrjg+3ma+XncGz1MC3tCwuCPVB7EnEEcGgy9tmfQgMvy/5GDCiXUC/hcuAnXMypeos
         EQeQ==
X-Gm-Message-State: AOJu0Yw3DHY5lafZhNNgdLmTjfYMHgU/Tnz890Bf5Q8RKiB6y4OAonWp
	efQLvwHMt3ToOu6eBR4FaeiNKyS95VDv2Mt0ahtmTYa2MqGAlKcaZNWv
X-Gm-Gg: ASbGncvfbKMq1qJLZn3GA7wuCWVbVH2wpekqOyNOz5po59nFBK6p6lxb7+t4KRakedO
	dvEGbinXPWaN/2ROCSfZjg/36qdHwUedXa+gYd0PIhPhpooeot7dZmzX/J80ZPM/6QTtALEeWe/
	tcavKF16LwFDrySmgVKpAeVfteGKyew4g2re7SLyuOq60otZ/d7z7D7hCgdhi+ctKJYVS61reB+
	mn/XzS4XoBOtIwHc2xcw3B19dqqHKfyk21cwYrUk1O324wsVE6lXftBK7wU/nri+40JGFfSlAvh
	JSm++UMhkyWgZdOFUp5OQSiEmp0rQ+EKq1bJjvmFPNYz6zE/9YKcZl0pxyozRGONrt/7bg7tHZq
	SAvQ7BmzQhnpHT2gOlWRnRZO8JloaBsqybJ+jXBn5ns2wKw7VhzGzir2+/x/skkZkbzBFOcTwKD
	lc3wlLWsZLlQej7SviQX4wVok6nDMB9dPBidQakpNB2pd1BN/5uchhsza+C2laSYac2S9VWee31
	iOwUGO18xwWBFUE/wgrrUlTAGxy8IUoJyITLo0CaVSVe1BqXXVZGWqzWrYK+KokIfyXoP2Y3iC7
	JAFECJBQgNxtM5iBkO7h
X-Google-Smtp-Source: AGHT+IEdCXwcY6BKlnXmAUl8RmB+RxuF8va+wI/WcFKa5as/7KVxKeQKOmmuuoUTbstwS+jBd1TywQ==
X-Received: by 2002:a05:6a20:7f8c:b0:342:1265:158f with SMTP id adf61e73a8af0-35ba2598df9mr19914810637.51.1763463210498;
        Tue, 18 Nov 2025 02:53:30 -0800 (PST)
Received: from 2001-b400-e30c-5507-a914-c4dd-0879-41e4.emome-ip6.hinet.net (2001-b400-e30c-5507-a914-c4dd-0879-41e4.emome-ip6.hinet.net. [2001:b400:e30c:5507:a914:c4dd:879:41e4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b924be368bsm16274111b3a.9.2025.11.18.02.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 02:53:30 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Subject: [PATCH 0/3] Revise Meta Yosemite5 devicetree
Date: Tue, 18 Nov 2025 18:53:17 +0800
Message-Id: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB1QHGkC/x2MQQqAIBAAvyJ7TnAFo/pKRES71V4sNKSQ/p54H
 JiZDJGDcIRBZQicJMrpC2CjYD0Wv7MWKgzWWIeInX6Tm6vIM91Ro2U0TNQ7aqFEV+BNnjocp+/
 7ARGWMDtgAAAA
X-Change-ID: 20251118-yv5_revise_dts-12e10edd95d6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763463207; l=809;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=B61xDsu9dYZf19PlWoIS09j6kYYtBqsX7QXm1aJx68U=;
 b=yCgOZ8n1862RHQxibfMqzDonVmCN/NYAhOA+hvlCEIiGwrky0Mnhf//CgYJS8ZcvvF3N35qNf
 CwWdaa6W6g6CUHT5Te0Ec7UWyo83rnHS5dTgkOXDtkrxcm5J6jNcukF
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Summary:
Revise linux device tree entry related to Meta (Facebook) Yosemite5.

Changes in v1:
- Increase i2c4/i2c12 bus speed to 400 kHz
- Update sensor configuration
- Rename sgpio P0_I3C_APML_ALERT_L

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
Kevin Tung (3):
      ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12 bus speed to 400 kHz
      ARM: dts: aspeed: yosemite5: Update sensor configuration
      ARM: dts: aspeed: yosemite5: Rename sgpio P0_I3C_APML_ALERT_L

 .../boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts  | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)
---
base-commit: 111e542d267576de402d0836603e1def2b60316b
change-id: 20251118-yv5_revise_dts-12e10edd95d6

Best regards,
-- 
Kevin Tung <kevin.tung.openbmc@gmail.com>


