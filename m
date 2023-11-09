Return-Path: <devicetree+bounces-14880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 998E27E73D9
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 22:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 350F7B20BB8
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 21:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9160538F83;
	Thu,  9 Nov 2023 21:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nRb4NRGW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB3B38DF7
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 21:50:17 +0000 (UTC)
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57E4A420F
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:50:17 -0800 (PST)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-58686e94ad7so723642eaf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 13:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699566616; x=1700171416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qOIInztUelC8mrrk/uWmLptClIvVfVoKK3NnyJG316E=;
        b=nRb4NRGW85v5lj+VEtcbwux6Q9hpxOUCeCli6WbbtQXebqKOOZMdgbyacFb29voM8F
         LsFcRIymixh8r3nGE4GPSHAI2q+no2PF5vffLuAwq+p9LJ4BRhDZ3UgfjLRv0F3G1CdF
         vB2PFYfzUuOfj1+Og2NGDx38LBMolwlMsF4ltzPIhno7ibrXspZILpgn/Gg9ezWbtxF9
         AdSleJiY+PAAYcX3oGldjOPZ1gviZhMwZ8nXx9s0zUqUImYx0uvDEfTVeV/JKAmQfR8B
         yLjmemJgCnnIJXaoleQB/cEKeG9ZuUHQ6Iwtto+LX2EBJSJvArdx61ghimb9VM/A0m+L
         Eusg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699566616; x=1700171416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qOIInztUelC8mrrk/uWmLptClIvVfVoKK3NnyJG316E=;
        b=MHsH4RxJO0hk1S9fdf9gv/w7GrAbqFtwbtJIZgveBmhIEm49J9ii8FTE7/8ouvLgwQ
         CvvExqx7YbdBchkCTIo9WXlNd/BnQlEt/o8JQnA+yxU8KsxPYBDZUdfdz50+ADF1Lboz
         tWmglyA0pH+5pXdwAWSK6ihb/Olu6iwDYIA3qVFeUk1ELl/l0gk0DxuSwP6BTB90eLkS
         xyBfAwDjRT6I1eOnv6n7yjf2nAdl3G3BEFL5mgEsChy+XjxqIptRntaWemEp+djZhBqE
         Gtqj0i8eepw3LsRiVTSRmhkpuMg0GoDyYX5u07mKlDnLsZuD85r5SsmRMH3FnvG1TRYl
         X4Aw==
X-Gm-Message-State: AOJu0YzaY13lA+P4+l30XHt96YIcG3dwRnvbBFqL8OcMvWOqqmCfZmhf
	sl/okvdm3ce8NXHA2uxKkSM=
X-Google-Smtp-Source: AGHT+IHkwhRJa6UQv0a+N/kr01xqCaRwiUsLDnT12DrqEx72ojhNPbns7tXYrlhU6YlgyYlLVsA/qQ==
X-Received: by 2002:a05:6870:72d1:b0:1e9:bd5c:ae38 with SMTP id o17-20020a05687072d100b001e9bd5cae38mr6871083oak.2.1699566616706;
        Thu, 09 Nov 2023 13:50:16 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id tp22-20020a0568718b9600b001d4d8efa7f9sm864003oab.4.2023.11.09.13.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:50:16 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/4] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Thu,  9 Nov 2023 15:50:06 -0600
Message-Id: <20231109215007.66826-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231109215007.66826-1-macroalpha82@gmail.com>
References: <20231109215007.66826-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC. Group the Powkiddy RK3566 based
devices together as they are both extremely similar.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..5b015c4ed775 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -674,9 +674,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-      - description: Powkiddy RGB30
+      - description: Powkiddy RK3566 Handheld Gaming Console
         items:
-          - const: powkiddy,rgb30
+          - enum:
+              - powkiddy,rgb30
+              - powkiddy,rk2023
           - const: rockchip,rk3566
 
       - description: Radxa Compute Module 3(CM3)
-- 
2.34.1


