Return-Path: <devicetree+bounces-237617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C65A9C525CE
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BBD371889544
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 285F232C921;
	Wed, 12 Nov 2025 13:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="u/WG/Vyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E8E31BCAB
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762952548; cv=none; b=bEvwoAmlH0zjG4HRDu4s84PquQkN0HRDFUVeFmMxw7T1Y2bDjZPZyWzDWf2U66trLhl6hFcMHCfcSwpeTqv+APX/ictRO633nvH4x7m1cX1kgG5uxaEQ41w32iufLM6ojHiKn50/6a/V6rqkut1R8/a1bR+4oLzkXFtCaeyLh8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762952548; c=relaxed/simple;
	bh=YGC+k0tk44NwbRkZMJ0Yk/EvTJZmov5Tk93vBGrfByI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=V19CoUGbqS79MaKW8TAuGPpsZm8P3vnAVaRcS/RjcPd8dcvU5+GJni1YzhKGadzzbIdLSSf4KJZlE47xscgUJN29E69ImpG6jjz7qFSUQKzRxhLiUdbrO06kguYS78drDtzhIcbAIrgS9q3dc8RXuEh1Q0B66OTlcaRf4oc9b5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=u/WG/Vyr; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-880499b2bc7so6731736d6.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 05:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1762952545; x=1763557345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wiC6a6GdtF1gAjMY65zmuS3i8efcnY5DhFQLWpigTpg=;
        b=u/WG/VyrzV6bznnNsPuNspwU17XECqH0bOZo8CJHLZtfH7e9gGeBjU5+l+doWr2Os0
         kzs95YMj+i5dwh7LFjOFI/kESEIEj5WzsFGxUW+6H19MfKRzhJvUAtz0kUupklHW21/K
         PWn+IHXo+cbB05YuJgErcjAZ6Uv73PR8pzycgHypWGGkIClYNAC4AIMZK2Iash1vMeTp
         c+4sjz5qegHXgLqkWMYnlPm54UieAwxbEQSBcESuj2V+UezrthlKZBVZhcSyEaethfIo
         iNwrPTwO0l42OMxMjwf/Ny0jeM+Y4KB+0YL5+N1PhrD5Oh6hmSspmazC0iYNGl0CgYCt
         7OwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762952545; x=1763557345;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wiC6a6GdtF1gAjMY65zmuS3i8efcnY5DhFQLWpigTpg=;
        b=MfG2EMsIwHC6MdlsBckvgypVLgO3HeTK8AOiOG+K9VpGM/IgjmVH+7xBF2yYtpY3dk
         GY5enf41rg6ZZ2SyAgy4HkyD9Svhn4Hvw5sZ39UM1FL7MxvoBac0Q+3y9jhSC/szHcyZ
         zYi5Sm7Kgh5RtauuvKCHmNnnIy76ux+mjRWzQW26q4OdT/x90I8fMPqDZwNGAH4UmdWT
         XHrPEX9g37HoWlb33U/JTZdWWDHbvPUL2bFyKyBX9WtpzsgTKX3j4coUsPp58s+SFZ+u
         cUZJiUUOri7sLicJgPFoJ+fnNbyFspm5liLxX8kMFxGENwtdrSGwXcWRcVVdWnqhpycZ
         BY2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWdDHYzorNhJPcm2eMnKXvnDjpL25LxoLcTIs7ruc/bNvL8oKqzBq9rhJtmM9KrBgzpOdqfTr5hJiZf@vger.kernel.org
X-Gm-Message-State: AOJu0YwWeWxzA40ucPlcgRFJqPXQtK4qmALQATT2lEvwGJy0p5p0fjb/
	bA72Mm/VKBZoVVCp00GJ2kwjAVNuX7+O9pfn6EjVMisG1DJaE+D3dhkIIn+oIsErgPE=
X-Gm-Gg: ASbGnctlEoQJEU1gihtHYf8/RhBIxDYl3Ihv0NAwPo2Xl0TJ2JyPa+XTdqKlBTgeweb
	jFMw3uUhqc4+JYV8WC4m+z9pbv1mBNAYYL9eGPB0kD5Trlju8CxMledumo22FV14RlEohFvvKXj
	iwrroz2oFM1cWBGX0xuR5bx4vqOfFtZmAUQ0bXwroEAADpnKPRpg7vz5jlYuNMtP9kGwYTMshwl
	B+cdjdE4rs94ErG3TIPw2V3+6Qe4JdHO78GdPfUtqv1l8oCgHK46NapwTtSwmIJ7jBpRwBR6Jvq
	NVgYPsC0JdL7tnhpaBmXb1YM6cKIEHMccaTsSuBiWS3WR/lrExMAh5H9Lv6Gr9/hQctzXb1/iy7
	/d4THV3hcVhVPJ+lYII724JFraudrjfOp2BukUbC6VNOytb/0UwUGE0Hnc21Hyz9YF6HzVlQ9Gw
	KMVOiCO7IqRibUwwE4wgq/l1nqIsgSfOk=
X-Google-Smtp-Source: AGHT+IFJh7J4bnE3VnVwlrGLXKscLfsnOg+NThjXCk7Mr3nxJJ9ceXnQi59SgZG4nVptSKeRj4ZhRw==
X-Received: by 2002:a05:6214:f03:b0:87c:2270:2b37 with SMTP id 6a1803df08f44-88271a3cdd3mr41231576d6.58.1762952543164;
        Wed, 12 Nov 2025 05:02:23 -0800 (PST)
Received: from fedora (cpezg-94-253-146-68-cbl.xnet.hr. [94.253.146.68])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-88238b7499esm91362126d6.41.2025.11.12.05.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 05:02:22 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: srini@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	horatiu.vultur@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 1/2] dt-bindings: nvmem: lan9662-otpc: Add LAN969x series
Date: Wed, 12 Nov 2025 14:01:59 +0100
Message-ID: <20251112130213.842337-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Unlike LAN966x series which has 8K of OTP space, LAN969x series has 16K of
OTP space, so document the compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Drop individual SoC models since they all use the same HW

 .../devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
index f97c6beb4766..c03e96afe564 100644
--- a/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
+++ b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
@@ -25,6 +25,7 @@ properties:
           - const: microchip,lan9662-otpc
       - enum:
           - microchip,lan9662-otpc
+          - microchip,lan9691-otpc
 
   reg:
     maxItems: 1
-- 
2.51.1


