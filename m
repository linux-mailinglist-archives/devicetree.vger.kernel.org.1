Return-Path: <devicetree+bounces-216832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F3FB56334
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA4E1AA010B
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 21:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6545428851C;
	Sat, 13 Sep 2025 21:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cxgy57rI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CFE32882BC
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 21:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798509; cv=none; b=BO768DXnfSpuiUBVdYu1z+q+RsOatCPHANbkD4xBFbi4XM8D07PCiM3DgaaZC6W7fxUzQCjVLHLroqgMwJuz0TaCLfW01IhOa2rPY/gJxwxCzRs2cpas3at++fdr76urha02TDj4Xx6Xc8Wa+Vdu6Cl2JxePRoBg5cmQIv1jeIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798509; c=relaxed/simple;
	bh=ztO90OA7SFIyJUVjK8nlNGn9JJ5eZOFp24N24RDbL0k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FZ/kPUXPFClxgLdIggO1cmNiF6VkAPnANHS7J4t66WVKyMjciW8CRnXkV7UGTlreUCJY+2NC3z/JMxwppITibP7r8xfW02iGXCSEQexZa6JUZgeOXwTbvwb/7GsewQyYFdkxwiJM2YIBcxMAZ/6NDE6W958d4TxQrr3960MQt84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cxgy57rI; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3e8ea11a325so652098f8f.1
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 14:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757798506; x=1758403306; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZyY3y/zfUMXFXUpRJ3OYxoXXX3m+tz9/9uTca/6/ofU=;
        b=Cxgy57rImp5bFwJj2/yRy9AvVSk3tbtaiHhfNmtWLVrLSiLh+ph5ydyddu6yHxAL7f
         0mIDUo0GHzDiCud31Wu7Zcy58Mr3gFPrqmqRjMSCz+S1iTqXKflV7aMYhNa/UBLHu1me
         U21eNq+rlTdVGsIG0tv5gJQuRIcU5Z7d4TSVNQhrHglBkscWmv1a9vNtRG9fr7TaJfjh
         Ve2SVt5KbFmE/ejJebBl6oYrRpFL6sLU5g1dZxgpu9+F6TdAfSGZMRqXdVqRytrhrZ46
         h7hDvH0GoZIlDfmnhi1DzXRLFeVj7eIBG1H6vTxv6sxLb8qpBejVfktsRtqanip7+2Ke
         KKRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757798506; x=1758403306;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZyY3y/zfUMXFXUpRJ3OYxoXXX3m+tz9/9uTca/6/ofU=;
        b=a/h3+kRZiSgXzvH9rTFOZP6UDFck2+DITjzTdL08cTlLbhsE7Z7Y3HeIb7QEVKIMks
         8c0vFcTBl52FH5mj+cnR+L9zfXTIlBtmAvAoSJ1S3rE6zTEevMm9jp8K/hOGnvPfXJxj
         RAx8vinR92IP7US9nsTGDY3ubWYYG2mugbziWQv9k6P0/0O+Fy1An9o4mTJchXSNXjvj
         gCgXJBDTTt71LNGnR5hNEJSTlNPYWojwh3czVmkyhcdvB+ARvbH5GQ90dpVlvVc16r2i
         01Hdb70YXO14i/4blTG+hzW4sRwdcakpBu7zaT8vUElNXQD1C1s0AsiMI6xt0oKzaOKj
         zmmw==
X-Forwarded-Encrypted: i=1; AJvYcCWphaOEQqOi0SWZ9SGiAm4z7p2CX08Ed7es1I7bKuqKaHkDsSLALkGmxGzeeQ2ji51ZtmBN4HWXNlFl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx14OLhkOsNeIJMvhVdOMEdeMwkdC5CzgTwoTZW5I4xQcnVTsjP
	s0XqSK1ZzmlUH0K7gPiEw82V7eUCdmw6vXq7Xedv/p6ivH7Y5oa1Ukwj
X-Gm-Gg: ASbGncso8voEHvsqAu0WGTt92Lpp89dJCx9wkIVaFEF1+KZkaflpGHpBtdIMKx9twJU
	s9EYfgKcTXXEiHXMCidTzqLrySPIkcA1b3cNLuZgDLkTiWCy3RXE9PFBHaMn120bBjkIpYt7FoC
	HOCc6Pc9sAjA/D7e9iayueQhIkm9gKxZEueqUnebTqgqSApuKqwaN8tMyizJCGz+6dLmdSGYVud
	dHHzROtf7c/RzzNK6agLWKZX/IDbGMuHsJPeIOJaJeHHOvMLISUdt2e3GizKx6jNDhigT1i1chG
	V7zOAxIjNtYPgeeXFrUp2rzGq3VH/HrvMf8BuMI0Gfyal9NO0D+93v+mqjz7cGYecVvUDw+cnSd
	nd8bQ8dKKWqTXOlpWzZBwNu58Q+X7qKG/0wQOVHaapKjF84lngdWj
X-Google-Smtp-Source: AGHT+IHeRMdY0v41y9UG/rCilo0nlRpcPpVfU8FDp0C5dtOoNsF92GLDoRzILM7KZ+pH0kQfdzQpNQ==
X-Received: by 2002:a05:6000:26cc:b0:3ce:f9b7:4db with SMTP id ffacd0b85a97d-3e765792bb7mr6581555f8f.24.1757798505977;
        Sat, 13 Sep 2025 14:21:45 -0700 (PDT)
Received: from Radijator.localdomain ([93.140.65.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd6absm11576842f8f.34.2025.09.13.14.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 14:21:44 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Date: Sat, 13 Sep 2025 23:21:11 +0200
Subject: [PATCH RESEND 9/9] arm64: dts: marvell: samsung,coreprimevelte:
 Add USB connector
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250913-pxa1908-dts-v1-9-8120cdc969b8@dujemihanovic.xyz>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=925; i=duje@dujemihanovic.xyz;
 s=20240706; h=from:subject:message-id;
 bh=UoJNCWjZnaplQXJr+hNjiSMuZ5Y1BK5iXqLcT0rH1m0=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDBlHH/i7ZUddnNcm6NX88ZzeqdVLopceTHzeyvbQ4GbZ5
 PvaH7PaOkpZGMS4GGTFFFly/zte4/0ssnV79jIDmDmsTCBDGLg4BWAiM30ZGT5cnORQud/ucF2i
 9XoPuY3MVi/3HmcWv8LkI6p32urQvgBGhgtbDuqdMI6cvOB80Kwj50vyGvdPfxFbJPvwiQpTp6v
 1H24A
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03

From: Duje Mihanović <duje@dujemihanovic.xyz>

Add a node for the micro-USB connector found on the board.

Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
 arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
index b3741389e2ae056714ff4235b972bc72b5560455..7c96eaa33b1ef0176811f3b4d915ce1a69cc690b 100644
--- a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
+++ b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
@@ -68,6 +68,12 @@ muic: extcon@14 {
 			reg = <0x14>;
 			interrupt-parent = <&gpio>;
 			interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
+
+			usb_con: connector {
+				compatible = "usb-b-connector";
+				label = "micro-USB";
+				type = "micro";
+			};
 		};
 	};
 

-- 
2.51.0


