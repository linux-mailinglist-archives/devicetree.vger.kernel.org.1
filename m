Return-Path: <devicetree+bounces-65420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C44B8BE4D9
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 15:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0815D282DBB
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 13:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDEBE15F407;
	Tue,  7 May 2024 13:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="lrKeTC/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D240C15F3F7
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 13:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715089989; cv=none; b=aoaE3Ch1iop/TcB0mo+N6NfXcjmm3nF8ylXRDX5s1A/4rqJ231Yacvn2WJTOQQtso04YL6bQMcoP6Ugo/eSCWYMCetuJ08DMys6szZuwFPIJ0aMzvE/tx5D9usEDv+fD636PmeLHyKW6KTzULUqnAUwykX+L9lI5M+778oz/cR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715089989; c=relaxed/simple;
	bh=4fLHwQPGk0QeNw9l9ZAq3BhROY3TA9pGgOZXf/44uJk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WHVvF1qetJf7/VVBWYkr+5P9OlfHXVDkuFpodfaXEeLt5V8GNIK3v73Eapm3/H+oXjjAoFpWq2IYYFyx3dhwscLfYyK8yMgK93wHzi6NcfESh2MKy8m5NUbTt2sECK2vTaRtZAE6/+lyUQ2geQPuEKtmsZ/d9ay+Bi5ByM5Zp2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=lrKeTC/d; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5b20ef6aceaso1093634eaf.1
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 06:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715089987; x=1715694787; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=lrKeTC/dr3jUb+YFo4QnSV1YNkEUGo76YV6guUnBqQ3zWF6m/Mk6UdPRskABvKPZO/
         AWFloNzXKb1PSCI3yzclahq8GoqtbQmjvHY2RHLEm1TiVOz+Ivq+QaFIPZtcxv/ictPV
         s3i8kwwxgolI80B+TQfTsgH6RBq5ujLUy6weopl2MpvdNAUPONqPkzNK1U65UVBOYzG2
         blFi1Q4RNnY7y2Qewgj+5b0+dhgLaGOzKLgrr7W+Gu6qHq4qRXr+qYMJ9kB0MPgwTrF1
         CZlpHrXe7CqA4S16CQ/wSb8SscjKuEOwmjU0n8FIBZZIF7B+BYl5Pj+pUAcJppb2zlat
         TXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715089987; x=1715694787;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=gTVVXuMWZdcKECRTvDDz9RuPwgEUaCp9scPaUP5fPXV0kq7LHVKd0kAAGQjXmURNyi
         dh+qpRsWfRF2E2+/3p68NrqGfLiMBeg7sGwdMytKR3C4FAL+SE6fFOuQvaoJqhual/ve
         Cd4Alcr+hDfiGdvLZQrvWzjCuORMvqo6hZOfQTc+fptLhORYqJHFBJ/PWufERNBmpywO
         gK0xEsGrzLqM7rkEjl5O08NaYteeYlYcmd5NXdWG0fVi4CnsflHP8QcqhGc9Ha4QPZxP
         fP6SS/dcrnjYF/ARZjs5cJ8dEmQzmIaIS0cVBCZWKLkem2g4XrLiIRwoTfdHADrcaZMy
         NBLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIAZANJ4Q0jB1eAaFlY5SZ0eCPo6OgxrfGnAI9POMMtjsNe//q9QsBDz14Yy4fAe2KcDDZNlTWrr12u/dwL+EbmvFuzTJ+dWTwcA==
X-Gm-Message-State: AOJu0YybJqXJBIhUeihwANMSBXByvCXggcJ+J/wJzmbKFKF/dew2rW3P
	06JkvTl63ZUmPVhbRcffeV9YZ/hYzfo/7Zv3tgFLk4Ftv8MBTDXi4qbJdyXhZcA=
X-Google-Smtp-Source: AGHT+IE9obv3BpQSyoBColioAcwozW3A062gFLNakZyDyk37X93rIIhLS1HS1uSg/WopCyDk2ODppQ==
X-Received: by 2002:a05:6358:2616:b0:192:4bf2:a397 with SMTP id l22-20020a056358261600b001924bf2a397mr3260074rwc.17.1715089987051;
        Tue, 07 May 2024 06:53:07 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id e7-20020a63e007000000b005dc8702f0a9sm9850542pgh.1.2024.05.07.06.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 06:53:06 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v4 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
Date: Tue,  7 May 2024 21:52:30 +0800
Message-Id: <20240507135234.1356855-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DRM_PANEL_HIMAX_HX83102 is being split out from DRM_PANEL_BOE_TV101WUM_NL6.
Since the arm64 defconfig had the BOE panel driver enabled, let's also
enable the himax driver.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2c30d617e180..687c86ddaece 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -864,6 +864,7 @@ CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_PANEL_EDP=m
+CONFIG_DRM_PANEL_HIMAX_HX83102=m
 CONFIG_DRM_PANEL_ILITEK_ILI9882T=m
 CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
-- 
2.25.1


