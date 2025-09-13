Return-Path: <devicetree+bounces-216830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B518B56333
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14E8858099B
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 21:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BAD92874E4;
	Sat, 13 Sep 2025 21:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MB+hpxMA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F46286880
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 21:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798503; cv=none; b=sHJsZlrDa/G24IDPRZHONKyWi65qVaCZk55/Wdia9qpPRgbB1JQ+Wijzv40Yctu4bwE5mdwXxg2DRPTXcSl3Ujm79VD7ufsjmdN9rNqSd8hPb20BKPW7kl0HPZF9618UuQN/R6oeHXVyiPsx42EkvRcIcMqMjxWwiC+0XRvpkuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798503; c=relaxed/simple;
	bh=VK1bOHyM4dk3WD+AO5ukhkRiS3HMe+PUonIyaKPLvqU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pY8VD+c70Ph1aeCP11RP2nw58xIzSxeKe30RLYXjb3a3mOgtV9TpxIZ1fk3yhvjMbSjyJofbJcdmsquWzYFTynC1/UBB4fRy5Vy/HxE0V+K+xDoQjwf/n+H6SidabIto0r+j6ANokCr5y9ovbzFxD7MTmFyo7l4r8qBBJa+ko58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MB+hpxMA; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3e537dc30f7so1674886f8f.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 14:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757798500; x=1758403300; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cpVtTH4bHBYzIxiNrmk9dugn8tPCGekUmbNjeMCfqOI=;
        b=MB+hpxMAgYbvm43aiXxBRzlWD+2kIJ+JexrcqExZk+3odXkn8Mx5cUjahGyyOv1Hya
         ptmtCokREHC6oaRngJBC6vYwhhTUenhCqJuOW+O3msFRjmBUxuNPPdyzEhYYIhqI5Ebp
         zD2PH/J9dRn/u+jlAm/Tf/0/Zmca8OlQWSeEgnqNhvZIUBudCCZIlKCLQGGkhHvfOxyK
         RgNu93EFzY1XjZnYATLlNz8eeNpegrBg3eLqtt6pavOOpHL/i74IlhV0BQp1hiaI5m29
         lZ9Hft1AHeZ1foZT7b97+OGm6oeH4a0a8Rb6fqe9WAp4dRPKdV/FrzhNDjZcWh4KsWUg
         bbKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757798500; x=1758403300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cpVtTH4bHBYzIxiNrmk9dugn8tPCGekUmbNjeMCfqOI=;
        b=gzVgmCT/O1lshCKduKqrZHezf4P8zkHmVnfdNW/GGQGQ7fXiA0Dyqy22dCBKx36DVI
         3aHBHwcQslsx/+Sv81cdGcujqXvlHzOa+M250pZj0w+FMOy7lhXCqh3jm4FReX2URR6W
         L+loTtkLqBTQ36w5AzXm35bXi6iWR7HdMmeu9vKPgWtBFnByLB/5sz7lAhssMDsihVW/
         uVdb8rOeSyM2G5kfXZ6wXmTm25YfwgYE9zFeJk6nQhWvZUZz6iuO/EhXsS18hzgiowb/
         j70eRd1R4EiHAOZxyZqTjTJktoHK/4JFoT/AMz+o4U5Xs/3maRUtPDcDDJpWV/cbkTE7
         adSw==
X-Forwarded-Encrypted: i=1; AJvYcCVHF+A1zXSgyc3IF1zkrwVGzCQOOzwzcWIxmkq921jBLNhdlB33rpZKc3lhSQOZRL6eHg6hd4laqXdq@vger.kernel.org
X-Gm-Message-State: AOJu0YxwQWrqi1lE7t6AaLVUqK+//mEdnNHi6uaFZPTRZccV2VEmYtyo
	tUEJ0d2m1btQf5IBoA58OejKH47JviuRX6aEGS9y1KnI8ykEl5K/UdN0
X-Gm-Gg: ASbGncslbm7Axt+yMsMTDVPszwTEeLhNgoUqlhettB93tr70RjgRHUdo9wkeqmICRTr
	yJdwWZPrtd4+LY33q4Jendqt3dgAGDA+oEGxdxXHxZTwumi7JUF7ue2UQORy5SeRZSn4L68kMRX
	3zo7k4hts4w3rQaFYfbjRpPUbf4lFC79san4mq95TzrpHl6uF024QvwhKlrS8M7OnoiSUlVs9fs
	FnKxNCVIaUo6IKtLoUfouTpyiLKvVQL3+xS6oh5ry9UxT2FUoRrztPhQkr5KM+T1V8GLbN78tCC
	fFH045dhlzUM8bO2Lo3/izQl/j8PrQnSOnaxYysnASFd9SXQL4X/cKHtzDrtEvu1pKJ37Yqk/hF
	3ifbeW/SehFFwkeOXjCzWjjfNPFBAJQ7L2KQcAi8PziQlQOC6fxEN
X-Google-Smtp-Source: AGHT+IGQbeLuYMGr75Uv+t8fAINg0m32Go0SXPJ3x4GDoXlXLUXrQPT9iD6lPWsbNXLMr0iYh+onNA==
X-Received: by 2002:a5d:4b02:0:b0:3e7:f044:2860 with SMTP id ffacd0b85a97d-3e7f0442884mr3036887f8f.7.1757798499546;
        Sat, 13 Sep 2025 14:21:39 -0700 (PDT)
Received: from Radijator.localdomain ([93.140.65.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd6absm11576842f8f.34.2025.09.13.14.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 14:21:37 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Date: Sat, 13 Sep 2025 23:21:09 +0200
Subject: [PATCH RESEND 7/9] arm64: dts: marvell: samsung,coreprimevelte:
 Drop some reserved memory
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250913-pxa1908-dts-v1-7-8120cdc969b8@dujemihanovic.xyz>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1150;
 i=duje@dujemihanovic.xyz; s=20240706; h=from:subject:message-id;
 bh=AOTuIRkZ7qxukusobcqK/hGoYlqb/lfC8O75aryw37k=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDBlHH/iHWezr+Ji3VcW4KOXAtNRPH1Ked6kyHNpyev0K7
 ZI7nzLXdZSyMIhxMciKKbLk/ne8xvtZZOv27GUGMHNYmUCGMHBxCsBEvrxn+J+u/WeDhUtCgUiZ
 Ae9bk/sdh/Ofbw7P8H+yrM/g89cdk28wMuxnMjui4BTafcogPXb64b3WtlFnE26FcS5d8PHaod6
 DmYwA
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03

From: Duje Mihanović <duje@dujemihanovic.xyz>

Most of the memory marked as reserved is actually usable. Delete its
reserved-memory nodes so that the memory can be used.

Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
 .../dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts  | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
index dc58b19ef5d11c69f52ea7804323fe2fb2257ca7..13a726d86e65ad836166325e0958a6ec3e6d022e 100644
--- a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
+++ b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
@@ -41,23 +41,6 @@ framebuffer@17000000 {
 			reg = <0 0x17000000 0 0x1800000>;
 			no-map;
 		};
-
-		gpu@9000000 {
-			reg = <0 0x9000000 0 0x1000000>;
-		};
-
-		/* Communications processor, aka modem */
-		cp@5000000 {
-			reg = <0 0x5000000 0 0x3000000>;
-		};
-
-		cm3@a000000 {
-			reg = <0 0xa000000 0 0x80000>;
-		};
-
-		seclog@8000000 {
-			reg = <0 0x8000000 0 0x100000>;
-		};
 	};
 
 	i2c-muic {

-- 
2.51.0


