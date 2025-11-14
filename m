Return-Path: <devicetree+bounces-238645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C04C5CE2A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:37:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E9833A91D7
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA2F3148B3;
	Fri, 14 Nov 2025 11:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cpvMrB9u";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="WeYD7r3C"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64952313E0C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763120221; cv=none; b=rKpJqYz1QSQb9kmYHMdS3qx3eMck69cO46cWszhI77pGy1lzuHkrQNeUXSGVbQDC6I7qcgNjJvlXDoGiSBtYBO4Gkt4ZynIASP21geSNS/1lmaCpemZgw+O5an9cJtmWFuqGaQx0sW26FoQIPke8kluLb0Lfe8oxZANrLRhSDSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763120221; c=relaxed/simple;
	bh=YOqQYfs4nuQmvSgoRMMjC8XlPFHhX1Q2biOJY+6ams8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=i2DYul+B72SSUwbhoYUUnN5kMc9XRHkReWdHBVxo94eNTfJNoM9zXkL+t80moLOy64tddRzufV/1+hWJhxSFpPNy5DfcICJi/1+/sBPaUjyteKKP9D4DBWoLdhNswjqboLCHYNUbYqKme0oCIs5uLEJhxoy7Xqoq/6Cb7bs49Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cpvMrB9u; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=WeYD7r3C; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763120219;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9P5NBgI6mcvaRko/BuipRaZLnCkAOoZG9QxXhEGpNPI=;
	b=cpvMrB9uOtnvezGl71IIiBuscG6XUv1nI3rpB6dlcqUlSg0WnWYbfVlQNDsai8oq8J4iu3
	PMqa3IhWzRThEbSuUMTJdX923CqpBMA1GVTgZpSyiOFjg/gn59/DynGHZ6dBb7VnuFK5zT
	1GXc4sNGZdUdi/Rrcl7R4X/E5oO7BHA=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-611-ths6A1zzMhyeDa6Zh_xAlg-1; Fri, 14 Nov 2025 06:36:56 -0500
X-MC-Unique: ths6A1zzMhyeDa6Zh_xAlg-1
X-Mimecast-MFC-AGG-ID: ths6A1zzMhyeDa6Zh_xAlg_1763120215
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-b73512c2c37so131413966b.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1763120215; x=1763725015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9P5NBgI6mcvaRko/BuipRaZLnCkAOoZG9QxXhEGpNPI=;
        b=WeYD7r3Cv6s4LjkJjyVdlJ82lO02vq9TC0OLxFH9V7t5gP1FcBSP1IgmOvypnN03vz
         JLY612NXC8CLaDfw5ex7IXibm/hryy7CQV5YZ9EVpDdRIgrU9xUrKy3YvJgEn4s7Uvbn
         Yv19mj/5AnTP0YW8Zwv6UeNtAxFA0VLvlxYjR6OfcmeL9a2GISB+ClLNO57RHWGkUCvV
         o6M+ZLXHQn8SS31DdtHAGIUJ/Ro76a1MW/6Y09v2J0m6cVX+NUrr5UHPDJwZl1Fo/rqU
         r3E4CCiRTaOaVj9gzzM9C7dFM8KbpaROryij+qYVg7r3BTLccqZUAxi8SY6jXy4iR2gu
         v6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763120215; x=1763725015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9P5NBgI6mcvaRko/BuipRaZLnCkAOoZG9QxXhEGpNPI=;
        b=TLNQhuaf1IHW/8tFaQvLGiZ4G2VHsdrUGCUoT7Dqw9/pcx+Ss4jwJo07KTMyWAiaTL
         9c79+59lEKDiQ4WqLwVndSYb6ChvUjJTSb/iNzQTRZ6DcTLNf8ekbp3AVtxTU/Z/ELiE
         CDMiZoYT5a+2gr1D587/BApVuppn7rTnqmatchIwqkSVHBjRUlCyBvDRGUm0Iadx51jG
         ExObNSBXKhwQ2qFBjHx0FGccHWln28cemWZGpZeQJrp07VUfanobe3JCqXIIXUWMYSwF
         UDb5vHxZCFjFsVJivBZZQpUowLiKF/Z+FA+qJY+6ikBGCxG+XYEPun964dgA9oWlymh1
         UCUA==
X-Forwarded-Encrypted: i=1; AJvYcCVrcpApSdf+bjBUhDs1dcncZa5T47gahvFQMkzDTuHY2hK5T+xHt7MLaGMzeiE8FyQ7+Jw9un/Ub/MW@vger.kernel.org
X-Gm-Message-State: AOJu0YyAJR2mThQZ5hSzbQrZBWhA0NAt6fV5OUZpAqvVA0YR4bIuVmsx
	Dr3smQTd9lfsqK1g+QoaTE8Ud9qxTOk4SS9XQY4wbgUjW88r7sjSSEsWiwg48V8xW6iNksgtm4K
	PRUTwBO9GhK/co8ruXoOP8i+4tR9G9kdcRJIFfejFl+dqSBO7tqaofdSD4TjeEFA=
