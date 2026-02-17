Return-Path: <devicetree+bounces-265946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3bA2NNCxk2kY7wEAu9opvQ
	(envelope-from <devicetree+bounces-265946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C561483C8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C1CA3026AAC
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 00:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D80181D9A5F;
	Tue, 17 Feb 2026 00:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m79VDRKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53751A0728
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771286958; cv=none; b=bpcM0i5nNH5XJz1bL7V8gGSQUz0TM89Bxp5KDXo8mMfD4m+ruNYlWw2DhcRsZ0lr/BYI/JkqH+FlsPMT8Z8aWOAKBVPypBjSmV8Omjol1v1yLigHbvmMtz4LyWc/3nMK2/iETSBICPMVqNoAL/DDo1BBtUnKeYEjZ1D6PNze+M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771286958; c=relaxed/simple;
	bh=89EYxATezOfNinwqg1JLoUYQjiSppo2jl1ZRgBBT3Yk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hpZGtr1nE0fURi8cCH6FEih0AOGD2u9/Pg4zf7xQuFimnF1WptMhlcVq6bC0TJv2nV3enZHRUYI425Yfh+EyVsIv3SsLDhCIR3vZsgCxC6UDnTLKxRwWZYAUO0iQsw+a2CXzjTKbok0AGvDQB/CJpqYLg+L4Xz7KsPzos7gHiyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m79VDRKT; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8cb4097794dso330828285a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771286956; x=1771891756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wB96g5tBmbZcB3Dn6OFX+n3pGQOYEK523R4mr+xrtp0=;
        b=m79VDRKT4J36EkJlTMwhP4duBFDdOnwrcJ/sckVe2tLGvkHdXCRx/hSLsnm0vVQehE
         pSE9Ny1qnnZPjKSbv1241oP+gmdrj74VehJ63CkJpWqdRYB9Uwz8zTTWhrbaNh7Q1pZB
         bmMwxP5U6mr1Fx2cxsreOWit6Nim5r+L6F9hdcKcbA2EXD4T3V+HOhfEwGiW+jdaSjYT
         qVUscdGxq45ZCNltvmaGOEwfScd26pL0JcV4Lvcz8D39PCZERG9DGWv2wLwOSvX5ude9
         FTlVnrGjf+SX42KOsZut2GQmM4BteGnw9Mt2KIu25oUz+Up/sU8shlHE8XaxZkpdesv2
         emuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771286956; x=1771891756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wB96g5tBmbZcB3Dn6OFX+n3pGQOYEK523R4mr+xrtp0=;
        b=W+GGlaLsiUBvXhCV8ygo2KJBhXBNJn/4uDPWuyRIw1+/LFGqCDUX+tMkjPr/S0hh0j
         DCnXWRENGb60WLjITTCuEvLe9MHYs46DQrzuTbF7BOdS+K9rZco1BUnuXrgd/hTHSv2C
         ev4D3WOpe6PBoNHFs0KQlj7/MWo2F+TQN1tBO+BC6SYXq3RCYXUX4NWVCwH9JGKpAsIo
         le9Abg6l5ibuOrMJi/Ptqg/4FAY58GPvUK3kpFCYB7az6XZBPDM0uzaisUvhAzosI92F
         MAc5IgbxE9NIKwfhcy3T+6GKpCCbpre80FQhhUZHcVURBTqLTL2pxhJ6fG7OBLZliuCP
         c3QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKVmoNnVJCnr5YSWeVFvbITFYfmmSyB7hHN5xidVshYiZO8v79YzfIOix72t8nkkt4wY7y+FiIBLzo@vger.kernel.org
X-Gm-Message-State: AOJu0YzVaaRZfM3Kp6WfOz51q3h1nYJL3Du7avBbE44xn0AMeUejgLUJ
	5ddukSQKGcv7UG782a7tQd7U/YsQH8pfLj9W0gYuWC32gM30MxwZaVMp
X-Gm-Gg: AZuq6aIu8x7ZVq1byHhEZDIUTejgGbMlEgNXn6HuxOmhK6x75yurrdaxHZq8xWmOC1B
	uGq4qVb+MvFFnOYGbJp5xILgJTsHKXl699nf+g5mhTXKSqm05AmQM/C27sepRYHIULKiO9v6h8f
	vP544aJhJ4hLBScVJKSwoMO4yrnNiUV48b9Lb5wyl5Sa70prWPtmVDCjevEHMkAVTI2ctAu4XQR
	cOBedh06Szq+pVCVM817Yzh/GewPyTysDtUqgdnkTFAZH4/INgdA68fXiAS303mQW4YRecP13t6
	vp0lh+hufdfB1J3eGZgw60Sko8+f5p+QqIn/F3NqPKRtG5NBLtoOG/1VRZTVRNSvhE0znX6pI25
	EmmWGxsZt3jEZqOx7XU6y9XKjszX0N1gb/UgpnCNWkkCzOcyRExO7CJmBcC3UyXYmgOd0GutEEF
	76Qz+0uyUhx6Yz/TIMsu9PMN0NwGX8vg==
X-Received: by 2002:a05:620a:40c2:b0:8c5:22b2:8b4a with SMTP id af79cd13be357-8cb4226c299mr1426512485a.16.1771286956624;
        Mon, 16 Feb 2026 16:09:16 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb4a395cf2sm822775685a.18.2026.02.16.16.09.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 16:09:16 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 4/6] arm64: dts: qcom: sdm670-google-sargo: add touchscreen and display labels
Date: Mon, 16 Feb 2026 19:08:52 -0500
Message-ID: <20260217000854.131242-5-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217000854.131242-1-mailingradian@gmail.com>
References: <20260217000854.131242-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265946-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.12:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email]
X-Rspamd-Queue-Id: 13C561483C8
X-Rspamd-Action: no action

The touchscreen and framebuffer can have different resolutions on the
Pixel 3a and 3a XL. Label them so the resolutions can be modified, in
anticipation of the addition of the Pixel 3a XL.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
index e925cba0381f..2e86bed9ea8c 100644
--- a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
+++ b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
@@ -48,7 +48,7 @@ chosen {
 		#size-cells = <2>;
 		ranges;
 
-		framebuffer@9c000000 {
+		framebuffer: framebuffer@9c000000 {
 			compatible = "simple-framebuffer";
 			reg = <0 0x9c000000 0 (1080 * 2220 * 4)>;
 			width = <1080>;
@@ -516,7 +516,7 @@ rmi4-f01@1 {
 			syna,nosleep-mode = <1>;
 		};
 
-		rmi4-f12@12 {
+		rmi4_f12: rmi4-f12@12 {
 			reg = <0x12>;
 			touchscreen-x-mm = <62>;
 			touchscreen-y-mm = <127>;
@@ -533,7 +533,7 @@ &mdss_dsi0 {
 	vdda-supply = <&vreg_l1a_1p225>;
 	status = "okay";
 
-	panel@0 {
+	panel: panel@0 {
 		compatible = "samsung,s6e3fa7-ams559nk06";
 		reg = <0>;
 
-- 
2.53.0


