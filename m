Return-Path: <devicetree+bounces-225747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 351C0BD087E
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 19:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACDE63BF64C
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 17:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F4A2EC57D;
	Sun, 12 Oct 2025 17:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HYJDlZOP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B661FF7C5
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760290253; cv=none; b=i6Jz290XlgsALZ7rQX+a3XRhnbgHEchLEUC1taosAeS/7WzLUJZtBZmK8u4gVG5s56ebd85pMET0Sgr4Hj6kuZlvK/FYo/Jyk6pM1dA1emv9TUWsnT/EkgBzlaLvxDDo9mvaxgOWz7qivxRhpLj4mnknhIxTG0fOxZEnPEfYq60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760290253; c=relaxed/simple;
	bh=gzP73eKDgJq0OXCIKtEvkLfNMbdAuUvkBODtFN2PhFM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Fe12t8HtgT16JBKtsjccYJTqWfa9OxwEVNip2DtVIDbZ5pY+T+qMq1y5iUZmS0FGOhjYWdXKW0WBDxgsvTYHL9FjQsOItJaQwEgIOwuDcsHS+jLlMQXHeRho8gYBpc1F68HfedKMVK5/doG/9TUVuX60IRFF7SIyxiviv+3eswM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HYJDlZOP; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-32eb76b9039so4606931a91.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 10:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760290251; x=1760895051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a66RlRrFvTTKMeb9fHGsG8vzY8MvLsI+lGOp/Fg2CSg=;
        b=HYJDlZOPN4QdWiAOpXErzJP9jSIL2IbDBb5UozjrECl19/1i8DsD8EjKXs1w0P2gfU
         cUrXtZ9iCHs14s04IaVBn10yWE92tmPffTLSbjiTykq2Fczf6UGZW67qx/dusxtevTpA
         wU+gaAwGaDVr9QcJ0YrqGEmm1jI5BUasuykJkgGll7Ihc6NPchx4w4UzTxhxB1ffONbN
         fckwQrZynkLhf7CfdqJzIt5Tlba5l52oY32H5K15BEpix9qGEpCK0WC5S4vTFV0zSDoV
         LX20bg3uF3xRTKgXjPIbVwnrqlrkGMhuk5tN6CSMFd5nnG8OOrAdIlq80TqARU95FxQq
         2PtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760290251; x=1760895051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a66RlRrFvTTKMeb9fHGsG8vzY8MvLsI+lGOp/Fg2CSg=;
        b=nH/RKhtjOD7BjxIty8nPCD7k+2ftzPzNYZt7zcFt4kSHUsS/PGdQKeElXhq4rk7jTL
         XdXpie5uAbEzTnyg2LY5HVzT3i9tMuYvJNdsKBkG7AtHwowWVJrhN+5LPC8SkCz7miY8
         rTeFVTVMIh8RwTomSFrDLL8a4bK2M0g3VHUSuXU9Nkf3tj5JsgCw2ZuYirJ10yQvjGAB
         8wmDlA8v5sHGpQVoqyjVWWN4fvmkpWTLOtCpvqZpD1YWEyDi3XQ4NsaKtikEA8ClyysK
         XcAD6/Po2ytqI0pQ7SqihFgRu2jfD8TIDoOJi6uwaXdsENJyBnfCWjGHGKcVVwBd0+Ap
         XnPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHjrhs22hoKxNKCZGqmPdnJ2lRCweRlIbJkimdh48KZwr2yJ5AgRz/nN8CadXHg8ax9NRSk+5Ze/4P@vger.kernel.org
X-Gm-Message-State: AOJu0YyUDnB46iqo7XzRwk+/BMWUnNkcmLir1A/LXA+PFVYa+04ATUte
	+05FQ2k/xi3dsV4Ll2lhaztoS2VfSwbKKTmJzalfsvCTFLXZn7bnR3Jf
X-Gm-Gg: ASbGncvMqT5/vfRk67wXFSxz9pSePtitbZY70YYrKG6E1FxwBIK0pKnTw526RNpG1kx
	Vl+3tNjU1ZiFLdQcjHSORp+kn85M0s86ya4i0mLP7ohpugZ3cTL1nggwMVB8nWkwSFZuWukVNND
	02o79gTg5APYZ8RXw7iqp0/zuL07ZZmj5ycucKrD41NydJwG00GdBvXHcvRUpcwfvrWDjGOiJ5D
	6PPsEDnq+Do50ekLd9F8FBQ1iLa2h4kjU8Vq3EJh+9DGJjWrDsv5A9e7YamtX+jXoLICyioCUDt
	WqWRIr7K2WaIkMI2pZLfkJbmnZqTFwEgxrKXqRLhLnTe6xGj6YExS198L4OAminTjJZXnaPiMi4
	cvRyoJfIn46aPV9fZgYIziWLruRepttVPQIiF4rHT/i6D
X-Google-Smtp-Source: AGHT+IFWBRH6VbicjAATB63VVFZLQLGTV6p9y+k3koTCoCdtyT6rF2oBp0hHGijhX3XmV73xokjn1w==
X-Received: by 2002:a17:90b:3d87:b0:32e:d011:ea1c with SMTP id 98e67ed59e1d1-33b51112272mr28805345a91.15.1760290250919;
        Sun, 12 Oct 2025 10:30:50 -0700 (PDT)
Received: from Ubuntu24.. ([103.187.64.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d09ace5sm9030616b3a.53.2025.10.12.10.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 10:30:50 -0700 (PDT)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	matt@ranostay.sg,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH v3 0/2] iio: health: max30100: Add DT LED pulse-width support
Date: Sun, 12 Oct 2025 23:00:33 +0530
Message-ID: <20251012173035.12536-1-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Device Tree support for configuring the LED pulse-width of the MAX30100
sensor, and updates the driver to read and apply this property. 

Testing:
- Verify DT property read successfully in probe().
- Verify default fallback to 1600 us when DT property is omitted.
- Confirm SPO2_CONFIG register programmed correctly using regmap_read().
- Validate different DT pulse-width values (200, 400, 800, 1600 us)
  are applied correctly.
- Validate probe() failure for invalid LED pulse-width
- Tested-on: Raspberry Pi 3B + MAX30100 breakout board

Changelog:
Changes from v2:
- Fix DT binding schema errors
- Add default value
- Remove changelog from commit message
- Add missing header file

Shrikant Raskar (2):
  dt-bindings: iio: health: max30100: Add LED pulse-width property
  iio: health: max30100: Make LED pulse-width configurable via DT

 .../bindings/iio/health/maxim,max30100.yaml   |  8 ++++
 drivers/iio/health/max30100.c                 | 38 +++++++++++++++++--
 2 files changed, 43 insertions(+), 3 deletions(-)


base-commit: 8bd9238e511d02831022ff0270865c54ccc482d6
-- 
2.43.0


