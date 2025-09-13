Return-Path: <devicetree+bounces-216827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDB2B5632B
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:22:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DCBAA072B8
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 21:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7918A285C8A;
	Sat, 13 Sep 2025 21:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Drz5Xxv/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60283284B25
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 21:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798497; cv=none; b=dD3mWXmGZQ0Qobud+Pq/gPLhVCvBWwQaeYuc9J6uIfUQMIcwp3LLhc+IRoPyL7JJyEtFkBDCICpuJGOKXPenHHf5RVbL0MBTXJ0PWYJm/+63HmJhZ1G/BidK+Uo0PELQbH0DRJ9w9zlAysqKDfB+jwgR5TJ7OC0lSPq5jHU4KGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798497; c=relaxed/simple;
	bh=xJIw1bAGNCKENGyl7Smzyc8MsigWND1otejzP0Dgs0g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ELWFQwNGa7GyJFjjXkZbltit2ZoiSXiAVAR4/q0h7id4LUk/FjDlZdDFlrBTjKkKmvf0nelY5HN68ic9gIG7fG0pJNTjoxRWdMm9ElMWgUgSOA8PKhZeRgHHMCo9ov3bpyEIJxZ15UzUVhcs1H8MWk51LpJHyjMS8JMg9lIbXxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Drz5Xxv/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45dd505a1dfso24397125e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 14:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757798493; x=1758403293; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V3eQWTLa8qf+9saHeA5hbj7RQD5lII0deY9ii6lAlos=;
        b=Drz5Xxv/BnnMv3jLlTbBuSXPKfOokiDmndSmHCSTk8jIFRUD++SuYGrhzB7gwZ0AJ8
         s0g9uY8kHpoM6xTsR6K5etO/bueVFHMExpXkU4fuFCEcKlz9Uqi6aDP7JjotO+oBxn/a
         u/tb+b2a8I+z+COf8iKqlHjpo2vwe2Pt1e45WFtLR2WCpu7elYF+ZXlw+OXL/n30Dzkl
         4rNm1mDx1piXImQpVDqKfsFmoKsgDd1imIYnrdryUAG6+443U/WckibvYwqzCoPL5Wqd
         VM9NdQpGAlbxeyANVCboLvq2y1NPespdttxkJTvvvBygWCWolAROSIcd9L18TCnb/YWV
         aNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757798493; x=1758403293;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V3eQWTLa8qf+9saHeA5hbj7RQD5lII0deY9ii6lAlos=;
        b=Livwmjw8Xrn45MeDw0esaMSrJLXxTbcYhcpNgyKS27qj6qxSMs8GBwiiAJ5Lb3GQHD
         ExEvTHHSgXGESeTbLCbazjeBcW5SKVzb1fttj0smgR/nrZsxPvP1g4a+nbKKNG/kXV1Q
         npdECtM5IEWzs3FDJ6Ylj7InjsSy0kLbXvRBzLL41ontJ5m/AqOZssq5KFT5fru5OeHd
         4kWLbY5DIbmxANK73dByT+o0kftxQqKHfk1CLKTuzjrzRaNVTIhs2AiuukEp5hKW4lZj
         /7EbraGk/6s/u0Lnr8sD6I6q7FIPxJes+q/T1X51NegEIloxLo08j7CBjnNborvglE2+
         dOFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkLBRc/1DXfTSppCCaXN0yTXX3oPXaKpoxQL8VZ4eBb23iu79QXTq0Se6wohdgxdkgDw/RPfY01crg@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz01iOY+QJ5zMI2dUMfxycHIYIFjsSrloAK/q9o0AL63lNfAN5
	wy3dLYY46KVLdoRwzGHF0Atv3AViLX1hsCV4CqhYLsv456yP4j7s6O62
X-Gm-Gg: ASbGncsTsgPgz5QWml3cDs+F9u7c9E5bcw+dDTPUk+OxbJ+9R+x1gGyUWpyjD6qXhya
	PiMD7VvVmp/4pMIJds5Q8dkly+NyjzMD2zXuYN1OGV9sV3Qcos8vD4VUAb8UoUD+h+sS6zU2PEW
	LMpQwLa/uVZnhH+CWpDRVM54zmq47e/36V1Az5/4GbGHdGUpygXL2A7QuRabKaCaKDt0sfDTcDr
	rPCgZNyjPjZoApiF6R9+uLFpsUwZDJ6ZFU7U04h3PiUrsA8LONgFxkvV2A1RfzHRufqf7iTqO9g
	wzecJi4tdYavSwmp+okwMKfiMf9Aogjd0Tr3/No8QoDtIwdEuhROns5QTReKzDoliUb5gaDc6KG
	7nwHw9WMm2nCKFCpVqgCdf7M5PQksrKBwaGsrCsDym0Qg5ddG/v8V
