Return-Path: <devicetree+bounces-235985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E1BC3EE81
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:14:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93CB53A2C17
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32E3830F93A;
	Fri,  7 Nov 2025 08:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XrDGGDdR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2DA30F92A
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762503142; cv=none; b=P+plhHSDK9TyqsxRTs6klwMH/PGQebNsE1w/iVlzkGs8j2Gdi4tmMH4COtep+Qm5SQH9JCD4aSKAcuIIdak3fhtXojblCJGzkB6n75SCaVGKVVQDftIzERlIEayyBUaRWo9IwgUIulgtpQmYh8/UaIM6tChu8ZpQgVsb4G5MibI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762503142; c=relaxed/simple;
	bh=EZY7NjCHTeI8ZtlYt4fYKNAHiiwdThNZ7B4H5f8M370=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=h7T8tC+nyo2QZiOolqQ8az2NjAPD1XOu0JRHkLDlTg0QHdUnT5BVjSH6PPygsH/BEegemf29WzaJz/TENzUAulBp30BlHXSRe7uQPQBU1S24RRRpN2nB8r9+4mT/FN5fy2OBjbViOX8N/2FAA0qFFv3Hb66J9QC7vXrTcO1HMo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XrDGGDdR; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34088fbd65aso463362a91.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762503140; x=1763107940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dmw8BUMis3U7evEGAA8fT1j+khq5yYTTfzGiGGo+D+I=;
        b=XrDGGDdRsITwajm774P6B3Sl3c4je2jXqfD/Aqm7w3inecz0xs/t4v1w1fEvI0AFK4
         wGObnjz4Yin3H/ciIJQMmVd7B1KMgwK0gUnoWRTNzWGhUNjJEAeaCLJ3Fpl14DY4+DJx
         iz/vd/KXRvsIV/RjmLgiVeKi4ds0sJlCHQL2g4zHYSsFqXuWcIdzVsKvQnhWlacvBeap
         rjnkw/rfTyJKMzjsAg9+oe29yy+hZGe5jB/OD2fBjFiLXUl48XPVsQDgOLZ/eFZSu6/J
         i3ffiaaHTiKkVtmGaH9PFCUG5//B9T8kQehFTruaFxi+F2vr89NKW3gONGpn7Pj2m5/J
         A9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762503140; x=1763107940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Dmw8BUMis3U7evEGAA8fT1j+khq5yYTTfzGiGGo+D+I=;
        b=KD/S1TzsXsON0h9DbBrqPl4YsuDJOu3Do3LOuSbfAGmm3p1MspPn78/lT37Op9OYTA
         E78XpS0dAzHQ4P5hh10hvSddW4tovDOnfQqflCtBqPrrxCvVjG1t3cfQpdrnSB+TGRn1
         TtwUACi3YZdlVhT2Ny2jAP1XGtkqpd6mgsFpl+cDmBFMvZL7KSn3/Q5SbqSW9zvuLSnJ
         68G/6T6wmWryr0lorVmkJSL1PX2pPtcVKdLRwO88MQ9PusPmEjXssMhsCGvW9/gvjUOw
         pxxj+j+Leh/gon1lsSkVHlwdvoJMFZ+AKZUWEBA73Iq0jbu42Ukf9UYrNI3/cyXe3DXj
         +8ew==
X-Forwarded-Encrypted: i=1; AJvYcCUJ9FkLXC5FOXRoa+qGYXQ6Xv14VGDKoEzKQpT+eWdd3qrA7Z1huCm04Qw/sGwHN8OfzqZvEMrM9SU9@vger.kernel.org
X-Gm-Message-State: AOJu0YwObwpFGb2ZN0Sn/nfb3q+wInVqvnb9U6Mhurz2Zwof3umYnx6d
	VGu3BPOErmvW5nSM0JNyWpQNtgaDLKonJGx3qRr+7okfabUPPkeXFS5w
X-Gm-Gg: ASbGncsKljUvYkDBrgDiZkeHC33rofrBneye9wWOD5NpEg/l9TikY2y1XePJQhKa86G
	ytPxZJU2B1FoXKWpGTqVDF9YbXXp0OrnX6h3EY3Py40IIH73na9rKcHxS3HmGMo876fTdkazQO2
	ixh52GHNSxesSOHHz7mg9K+LrPMiFuZD4QJSWoiVESQitVlSX0eSB48ayOCC+Fap2UAlX3T0+QG
	FmOLlTA925S1ORDkl9Q1R/K0V4cHwFpUSdQBVihE0L9KiNqBVTJ+yD68TCqC8wFe2IRQ/x7udvm
	rUPXel1vkwdt7ddoVsD5EpCbGHG0kToVKVufFNl3wBVeaEWSkfLoRk4/bKXVhUckzFKEFOqo4RO
	Z+u3xbH2IrxNekWJgVDPNV0J4p7+2dRN1soOfK0xAT/tO4/yeQnOWesWEB1qfvPWh/1t6/g==
X-Google-Smtp-Source: AGHT+IGs1b/E15BQQr7IRWhnvMwkUWjaQl+1pAkJ+WBKp4CDaO9Vgbztv4Mt1ZD4fKUVL35oC8br3Q==
X-Received: by 2002:a17:90b:2e07:b0:339:d1f0:c740 with SMTP id 98e67ed59e1d1-3434c4e4544mr2792443a91.1.1762503139944;
        Fri, 07 Nov 2025 00:12:19 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba900fa571esm4450338a12.26.2025.11.07.00.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 00:12:19 -0800 (PST)
From: sjg168@gmail.com
X-Google-Original-From: peter.shen@amd.com
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Peter Shen <sjg168@gmail.com>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	peter.shen@amd.com
Subject: [PATCH v4 0/2] ARM: dts: aspeed: Add Device Tree for Facebook Anacapa BMC
Date: Fri,  7 Nov 2025 16:12:10 +0800
Message-Id: <20251107-anacapa-v4-0-peter-shen-amd@sjg168>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251104-mellow-denim-dogfish-4affdb@kuoka>
References: <20251104-mellow-denim-dogfish-4affdb@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Peter Shen <sjg168@gmail.com>

This patch series adds the device tree binding and the initial device tree
source file for the Facebook Anacapa BMC, which utilizes the Aspeed AST2600
SoC.

The patches configure the necessary platform peripherals and aliases for
OpenBMC usage.

---
Changes in v4:
- Addressed the fatal 'Broken DCO/email chain' issue reported by the maintainer. The Author and Signed-off-by fields in all commits are now unified to match the sender's email address (sjg168@gmail.com).

- Addressed all remaining checkpatch.pl warnings reported against v3:
  - Fixed all block comment style warnings (converting to proper multi-line C-style format) and line length issues in gpio-line-names.
  - Removed the un-documented "amd,helios_cpld" compatible string to eliminate the highest priority DT binding warning.
  - Removed unused and commented-out device tree nodes (eeprom@53).

