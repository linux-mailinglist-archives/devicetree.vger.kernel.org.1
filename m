Return-Path: <devicetree+bounces-245399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3508CB0740
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 16:48:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFB84300DA7F
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 15:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF292DA776;
	Tue,  9 Dec 2025 15:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MV1QY9me"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D19722D4E9
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 15:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765295235; cv=none; b=rDDzvVCXiS8GzgprrTznn5asExzJsSMLMxk9NUedzoXS5oqydjnZcuLB4EG9Fhxy+SMGqG3EFeCSh2p0BSqj/r3y6zwl5Tpp15ChU5Mb7RNrcwZOS0Nz5wk0d0Sf/g443JKfCexqAydE8WZ2OIpgZ5yJ5tFr8ObayBJ2w2hQt+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765295235; c=relaxed/simple;
	bh=m2A6ZHh38QLY0KCcRCAKW90Du25XkQzdMPrnADEF3KI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cSeT5HtGmpusIzx3pl6oi7KFCLqkDo2Bzut2n43WeTV/wLfnk+bEE5jdgYa5rU91nozu4PG8vEcwXZGC8ZbMdnSneTqUM0YtOK81/oL+9Y0dn/SpLsvndW6BeIxVsmRle4fL2UPRyn85LpmkP93vIw1hs9R0EV6DiXRUMvqp3zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MV1QY9me; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47a8195e515so4302415e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765295232; x=1765900032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2c04LwHbF/s3zM8ygqzdu4yzOQ4Hv2zMBfxhEf+2XtE=;
        b=MV1QY9meNAZBJpggxuyc/LAC8VkGQqZ1ZfXGunE33iKv/2z+C0dnZC3I2pQL6RtJoc
         EHKWKg+TnEXuqvzjxo81o7sV/nftgzroKibt8NOR7bju9L6/V+MsDfWARwbYWgiVEK0U
         C+DPsz67gKvdg/GnaAZ95q+sWuf2A7K9qbtPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765295232; x=1765900032;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2c04LwHbF/s3zM8ygqzdu4yzOQ4Hv2zMBfxhEf+2XtE=;
        b=AOt2aFZPusnpJZhoTDNv5G31j9SxKO+ftxpwgeH02ajMpFafwbbmCeqjqKhyxsawLJ
         HHLGg4h3Tc7OOXqfS0Rwn20J5uN19CsW0FcFGV7Ti+g49+5WLKYXd/P3TK2r9M3oxFLj
         49z0/6y+fLHahxrdu5k1bqgvDstJ2dK4ROnL6NdNu4/25QxcEmw08yQ/xtgSsyNguxlc
         8SxaqI4ryiuDdDtnyWKcbAPCuO6s+uJJXTZW/dzDsoKB5ytN1MOCipcbxqdvB7YJs4Im
         //wU+ZGf/hTPHV/oSLh7S8Dl2JCVoAaTxO7mFbN3hGhKHIebHD6q1I7jUPLX/7X2Wd7E
         aXhw==
X-Forwarded-Encrypted: i=1; AJvYcCUPr5mF61a7FMslLj3YbnGG8DZjbgx5MtB8Xxre7+rH5jkdOCuTZVALd5ggfpqkEnmoIQ9AphpRAtVW@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv6d0HusdyBvdXqoGW7PdBJm2rZrdRw1/r+xutYcCu6daR0qjA
	purCaGQQa9K8D59rc+jevjiMba8MJY+cd5DGhoEEHnX+BJHjCgw64IbQS5KQ+Gy5Tw==
X-Gm-Gg: ASbGncs/nJki6NSWk4bV/zMvV3+VfPfSENZuDWxRFWigOF2o134bxPwcl4lXcz4sLmB
	boOXLIkR5SnTU4RsiWT/LIalmRMfn4+B+/tL8Y2+YLkB/T3eRUoKe80q+PwYfBpa3H7/xpnSqrZ
	0O0aUgNCRHo9zsmXH6e4FKg4nWBUcUbGsQ8A/HS9M0Yo5qtfk0AfbkO9bc/rClQ3oEyGW8RZ0WT
	dmrsxrggujWoidDgyGPoLxBiaXLebtnFajbn9iZ5m1ga3HwwJQmZAk8CxQeUP0oW5IqXkGyQFNo
	lvWKtuwWUt/ojs9cIVuT9uCdgE0GslQmZww8gPkWkm4S+rwobvgbQtRIaSxZE2uDQLtcMniA6ab
	tWMrr3ENH9GkWKTdzhpuBrFv6ujnmUZyI1WgWnB/I6h0JzlCYq2Y4IYtGszjeYLXObGxczeZSR3
	G4oEzxCfe2xXbLp0s=
X-Google-Smtp-Source: AGHT+IETtig917c/959U67stUU8b8pUELNsuVOkLdt6GOzPmjWWtx8z0b7xMKjenAYwi61hJeTVS2g==
X-Received: by 2002:a05:600c:19cf:b0:46e:4586:57e4 with SMTP id 5b1f17b1804b1-47939e3a6c6mr124500145e9.24.1765295231876;
        Tue, 09 Dec 2025 07:47:11 -0800 (PST)
Received: from balto-ws ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d353c9esm31097881f8f.40.2025.12.09.07.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 07:47:11 -0800 (PST)
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>
Cc: Fabio Baltieri <fabiobaltieri@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.orga
Subject: [PATCH v1 0/3] Input: cros_ec_keyb: add function key support
Date: Tue,  9 Dec 2025 15:47:03 +0000
Message-ID: <20251209154706.529784-1-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.52.0.223.gf5cc29aaa4-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

this adds function key support to the cros_ec_keyb driver: the platform
can specify a key to be used as "function key", and that changes the
keycode emitted for other keys as long as the function key remains
pressed.

The Fn key omits its own code if pressed and released with no other
function key pressed in the meantime. Non mapped keys do not emit any
codes, this seems to be the behavior of other devices I have lying
around.

Fabio Baltieri (3):
  Input: cros_ec_keyb: clarify key event error message
  Input: cros_ec_keyb: add function key support
  dt-bindings: google,cros-ec-keyb: add fn-key and f-keymap props

 .../bindings/input/google,cros-ec-keyb.yaml   |  60 +++++-
 drivers/input/keyboard/cros_ec_keyb.c         | 193 ++++++++++++++++--
 2 files changed, 227 insertions(+), 26 deletions(-)

-- 
2.52.0.223.gf5cc29aaa4-goog


