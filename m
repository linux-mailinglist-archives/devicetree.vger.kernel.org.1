Return-Path: <devicetree+bounces-117802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0BD9B7DD1
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 16:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96989B2239A
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DA81A0B0C;
	Thu, 31 Oct 2024 15:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gZ6VmH1d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7EB19F416
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 15:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730387251; cv=none; b=BBZxxlzP2isiqf20Yom7cCuzT01f/uO07k1u07kM+yrCj1fiiLLvSVrRPoMgqj1RrTA7jZ/vicpwlqeekxokW74YEkmTkGdI2t5Njb6YVvNDEcocmfHKrrrX5+iZkpvYa5se+L8Cdba07gp06ljdyPMNVqqiks/tVeSN7M8MPB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730387251; c=relaxed/simple;
	bh=QkqeFj/uHwD+PwVRbOy68PgyYxaJKtp6lCDvoGbC3ro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HaEt9zo9pzegtDZgMsIe2ZalxQJ07LaC8PTl/Ps5lnxP4l0yjpApxEMfAWAbUP3O2IH7ZqU4/XI85EuT7i3txrciJBkhqfZxeTIqbHvciZq2+abFYSDAtVorIljROTWyiN5Epz9aLO5C8xu6x8JzkRD4kFDcoG2S/TK06yn47M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gZ6VmH1d; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5ec2798661aso533157eaf.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730387249; x=1730992049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=gZ6VmH1dMVF5AWrqgHH8WCeyZeWgrKE01LfO6MuAoT/Rp+D+f+8PNzc+AfoTjIgAFu
         cxTzCAFn14qspztOO6NfocyaLNgG76HWLJymAEh0lfztCkD2/VRuB6kLf2vo6KdyC4vD
         N2vsBuU5UIrhlpANkKa2gpmEEbAnNQwr91opWMmut0O1Nl864V50pLOWn+Hw3zM1cqRX
         cT4C/yd7tVrEXpJoqKTdLWnNojJkTdsZ9MHbxp1nu8yA2+BLytxGnvIzZdezmyPVCVvX
         9GAcGgluaxXhcEl3FLIrDnxl3b7dFi2lU+Q+ERf0pT+0hNoVgawMv7B1IAEhecP3efp2
         dPzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387249; x=1730992049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=J/bkXJ384C2U7ZaBJSdrD1bbHuPX27JCfIF5yKKAAM3EJ20h4DaqYzoY2/oLXtG4BZ
         Dm8lfESUoU1TsUhq7WFR7cJD+UdLA3T31mEEcmGxs5ye7MCei8oNTCwzEqFe9WCbzQ5C
         YfISDGPeq5HLugOOewg1bPx7vpaKuyFJGq/PEJae3PSDbBks+5iY15HbvILWe1ge4gAU
         XJqtEf5SCS7MIwEcNLBYvl6hEItBXpkPVHcJivRNJlgeHV2M8HVMWubEHuO/4VwCLiJt
         CTMO+nq/KQIOe/2hLT5ORihHklDi9LdalWbPoeXCz8PAokF1BDfw7aH/4317bdIYLjg6
         G9ig==
X-Gm-Message-State: AOJu0YziPrPxMP4Bvm9acCndSWSAUCezyxt0TcWX/w09rjxW48TzCtdG
	BDsF642QuUxP1o0lmeu5AnwlYsFehyJcYOOSEi6P8teeUr+qzuY/yUdepg==
X-Google-Smtp-Source: AGHT+IFX3djConHV1fWujtlyPnSX6SgZYoPDbERhHP5c5c58A3OwGbIdpSZZbBKvIOgtNlJ3ps9Usg==
X-Received: by 2002:a05:6820:541:b0:5e1:cd24:c19c with SMTP id 006d021491bc7-5ec5e9adae1mr5637800eaf.0.1730387248844;
        Thu, 31 Oct 2024 08:07:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec704bfefdsm317330eaf.4.2024.10.31.08.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 08:07:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/3] arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
Date: Thu, 31 Oct 2024 10:05:03 -0500
Message-ID: <20241031150505.967909-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241031150505.967909-1-macroalpha82@gmail.com>
References: <20241031150505.967909-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Correct the audio name for the Indiedroid Nova from
rockchip,es8388-codec to rockchip,es8388. This name change corrects a
kernel log error of "ASoC: driver name too long 'rockchip,es8388-codec'
-> 'rockchip_es8388'".

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d8c50fdcca3b..a4b930f6987f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -62,7 +62,7 @@ sdio_pwrseq: sdio-pwrseq {
 
 	sound {
 		compatible = "audio-graph-card";
-		label = "rockchip,es8388-codec";
+		label = "rockchip,es8388";
 		widgets = "Microphone", "Mic Jack",
 			  "Headphone", "Headphones";
 		routing = "LINPUT2", "Mic Jack",
-- 
2.43.0


