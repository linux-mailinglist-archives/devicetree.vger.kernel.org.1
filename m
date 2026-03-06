Return-Path: <devicetree+bounces-271993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NFQMFqvqmluVQEAu9opvQ
	(envelope-from <devicetree+bounces-271993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:41:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBA421EFEE
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:41:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21151301BF70
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E859363C7E;
	Fri,  6 Mar 2026 10:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E5ahXN2T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB5C358D27
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793661; cv=none; b=ZLPv8b9O5eEEi9CR/Lk+8RSoYZ8YfHOU8co8DlwgQahjNh/TnOWg6dgTrEhmlKuj0EkA+hc9J1AQjTCqSfHKh6SRX9ET47yxbCq1a/YnKC4YTE+P3TeBShAd2ldME0gsHn3HWETL1frbYfZxCatRtjM7P9mH4y85mNMMIJh8BZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793661; c=relaxed/simple;
	bh=XZoJJh9iagM+FGAwGy5HzzWjLybmYsra7ggsR9sck18=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V1JFWFzBK2sq0Ayf1nhKTqM9j3efGaIwyQqoS2c5DfyTbe8cMmtkoothFVJkuikkv6LWSEjCjyE6meWgq+ocw/PHIpTXmVD/+Db4fS/6ddrmteXR1Rhi3NcgmqwlV3A/PjhadgtAhLi56KouiLtFcpp/gpeDLi4ERPXxTcYEv1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E5ahXN2T; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2ae505619baso33154745ad.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772793659; x=1773398459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uL1VKM3s/estp6r05irAg1wzzhKUK1/TduaCAbOsvp0=;
        b=E5ahXN2To37I0X54iHOte1JgW3z6eBCkEYMmRUiLkcUqf0DhVz6S3O/MJGTaMY0r+s
         r/RwGMjBsLnHS6h3qT+jPiMszVNGFMca16ND5ijbIX0Kse/UVu4MO7m1z6wrHr5H0QDB
         zWiBDVZgQeNiLY4bpc63CH1ZuUQ8PChOTF1zGCHe/GdQPAK9DOPi1sNkousC4qqfpwT0
         yrdGdGA+j5OS+JARIigr0imVQUpojuraCV55C5T7UFsBB7Cj//MeVYpvmeeHNo8xqI9w
         P//4Of66TypAUxGMKMJq/6T2+9naxhcHeDTI5SkEj8a4V2JDs5q2mXtHH/Xry2etffq0
         jw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793659; x=1773398459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uL1VKM3s/estp6r05irAg1wzzhKUK1/TduaCAbOsvp0=;
        b=dW0ooPU6DnUvvpnH/RZrb61lOXbpEE7gQPvr1B1S4FoQYacAr50OAKuAAqaMNLyyKC
         U0lcB2aZ5pJK3YGNft6AJcAG0UeQ5T75K6qyhPy/4ZV94gT7gRkBXGWl841WdzYH08oY
         I+QQb2+zWmWsAh5/VYR35jA9T1V36ddLoy69o7bKaInL+rTjiP6oASjTfZGnFEoZvX4A
         sNkQtsli8UGDy+HJ3lPzbNbx03zLL7d7d7m3VVnS9NEHaVNxhFezhrpsi156Vt/nMoZt
         NMcnivIvAf/+F0NWImx86zjeZZ4UisVnxaAhtckDNgRS4dZw5hv4sIOx50y4de9fQDSO
         Biug==
X-Forwarded-Encrypted: i=1; AJvYcCV+z2GHBj/wSmjUMFFwiPLAPOtHty6UsFsrEeAaFmvDwyIusHvooJNOv7dV+Jzqd/RpYtV7gROCAf2O@vger.kernel.org
X-Gm-Message-State: AOJu0YxmihYtTTvHqRmJcGjIhiZnux9AP/xha4//VS4mQWVuXj834YXr
	k84lqdgatpUrU/Ktxc6l+2Yx7xWS9U5TXb6hBkJ05u/16ogoNNrw9c9z
X-Gm-Gg: ATEYQzwQ6JVx61RSvnKyueO18EbpGtRpMi/Cx9COROesZDVuV81+439LOGtNsb+DMwM
	Fz1Qf/N9IkeL0lUKScgSNZ9PRrPx7mL1X5+RRdW2Z44+KJJpFiK4R/EPb+JqW6rNj0ce8sB1Zxu
	Nei/LDP/g8MQbEUu0wQnMdFDRhnOuqoAMJxyc5KPKNpXHHtd8fsyCx+aoCRSgiYMZvzw+gSZW+T
	5G0pJCZUalYJt42eISA14SZsSvmzmP7dA4/Ij+0oXUx4b1+1LNPsBw4P1pBSXf+SjnEUmr6dudA
	tvEP3yzwTIPl/OxX+Rx1jYtLVLvlcepNdMy/CQg94IkSQewoOXkWzb5X9pO7zmSukEoEUGcH/fx
	RSRUNtcQny0VEb6W2/YczgkCxK+jUq0HCd6cX9e0Dzfdxubez7vw/kILWOkgPdnAdfWUwQxjgvT
	cYPxxzDdK89UameYi5fLKagKtqXxEVbUCQh2KtMo0sX2tHdEwtSM1evlZ+0g==
X-Received: by 2002:a17:903:2f8a:b0:2ae:57cc:63d7 with SMTP id d9443c01a7336-2ae823ff86amr20528435ad.7.1772793659243;
        Fri, 06 Mar 2026 02:40:59 -0800 (PST)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83fa2fa5sm16107775ad.70.2026.03.06.02.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 02:40:58 -0800 (PST)
From: phucduc.bui@gmail.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Jeff LaBundy <jeff@labundy.com>,
	Bastian Hecht <hechtb@gmail.com>,
	Javier Carrasco <javier.carrasco@wolfvision.net>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 0/3] Input: st1232 - add system wakeup support
