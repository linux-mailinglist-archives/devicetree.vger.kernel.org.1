Return-Path: <devicetree+bounces-199103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB382B0F4D8
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 16:04:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3A5758112A
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A9D2F3C03;
	Wed, 23 Jul 2025 14:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bFJx3pyp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228922F2C51
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 14:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753279454; cv=none; b=B5lGnfJ2HkXcPMMEl6oqsaf+OIqA9CoSAHRMzhyWw2suFWD2JwZH3qPaglQm6uE9lDE3iwMJiCfxq+kT8fVdK1njfIzfjPwFlQuF0lvsnxBPxuvT2KCkby6b7of3JPDy0ORYov+bsZIXuQQkvBlOHAGJ6LaXdt1s5LDrv/K0/uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753279454; c=relaxed/simple;
	bh=K3gtrR3v4rNtKDNvKdClFiel5VFa8vRDNJ20QQ4SphA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lNDbTq8MgSiaZg7uFWgFT0nohXArdusF7CSzcnxsjMzVeGoDysW4ZuAKs3jyDZAuUB1k2HO+bpYxN9aQ8qdN9CFmqh7OUOofQYp7TIMfvo4YqaAP5LG5gtEIPop5tIuLZTyO8yHx2zA2oGN1faqUa2JAHHDConfq410TB14zolI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bFJx3pyp; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ae0b2ead33cso184381566b.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753279449; x=1753884249; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oXlxvRgPYFg9fM2x6/GWerbP72ZITNzRraeJqeDjrNA=;
        b=bFJx3pypXBbA2nTmNKryX3i3H65cON9v6hFI+t1tiSpmHuTO+m55vtTfy8B5h8Xrlr
         GZkjk/bqR2/KaEmRP6gVgUG/ONMi6reTbyzxloFlrMPc1gurmei11+Da27qBxOt1Wyxo
         3UakZ7CxK19ncJN3qJwRZEZYA0sFfVyGCkeZCvggc6q3Ma3KoWqAS/RN9eaRE0a996z7
         VTgOTHcwNpnnaLUwrHFLD34ZNGVjQzJtYMVoW+Ti4waD7wAwcBpLYYovAlSXhDd096wR
         ABhWQqy5W5iV5/b0hqVMbTePWoO3ezh1nyOcVj8y5UpqaAO2lRWUlRhaH7qoq2/VzeLp
         RBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753279449; x=1753884249;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oXlxvRgPYFg9fM2x6/GWerbP72ZITNzRraeJqeDjrNA=;
        b=e2RQSU1D7NKSF1r646H3eVEL0kc4xThFaul3j5pgvPq+LqrFGzh00rLOBCZ9IZV5hu
         eKL4arurbssIFY9Ded5FNkMpQvTROAvtcEvKEIx0wYZG33gDK82XcNoiMig26J2K9JQl
         +BTEslSNdwIVnPIw3uwfkycZeUTQ9SD4BS7PuwqgMw1+IHq7WTcWvXIqETOjtfMEGf4u
         zaJJyxWfoTH37WwRNKvllpV6N5M+Fo6U2Ckqir19wDhFC2xNK+eJXkfwSsq8BSAFQcxd
         4vqLK0fY50D+rFlU17mTKSQaCCRAQTjMfZ7wM3+WJXw1i4k3rfZGgL8gXuoUfmUEJAPw
         8x5A==
X-Forwarded-Encrypted: i=1; AJvYcCUbW5gip7ItyA+2YShMAITHjz1GbI8nd9YBotC7A1hcMSIUKVKSEzdg6XJiBwQjo3XG8troflSyui+H@vger.kernel.org
X-Gm-Message-State: AOJu0YyUS7MmjKxmyAK+dIP//OPufomBxd/GvBBTTUuCsk/dn2pl1jRR
	gVnKqjHJCBDsYiQPSsbVG3Pp1w7QyOPaw+Gtldht+sfVQbybhErLN7A843HdClXFffQ=
X-Gm-Gg: ASbGncvJ427uyZdGjPZw6fPg/e5N+dC5zpf331879lOYsCJpMt82E12MXsCIk6j3bJ7
	xHv+xH2mk9cpfWyj4kPy35V6NXv4L+kXfOdE7g1Ss4qMIj/bnj6eAzOqSuz/5BJN+4fBy62uHre
	47J2IeGpcIXOnM7HTHyi6KZ6ScW/uuuUybN47pBNhEtQKZIHyQtpJ2VpRuaztZCfhGBVScJ5qCN
	3HHEGXZfQuhbrhNmty2m3bdoD0NwGow4TdRWh/hIG4YmEKGiJxlKeF+CKEtQ7u2bvakZ7Ol+dBL
	iHVetg4AruO9sFQbnaDJdB2PWARgof3yRzKal6+9Az8Xh+OZFlb+CUPyyWnFOnCA4BzWYjujum6
	UrrASnDjm+xzg4dX+uUHlRO+WWNpe6gJ1gNK0F1jY1HcstLRCdwrgmj4eCP8lPvqtz2bY
X-Google-Smtp-Source: AGHT+IGJGZmYrnT/1eIcps4zEtfRffsyNpErine6pa3/KnG4ZDXSEe2fO8WjG7ZAL71V+qvcwdTRmw==
X-Received: by 2002:a17:906:fe44:b0:ae6:f669:e196 with SMTP id a640c23a62f3a-af1523a8218mr765817466b.4.1753279447795;
        Wed, 23 Jul 2025 07:04:07 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c7d46ffsm1054830466b.42.2025.07.23.07.04.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 07:04:07 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 23 Jul 2025 16:03:39 +0200
Subject: [PATCH v3 2/3] ASoC: dt-bindings: qcom,sm8250: Add Fairphone 4
 sound card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250723-fp4-usb-audio-offload-v3-2-6be84ed4fc39@fairphone.com>
References: <20250723-fp4-usb-audio-offload-v3-0-6be84ed4fc39@fairphone.com>
In-Reply-To: <20250723-fp4-usb-audio-offload-v3-0-6be84ed4fc39@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753279445; l=981;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=K3gtrR3v4rNtKDNvKdClFiel5VFa8vRDNJ20QQ4SphA=;
 b=RxD1ziU5OIOKTII+q9x4YZiC1mt53vPsRJbI7UT/HuvqOa++VYLlXajoqgtm3uE+N460AjULV
 Jr+0M5tBARMDwyyxoCrF3bCiebDBN2hZnab1ExzL1hturZGzNpOcxH4
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the bindings for the sound card on Fairphone 4 which uses the
older non-audioreach audio architecture.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 6b4a8dbdaf615b3254fcbe5f34dee512bf58fc96..5d3dbb6cb1ae89d9f0c376be580129e08a8126d1 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,sm8750-sndcard
           - const: qcom,sm8450-sndcard
       - enum:
+          - fairphone,fp4-sndcard
           - fairphone,fp5-sndcard
           - qcom,apq8096-sndcard
           - qcom,qcm6490-idp-sndcard

-- 
2.50.1


