Return-Path: <devicetree+bounces-271794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aF5eNegoqmmQMQEAu9opvQ
	(envelope-from <devicetree+bounces-271794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 02:07:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B98721A206
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 02:07:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3355730364E3
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 01:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 818803019AA;
	Fri,  6 Mar 2026 01:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jL55B+fZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B35A3002A0
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 01:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772759246; cv=none; b=ULCAim15GdpQ39Alp+s7NMmqd7Ty5tumZ0lT7dFduw8NELs89kriHjmSef132yc6H1JUNowXoIZeeEYrp39Xq7OYG085WBu1ap0eA/Mrzm96V3vYnaUpWZ4bcJT9gUqBP9u4B8FTzE+ocU6w59bwN2T+bwA12YD9yWtg/cCyq+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772759246; c=relaxed/simple;
	bh=AwYvrtyXn5t42Evv8Q1//vnY4MBFvm88APyJ6xccnHo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uPx7ZjeZGymgBCpWR9m1A0nncHcBhA3kZaxQ6DcaKsoiFLDOO5yFdvUQYtALutrzZhKuXXePtspVBauGx7b5AhTGwpNwpohSlLVzogkeFIQPH2md5H6ALis/qg1tVkw7QKuTWq7mK9hWwj/Gwf8wdyG83W8PfDAi9++4ie4JgQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jL55B+fZ; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ad4d639db3so39546855ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 17:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772759245; x=1773364045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tt65nlyH2+056MIjJR2mDSU6Xjc3S4OPgUVzwFjh2sg=;
        b=jL55B+fZc2lG37UlJqcJtZufUmygMSpRm2szwruI8WrIayPHEC6NZLqtNnKk8/0XYO
         ib21yl0RgijVRF2QnFQlyakj2JQ7lyIIA9Wz3bQFIivCYx65W5NI4XBx4ChmQIZeGtkM
         5nEtFjf4w2x6FMIVEkf+SuqDCOihht+8Lm2h+rKDVj+7TO5X6WJV0iRYuUniAAxiTH8E
         PVD8uumZAx/0Bio7hf6AzA5FXAwrhOJbiwEy02YfhS7b6YcFv5m2Ag/CPzOpyC8HWKyL
         AJCGOlBhqEGNFnsCAtEGiMn+vPFSGmE5+kF3OOKtRDSodeTUIN7PFSLyYPztz2C04R7B
         M/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772759245; x=1773364045;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tt65nlyH2+056MIjJR2mDSU6Xjc3S4OPgUVzwFjh2sg=;
        b=vf5mb6M1A6x1PY4QD1IhOqT/XbgLdCcwTz+b8Fa1dFMiQWjiW2XnEqBcxHNHBpeoqX
         HD0/fg0HjJ1J+rC/G8jQ8IhKeIdpRf5213LmK+K2VhnCQvS6Qw5V7buRsnGP3kUWDN85
         +4s+0u4RF2aJRJC0p2dv4BNzkzJhp8DVdhSxzUC+KbxkA26aYOIx2qYwI4wb1Mpr3O3O
         NJL+3+JJxeHCPdbtcZf9UQL6sofX2Ao5qLMfEA1HJQdAeVmfHffB30pYxnsu21g0YJ5T
         V9uRK4umdHVeG981jl0atKMXpTyG+alB0GkjUlQMOWXF6X2ffg5g2OvGmUDtbMPy5OD0
         eKhA==
X-Forwarded-Encrypted: i=1; AJvYcCXwIVsuYIhvTJ+blZUSqaSy7pZIYlgbUThjxgTxThhYGeFTwAWK8oV+s43CTMq8D/gJeOD9XxWi7vtd@vger.kernel.org
X-Gm-Message-State: AOJu0YyTwltorUmdf7kll47m1BBsUIYBj/BNaXR125/yoD2X04ULV5vo
	VVwFtCGoJA2nB3VePbIy++J6p3iyrAdHtjxEnOXsKcvW1tTc3K0CRd35BrIeYJpyA8M=
X-Gm-Gg: ATEYQzw3gsJrIP5wP7/Pr4CEaZ1L2Hm9wNgFiwyVjqvjcNsF+V2kayOFCL+9XVwKTf/
	VdV2Y8WMjheO/Ln1GhErMTKXaTnd0ww/VkBf3fyQ00VhgvQLF7zqzFMIb0SPK88XPMOGaVC8Fxq
	J+HjgGlF1z9k6E1r6gjQn3YFvTXp+4lUNqSaa4XykXCTUZ77yGsQh7WmcUeHu3Wq/L2xiJ/XDP0
	czC9fDUyiJ3+ERSP288hnB7dvRzwymXfmS6W284fPPbO/16WmPprcp2oz2JoLUCDYPrp/75UAzw
	O9Ojl2gtnBGEciKqooSZOuUv/5SiMw0MFsgfdYcryc6Uk0TtElHXnCTNUrzYykDGJlt74BQcIp/
	s3ewAas2pmsgJUOHc3UWF+8F9fXcDehQlVT/vKQuhRsgniOHoQ5qEy5GyORa/Has5OHoTR9dlXL
	fvCI7cA5z9hpiLIv1v8bFk
X-Received: by 2002:a17:902:e80b:b0:2ae:54b2:27d1 with SMTP id d9443c01a7336-2ae82467157mr4766475ad.44.1772759244771;
        Thu, 05 Mar 2026 17:07:24 -0800 (PST)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae45e07626sm172535595ad.39.2026.03.05.17.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 17:07:24 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 "Kory Maincent (TI)" <kory.maincent@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 dri-devel@lists.freedesktop.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Bajjuri Praneeth <praneeth@ti.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>
In-Reply-To: <20260216-feature_bbge-v2-1-22805cfdbf62@bootlin.com>
References: <20260216-feature_bbge-v2-1-22805cfdbf62@bootlin.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: ti: Enable overlays for am335x
 BeagleBoard devicetrees
Message-Id: <177275924369.1445909.1029086854461649971.b4-ty@baylibre.com>
Date: Thu, 05 Mar 2026 17:07:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773
X-Rspamd-Queue-Id: 5B98721A206
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Action: no action


On Mon, 16 Feb 2026 17:55:52 +0100, Kory Maincent (TI) wrote:
> Allow overlays to be applied to am335x BeagleBoard boards. This adds
> around ~40% to the total size of the DTB files on average.
> 
> 

Applied, thanks!

[1/3] ARM: dts: ti: Enable overlays for am335x BeagleBoard devicetrees
      commit: 18161bb01ede109fed41c66efa2624a4c27377f7

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


