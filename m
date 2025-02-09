Return-Path: <devicetree+bounces-144294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99530A2DB33
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 06:10:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9A6E3A7249
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 05:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F5681B4F1F;
	Sun,  9 Feb 2025 05:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aPzqkLMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78421B4158
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 05:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739077647; cv=none; b=F5mb/cAzD7/eJ3cR0jWU90bSW/rJg/eJd6TVTseLGNP/E1f2TSG7tQq7HEtEZsMR74CkT3Yss3pYUsDWWkohPkRGgSUZWLIFicYYmH04EB80aBVNY5jj34yIK0dBgT0lCvmbO2NftpreGFi+86eZpnkKztkRMOERWawSrnAwdqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739077647; c=relaxed/simple;
	bh=rBkvGR/qHrfxPlnsg0QzXfiNTIC9RTO2ROzJ5dKz7zg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E4h9NxYkfL9Zxqvnn2lZOnji/Me8HvQ7gJRgNVkLKgMru4ZCy7MJGC/yLeKpGR83ai9tth22l0sPOvLVZT2V/NrPXim4pBUmE/qvJXbFekhi/T0urQ3JZdeEbFPkAWBsJsyt3CSncYwMPGbtPv4F98QjMl9FeeP8vNtNoCR3OAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aPzqkLMW; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5450622b325so739136e87.1
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 21:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739077644; x=1739682444; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EfNMfzUAvdO5axXrtOPa21BH0I19Ed6M3V+EZ2kcNQY=;
        b=aPzqkLMWbFX+7NFvOmEk2laOqFOFfeDjqCedQUpe2La/Ysrc9V08RAhrJ8NY22NYbV
         lgUrp8qss3uZjh2Pqgk+Oni9M7/s6l52Yji1bRmkgP/vTYUtbUJrNl/oPaL+nKlv1Iut
         1S92mWsas8hjc2FZpstSHE+iBzKXQiD1WrySs5pavDGsnH0ThULdY76s34TNG9bJzPNd
         pU1rs0KhY2CTNTVnQMi4kfOcVKk3cY3/niA8QB0s8lRXxoT/5Ug+NXJ08QzWDgDnRJFU
         zsTUeJqjIic7OxzKq5KdvHwE+7vye+DU4K02KbGZsKopWZuituIy/8fK/fdei9NNR1PO
         Tuhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739077644; x=1739682444;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EfNMfzUAvdO5axXrtOPa21BH0I19Ed6M3V+EZ2kcNQY=;
        b=rOQRb0paE/Zdzyv2M/V55uf7ZGt5LmmeDdAYOpo1ZKmWYY45vYsskFwv/fDkLldDdh
         N4cpsQPkQyOp4qkbCypbeXpsPoLHkr3iM5aPnOYzOhRKprGN0kbIWWbuOkfcy4rttO6G
         cPPDnPR7OKfE/RebR/Q5S0QPN9IoWu+iICMg4MFOb/Q4XpK2Pla8qVydTZM7JzQrvezZ
         L/dqpJDtp6G1gk6SvkiibSmiBmAp01HDoNC+wu7c1phRMfWBmEmiqwqRulJPjOgRwwmY
         PnTgLxtode98WBSSwxifwkqD9rPz180ZlFI6guNF2OO4ebB5Z96wMwD4GlNXVVMhnd7z
         fB1w==
X-Forwarded-Encrypted: i=1; AJvYcCXTidEqdFLBvPF1ta+p3sF78cw+0iy+Nq2HkjcLwJXdOns5L2KlfzVDDpv2PG6iIVs3WDEfEClJMcXX@vger.kernel.org
X-Gm-Message-State: AOJu0YwkwWhc6q3ClgFa3tGvI1xIAzqlzUaGAFJAG4RIoJ9hzjX1Jmx5
	jsoIIOzA/EPH5LWeQ13GphGiExIQqJdj7f84nXyN3JCpb5wW/NKbuLODp2VwgLc=
X-Gm-Gg: ASbGncuxlTC7Y2bUh1L//IpAMAYOM2rCMJd04MaLDc0VJeE/3qaEbC69DSVW5JjtLyA
	pjZWjT+fzzo04AWTxwTXobrxSUFlVn/80BlJ92vjtMB33G0ixYj5WCfMLvrCpZYUA7qqgopknwi
	vy6j85QzQ/zqeawETEbKzm7MAMp+Nvxw4/87YhqhosCbzSgegSfeDjQQuqPt7WgS6h4LTqoh+TQ
	y+IT6556PgcLVtsCYE4xkM73Re7b6SUk6F3HBc61ZOB+5O81vjpNaACWUASmae4moI1yOthfbBN
	Ur8WSjC7kW8tRHxf4j+3Ohc=
X-Google-Smtp-Source: AGHT+IEAJIpGx/KtWJ3FoMRxqCJZCMQixEialyC+rYX1C/PQUXahOHBcURaFNniiUGHQYiTxLHEVSg==
X-Received: by 2002:ac2:568e:0:b0:543:e4a3:7c3d with SMTP id 2adb3069b0e04-54414aa8782mr2874988e87.29.1739077643911;
        Sat, 08 Feb 2025 21:07:23 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54506ef1733sm245576e87.1.2025.02.08.21.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 21:07:22 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 09 Feb 2025 07:05:00 +0200
Subject: [PATCH v4 16/16] ARM: dts: qcom: apq8064-ifc6410: drop HDMI HPD
 GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250209-fd-hdmi-hpd-v4-16-6224568ed87f@linaro.org>
References: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
In-Reply-To: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=806;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=rBkvGR/qHrfxPlnsg0QzXfiNTIC9RTO2ROzJ5dKz7zg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnqDfkPKZGcgzKdMYQrmr8xg29SeVv5ZTbQNhMP
 Xm71FFkyTSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6g35AAKCRCLPIo+Aiko
 1UN1B/9p99p14mAy2cJWH8bo5AHu/xitIDMYADBNYVdsUQXslx1MuCaXPHSz/9EQQ9j45ItPAmv
 EzCEf17MZ//D1/qHLqCjloL9Ltx37KTjBGPz1FUsmmbU8crIut7dokT0vvrXN6tGLdefXI/Hxuc
 awkE7CsVIlujLKcvm1MIvFQt1sbsJ9STP7ppIKasGV7yZiTxpCfT5SglZtHAbrupQBqNjuOhnWd
 3K8IniuWpKDQQBT71UqooHwEvF5Y9+OSbX8IlfDHj0Wp18urN40IFGX3Er+qj4JGg0EX+RWVWF7
 5mfvkADq0u6kX/boHk9kXmppgY4vT3pNzviaOXQ+R8XuVeKu
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

There is no need to specify separate HPD gpio for the HDMI block. Use
built-in HPD in order to detect if the monitor is plugged or not.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
index b3ff8010b14985c55c580e0083a5c8ea23c03962..717bfd74edb75b278eaf5ab37954fcede1f7ffb0 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
@@ -138,7 +138,6 @@ &gsbi7_serial {
 
 &hdmi {
 	core-vdda-supply = <&pm8921_hdmi_switch>;
-	hpd-gpios = <&tlmm_pinmux 72 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 

-- 
2.39.5


