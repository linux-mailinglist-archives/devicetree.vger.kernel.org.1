Return-Path: <devicetree+bounces-167556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EADA2A8AC63
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 02:02:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 686831901830
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6765254F8C;
	Wed, 16 Apr 2025 00:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Iip1LbTe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D304FBE6C
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744761737; cv=none; b=uixY/pqEZYJenR5gbKjAhtlznFgUJRO9XEkd1gTaXNs+FyuXsrihVsQcq7WIyNvpf1kXr0qQQvF3yV0gSDN0jIK4nNcL7CpoD9d8x8jk+VqYok2TTAAcJEqKQO3FNhDr8+mN6CBzuK6qpw79m8p78LaYEi6WZie6tJupsQIbJuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744761737; c=relaxed/simple;
	bh=X73kg4tdW06GAOX2zu95FNoOmd3sHwKiCictodfiuao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EOKC4uuzdOgC9KZZS/v5yA0q/KwelhBIKxWzDwVVE2S03eEe5Xv9t3Gd1BY9BxZpIl4mKJ5EWoC8JHN6eUSHBLQxlTmJ6XmPKa9Hv88UT4smhV4FosG1cvpUKnpER69dfJAIClv/B6BezC12XoIMB209AXZxG91e/S815nA/QU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Iip1LbTe; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7399a2dc13fso8172043b3a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 17:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744761735; x=1745366535; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ztpfrrq65RboKoVCNPKCaSBonp9V4OT02BBtVtoD/uU=;
        b=Iip1LbTelo/dFDgaCB7aH39IJa2T0r6QRpjefrchYJ2GLfppOm6HEMBe/MCpIQBe7t
         sgs7w01FbVfctXxeqzUhERu4j5c/EzQl2TTMIMQ0C0ddjZj/mtVZrO+ICFyDhPyDUWjT
         fNT1AxGGmQtyzC6AGcMUt87HtO004pxKLkcFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744761735; x=1745366535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztpfrrq65RboKoVCNPKCaSBonp9V4OT02BBtVtoD/uU=;
        b=ILH27ONdxM99C6tZSJC/xNMaxtAOszH3e9o8jYnoENWCn/NXBQYMc3gvNY3nupYI2y
         0ivnKHCXNVqSsTW/aq7hlR9pkmotrw7rm7E50IxXfNK2smz2aVqKc3Bsa8hAV6X6kTWM
         4jEVpiz6YmUuK0HtKEqz1MBfPHf4rOA7rtVdTF3dplfS/95dj3QlKi0nhJJk8AuyC7Ow
         KPxUsji1VvNKftoif5UxX5FGQFSA+oyLpBNbNxsFbOkB/AOdKfOLgzsUvVX8L6PG/APi
         SZyI04xEDAbQTu0ljSRkehj5yIjhX2cXQKhZCKB/v2nOAueBhMMphR8S0pVyeNR5whzP
         zEZA==
X-Forwarded-Encrypted: i=1; AJvYcCVWSuagADyDLgnRcKuyLcn/FERJeCR/putAaRxmDoAVWfV9cJ1qQigi8GumVeUBxMACc5dwHlWPWUXN@vger.kernel.org
X-Gm-Message-State: AOJu0YzMQsC+Ep8iIzJUaXPaohtZcL+Spl1qaFqvyNuhSkgZYgp+WGfz
	ovFHOVe9YpXV1v1tet9ut+xXqdA+/Ecir2XHnWJN6obuRNCMJCNrCm698e6xKw==
X-Gm-Gg: ASbGncuBAgODYva+R44SmVCgy8AQQxBJwH+pLufHbqw0hDSNYyz1BBKaE3FI9WgsJEH
	cx6cs+kNwjxEeem6jxF5RlPehqNKb88/yF5fjTFGIFqoJLEf4HRmkPVfZZsrpMhAxWwNffTqaWb
	PcUyZZjGmjcQMl7GhijMRThypPN1lyKa/jpY1uilxaO8aTGdf8UU3tU+G8t37W6KI14/5iymEkK
	lyTYPOfKI07qPFQA9oB07D7+ZP2vIuOaDTRZjw4xaJqZ/Q9/AiXUvSwaaiNC06Epy1U1I+FhvJs
	3DuKw0NyrHb3gHYuEcGc5yq3haPdkYhzr1uCmjCqp2FnkFv+U5OseoO4MJNOR8YZHt0364gNJ1V
	oVw==
X-Google-Smtp-Source: AGHT+IHkUQNhj55ArcxMsqdZ9goNzK1iX/oCF1gdLXwsnONXGZV+o45RA+2MeBctZXHEWSSuaXlJnA==
X-Received: by 2002:a05:6a00:2e29:b0:736:48d1:57f7 with SMTP id d2e1a72fcca58-73c1f90d688mr1947843b3a.7.1744761735002;
        Tue, 15 Apr 2025 17:02:15 -0700 (PDT)
Received: from localhost (199.24.125.34.bc.googleusercontent.com. [34.125.24.199])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-73bd21c3216sm9157830b3a.49.2025.04.15.17.02.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 17:02:14 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	chrome-platform@lists.linux.dev,
	Pin-yen Lin <treapking@chromium.org>,
	Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
	=?UTF-8?q?=C5=81ukasz=20Bartosik?= <ukaszb@chromium.org>,
	Jameson Thies <jthies@google.com>,
	Andrei Kuchynski <akuchynski@chromium.org>
Subject: [PATCH 2/7] platform/chrome: cros_ec_typec: Allow DP configure to work
Date: Tue, 15 Apr 2025 17:02:02 -0700
Message-ID: <20250416000208.3568635-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
In-Reply-To: <20250416000208.3568635-1-swboyd@chromium.org>
References: <20250416000208.3568635-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The DP altmode driver fails the configure stage because the status VDO
that is spoofed in cros_typec_enable_dp() is missing a couple flags. Add
them so that the configure succeeds. This has the nice side effect of
properly reflecting the pin assignment and configuration of the DP
altmode in sysfs.

Cc: Benson Leung <bleung@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Cc: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Cc: Łukasz Bartosik <ukaszb@chromium.org>
Cc: Jameson Thies <jthies@google.com>
Cc: Andrei Kuchynski <akuchynski@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/platform/chrome/cros_ec_typec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/chrome/cros_ec_typec.c b/drivers/platform/chrome/cros_ec_typec.c
index 6ee182101bc9..2cbe29f08064 100644
--- a/drivers/platform/chrome/cros_ec_typec.c
+++ b/drivers/platform/chrome/cros_ec_typec.c
@@ -531,7 +531,7 @@ static int cros_typec_enable_dp(struct cros_typec_data *typec,
 	}
 
 	/* Status VDO. */
-	dp_data.status = DP_STATUS_ENABLED;
+	dp_data.status = DP_STATUS_ENABLED | DP_STATUS_CON_UFP_D | DP_STATUS_PREFER_MULTI_FUNC;
 	if (port->mux_flags & USB_PD_MUX_HPD_IRQ)
 		dp_data.status |= DP_STATUS_IRQ_HPD;
 	if (port->mux_flags & USB_PD_MUX_HPD_LVL)
-- 
https://chromeos.dev


