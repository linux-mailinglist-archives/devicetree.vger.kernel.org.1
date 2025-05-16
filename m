Return-Path: <devicetree+bounces-177820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D163AB9461
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:08:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FA2F503AE5
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBDEF25DD12;
	Fri, 16 May 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="fSlZEVLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515E225D203
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364753; cv=none; b=g3V30XYWQxlfRg6hIXhIkIodl0SehtN9hRLAAu4RVz3y+fZHBvR95k4l636UdXXgO75JIhOLzL0sdru0AWpiYJW7PGPb6NQ9WsX7KR2Y1WOE/ejdlW+M/bPSaQ05TDGN8h7qTkNskpOI+BrCozWY2IVYquf9E4+HCcr0Q4f3SAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364753; c=relaxed/simple;
	bh=WuywEUgD6lUv/g4w4ipAXm3mdMwnrw6kFyN1PZoHZqs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uS3rDhJvBE94Arl0E2QnraUjAsmguy8qa0Mtj3xAclT2Bw4Liib8ESUUgzPUvbP7S8dfbzhnfuDFbTE26FJcot9BgUVYg4h5/U+PTmKztrwNr0K8+j9zWExOkDpCRQeCOpuhBNehFI6vJYWliWtr6UjZY590RAnMsP7AHzRWxhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=fSlZEVLa; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-22e331215dbso20328275ad.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364751; x=1747969551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z7pOHXSYxsUxaKbFAq5uwqDuSfbReGsHyjruZTLt0/4=;
        b=fSlZEVLaS38f52GTEGqV7csENO+rvA58jM8hwYn6EvNZ0Y+QK2hKFZz18f8Y4Vfe6s
         1NAGeeXudnoykcaBFee+VLAVIJYu5IbNWUOT6LL6MmliL2lr9LiXmELfL4nJSgUmC+hA
         4aUkxe/k12F6lpUm0nUSM/f05AVHjWzHZ9IKAwSe/0kNV43UyakhEyraqEfqZFl7u5Oq
         Ye3MkhEpdRmIndV2TBmLjQWXWbRHfWolLS7jb+UM+MocS7oaIxYOcH4VM1mK47seO13X
         YX4Q+4tqPWOnqAeisPxYsmvs+bSmEaR7Vnfkh+ZilEKKhtdLmvO6uoD8gKV373wMTNCi
         DEGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364751; x=1747969551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z7pOHXSYxsUxaKbFAq5uwqDuSfbReGsHyjruZTLt0/4=;
        b=OaQ2DWaHFvUxQsw+CptfAZCF8TheAXoyl37f5Rqiev7AFc5sVnDwtSfkqOyCyIs25A
         blCcBnZ2mARa3yBJSpprkt3iO+AeZ5GUDwLH8ycTy0TJEE/rDcMkSs80s65GYBr8za2x
         cujKv3vbxHcF/HRndRuZpV1qTFOfyo56hncZqkRrOCAeAkQvoogZW6Kv+7XE7sYQDVZ8
         ieij7BwO+LtV6k20gh9dNJ8qwRWolhNeOKk8eMOwI/ap9ZqyWX/pNSDpTuTR3WlU630j
         O+gkSD6UYACjs8f0sfOsYViKJHYrVGXSHgtYiePzAlNztryCfOAl4JDfF8YVfFDEDr2b
         eM5g==
X-Forwarded-Encrypted: i=1; AJvYcCVOqSffpD/OJDkLhPAUhbFhXjm9cRkiPp21kBpjCW/zqMowJxc7Fj7yXi9/Ae2BtwjCygO2k/qGwkXq@vger.kernel.org
X-Gm-Message-State: AOJu0YxgDiKcWaKWTD2UFETgRAuBEKDg9piZhj0WVmj9jJAYRUOtLrBn
	zgsn6+QhNLCNOPT3RyKrx9/yyhFyoqaIy+gTFrXgv8D2XqKv3I31EG2wKdBiRCDn9hs=
X-Gm-Gg: ASbGncteg69BuT88KgrqJ1X2QaDhU8TR3uY7O197bSwrxVcwqI4bOAy0/8qx3TODsP3
	Hzppo1l1VTf6RsvFXPCQAwWe1OSp/U3KWuLTC5LwxCgfzJZGWY/ViCA6NO1VLccdQN0bG4UmCV0
	UBO6/rvVykUy8/1pqhdsMuDgMrL6Th+XT/JsMt41P6pubUWmz858LPb6sVUrezbcBVftU3k7UKt
	3MmEDkyJeHtCuZvS3wSaAcUsHvkE/sSTXN1B7VIAhAnaFCOzioi+pUMpxhNF9l3+mGN0z5JpYr2
	SetKAmucfyHuwSgpcg+SJdCkq5Uz8KAtHQciai0LB18wnjbEj2lhZLaK3juzANz6942usaCjSin
	0BEdyjoTvDwk=
X-Google-Smtp-Source: AGHT+IGSGQ1o4EfU6jvKJyK0KdV9naUkb1bONkc5+6ZtJl7+1gHYypaxCkXBkgWg6FreBtNlhcplKg==
X-Received: by 2002:a17:902:ccca:b0:221:751f:cfbe with SMTP id d9443c01a7336-231d4e64450mr21068285ad.19.1747364751569;
        Thu, 15 May 2025 20:05:51 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.48
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:50 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 05/12] dt-bindings: riscv: Add xsfvfnrclipxfqf ISA extension description
Date: Fri, 16 May 2025 11:03:03 +0800
Message-Id: <20250516030310.16950-6-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250516030310.16950-1-cyan.yang@sifive.com>
References: <20250516030310.16950-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "xsfvfnrclipxfqf" ISA extension which is provided by SiFive for
FP32-to-int8 ranged clip instructions support.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index d36e7c68d69a..be203df29eb8 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -675,6 +675,12 @@ properties:
             See more details in
             https://www.sifive.com/document-file/sifive-int8-matrix-multiplication-extensions-specification
 
+        - const: xsfvfnrclipxfqf
+          description:
+            SiFive FP32-to-int8 Ranged Clip Instructions Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/fp32-to-int8-ranged-clip-instructions
+
         # T-HEAD
         - const: xtheadvector
           description:
-- 
2.39.5 (Apple Git-154)