Date: Fri,  6 Mar 2026 17:40:22 +0700
Message-ID: <20260306104025.43970-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305113512.227269-1-phucduc.bui@gmail.com>
References: <20260305113512.227269-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2EBA421EFEE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271993-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,sang-engineering.com,labundy.com,wolfvision.net,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

Hi all,

This patch series adds system wakeup support for the ST1232 touchscreen
controller.

During development it was observed that the device did not expose the
"power/wakeup" sysfs attribute, preventing it from being configured as
a wakeup source for system suspend.

To address this, the Devicetree node for the touchscreen is updated to
include the "wakeup-source" property, and the st1232 driver is extended
to initialize the device wakeup capability and report wakeup events
to the PM core.

## Testing

The changes were tested on the
Armadillo800EVA board based on the Renesas R8A7740 SoC.

The system successfully resumes from suspend when the LCD panel is
touched.

Due to the interrupt hierarchy on this platform, the parent interrupt
controller (GIC, IRQ 24) is recorded as the primary source that wakes
the SoC, followed by the device interrupt (IRQ 35).

Example kernel log during wakeup:

PM: suspend-to-idle
PM: Triggering wakeup from IRQ 24
PM: Triggering wakeup from IRQ 35

## Verified functionality

* The "power/wakeup" sysfs attribute is present for the device.
* The system resumes correctly from 'mem' and 'freeze' states when the
  touchscreen is touched.

## Changes in v2
* Drop description for wakeup-source property as suggested by
  Krzysztof Kozlowski.
* Updated commit messages for clarity.
* Added driver-side wakeup handling in st1232.c.

## Patch series

1. dt-bindings: input: touchscreen: st1232: document wakeup-source
2. arm: dts: r8a7740: armadillo800eva: add wakeup-source to st1232
3. Input: st1232: add wakeup support

Feedback and review are welcome.

bui duc phuc (3):
  dt-bindings: input: touchscreen: sitronix,st1232: Add wakeup-source
  arm: dts: renesas: r8a7740-armadillo800eva: Add wakeup-source to
    st1232
  input: touchscreen: st1232: add system wakeup support

 .../input/touchscreen/sitronix,st1232.yaml    |  4 +++
 .../dts/renesas/r8a7740-armadillo800eva.dts   |  1 +
 drivers/input/touchscreen/st1232.c            | 27 +++++++++++++++----
 3 files changed, 27 insertions(+), 5 deletions(-)

-- 
2.43.0