X-Gm-Gg: ASbGnctbeL3JnvWfYgdWn1hnzsOzEVm7umETouj6JOud/bOvn+2JFVLPgmHQS/m8ta8
	ZabE5gOmdkAUyoiUGdWZn4XMQ/SLcQ6irCbTJZ1sCLqgE0kvXaAz3BU6xYR6e2310qfTyAFbl59
	pks95t05iFDRIF3bMWvcMmrTntWLMj7hfRdPCWO8HeBOzrU8jo/lnrj9p6VIdcZbh8qCTMSl1Kc
	2gRvMCfcpzjPHDAv9jdZ+5j/2ocSxTSsncm46dFBflste1F1fXJkUN9hH6HcZZpD2o8J5AWQsUF
	guzVB8Nve6FWBUb7f1QlKmRiehXPjhwqc/x6XemmDJh9winCjAeaYUnvIU5YOADyF+/QwieF64/
	iNazY278vh8l0aRfTa/Uk4sNZIZLUmvy3hlkg6T8pnEfgA1YK
X-Received: by 2002:a17:907:3f0a:b0:b71:b4a1:b29d with SMTP id a640c23a62f3a-b736796a40amr241980166b.64.1763120214725;
        Fri, 14 Nov 2025 03:36:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGncWVaDUYmrZnQ3gSDBk8EIFCOicAB84qOiU3rPLLBv82jXFCsdviDxrNodVDC2Ot4XM+Oyw==
X-Received: by 2002:a17:907:3f0a:b0:b71:b4a1:b29d with SMTP id a640c23a62f3a-b736796a40amr241977566b.64.1763120214298;
        Fri, 14 Nov 2025 03:36:54 -0800 (PST)
Received: from lbulwahn-thinkpadx1carbongen12.rmtde.csb ([2a02:810d:7e01:ef00:1622:5a48:afdc:799f])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad41d9sm371942366b.27.2025.11.14.03.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:36:53 -0800 (PST)
From: Lukas Bulwahn <lbulwahn@redhat.com>
X-Google-Original-From: Lukas Bulwahn <lukas.bulwahn@redhat.com>
To: Frank Li <Frank.Li@nxp.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	=?UTF-8?q?Martin=20Povi=C5=A1er?= <povik+lin@cutebit.org>,
	Support Opensource <support.opensource@diasemi.com>,
	Peter Rosin <peda@axentia.se>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	asahi@lists.linux.dev,
	patches@opensource.cirrus.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: [PATCH] MAINTAINERS: refer to trivial-codec.yaml in relevant sections
Date: Fri, 14 Nov 2025 12:36:41 +0100
Message-ID: <20251114113647.231481-1-lukas.bulwahn@redhat.com>
X-Mailer: git-send-email 2.51.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=yes
Content-Transfer-Encoding: 8bit

From: Lukas Bulwahn <lukas.bulwahn@redhat.com>

Commit 4acbfcf11cbe ("ASoC: dt-bindings: consolidate simple audio codec to
trivial-codec.yaml") aggregates a few sound device-tree bindings, i.e., txt
and yaml files, into a common trivial-codec.yaml, but misses to adjust the
references in ANALOG DEVICES INC ASOC CODEC DRIVERS, ARM/APPLE MACHINE
SOUND DRIVERS, NXP TFA9879 DRIVER and WOLFSON MICROELECTRONICS DRIVERS,
which refer to files removed by the commit above.

Make these sections refer to trivial-codec.yaml, in order to inform the
maintainers on changes to the device-tree binding relevant to the
hardware drivers.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@redhat.com>
---
 MAINTAINERS | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 836ec73c604d..311c418a76ea 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1770,6 +1770,7 @@ S:	Supported
 W:	http://wiki.analog.com/
 W:	https://ez.analog.com/linux-software-drivers
 F:	Documentation/devicetree/bindings/sound/adi,*
+F:	Documentation/devicetree/bindings/sound/trivial-codec.yaml
 F:	sound/soc/codecs/ad1*
 F:	sound/soc/codecs/ad7*
 F:	sound/soc/codecs/adau*
@@ -2419,9 +2420,9 @@ M:	Martin Povišer <povik+lin@cutebit.org>
 L:	asahi@lists.linux.dev
 L:	linux-sound@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/sound/adi,ssm3515.yaml
-F:	Documentation/devicetree/bindings/sound/cirrus,cs42l84.yaml
 F:	Documentation/devicetree/bindings/sound/apple,*
+F:	Documentation/devicetree/bindings/sound/cirrus,cs42l84.yaml
+F:	Documentation/devicetree/bindings/sound/trivial-codec.yaml
 F:	sound/soc/apple/*
 F:	sound/soc/codecs/cs42l83-i2c.c
 F:	sound/soc/codecs/cs42l84.*
@@ -18843,7 +18844,7 @@ NXP TFA9879 DRIVER
 M:	Peter Rosin <peda@axentia.se>
 L:	linux-sound@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
+F:	Documentation/devicetree/bindings/sound/trivial-codec.yaml
 F:	sound/soc/codecs/tfa9879*
 
 NXP-NCI NFC DRIVER
@@ -27915,6 +27916,7 @@ F:	Documentation/devicetree/bindings/extcon/wlf,arizona.yaml
 F:	Documentation/devicetree/bindings/mfd/wlf,arizona.yaml
 F:	Documentation/devicetree/bindings/mfd/wm831x.txt
 F:	Documentation/devicetree/bindings/regulator/wlf,arizona.yaml
+F:	Documentation/devicetree/bindings/sound/trivial-codec.yaml
 F:	Documentation/devicetree/bindings/sound/wlf,*.yaml
 F:	Documentation/devicetree/bindings/sound/wm*
 F:	Documentation/hwmon/wm83??.rst
-- 
2.51.1