X-Google-Smtp-Source: AGHT+IHr8CiMYGUEeTiKYHRRsxQhLO6JbPn2EeOKGS5jqS2eJuGZcBJj8fDG+9B8XtOlMfD63jhKQA==
X-Received: by 2002:a05:6000:250f:b0:3da:936b:95cf with SMTP id ffacd0b85a97d-3e7657a93b4mr7806706f8f.28.1757798492558;
        Sat, 13 Sep 2025 14:21:32 -0700 (PDT)
Received: from Radijator.localdomain ([93.140.65.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd6absm11576842f8f.34.2025.09.13.14.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 14:21:31 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Date: Sat, 13 Sep 2025 23:21:06 +0200
Subject: [PATCH RESEND 4/9] arm64: dts: marvell: pxa1908: Add PWMs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250913-pxa1908-dts-v1-4-8120cdc969b8@dujemihanovic.xyz>
References: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
In-Reply-To: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
 Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Karel Balej <balejk@matfyz.cz>, David Wronek <david@mainlining.org>, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1513;
 i=duje@dujemihanovic.xyz; s=20240706; h=from:subject:message-id;
 bh=6njTuJu0UcIU1bHrsjDWk5PZ/WvBeIzNhePT57xOd78=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDBlHH/j/9Wlu0tA/HS04WXhf9ekl35iYE3dVPO9++9LNc
 NlCRpaKjlIWBjEuBlkxRZbc/47XeD+LbN2evcwAZg4rE8gQBi5OAZjIgxOMDEs7c44qKm/1nBH6
 4K9KyWyzKecW3JK8+My2/cC297a8Z18x/BXezh6Wsd3N7UmozX/JKU4zAhUM+Qoyj+vnp7ZzeUs
 sZAAA
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03

From: Duje Mihanović <duje@dujemihanovic.xyz>

The SoC has 4 onboard PWMs. Add a node for each of them.

Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
 arch/arm64/boot/dts/marvell/mmp/pxa1908.dtsi | 32 ++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/mmp/pxa1908.dtsi b/arch/arm64/boot/dts/marvell/mmp/pxa1908.dtsi
index cf2b9109688ce560eec8a1397251ead68d78a239..61498fd75d1dcaf0d068943c1ac14d3e5a7ca9ae 100644
--- a/arch/arm64/boot/dts/marvell/mmp/pxa1908.dtsi
+++ b/arch/arm64/boot/dts/marvell/mmp/pxa1908.dtsi
@@ -195,6 +195,38 @@ gpio@100 {
 				};
 			};
 
+			pwm0: pwm@1a000 {
+				compatible = "marvell,pxa250-pwm";
+				reg = <0x1a000 0x10>;
+				clocks = <&apbc PXA1908_CLK_PWM0>;
+				#pwm-cells = <1>;
+				status = "disabled";
+			};
+
+			pwm1: pwm@1a400 {
+				compatible = "marvell,pxa250-pwm";
+				reg = <0x1a400 0x10>;
+				clocks = <&apbc PXA1908_CLK_PWM1>;
+				#pwm-cells = <1>;
+				status = "disabled";
+			};
+
+			pwm2: pwm@1a800 {
+				compatible = "marvell,pxa250-pwm";
+				reg = <0x1a800 0x10>;
+				clocks = <&apbc PXA1908_CLK_PWM2>;
+				#pwm-cells = <1>;
+				status = "disabled";
+			};
+
+			pwm3: pwm@1ac00 {
+				compatible = "marvell,pxa250-pwm";
+				reg = <0x1ac00 0x10>;
+				clocks = <&apbc PXA1908_CLK_PWM3>;
+				#pwm-cells = <1>;
+				status = "disabled";
+			};
+
 			pmx: pinmux@1e000 {
 				compatible = "marvell,pxa1908-padconf", "pinconf-single";
 				reg = <0x1e000 0x330>;

-- 
2.51.0


