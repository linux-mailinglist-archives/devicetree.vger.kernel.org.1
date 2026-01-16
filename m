Return-Path: <devicetree+bounces-256078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6560CD319AA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:13:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0A6230617C0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E75519C566;
	Fri, 16 Jan 2026 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T7YuqriS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FBB202F65
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768568992; cv=none; b=YJy4cWUrN1iQUvyZYsrtNKV7+skc+588rJXHfyb7h5mm1B2Ah8cNeRxRSAnsN0ksJWKhlatjnRiPe2kpg7Mbb9w35bzE/ndnywt7R3sdtsfmsXfkqFVTru4DxMVnspa3U3o4Fje6SKzGfGY4OXikm7AIxSDfPMo4eYwwTb1lBFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768568992; c=relaxed/simple;
	bh=enVmKv93Aa48ECVdTDUXHkCfELiHNaDJSHi+HQvX7+U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T2na3AxCyKSdgKzTdoL0w2cHBU1r36OnjQr1vwdFZKeG4O91X4Fp9/3yxHR/+6Efg85WIsn9cjb6AY4asKiQMgmrY8nc4anr+7SKn2n0B9JZUmVboPoy6mCxeB6ZiY7DX3flTvifGKupTKi08I7VR1N+j42kPGQfCLo39z/Uh0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T7YuqriS; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-430f9ffd4e8so1439210f8f.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768568990; x=1769173790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qJu4OIdI60cVjJK45I6VunybR6THP9/15aqu50JDBTI=;
        b=T7YuqriSUHygXQV6w70mTZicCpUyinhRmO12UintChts2YLbv4uLUuZljAeGl0TsNl
         Z4Mg4rLx2l7Yhwwqbj/bOQjq/FxE3hA6JLaAVvTSfT6+CUGZ29Yc6CJtlNyU5Ivf+oBk
         Ytr+iWQ7Q8KP++vYoZgtczimr8OXrWD5aQloy7B5K0IiJI7xs+e5VXuxTBsMWy2IXIZ7
         eRjLBE4dcfbM11IX3DIyzc8k1C0UG7D1DMCtamnUXr1XoRl0Uj7PKd/EEKkpxnBk2oDZ
         o8CB6HZiGxtJBMJnfe2q7MwO06GXHD9TleY6YdiElDsIevQPS4avYEQEr634S408mqW6
         4OZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768568990; x=1769173790;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qJu4OIdI60cVjJK45I6VunybR6THP9/15aqu50JDBTI=;
        b=EXqDmToSaOnsvh34eyNKzh/a6+dwVwAKtvpLlTGynEpk0ZL0YAQ0acKrzxurkUjWP6
         T/xWaCxN6H6kxJFscYP7EwKwGtz6oQHQlvr1FthsABTy8RvLbfpWv9KfP8sU+YtkJ4Vs
         3nmjGMbPUJM/7+HFnQjjzhYc5OKPhC+AwdV4QT/5PYv5MyYpwdHPmN1GTF1gCz9O5x0J
         oLpZFX5KK0LBau8Ipbe9x962zGQmLia66vP7aPV6+Eb42WjhDS+vkH9iq94Py+m1Wa3n
         h/W+uKqmgIlJ0BhnrTm51KL5tIlXJeGxGk6NZm4BJkz1pxVQ6r5pE3PKeWpOgrcNMRvT
         v5Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXIWCrbfbWGvzzf+le7X+wATYQ2mzGey5m2+xeodN818J6ePcOi05ovnqBfTPuIo6AMMQZlRSIUz3BQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzvDBbfNJN2/geKFL3SBZpNERM7+2+nimagHmeoa7+xoB8NIKEp
	D2fMizLKL5TzAovMqW+YHdo/bV6vhsfzmdFwtYfdF+cmczAxQFlhpiXB
X-Gm-Gg: AY/fxX63eBQ/htR6Nt7+o5h7py5JDIatLmr93NA+1pl0tGNdK363zevjSxuK8rfsk/i
	MrRvWYNeqpdk3l8IdA3Gsbh1EeIrlKiG8l0WZHgLshx3l/5HEbW4Z4jgQE0rjebfMe0zR0HvuUV
	sZRUU2kPu/+SJhfcltLgIxT+TwmxbPZdoZ90eCYxLsV7BcujDYFDvhXlhXAO5rtaDyGJOV4YAaJ
	2ZCQk+tozNaZWf2EujOLSMmZwAg2gKAPLTVFV9E4ShEsLII+VMfQrEgPsIxdqiGMq4E8U7jQwIN
	SUUlHQEFHPxFGETZ3l+9JMfVTS4egHQSUvOjzgBabj5Z1HQJvPGhYZ615S/MjcH651sf68oRTlE
	AM0YUSgHKoLandtQhwl3RA9lGBEQWSJNgTqNQGsH8UZ/zm0JoxLGHYX290DZrUhQug/rq0e91mh
	vA2rAzZ7rX803FECHx
X-Received: by 2002:a05:6000:250e:b0:431:1c7:f967 with SMTP id ffacd0b85a97d-4356955eef8mr4063803f8f.17.1768568989962;
        Fri, 16 Jan 2026 05:09:49 -0800 (PST)
Received: from eichest-laptop.lan ([2a02:168:af72:0:7818:c5f2:e870:3d67])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435699272a0sm5172610f8f.17.2026.01.16.05.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 05:09:49 -0800 (PST)
From: Stefan Eichenberger <eichest@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	eichest@gmail.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] Convert the Micrel bindings to DT schema
Date: Fri, 16 Jan 2026 14:09:10 +0100
Message-ID: <20260116130948.79558-1-eichest@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the device tree bindings for the Micrel PHYs and switches to DT
schema.

Changes since v2:
 - Remove maxItems from clock-names (Rob)
 - Add Reviewd-by tag (Rob)
 - Kept the micrel,rmii-referenc-clock-select-25-mhz property in if/then
   schema to make validator happy (discussed with Rob)

Changes since v1:
 - Change ethernet to mdio node in examples (Andrew)
 - Add table with skew values instead of a description (Andrew)
 - Remove - where preserve formatting is not needed (Rob)
 - Add blank lines (Rob)
 - Drop line "supported clocks" (Rob)

Stefan Eichenberger (2):
  dt-bindings: net: micrel: Convert to DT schema
  dt-bindings: net: micrel: Convert micrel-ksz90x1.txt to DT schema

 .../bindings/net/micrel,gigabit.yaml          | 253 ++++++++++++++++++
 .../bindings/net/micrel-ksz90x1.txt           | 228 ----------------
 .../devicetree/bindings/net/micrel.txt        |  57 ----
 .../devicetree/bindings/net/micrel.yaml       | 131 +++++++++
 4 files changed, 384 insertions(+), 285 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/micrel,gigabit.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
 delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
 create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml

-- 
2.51.0


