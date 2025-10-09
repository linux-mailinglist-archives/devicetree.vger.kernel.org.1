Return-Path: <devicetree+bounces-225008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2813BC98AE
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:36:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 559C53A924A
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88D12EBDFB;
	Thu,  9 Oct 2025 14:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="VM/FMDKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E68E2EAB99
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020531; cv=none; b=bt3BB2hQKu8dx9mQ7OJZY4JwntoBdey85AQ/KfEi5GYyjwRru/26Q6Uw2OJC+8ZTrubZM67wI1nzbyFLYlMNNCER4c28SQHRDzn/uyA8Alc80td0GTlSnJuMgyA79eYPG/SjqF0YeLgNwJ5/k+4RA8baOSBTnrc+d5yjR0mIjpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020531; c=relaxed/simple;
	bh=Jy71v+0d6B2d6GEOh/dwMzbOK+DdGqIZvEENLkmwzE8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ge8vjTdtl904OuvqwZ4RbvQOOBqF2v+r1XVyE7kD2fn5oGOE/zNM8L+1dT5EtvNOywo14z4QzK9+UV/aZ9Ns/U56a0paXXBAmZzsc3QzcNg1sJWcWoTOMjXnPPUkyE+he/8MdY689OfxUnIaLEC83MihUGY5wZsTJQjCtC1i5Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=VM/FMDKA; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b50645ecfbbso213900066b.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760020527; x=1760625327; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QB2QRRZuQ5A6a96wgJEcHWWoFDLiNw+AQa4nUZlLV88=;
        b=VM/FMDKAS68ARpBSkZCEyilYKythke2eYmYsQG+HjhdvrmfOz4Iwa85OFBIRq597Zk
         tbnjI25RYzZJuftHjJunBHmttKxgLz1VQXIhMyjjgK0lyxfta0zqHSeHVVz1Npw6GTy/
         aLsNDmiDVocOfxg1d87+II1jyg2lGgm/Jiyh+1ycE/qG4XUCjZf36A5op6pp+uxiV6aT
         QkBsDpxKpDaZyyVzgaHXj+FbuyJ/Ww5x4Ar8j+2lxNhxiML8ywhK3WPMhe5gSsT49KOh
         L+Q7ktgS9lhiELcQPXiZJmFr6PgkFn4vHdiJ0ZOHyVxGx2hMkNY6xjvn4P3kkh5vYzmt
         Amig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020527; x=1760625327;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QB2QRRZuQ5A6a96wgJEcHWWoFDLiNw+AQa4nUZlLV88=;
        b=KUmGI8HoTY5WOwo93uQHFgsKIvFYKXYoTELftRqkHE0wfKhE5mSfQfaGmMYTYIRrvH
         sVBLZRk8dy9M8xAnmFrPJDHK35tLu77niZ0AyWal0EfHlD6BMAF5eE88OXiVyTN+2tG0
         utxCZnEEX0ikH8V4Q88FlQOyHo/VHbeFoGW67AQiuar2snUcPJPxiAYk4wtmXCOWYIw9
         8fttw6JZu8YPetiMgcbcpmVJ0/R4Bs7PTdJCibnDUR1tfa7e1z/I5K2KEaOAluh5k85Q
         8G3mIP519iyZ4HcclE18cLa+qg7TXziDPW5HhsaZaLNFe1wxTOYzCN0YYEcqhg2lNqCx
         Cj8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVxKJy8Yk2KusZ5cY3Icw7xjf7w1AVAhhwQyXq3sm4wHqhnea8e7wk8WFFk7YU6StHhO3Ig3ZDubNuG@vger.kernel.org
X-Gm-Message-State: AOJu0YzOOBpuDOuqhZ9MHZn9v1olnvGpsizQuHe6W9kxJS41cDwH8k1b
	7OPU9CT7xMtM/tlVR9BzDY57Y/kTinEtmOHG1HuoeIBwTPkIqvjuCEUvT0ZhzV1Hiso=
X-Gm-Gg: ASbGncv5wPxKToCi3sYlepP1X3fqtzxi7WS0O/ZVSXwNF/GoREetJ10XRv08Ra8Tu+v
	YmqdKm30cqkph51maD1lcdrlHIjdNpqUmiPVCaAu/adJRHyzBP+aaxNoSfM6zxmwthBjJk9JbLZ
	vq2tKTrdYA1DZLumYOv7eTpCWIY98vFsTW7AE7OHkxTX0miUZKc2o5SiTny4JW765OriF7tAW4y
	5W+kkLVGM4IIIir32ez72vlIoXcJSAAuYsTWapIndCrCNAegaL3qrv70rqYY+dTsDbaOYJfP+Hp
	9FxM1JiGGlkD1xQJWRcUb1ZuwcrhXMzOMtt/DNFObhrMY1jr047KiVta7UioLOd3SWuk3RNHShA
	pFBgB+Ry9s1rGjoIqKVsHIamPsHtx9mYFcZUjOm+ALjNr/4FPVaOZV2XPtK6Y/WYfAApTdGAaTB
	TmnoEU2DIkxVBpdvaix+d+3O7U+bZQ
X-Google-Smtp-Source: AGHT+IGx5wNpD8caYwaIatPc3xH78PwlqMe1Cfb9o3uO4sNphikE37aFxo8LiJSszoImSUjRwe+rWA==
X-Received: by 2002:a17:907:c02:b0:b2b:5b40:1cb1 with SMTP id a640c23a62f3a-b50a6eae24amr768399566b.0.1760020527267;
        Thu, 09 Oct 2025 07:35:27 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486606dc84sm1885797166b.45.2025.10.09.07.35.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:35:26 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 09 Oct 2025 16:35:10 +0200
Subject: [PATCH v2 4/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Add UW cam
 actuator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-dw9800-driver-v2-4-3c33ccd1d741@fairphone.com>
References: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
In-Reply-To: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760020524; l=971;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=Jy71v+0d6B2d6GEOh/dwMzbOK+DdGqIZvEENLkmwzE8=;
 b=wDpwODh4KULf0bqeFOvreRjzZlpizQmCgQ8rWWy+MoqVG+AQaJAeJuz8sjgNKDeRBXMfdUBVL
 1go8fz1bjdFAR5eszs8SFlVfEJcUl/rJ8keRqbVEEq7goOo8jyf1dk5
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add a node for the Dongwoon DW9800K actuator, used for focus of the
ultra-wide camera sensor.

Tested-by: Luca Weiss <luca.weiss@fairphone.com>
Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 2dd2c452592aa6b0ac826f19eb9cb1a8b90cee47..0e86cd5ff527925c7dba15c4e0ee5fc409fe4ce6 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -627,6 +627,15 @@ eeprom@50 {
 };
 
 &cci0_i2c1 {
+	camera_imx858_dw9800k: actuator@e {
+		compatible = "dongwoon,dw9800k";
+		reg = <0x0e>;
+		vdd-supply = <&vreg_afvdd_2p8>;
+
+		dongwoon,sac-mode = <1>;
+		dongwoon,vcm-prescale = <16>;
+	};
+
 	/* IMX858 @ 29 */
 
 	eeprom@54 {

-- 
2.43.0


