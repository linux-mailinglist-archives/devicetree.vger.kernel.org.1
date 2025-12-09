Return-Path: <devicetree+bounces-245400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B39CB0746
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 16:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1AFE3017F1C
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 15:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39802F4A0C;
	Tue,  9 Dec 2025 15:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PIKKl3Nz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9988A2820A0
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 15:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765295237; cv=none; b=kvfsx6JCXEIzaRFsh9r7mg6ohRncbxAy1A9xGHIxKprkMRjv6ZW0TenX3yijygB32YR0Goqy59/ke2eeDEbOcRP+lYckUD11ce1HHwTIAK/KqdoiX4rNL6O6NVkpkcA9IsRgP+qDrCt295zY9TzfA97g3LoPfbmv3AWKcVLxQpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765295237; c=relaxed/simple;
	bh=SSTQV71zhH+KAIMdkOHqBQujgdzOTQUnEVzh22O3y1k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VZauoVK7PL71uUZMK/aGrvvd3GI1mDUQzFmzZvIGKw9M/dQj203o2vc4ddibbajeZEP2ZZ6DVvOiKRmHtDglwkKHPpJ5sTjG/K+npCibsygELeYHkoxhplCz2MTsGeuQB55vt0Fps/AH+dz/b4julDHAR76QtoiNQOEpgRMfpfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PIKKl3Nz; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42e2e3c0dccso3200384f8f.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765295233; x=1765900033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nijc6TapEVx1m//kz19HJEsLmLHghSeoAA0KmTIDep4=;
        b=PIKKl3NzVKDO2FMPktMgbbAUdNwaqQ8UoCZG0i51h06VphZal9cZUpU1emRWgsCDAy
         p8QFtrN5QZx8xJUceqXZ0bFxa8es1vQnmavlnB7k3iwL4l1N5zc77Q5L+kgvovhVpYRH
         nP3TgdpsorSToG7ddMTv6cxjMyIkCTj3I798o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765295233; x=1765900033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nijc6TapEVx1m//kz19HJEsLmLHghSeoAA0KmTIDep4=;
        b=NvPLdUykX6P6J1DteKFmdDf3e9A0sLz/qKN9JGZ6RFrIo3caSUtIkPGDfsmU3IO5Ae
         Ft7p4dGRC1yQ0drXeTRUdXpysjwukJjrHtoD/CxeY+ySWShYNwEAgW745piry6kP0FkE
         bBELKufoVnHxdxkSKTgiYIb62pslK0Ps/qXbv5fivw6GuPlQWffCIHwm36+6tzSxLhRM
         KEvKxtQZfmdJ2ED86Ic7WKXsSE882f6fB84hhsbnolpOs/cpHMebek01fgULWYkFIHRB
         fq7uXO4TGCOMwRwpjhW9R0StRlYhNbfI5l7sgw0vejpUHOacWWEd/e3e0WlL04Sjx6wz
         HyIA==
X-Forwarded-Encrypted: i=1; AJvYcCXjN90Ny1AlgEoTQkqztDhc0lggvEKiva9zKcZfLS+F8d8iq6uVzZjNoDFRm/ChnPuiViFRzcqJl9Ja@vger.kernel.org
X-Gm-Message-State: AOJu0YyoPdMBFOwt2kmuSvDacP40mhFaoch+WPmA1tnvxK83lYNH6AwK
	Ou3h6Z1vlXFsIrBYDU9DPZWzDmcAcO++lqCgmYJ24ppt1otADqY+7ilU4Y3II6aE3w==
X-Gm-Gg: AY/fxX42GJGFmQfVfp5xV+wzeFYP2v/BOm7zDN9aB9a9vVgDq1J6T8a7OUGhAi258/5
	seHQXrYAGHZfYaQeDUXBVL9k9SnLvbljJjxgdOZFFpBBieqCOHd78aE51eNOmc/k7M73bdOB+sr
	hpvUQ2clRm2hEJUg4m+cd0CpRJalDSJbGM7oVZ7NjQDiWH78j6iPwxSsNhp3m2eST2Mu5GnGj7Q
	HpLBIOGu61rEOLMw7ItFQwsiQACi58T7TO3d/FJ7ecq261AnfTGKeZQ+66XfJ46Ds0k/vT8W7/V
	wp7LFBGDl7WncDxI+OEtXglB4cRwOn6KT43d+jJiHcW4pZA1+SPhqbdLTkZp7UPxhYfhXK18rQm
	TNkaCV6NAdcLQecrcZpWkokUg7eFgAq7geKBiuPFJ7m7/wBdenZ9/mbbC0PWP2GPqR0PEknzRsC
	+W5kmT8NHudBdafp4=
X-Google-Smtp-Source: AGHT+IFIwxIRvtKdP7oP+tHCC5AXu9N6uYSmNB+//1Ldk1GFkhn80JY7zzQCa3PkorTGapSGbkUsHA==
X-Received: by 2002:a05:6000:4027:b0:42b:3ed2:c079 with SMTP id ffacd0b85a97d-42f89f897dcmr11220121f8f.48.1765295232875;
        Tue, 09 Dec 2025 07:47:12 -0800 (PST)
Received: from balto-ws ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d353c9esm31097881f8f.40.2025.12.09.07.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 07:47:12 -0800 (PST)
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
Subject: [PATCH v1 1/3] Input: cros_ec_keyb: clarify key event error message
Date: Tue,  9 Dec 2025 15:47:04 +0000
Message-ID: <20251209154706.529784-2-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.52.0.223.gf5cc29aaa4-goog
In-Reply-To: <20251209154706.529784-1-fabiobaltieri@chromium.org>
References: <20251209154706.529784-1-fabiobaltieri@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reword one of the key event error messages to clarify its meaning: it's
not necessarily an incomplete message, more of a mismatch length.
Clarify that and log the expected and received length too.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 drivers/input/keyboard/cros_ec_keyb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/input/keyboard/cros_ec_keyb.c b/drivers/input/keyboard/cros_ec_keyb.c
index 1c6b0461dc35..2822c592880b 100644
--- a/drivers/input/keyboard/cros_ec_keyb.c
+++ b/drivers/input/keyboard/cros_ec_keyb.c
@@ -269,7 +269,8 @@ static int cros_ec_keyb_work(struct notifier_block *nb,
 
 		if (ckdev->ec->event_size != ckdev->cols) {
 			dev_err(ckdev->dev,
-				"Discarded incomplete key matrix event.\n");
+				"Discarded key matrix event, unexpected length: %d != %d\n",
+				ckdev->ec->event_size, ckdev->cols);
 			return NOTIFY_OK;
 		}
 
-- 
2.52.0.223.gf5cc29aaa4-goog


