Return-Path: <devicetree+bounces-224804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1B4BC819F
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:44:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 121634ED4EA
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6680B2D24BB;
	Thu,  9 Oct 2025 08:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LFTsZVaj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50A32D24AD
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999446; cv=none; b=hltQ+r4kfw0jqCP8r8Zr8E62Zv9DBQjUb8xPLJ31hfPwzZ0dA4s/6udfla9JIENZGt3FohlEXOF90Glr1HM2GAiY9NpTu3Trtg1NbjJgMuVJjSmemFplEgFrwmKdWjd/cKF2M8iDTgNc3x2bhX9NonP7UG7kdBLbxDaRsACUtzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999446; c=relaxed/simple;
	bh=V3w1zvSR3okAXJG16PIt9XbHZe0JiZIT01Wxw6lz8LQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HAoFBpsI6Zd1iZyMYZoTBcXUYy2V3SrQBwTH5+s2HFaBUwlBQsULpUwqPvHZ5CTB4AB8+NrIVblcfEZuAJpL2hgNcXP9YNxC0Jx3F31iNVdo3Eq2RjY9C1Mrh/9M4tukya0majkHZ3JZoBSSgD9a0B5+5OauohZFBhBs4mm2DyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LFTsZVaj; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-78af3fe5b17so543924b3a.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759999444; x=1760604244; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MB25NFjME8NTxFWrVFFyMEzcHfTdeESKK1Z0x76pd70=;
        b=LFTsZVajBojbh8XsLykkjSwEINEjLpasXaDUMjNnIPaxa1t1kYQFBm+fLleix00vBc
         VQUDR0fqI+7SGWOkz2b+JpyuHgah1ZK6HnpCljt6NFQ6GTQODEcpGO1josE2tYk2GfFi
         kkPcwGiGRe67H12yb2xpcDK529JeijimDFClrVVxCOBi9+2+koTBj9zN+wPgWB+sUluV
         HIUS7onKahYq8jjqFGNx+yn2GKWwAbCQEm3bJf8cACVKAJFG/xhhIjy0gUpxEWQO2dGF
         ACTACB+OBM8A/c0mgvSK9yWfbtSz93v28s6M96WactTCPmDqRleAnU5N/GUrUqAPi22o
         wROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999444; x=1760604244;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MB25NFjME8NTxFWrVFFyMEzcHfTdeESKK1Z0x76pd70=;
        b=VGbsIGJTPjLLsen7zI/bwTbcalGWvhiIC7XoO8y70nH3O+RrP9yP389u3g/nE01nfO
         ksqldJ++GV5DvzzuoZcWdhMRaQE3qPf7QYjKXnBAFcA51/Zz8lL2lPSME9bLSs4+gP+W
         FbA22ACfvDOl4dL2c7CqN163c9Bq14XIy1ETLHiKbjZYY4O/WCXvLmoUWG0JhOKqPvBw
         frorYybtSXWpi90KjSTsTVZQEDqkPeyHkVGJ373uPej8tiLUnSzTcV6Xpef2TF2WYBZQ
         QzLV5RS2UtT6GBIYcqW2ExnemWcgO7iGNPZ5i1aAE0BNw+NUFlUzqnslCzRjiOpnen9P
         9OsQ==
X-Gm-Message-State: AOJu0YyA2EdmAdD2z0dAlOtCXeGvCaBqsCFptdPrhTGr/oCy8CXqkKev
	7LpqeBucFRY1YIO6sXVpNvIqPtNcovzZZ3chsKgFGOEn/UDgZSzVS7HB
X-Gm-Gg: ASbGncusACy5adI+BIda/v2i8SP7K2Ksp0jueVZQd4NUaqQCLMiCnA0yC8vaywd/vC9
	cMkFE5rVdZO5nLmm8+86FcDmHTkVXCb6GdfqwOxmrp0mESznNrrxOoqRsmyrfKmiKiYOZ4k0HQw
	/aoRxuiC7zwxXzQIIZboP8Yh6UYoIUqd/JHvUGt60OvCHrZbSwjFnO1Befn3lpPq7r5fuBPb29g
	kQkS+OPySVtowDlSsCkLsI7VT3UMOdEzqpx+KGxc8cOnXrRmiclR1KC6lIvb4RLOrnkCzNdDcaX
	UZZIrbYSpKGG3vDHUneaHikxw4jPhL29VZTFtjdr6yOYBG50dy19V/D3fNUIH0yxp5EtCJ1L9/B
	MAPOMkc9nHZlIgw1gQuQGzz0Ecdr1npY0nr0m7XaeIJf7FkSyZHP/ElPsMUFEOGjhKAEw
