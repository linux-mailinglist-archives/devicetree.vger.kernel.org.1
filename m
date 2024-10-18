Return-Path: <devicetree+bounces-112999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D52AB9A434B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 18:08:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79AB31F23E11
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 432D9200BA7;
	Fri, 18 Oct 2024 16:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nO44gtEW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2EC18E032
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 16:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729267726; cv=none; b=uNzZ1BfDWYCwduKpR4wdsuIvg64APNxJs4Yf4yzH4/jYNPYrLar8IL9vexIuLmEejzyU2kX82mxmPqGDKZXQt/JewO5UYFKI97n++ec+E9z75p4GhLbgXdcPwYNflLcC+1Nb6/whaSj6fAPGsTEVfbfKr9pa0+EfSLFSrsrB//w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729267726; c=relaxed/simple;
	bh=ilqpidFYgEuMqLONnUffz0dgi7GvDMyc5t8CFLHqIVk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s61CB1ERw9ZoBIIvTnKw1sxldxy+ICxii2TVkZMfF/J6iq8dpWf1I+OoczLqYF+1Ow+yiRLHNBePiDiFyqvZC5NX02hrrvCBCuj30MmT+tXdeXG0nsB5WXIGymHx6/mhKA0O04WJFapcEFIWMrSy3ILkkFhFDNR7i0Q/5xRXY3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nO44gtEW; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-288b392b8daso1015784fac.2
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 09:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729267723; x=1729872523; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DcD50VkpupT7TzRNFRLFMjA7Fk6fhf3WDFKQwgJQXDg=;
        b=nO44gtEWfE5n2LgPZYGeFyBBCavXlZ8O34zjzEc92nSDQGoMp/nRuyZYl2LY26q7OZ
         cndzxw6es+M2a4pPlGQdP7ruQSrftsug7hqQGBL8n6tep2iEYFmnVrHIvHUwqKypMm9f
         tnJ/Q6AYZ8H4PzbQpX+ItZw8y3Czpg+vhSyoOCXiPA+HR9nNtZdD7gDBBTEXvClowx7Y
         Yp2EJSeamRpJOhXavWZWLONLk99yg3R/hN526UbmVbgq2PQo6DXiSTUnoJWLvb+y9kWr
         CWN/xsrWDdD9+/YE2vONGBxBIG08ZzJctKYjcm27neOnOUTjD1bwFuhjQQ43/oyWTvly
         hEKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729267723; x=1729872523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DcD50VkpupT7TzRNFRLFMjA7Fk6fhf3WDFKQwgJQXDg=;
        b=Q+QUO67b+nOADlkP1CRr3iqosEtq7+edlMLDlPrfMb/K1BLPxo2hASXWDHRz931OQf
         +RkegsMr54tot/OsKoJ3oCMgj2E61ThR8aAmmJlQxwmFmFhdLeFhFiPG/PCVrt66fEen
         J5EHiu8i03Ke7ua7TBXa4VA1bPFkYJd0veLhW2DCOd0iuj/elMqFDDfXrvPk07jvt3GN
         1PUitQMmOqW0tteHQpd/13OrDHlPDdwQHKpHMtBTBOxLDa8XbIQxCCJ0TiN8TlHs3SSR
         9LmEEp5FyIAs83PcJ2lJsvCfgArxM1/tfuZ8nM3drhv7TtMsUITPXwW3Lnxjk/VssACi
         tkzQ==
X-Gm-Message-State: AOJu0Yza91iUVGDbXRX+xWy4LsMbocD1y3abTSAwi9FjVBz5Vr3Do9qK
	x+eAR5cQ+19q3cEZKF/BdApPOclL9IGoO8qVb/PHhgnvl5ZXlUCb
X-Google-Smtp-Source: AGHT+IGFU/VBdQMOprmAG+miCx1xCs7xV3Wyu0mv3RTWGQylWYTNaaCBSJRnGD8XGx1oDEmXgL3v4g==
X-Received: by 2002:a05:6870:8a0f:b0:277:fdce:6759 with SMTP id 586e51a60fabf-2892c527f7emr3032394fac.31.1729267723170;
        Fri, 18 Oct 2024 09:08:43 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2892afb01ebsm507350fac.50.2024.10.18.09.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 09:08:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: allwinner: h700: Add LED1 for Anbernic RG35XX
Date: Fri, 18 Oct 2024 11:06:16 -0500
Message-ID: <20241018160617.157083-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241018160617.157083-1-macroalpha82@gmail.com>
References: <20241018160617.157083-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the second LED (red) to the Anbernic RG35XX series. The RG35XX has
3 LEDs: an orange one that is controlled directly by the PMIC; and a
green and red one that are controlled by GPIOs.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index 2896d51cec7d..ba554c019e88 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -170,6 +170,12 @@ led-0 {
 			gpios = <&pio 8 12 GPIO_ACTIVE_HIGH>; /* PI12 */
 			default-state = "on";
 		};
+
+		led-1 {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&pio 8 11 GPIO_ACTIVE_HIGH>; /* PI11 */
+		};
 	};
 
 	reg_vcc5v: regulator-vcc5v { /* USB-C power input */
-- 
2.43.0


