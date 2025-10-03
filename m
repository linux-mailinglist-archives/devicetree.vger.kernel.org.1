Return-Path: <devicetree+bounces-223529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3851BB6ADB
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 14:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7BD934E26D6
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 12:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C73162E9ECD;
	Fri,  3 Oct 2025 12:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eWnkJxja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50481EEA8
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 12:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759495862; cv=none; b=gve8CN2HwRiPbXLS/ZcocwGuKfbIYBknz0eFyRTswCgXafxj5I3NmyaiS8infDxQiylU4DEDy4DYwKyV4+Jq+WC1KVCMKguicXOC+QSq3evrGSRubQEaC93YkZ1RDAoEv+Ynetu4bf5Fye0TlSuvZvbFvTbHGhYoKLQkx4ehe9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759495862; c=relaxed/simple;
	bh=mSudeg4QDvsImGywt/0dAyPlzjFfeZ24EUC1/n7/GmA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cGmesk24IM7wNN6gYphqEljw+5lLOYHsGDxhJc5CtoJbs0AlM8ryPwwmNmTBeIQxjcbn/cRGcn7/6V7Hiy4ohIE0RQVd1SLT9v21rRapkxwAlYF7JYDsBdrmB7wcI1OYkSQQh+X7iivTxu/Xs5m4PIphXKiB5S6Lo5ospBtoyaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eWnkJxja; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ecde0be34eso1782044f8f.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 05:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759495858; x=1760100658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=samCYGqwi9pnzVf12goEC93sXVEkXkpJUcL0gXrpXZY=;
        b=eWnkJxja731pRID0sUB7qYHj2C2eJu4wE6TaucKQyj0WtGX2IFPh0HFDEpFYY1yo34
         GM1NTAR+9UmVgQQifAotQ+luDvJ/uhuJok+1msCpiOhr+Rsc1dWDX2+odLtgoVU26wBR
         EV0iNGd4EBMVg1cxBCiG2P8xx9OiN0lVbuibzkszkctX17q2+PYbV0sW1cHrlnKpT8qt
         Ej8dUUcWqJTIpcjlTkjrbXC6hDk605u5BlwA1fYXcT5VwOnT0aUoxyJ9+3oJD5g4NUJM
         ZJOhTmcEcrAiz01oNAzkmsc6otV7KAf54fGyPcFleGzJCrrJsjydn4WEIF+ClVHY8Mii
         OlqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759495858; x=1760100658;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=samCYGqwi9pnzVf12goEC93sXVEkXkpJUcL0gXrpXZY=;
        b=Dl4NHwkPz/cfS8yJa6hzNh7be0UoUMJFx3P6lqBBSGu1hMAKLs0XJMi+8DqnV09el5
         49A+tryfYOttq0ab/OG24Qi93RMR1ae4dIjlwbZiSh1ZFdj3zdVa9Indx1yAO09X4bOe
         /BI6Ayyw7tfdfSDEO9ScAuGFNHVeb8r6qib4RBqBAOaIDoYzV3GsOH3NhZy1/3m+Qg8w
         AfJGF1dfHEHJDXztDgivLPBjHzmheiPQJyJbjY6a0pI/NWWNoG59VqrihM+LuNDsxls0
         itC7IaOsxINNrHDZ7Vq2uaeq3J6/vDRLCjHEzObmPm7dKzW4nOgnJRPXoTbV8HuV3cJC
         /WwQ==
X-Gm-Message-State: AOJu0YyjTg6qGYqQTjAL38hk7QtO/RNPAn6QJE6pX6/Bi7CSPwfZOyt/
	Haomca5FJFn4LvUJGPr++mOOaUavWHeOykHnoh3/3qFzRROa2ChPOrO1461ymc0C
X-Gm-Gg: ASbGncsxLz2IzfGYZvDg4G94J9hkXn1nYa2NH1CqcSSqjxOJhCPyRvJHnZYhWIGycIv
	tfJlZU2ZsqyKALTHnV5f2Y2FjST3XQvES/5fM2JXyVa1I7HzzmjWK7QAkqrxCN1HrhTAFRnIVCE
	l3cqGDEMH74sUSOAcjHiUeOxVr5zMkijsoUYFgDiod1eEr5lO3wXL2vBYSJwjDEyOpwFR/xBOiK
	Z+zEujpJt38GQSB10Kq7l0FTwtVUvjDy9IZIe4xiB4YutnsE4bcswAvhAeTflhd0v/PVEQTJbPm
	Nt9/Z3xyTTgtwlV+J56dSNdqLyFjaeUQy3XZY/J3VlG2WfXFBdrDPagf0KOtHhaN4jLFEVkzZYF
	bj6lVoMzdCGbQ8JnW5Ac5bP6MyMSf+esmPd1dkq6JUJyiFsXoZ/Rz+AiAcAxIQ+TrdqC5wX0Fx2
	+0tv69
X-Google-Smtp-Source: AGHT+IENzuZxbYIdrHD3oo9Oii97vCN3RXSUhQc4ZEVlPzK73ksVqzVkKPvFzgGiDGx4BnU+23owmw==
X-Received: by 2002:a05:6000:1a86:b0:3ec:dfe5:17e8 with SMTP id ffacd0b85a97d-4255d294d2emr4872007f8f.6.1759495858309;
        Fri, 03 Oct 2025 05:50:58 -0700 (PDT)
Received: from localhost.localdomain ([37.159.33.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c40983asm80598605e9.3.2025.10.03.05.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 05:50:57 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 0/3] arm64: dts: ti: Refactor and alignment of VAR-SOM-AM62P
Date: Fri,  3 Oct 2025 14:50:26 +0200
Message-ID: <20251003125031.30539-1-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series introduces updates to the VAR-SOM-AM62P device tree:

 - Patch 1 refactors the IPC configuration to align with upstream changes
   by including the new common k3-am62p-ti-ipc-firmware.dtsi.
 - Patch 2 adds support for the WM8904 audio codec, enabling audio
   playback and capture.
 - Patch 3 adds support for the ADS7846 touchscreen controller available
   on the SOM.

These changes have been tested on the VAR-SOM-AM62P platform with
Symphony Carrier Board.

Stefano Radaelli (3):
  arm64: dts: ti: var-som-am62p: Refactor IPC configuration into common
    dtsi
  arm64: dts: ti: var-som-am62p: Add support for WM8904 audio codec
  arm64: dts: ti: var-som-am62p: Add support for ADS7846 touchscreen

 arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi | 148 ++++++++++++------
 1 file changed, 98 insertions(+), 50 deletions(-)


base-commit: 58809f614e0e3f4e12b489bddf680bfeb31c0a20
-- 
2.47.3