X-Google-Smtp-Source: AGHT+IFe7GjprHppsCNfLgq3n4ZLOEQrgQ8f7e8BgECl0+RG44szvIm40ljHdHtpTq8yqQEIov+KKw==
X-Received: by 2002:a05:6a00:1883:b0:77f:4a83:8f9 with SMTP id d2e1a72fcca58-793859f34c4mr8541151b3a.2.1759999443863;
        Thu, 09 Oct 2025 01:44:03 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.103.239])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e06fb374sm2141633b3a.56.2025.10.09.01.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 01:44:03 -0700 (PDT)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH 3/4] ABI: sysfs-class-leds-virtualcolor: Document sysfs
 entries for Virtual Color LEDs
Date: Thu,  9 Oct 2025 21:43:38 +1300
Message-ID: <20251009084339.1586319-3-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251009084339.1586319-1-professorjonny98@gmail.com>
References: <20251009084339.1586319-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Jonathan Brophy <professor_jonny@hotmail.com>=0D

Add sysfs-class-leds-virtualcolor to document Virtual Color drover sysfs=0D
entries=0D
=0D
Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>=0D
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>=0D
---=0D
 .../ABI/sysfs-class-leds-virtualcolor         | 43 +++++++++++++++++++=0D
 1 file changed, 43 insertions(+)=0D
 create mode 100644 Documentation/ABI/sysfs-class-leds-virtualcolor=0D
=0D
diff --git a/Documentation/ABI/sysfs-class-leds-virtualcolor b/Documentatio=
n/ABI/sysfs-class-leds-virtualcolor=0D
new file mode 100644=0D
index 000000000..60b878791=0D
--- /dev/null=0D
+++ b/Documentation/ABI/sysfs-class-leds-virtualcolor=0D
@@ -0,0 +1,43 @@=0D
+What:		/sys/class/leds/<led>/priority=0D
+Date:		August 2025=0D
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>=0D
+Description:	(RW) Priority level of the virtual LED group. Higher numbers=
=0D
+        indicate higher priority. When multiple virtual LED groups are=0D
+        active, only the highest priority group's state will be applied=0D
+        to the physical LEDs.=0D
+=0D
+        Valid values: 0 to INT_MAX=0D
+        Default: 0=0D
+=0D
+What:		/sys/class/leds/<led>/blink_delay_on=0D
+Date:		August 2025=0D
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>=0D
+Description:	(RW) The time in milliseconds that the LED should be on while=
=0D
+        blinking. Setting both blink_delay_on and blink_delay_off to=0D
+        zero disables blinking.=0D
+=0D
+        Valid values: 0 to ULONG_MAX=0D
+        Default: 0=0D
+=0D
+What:		/sys/class/leds/<led>/blink_delay_off=0D
+Date:		August 2025=0D
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>=0D
+Description:	(RW) The time in milliseconds that the LED should be off whil=
e=0D
+        blinking. Setting both blink_delay_on and blink_delay_off to=0D
+        zero disables blinking.=0D
+=0D
+        Valid values: 0 to ULONG_MAX=0D
+        Default: 0=0D
+=0D
+What:		/sys/class/leds/<led>/brightness=0D
+Date:		August 2025=0D
+Contact:	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>=0D
+Description:	(RW) Brightness value for the virtual LED group. This value i=
s=0D
+        applied to all monochromatic LEDs in the group if this group=0D
+        has the highest priority among active groups.=0D
+=0D
+        When read-only mode is enabled via device tree, writes to this=0D
+        attribute will return -EPERM.=0D
+=0D
+        Valid values: 0 to LED_FULL (usually 255)=0D
+        Default: LED_OFF (0)=0D
\ No newline at end of file=0D
--=0D
2.43.0=0D

