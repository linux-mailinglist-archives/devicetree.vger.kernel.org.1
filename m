Return-Path: <devicetree+bounces-216952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D00B5693F
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:20:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE656189C4AE
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E65BC246BC7;
	Sun, 14 Sep 2025 13:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AgDbDHPL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE101D6194
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757856044; cv=none; b=u/jXV7JnCt0G9Wd/8i0xWSDRaRyNhSH9PbtEsPp1m97O3mt9BEVE+LzS0k+2gzJMuefLN4O/8X9XuO1ss204DxFj0JuOZOridLJgsMeZQ/WxlcZwAGesnfh/ZMtwjn6Ao8dtrn+7wSRtUnZAtnhJFhKmvfHoGMdlGY9paywsZw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757856044; c=relaxed/simple;
	bh=rruUm1ocHEpQZ4MUQAAECVBOSGcNHmVZdbgaderWfw8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RZRd8irRUCzifETEMxzhvhC3XWNNiEe5k3SQkEWKETRmCEx1yK1IQIMcEOeIs5B9Ef/1MCpErwxSNMU09FzGNGk8O1FILIths9ujhJCD6Q/AAfk3s823YfgfuBTtbAL4xl/Cb/NE5tJJ9q0ta7o+SD1QeEWsfmJaymlCSHGzDeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AgDbDHPL; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45f2c5ef00fso2085315e9.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757856041; x=1758460841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kAG7m9JuJHlEHyVLrilF0p1L19ca1FzfGVRDxZu6tYk=;
        b=AgDbDHPLIqFZiytWd5LyzSqkMHtBXGA82UWkS/u5tJmXGD60lFGq7TejRYt1PeEfby
         1tXlPkygBsaoRHT2H9dJpYq94mcJBDqhC0dQ+fvJVa3AElH8oDRzmJ1+343jS1WHVT4f
         PHEzfY9Irqwi/KVpL47lU+Mn//GWVoZX+Ci4nmM+MyFJR/1afC1huJ1BMubPkU5KB+up
         /1niqx6GlwJeEnBqKwHUBXGMpJMBA0sohIw3ht5swibQ/rjzAgkaiw/F/Kj3LfR0FytK
         Ue1RTqm8TKvqPX+gZL8GbzZLR3u+C0HWHHSl+99/6eOV6j5ic627vthA/PjUbYM+6qWn
         kTZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757856041; x=1758460841;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kAG7m9JuJHlEHyVLrilF0p1L19ca1FzfGVRDxZu6tYk=;
        b=PemqXq51qAcvdei+yxQZnkLKtIBRg/tEEvBc9pXEmkN96rM5BrV+/EinTEGmS1ARX+
         ZgXLXE9v9q8yGHEN5VXYn/4Q25Pa5sl29HYu04qJepuy588gwUW3FsY+zy1uR0Zp5qD6
         SwiH0GPYncQSQOEv/CgaYPClMxBNvaWhNlJbcMCAGJVkf+m1Hp9EnjFnbsT8ftZ9MeA6
         Y28IbZ8bw9ojJQp/JbOPXcNUpXZO4ASiNMyiKczl6kaTJ6sck0GIbI68MOt6PUOE+Rp4
         E9Fb1dUvdAj7YALVr1YkI8LWuxhBjr6HrUlf9/DvDrJOlEsueW9RIkgB8vno/+T4uS5p
         PIUw==
X-Forwarded-Encrypted: i=1; AJvYcCVBQL+WdpmAfHGY5bSrdOSbm96DeU0Fcny4o9lLJhNuJYg62TY/yjU+qgPq76Zn3hm0BtI/jnp8EXF8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5CqdlDGxQFwLEKDRDaXotEVAZ2pmPXvEXiEF8x9sGdCqBYBGo
	9unBqa27tNxfmzsmwX8IfK/5Sf8DcQTNQqA6fn+Pw2CTOtfFI8gXKd04
X-Gm-Gg: ASbGncv1yPcQlT/jIu6kCD/vft1m8uwTm7OocGKp4szmauAABo/vc9PXDeEq+5j3/Qh
	fEt0neUnMIUrfKjb/L5r389HnhXP/sjOFf5auHkC70UhYCb4EMlHvCPpTK+dW7Jf7l1d6LdpqE8
	Xr6JwuOonrRTNV7/JOtFG0cv7FP0ETtnZuAYlQQ9AQc4DKEFmqizoMQhe6sA46VdPR/XIBdt1jP
	wC8xgrFB7mX387KEq06fNwJkhl+5iePvKLDIBMTvLfWeisMCMtsbfkmyazCk+D2mPYPRro4NvBL
	xyL6Rg3+6SBLoNp8JlXMxpH5qpIseGL0B+D2R37zWFF6szOmtpriPWEKvuDnl28kpoxdrIXqIF8
	eR40Po8LzjvTXZKVfodqK0g1dxSk6Funmww28+8mFzg90uywkSbabkP+fWk2v5cuTpkxbbjAQcU
	VIx6ZsMpa1
X-Google-Smtp-Source: AGHT+IGXHijtzVt4eJs2ZV02TN6C9aMKH+pvbvhPrJQNoOx9E+tCmvs9kL5J7Zm+EWTDt2YmA/iNKA==
X-Received: by 2002:a7b:cb87:0:b0:45c:a955:4578 with SMTP id 5b1f17b1804b1-45f211f7f55mr62938465e9.21.1757856040463;
        Sun, 14 Sep 2025 06:20:40 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f2acbeee0sm29595095e9.0.2025.09.14.06.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:20:40 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: pwm: samsung: add exynos8890 compatible
Date: Sun, 14 Sep 2025 16:20:33 +0300
Message-ID: <20250914132033.2622886-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add samsung,exynos8890-pwm compatible string to binding document.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
index 17a2b927a..97acbdec3 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
@@ -31,6 +31,7 @@ properties:
           - enum:
               - samsung,exynos5433-pwm
               - samsung,exynos7-pwm
+              - samsung,exynos8890-pwm
               - samsung,exynosautov9-pwm
               - samsung,exynosautov920-pwm
               - tesla,fsd-pwm
-- 
2.43.0


