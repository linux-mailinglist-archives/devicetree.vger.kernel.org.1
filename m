Return-Path: <devicetree+bounces-79754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF8B916AFA
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 908111C22ACF
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A094D16EBEB;
	Tue, 25 Jun 2024 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dWm+Fhik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DC616D4C4
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719327035; cv=none; b=Qr5U5YXPaWlvklG2XdWHU6NBWefjEGXeWojgtlDvrIXzy8qYmkpPDRP9OLeD8OS/BCx7xntGLQquzG2fGjlmAEOFJjCLl5bmhNBiHw33at7KoVVVnSyYEK/zm7QFFlCAu2A/jioJHOouSyb5OhxG1rEFmTtaZsPct336K676wKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719327035; c=relaxed/simple;
	bh=v7iSGpLcLcU+iCmJ64zXmEkSR2GS0SCMYIqR/adHl5A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XmU+Z0NwwQ42YdKu/wJQnPHHogWGg0Jnyv0uX2aKakItpPYsdPD6Go8Dq2zC6lbTqd7opt8Q0VkxtwBXPdBqU1UrlILzTgbwPpmAMXpnH7/bMHnOOIsTsYZvXnZRJqJiUA+UGxJfStpwWHtvPuGv/nlTZfPS0PDoVfI4XN2Chng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dWm+Fhik; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a724a8097deso322706466b.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719327032; x=1719931832; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lX3TM1Fki2eEB6hMLemhPlhYp9SkoeIi5lujOC+FPr0=;
        b=dWm+FhikNRotKsqVHUmd7Ez3paS+h5a8G36bwebWpPVAoWDKjLF+6nNfzHB3a9LiEF
         O/Ryh775hELrlwFn7atRWX8waU0kVCEauSB8Hio5j+FSQdXCzKnRIbW7XbhKi/fY5TJG
         6EFDBY8qQFsXAFNySJBDsV23pEmSWGAMxYqHXcHoCA3cLcWktpKZBWyCqv7O9f8OqCMO
         FOefhebUl9Lrz1BYPavzXM1NdmND5mmhfh0hE/R+ZGmqVMoBEfhPTT8XznXqJ3DoWhmN
         4p/cKg4ff88sY+bQ6ZKRX6K+JqUTPxyph2SAcWsQL3NnuTYTakwJst/Ibuvi9Aa7U33w
         n6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719327032; x=1719931832;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lX3TM1Fki2eEB6hMLemhPlhYp9SkoeIi5lujOC+FPr0=;
        b=MYSTQKa3Pi7W5wEndfxNt3G4IauTEvaidXEkVZM112Q/EHfzjpGq2TrqNgHlhG77tL
         NQBuIqMqDb6YgtM0D54RN81v1l+ZXKryCO0b7UxJgJCsE7//W88RIzmiWT//SbxBfgem
         7rY/qFEmYh99qtYWWVh8BSbFhgV+KrqbgXcu9izLNJ0QSR0D4XaF9X0A+OGNpQSSM28T
         hm0aUOFlCvYfPE5wSwm59tMx4SIzVUmVlkmgDZy04CIbyCbb001A1FnV1R/BHJnRW0Ng
         NcFkKb0WUoG4b5CH7Bup/Ii8CDIl2Y0aVftQxkv1pSddr4kNwRdv1A4ljKLmyfTCFgcB
         YAmw==
X-Forwarded-Encrypted: i=1; AJvYcCXeVnNxjOfAnrjf3mxXmNk2JxzorpACqmCQ0UwS4IOIedwWRqCI6icaPxYxdVpqaDJzfSRIZwFGsEsqyqniKhM6gC8Ez0Ktb+LsMQ==
X-Gm-Message-State: AOJu0Yw7Gp+cBrjxHu5/FM4+DhSlVWaRudADwargfIOCPkSlq9Dhm036
	h7MgZyDNJbur5QntHOsbOKbGMQ99APNC8Y/TOiBHCcEymNA+6Osmye5OTM7jRZw=
X-Google-Smtp-Source: AGHT+IFUUy+Ij+z9priiZtm1Z/MbuNV3/WMHqNwFfXw0FhxS9uRT69YZDNrxaFymHUjd4zBdIJFR/Q==
X-Received: by 2002:a17:907:8dcb:b0:a6f:718f:39b6 with SMTP id a640c23a62f3a-a7242c9c190mr463024766b.25.1719327032066;
        Tue, 25 Jun 2024 07:50:32 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:b30c:4c5e:f49e:ab33])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a724162f037sm355945066b.194.2024.06.25.07.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 07:50:31 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 0/2] arm64: dts: amlogic: add power domain to hdmitx
Date: Tue, 25 Jun 2024 16:50:13 +0200
Message-ID: <20240625145017.1003346-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

This patchset add the bindings for the power domain of the HDMI Tx
on Amlogic SoC.

This is a 1st step in cleaning HDMI Tx and its direct usage of HHI
register space. Eventually, this will help remove component usage from
the Amlogic display drivers.

Jerome Brunet (2):
  dt-bindings: display: meson-dw-hdmi: add missing power-domain
  arm64: dts: amlogic: add power domain to hdmitx

 .../devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml   | 5 +++++
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi                   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi                  | 1 +
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi                   | 1 +
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi                   | 4 ++++
 5 files changed, 15 insertions(+)

-- 
2.43.0


