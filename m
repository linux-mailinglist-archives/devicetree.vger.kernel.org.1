Return-Path: <devicetree+bounces-64493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F278B97F8
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:43:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53CE91F2452F
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 09:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D22555783;
	Thu,  2 May 2024 09:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="Hfh+6qOF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA43254747
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 09:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714643003; cv=none; b=XEskobx1pyjjbh1ZlFOOG+Emxmw0kH2OIlHuK6HWk1bih1Wtk4+SV6fZD76FWltTQsrxs64ec1aokFOgz4TtuRJL3WvLD+NbY3anN24dv/5j4Pazc1+T3szvDpctfSdwtbRk9sCbPNRKkjfXWRdVhjvp97NdxhVxh1wiRRNhG8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714643003; c=relaxed/simple;
	bh=tURnXtG0YOwkSv3OubW0rz3dunjFwmkvDo4O0w5smXU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=P0EOfcprvNjlk1crpL5cWDr0x3mEVvkQadTbc4iAtybQoni0lklmgpxRVvOJEJDhQkvdVp9Hgt3sHtvcUb0L25NpY6xYfvHtPApTuXjEdZ59chInlS6eJ5Ejzfjk7KXLKVDbx6VrwT9tTi+11LRAQs8d9KKD09ZVGpneslOafAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=pass smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=Hfh+6qOF; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=edgeble.ai
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-5dcc4076c13so1224600a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 02:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1714643001; x=1715247801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QiEinpzKbejXcwmY8FTfMGWznHTz6FpYxSICSjLHhRQ=;
        b=Hfh+6qOFt2IGcMwex9QjD4CfZMwBhYEAvahIGsXInQF2TrlJjHMpAVoGo0aZMbOq9m
         1US0KzT8+BSIafxR/Yb3OMsmVttIl0PhoDLXHmD+GLB5TBdi/DsiT/X86P53raV6MCYp
         CvjyLdFWf/9cMbMqq5UDGHDBhCayWVN+BkqYCxZokZR9Bl10OVvlzyhxD5uwpueKz0by
         ZZq+UiOlVIokPyhEo40qu7edoGV8ncvv1JJyQCoDMOXUn2Fmdvymve6AwxWDvGFKXLpw
         xCHPM6QVqa2bJ1OR4Pd1afbrCeD6Hta9R1RSxPkDzFp6SGlQ69IyjmetqZdlheYeXLnZ
         OMkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714643001; x=1715247801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QiEinpzKbejXcwmY8FTfMGWznHTz6FpYxSICSjLHhRQ=;
        b=cepiK6g68O+4qvrMiH0ujv8AqUivKNwcLIVFCkTaIPBVV8vekF+BAtO5JYQ9nfrnaO
         fkzhKITiQow9LvPuvYlHHurPoKdATZ8ar+a9pK5jOAIdB/L56mX6RbCsIC95E8U46WsL
         2Pt5spgiumLPssfcxTn8nn71qs/qE5O8gzGJ4SbJLzsa+wiXcJjWv32T3jTn70dUaqsX
         qmsicfCxAzA1sBBYa31k8BFeQz0iWXzyymoC/EwRdlSsfvzwQFYsYiBppcWmaFnuTDa/
         EbMyK3gBhvcq8bDSxaoOCIwKZp2XZ3IwnvjhYHpJcsQXOFDJMdW64AXSbYsUHFmflVdg
         f8+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWqhznszf0KGnALgQHDkguLlVBymIlqetrLTbaU+SW9dljoyZr1qYndjY8N18S1Eja6fAAGfkfLHw+YLdjwH9PLHCzBLJJYbRDIQg==
X-Gm-Message-State: AOJu0Yz0soihCwpjRqa2ONAVMgdyU3DlEMOAYQ5hp6CN1umnXU2OhLPD
	2ytWHlQBdU68HftgUUKNcgxtx1mMm/kTZB6XXbPP94ZfGbnpCEb0XwLaCNNb7Xc=
X-Google-Smtp-Source: AGHT+IE4mfyNAbGwKZ9nME3G59fwEPSFuQ5t8lhGdVZqMqD7QdZb6qTs8RtEfmX0fhNqSYkO+HDsBw==
X-Received: by 2002:a17:90a:c24b:b0:2ab:8e59:9da9 with SMTP id d11-20020a17090ac24b00b002ab8e599da9mr3471747pjx.6.1714643001041;
        Thu, 02 May 2024 02:43:21 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id p11-20020a17090a428b00b002a42d247a93sm782603pjg.36.2024.05.02.02.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 02:43:20 -0700 (PDT)
From: Anand Moon <anand@edgeble.ai>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] arm64: dts: rockchip: Support poweroff on Edgeble Neural Compute Module
Date: Thu,  2 May 2024 09:42:37 +0000
Message-ID: <20240502094246.4695-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Edgeble Neural Compute Module add system-power-controller
property to RK806 pmic so that these chips can power off the device.

Cc: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index c0d4a15323e2..2c23e89dd2d8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -162,6 +162,8 @@ pmic@0 {
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 
+		system-power-controller;
+
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
-- 
2.44.0


