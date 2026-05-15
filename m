Return-Path: <devicetree+bounces-298326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Cw2MaAZB2rnrgIAu9opvQ
	(envelope-from <devicetree+bounces-298326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 15:03:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CBF5501D2
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 15:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8923030022F2
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339FB1D61B7;
	Fri, 15 May 2026 13:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R/ZHHQXT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A0824DD15
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 13:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778850164; cv=none; b=Hr+LQbsZChi+3LmjhZzUKZn/F2KsNU889XaqsqlJtA2DhBs8BYYG0DICLKE8HKmdckAIItu4WoCM3oV1xCqBhUN5U2c1TIX0zsIxCghPc8yFeF7DWcHjIeCcEXjZWEi5VdLvCbt/LQMOJId66RuJwlHCbFOk/DnCEL1ynY1Nls8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778850164; c=relaxed/simple;
	bh=44wlK79p2iFBlaDNEJYYoVrsZ4V64y2DhfrkrngDWyE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WhSXjCfNRwVKA/K14OqLuqPATxlTartkogfo34KE2CM+TCHmMKnIgNu1nO6EH27OiwmLflmS9XZOmXaPhGXwmAv/NhlVx0s7WOgoMKwIj9J+/a4y6IKqLd/UunJ87TMwuJLuVRqZ8bI5sYhC7fK0qVQEhJSUnBXoU+5vs/kkjME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R/ZHHQXT; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-439712b3416so1930618fac.2
        for <devicetree@vger.kernel.org>; Fri, 15 May 2026 06:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778850162; x=1779454962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=R/ZHHQXT5LT/OpUyeSSXwomFmMh//HnYHgtle092bHJhtvVoK0VAEoLwYUgzdbMOFc
         F6Ueu2tWLFLe9cKrkhXfPeUaXWX+xAjm1I/zBoMJCdN/H5MWLfYLjmQkhC+TPRQVERGJ
         yXt+17gH9MK+ES/rhyo6btxAP39jvLPRMpU0BDRdP2LIc97vK2e/oaZwibvj0MYg18Ro
         kVFdJH+qHvGNnjLiuUgeQ/lFIIjMhV45Pw0GQsNKAz1xkr5uR4G5WESOVEb2qKP2BeKH
         Rlid9bxPRq7mzSn6OVfrdnBHl0PtAP6tc7W3qifIxzcN2ZCmMGlIKfe/9qnNyLSadxmJ
         UTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778850162; x=1779454962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=NDnNC/LzIkCvoWHmmf6l+aHw7qL5o8RaQh+MHI8mY1+IDW2RiLssjXrgnKzABco9bJ
         a0g1UovD27urvNEZnGBEgaE2HKiwe807+UKbQd/k64rpG8kwcov6A98vSuiIaVPrjQRC
         QMsJqEhsoOko9Vins+FSTGuGXv/bwv5q8mjUr9uwwXYSVStpXxYZBZE2xpROT+dPq/fB
         NA70vRlm8PM/mbIQIlP+CwglIIFIS3WbN37EgZF+xB3EPOiuOxe283+Ul22bMUO8/ark
         PzAWQA3ZVRTqpyyFa8ijxKhntjrMH/brCJRTPS9Jc1PTDpKupAXYjWkezUb6E/EF6jfw
         UcIg==
X-Forwarded-Encrypted: i=1; AFNElJ8jahi7A7MV18/vChzSTGjCvdOCPfmE6GyFk4it5wDsLjhxHgT+UlgpDjYdvqmNczQnBIY1fywiOCEW@vger.kernel.org
X-Gm-Message-State: AOJu0YzaimziVcEMU75BjxWNG1jauHMoXHOg59rypezzUUgWK8KUdNdp
	qDvmrQAPcweZqvqg59Q8naZRT6qGOhZfbTAZ2qV0rVgVh74uknLm9Tv0FVxDYyET
X-Gm-Gg: Acq92OG6igEX7n+YQ93QA73lz5Wn2Sgqg9hD1c/0UKGRf5GNyh5mwTzRzH/KD4KZafb
	itt8Auokqygn4RXs51UF5XHNfHvU9pGCJliIaO/BIWOIw1Rd61BBMTUZX/fSwmJttryc6AyCn55
	HZoWEOfSFNNziLPY2e1K/R+Tz5VYGbQ/HpIVrR1/kKV5Fj5NNA17Ce9IqPCqBA7TWyyhGFBslHy
	4d4TDRFHOI/hdBGMO2/6K0J6GzUBZbHsR9R5SB3IO5+V7Cmxr1PeW3lE0f6ftwCvQJuOLB8Whs+
	zJGlJK5MhCqxBZ9U1j1+Iv6Ko4vEE1xwzxuOj/T0DfvrL8leVZ+xhPzi+v5OhBNiI4SvljGR2FN
	z1cXoR+J5vG++cKuXalA8Ikkl/fX+fDklOl/lYasNNbLMnQHrgEKHqupfJ/dTl1o+9w8ZdRVzaa
	hMT+Fcv3ZVMJvDMSXyLgPmNAqo+p/DX/gQnOFuSrcTeA==
X-Received: by 2002:a05:6870:548a:b0:42c:5ca:e7f8 with SMTP id 586e51a60fabf-43a2dd598a4mr2483451fac.26.1778850161483;
        Fri, 15 May 2026 06:02:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-439fc53f2acsm4155822fac.14.2026.05.15.06.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 06:02:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V7 01/11] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Fri, 15 May 2026 08:00:06 -0500
Message-ID: <20260515130018.237378-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515130018.237378-1-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 74CBF5501D2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,intel.com,hotmail.com,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-298326-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..9b2af104f186 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


