Return-Path: <devicetree+bounces-234177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E0DC2983B
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 23:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B9D43A27A9
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 22:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54837186E40;
	Sun,  2 Nov 2025 22:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aCT6I/Jd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03D934D391
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 22:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762121814; cv=none; b=I8YDQduvCZrs61AvXamLoWB+Mru2NSYWWbczCN5mJz8QxsjdQnXZlwX6s/W7o+nY/P13qATILhaw8YyETxF+slfocbazUpjnz1WzYKIriSNsktQjhiGW0lo4gaP4l2CsAOSGiJiDrjeNObRp2V3BUCWIv0H5eChOcB66gGr/A18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762121814; c=relaxed/simple;
	bh=wsAWTN0eLlBiEGL/wUQ4n2on9qNGbOthalUagaZS+vo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LDMGC+Zn6S9T5jpccTI4kJWhArW9xsO7WVC416WWBDrJXifKz0kMWaubhGQ6wNOc75FRkcTMWW0Q1M9vJ5CuKqybW3XWV5bdgNTnEkt1CfVIxga5J/Aiiq++Tg7270eiMsfu/zrS1jE4YB5fDHViouVfVtZWlT0IR4bUMMyVAiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aCT6I/Jd; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2953e415b27so18098015ad.2
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 14:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762121812; x=1762726612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DzTHM0N5jn83Spik5G9PnfqO4YiXJ2V5D0HuVfUYWgA=;
        b=aCT6I/JdqXsFRbnj7T6LoBtwG/d1v740suzF3xklap2abkZ/XyIxj/qho1HwA8E7Il
         d17elz4VXC+LiQxv73koSfIRt6yn8fXMU2cc9e/Ph5SIxF2oeXon6JpUGkoiU4AUOIU8
         J1gGGnu7Tj3mszai7UUfcASTa6zBQySyz2t+YC7YHIgIxWffijKscRWPBDZXbWV7WVuF
         FuWedk5bSyucfuljK6U0PlnFsdkLH8Fy6rjKQ7yVfd7bsHwY99FgKKjjuDTL+ARetDx/
         zQm8I+1MQ+iYV4mQSc5GARaBuGB3JG3hE6fL/zMU3NoyIPdfVF1rm3JwaHQLxSlnnb7r
         ZOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762121812; x=1762726612;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DzTHM0N5jn83Spik5G9PnfqO4YiXJ2V5D0HuVfUYWgA=;
        b=jnru1lhXpodkKdakAOLrVdS0jCDUHEy/+AvjwanH72Iyurl9vrOUkPHUHlQDmeTjc7
         +Sy5cT/CRnjV5Yn4RstCwRlD/PnT6e1KGQgJ0fanyeJk/L9VrPvmQWLqnTad4ICOYpHV
         ZiEJ/bYlmu16kNDX+vhOGGD+ngzqNA7yYlKT4tOoGKerLaBq++1Z0RVyphyNAfA3ItP4
         U7VNhvd28dMJkbdJQkvqKME/9uyZDOltmVIgbMsUVEatsSHMD/kDn7PElBQo51qxycrP
         104IZIwVzKSWPW5SqkbrCmfn53PhxZg7VlfrdOvh7hsa+RRJuLLh397/4fSXNHYLIcU6
         Ocvg==
X-Forwarded-Encrypted: i=1; AJvYcCVh8UwamPyfJpn1BSLQ+0B0PFXaMqMXV8TXyldml/nkC7SHJDmmqF13xvUBogkdWtE5KXXgvtqU0cup@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6dS5mDaC7vrkIGdXfMgzBcgRt0p4YG+Z9QMdmP5Mvq62aCpy/
	m1jUEep7dG26IzRNFraKLpzoF+5AKf8k06YuJY4ASsxM1YDC1IjgS5mJ
X-Gm-Gg: ASbGncvmMHsokyVwv2z+pgK9nmAkcYn8eAbRiA8Cmqze1MdQ5UwYmiNn4rwvtjRea2B
	xc3daWKEgjpy7ob0xY/IfMyjE4Jz3ARFKf/aSrpsnRSVg9a3HFyRQ13906qKU0sDGyJHuVsSsyO
	BkmJquGkcsIotXQte+pHYsWetztFAR02te+sR2t3WYKm3CCFqRLZJtSQjWRlQL0YH0+fnskzIPb
	h8BVvMUIWyH7APn2j4j5YHB0UGeyX9wLGWmKWZABWSRRnzcIQA1OP4G4nlub/RH3ife5iGS5yCD
	fVlhpjs6HxDxM7cg3rQUnRqr86W84aDa9ZHP9foRK20nPVn8QwO0+AVXuQKmY1g0vlSeXroAC6O
	n/dASa1coNtteKbmOSTfTpyEuL0+Yg2146rd5bAZfl9AFv8G7ISeRVgFNCCGnETYQJ+jSbDp3ir
	gS8sJ18kMfOeAPZp6SCEhS/Og=
X-Google-Smtp-Source: AGHT+IHVVJYWd8UPKfc0DgSAdtRg6W9eUK9Ue+pS4SyVc2z0ghJlZAxip8Z3wthzYtVrp4JqIN7pxA==
X-Received: by 2002:a17:903:1ce:b0:294:f30f:ea4b with SMTP id d9443c01a7336-2951a3620a9mr122622075ad.8.1762121812140;
        Sun, 02 Nov 2025 14:16:52 -0800 (PST)
Received: from localhost.localdomain ([2804:14d:4c64:860f:2214:33ff:7c70:4d9b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295357a1851sm83362835ad.27.2025.11.02.14.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 14:16:51 -0800 (PST)
From: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	conor+dt@kernel.org,
	mranostay@gmail.com,
	wbg@kernel.org
Cc: ~lkcamp/patches@lists.sr.ht,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] iio: proximity: update Lidar-lite v2 and create v3
Date: Sun,  2 Nov 2025 19:10:25 -0300
Message-ID: <20251102221643.9966-1-rodrigo.gobbi.7@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series moves the Lidar v2 binding from trivial to a dedicated place.
It also adds the v3, which was not described yet, in the same place since
it's the same hardware and it is already supported by the driver.
---
Hi, all,
Very few changes in this v3. At the v2 link, there was a discussion about
the PWM output pin and the current support of that. It was suggested to
not add that pin here, at least for now.
Tks and regards.

Changelog:
v3: split things in a patchset
    replace power-gpios to powerdown-gpios
    user proper lidar node name
v2: https://lore.kernel.org/all/20250801224112.135918-1-rodrigo.gobbi.7@gmail.com/
v1: https://lore.kernel.org/all/20250701223341.36835-1-rodrigo.gobbi.7@gmail.com/#t
---
Rodrigo Gobbi (2):
  dt-bindings: iio: proximity: Remove Lidar-lite-v2 from trivial
  dt-bindings: iio: proximity: Add Lidar-lite-v2 and v3

 .../proximity/pulsedlight,lidar-lite-v2.yaml  | 54 +++++++++++++++++++
 .../devicetree/bindings/trivial-devices.yaml  |  2 -
 2 files changed, 54 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml

-- 
2.48.1


