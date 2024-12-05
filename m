Return-Path: <devicetree+bounces-127348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D2F9E539F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:21:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 757DA169C7D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF13206F3A;
	Thu,  5 Dec 2024 11:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AHU5l+3z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54952066FF
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397597; cv=none; b=efXUbGyIZozeRbPbRJ08vdt9M8zIfvnkEjEjgYHc7dIPfarnX5JKoce8sQitGT2RwgOnb3SjR1IFdcNYy1N2VxbXNsF1Ulm0Aod9UV0dMrJGIfRWLi1dPAJWqvt96vTNWW9tLMHhcB3D97rCHFv2JAjhi15j0XD4cvIcIJRzYDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397597; c=relaxed/simple;
	bh=EfuJYR878rJ4Cw+YuO97nDjgeWj+F6WJVMj2hzhOd0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EORiF5lyaG/klA+MEs5i1Q9P9uvyIPHfYATTu3CGA+z/xT3wmORQ2LxXyIPVSRmLJM041HCaCYmhyCjY6HoxRghR6wc/kdzyQHxywmsqFuJgPIXk0hb9kZ7cYdN4Tx5GcmG5Kj0zI5aKajMIRS1HCIc4fvUnIihgG69wHCWGLWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=AHU5l+3z; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aa549d9dffdso109897666b.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397594; x=1734002394; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=AHU5l+3zdG0qQuHHIARC30dJ6LzIs5IcqRVipyXDNR5KI/h+TRHMmWsk5OL9TxiHea
         bdZiXwgBVkx6zbPQlTHaDbNuhRY0qs4/EZx0d5taPU9v71EnfURuuOpFU2az7B7FSTop
         a3nsIbqT8Q7VakS0rbBQPhePs7fEDg6C4sHJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397594; x=1734002394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=oiHMEszfAxBY9dXBOtpoApxIPYwXTmTbCO9KaLbyFwysb3sWNRufvxrzupsboDVECb
         YxrQbP4LB3b+g37d50HeULPP5ngsUu/9XQh/mHiDT+9Tj1YhyaFS0LeV60Gcp0MHGDeX
         VmasLevLWJJYDh7JSVJ0kC1nNXN8PH9hSPrcB1i/sf5vrjTI/Il9isGdgjI5mDZxc201
         4p3KTAbjUlTzAa8hivwZ4Kd0dznKhmYN7G4BKe70GDJdcBGtndiH7PhStsOVY/z+ilgA
         tEuDWGwsgj4qHVflK4o0dFLVfVOJEB8MtG/aoDXDjTYT67TREeRfsYwEsahONDFYTMIx
         ryOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOwrugyVmITJPwQaLsZeyi/QPDrmFPoHdonmKX+YZApNEJHQ+aHo8kmZvWg2ty9STOKcLoFqTDtuQP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk6CTsfBhUoi+ioOzsMp6/V+4h4hFVLQBWyC4x+V9BRJYV31iJ
	c8uRsNQAVuSGq4B/Gm7e0vJ1R4q6brfMTupAv44juTHGafUef0ruV9Ri4kZleMY=
X-Gm-Gg: ASbGncvtx11LxVUKjvGVabtNDSD6x+WxKsV+ielR0I123bF4npSQFHrs8AIxGMz43IB
	FPV6LXkRsvJGcIXSYDw+KIw7SIilulGb91iPnrTaChLK0ej+cuIXZSNAexQp0OT+IUuAMKZHR83
	KjHAIT+EEao4Olo1pco1/jM0sXFP50o9YoVfJdeE0tWgJYlT8XDzmH6D1ErzHd0Srssn8HuhaM7
	gKQzumsy78Q1mtJWHH7O/Rsm/nl2sk37D+5QavlbG9EoLrEz3gLaXHP7GXIGD6jyMWl7MqvSkov
	s6+PvuHqxIo9fHlHwoQ7emHxT49btM1UVH20cwH8B6pOzQ==
X-Google-Smtp-Source: AGHT+IHjGH80PYnwy6f3N1dyTyMHBVS5+YcXkhAFmpCzIZW/6EjpsfvTuvDL5MsErchIS1MKSD73VQ==
X-Received: by 2002:a17:906:3097:b0:aa6:1c4b:9c5b with SMTP id a640c23a62f3a-aa61c4ba102mr240616066b.7.1733397594442;
        Thu, 05 Dec 2024 03:19:54 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:19:54 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 08/20] arm64: dts: imx8mp: add anatop clocks
Date: Thu,  5 Dec 2024 12:17:43 +0100
Message-ID: <20241205111939.1796244-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
References: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index e0d3b8cba221..0b928e173f29 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -709,6 +709,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


