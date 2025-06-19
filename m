Return-Path: <devicetree+bounces-187665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F97AE0E13
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 21:38:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBA0E169B0E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 19:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C9E24397A;
	Thu, 19 Jun 2025 19:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PxIOddVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCFA30E83E
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 19:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750361882; cv=none; b=fs5aAxXqSaLrCft19NIoAj6H5YgoQk35nSSPueGOZca9XoNayHgJpy4VBiLPfHggWNKQSf+/sLWZLa0GQG1FGa7sYL4TM0Aj9t1yxfyg197Lr8Za/XIPvZIGM1wKb48WBzivsdfGN4CI0ccvMUqfyd/U3SRNHAXwnUgiIouaEzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750361882; c=relaxed/simple;
	bh=NIFjyyzuaNIdw3YOaVRSCkqGyAMbR5LtcqtqSv0Jb38=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=YQgD9meZ6D9I222FCP3Cotfa54AZTxpX4EU+k46sYnrhRrTkawuBcbOoGjlmHhVztLIVCQa/nz7tlgj3CclllYwZ+359mJiv1sgTkBb17hRNnEte6u/TvGrrUlplByhJ12i6i0JJY0n2WgajSCr7CfeTCzGwq5CXibwcEEFv9pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PxIOddVa; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-607c5715ef2so1724732a12.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 12:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750361879; x=1750966679; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DEw+XHTgMkkpVsk+76/bQtWmWF827UIFe6sQvlC4/B0=;
        b=PxIOddVa0QdzZtAJQ8PGI+DgG0o2fWiw1P3iygGZLoGVQeQSyK/aXm9RaCLh//EpJZ
         QKLQAAMUSbdb7mM4gfr0sNcHFo+wtB450aKwb7epIiAlZTl9baDV15KdK/E+hflSFTbU
         ctTvkvgk/6kMLPmqjcLBpNjr3D7cOrG0szd9PcaPFY7jCoeYlCwEdZ0U6Nzaz58r2HaN
         CymUZvEnTkv6odwa9SdTlgC1ua+Q7ajNtyJgtkHArfzCpBuPX0CAo3w8BF/CBeph8Wxt
         cminZHyoMIDFkZkL/41gMQWywia8GsiXpU0Om117ZM/xxObWElNWUHiaQg3jReNpcA/m
         ySdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750361879; x=1750966679;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DEw+XHTgMkkpVsk+76/bQtWmWF827UIFe6sQvlC4/B0=;
        b=RT8RpTwHs5HB8OMnK3w/HfKm5swdl0KVvdT2ntfYqQ2zHbTjli8fC67rP81Ln8UV/N
         BR90d1Qr+NyRZL15StgN7e1lun+CI9t+KuhDGcAlbdhUFclappP8uUKOJAWNG290rsBm
         1EHcsIvZxAQpk0dq4hURQPkhHZvspHGSPvDaK0l3ZaswufRbUydCJmnt0sZuGZSGB3aR
         GXAEP6YIan+bCRwLbF3TJwlcDmoar2q+lk8qeHIqir3YJNdZNO1f4VemKPGmh8T4fVZx
         jJrGJ+e4TfZpzQWRj6e/clzkyoko+texCFksFrzHPjc46ir8r5mNDHWyk5xBKIs5ZXzf
         BkQg==
X-Forwarded-Encrypted: i=1; AJvYcCVZ/iabvAmeTFIJbtiDg3zymDhZJCuMyTN4d77oRo4Y1Zyf2fbTtQgIE0PK03NUBRiNilf7lb9kkK2r@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs6sb8cVO2EmOeVJmAJcs9kRXmhISEIhMK7ER71Uc67Lvto4+K
	nJvFcpSqk7nt9m6WEoYXm3OdncPGI1pj3uCpb0KxAo/so2S237VQvgoWJ0n7zvZ7pSc=
X-Gm-Gg: ASbGncu+lm5GiHENqxepUjlN5SWjkgrGNkSr0lUXN4dKj5s5uKRa5f5ce0oK4jVCo4U
	V6rgSiBE2sVDlSuMdRr1HAGk/NnjKw787qJ0C2LsVUCFsuT1AAnQ3+RMt0puriExeKXosTs7QmO
	SvYDa4it12ghajuxisI76/9bXd+Q5TrKC44S8Y9OzANfsSRzaBdtDwIrNUtfghYjxxFuglDTvUc
	b/wPVFbEkDpNoMX3J8SHDCf7AOCEnxF1cNH2hJnbgeq5bjA8XhibIUg7Kbd82r6Z7oDmePbJ5TJ
	X8e82u+jR5FcaNzIq9/g5B87QqBVNsCUB8BBEymsqMu50RLZCqGjxpJk+Y0H7xwFXPw=
X-Google-Smtp-Source: AGHT+IExty0s/qqPMzZoWioOGaL/D5l3jKw1pRA3K84JdSTooeAoNuus4825RUxWdFOd6p3crKYCdQ==
X-Received: by 2002:a17:907:9215:b0:ad8:a50c:f6b7 with SMTP id a640c23a62f3a-ae057b6e710mr9182966b.28.1750361878727;
        Thu, 19 Jun 2025 12:37:58 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ae053ecbf2bsm35610166b.46.2025.06.19.12.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 12:37:58 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>
Cc: Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] hwmon: adt7475: Implement support for #pwm-cells = <3>
Date: Thu, 19 Jun 2025 21:37:44 +0200
Message-ID: <cover.1750361514.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=702; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=NIFjyyzuaNIdw3YOaVRSCkqGyAMbR5LtcqtqSv0Jb38=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBoVGcJKmVssP8jB9YqPPmLToOVDCM1PRQGoejec s3avXa2MpaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaFRnCQAKCRCPgPtYfRL+ Tm26B/0XY1eUwzzORX/Jlz40BkiXErdvfjjms6ozU/9Ukyk16S49RMwEwRXw+nRDJF8HgpI4Xb8 EAbYwJXLdw6RlcnhUOfpWd0KuY78Z4RljV5TtLRTEKwpbhY96b/uWsOPMAIiKlBNzB3ToyXCuoI 42kq371B52N6H/qy7tOL/hhm3Lz+CG01/nwK/HEZRcq9qj/feYpnyjn9Z2zpun3FDOMqzEdFetE cDjvXYAGZQc3mpJGgLUB8TkTKqqzdtzPmeuPQS9Q5CzPxdH70yyyVKIg8TpKSLLZx4bYoBkn/6B OIEfZbjMdeLZ+L13zorCyIur9JgoMs09yODY+fs3o6EYL+/l
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

this patch series implements support for #pwm-cells = <3> and updates the
binding accordingly. 3 cells is the usual PWM binding as was discussed in
https://lore.kernel.org/linux-hwmon/jmxmxzzfyobuheqe75lj7qcq5rlt625wddb3rlhiernunjdodu@tgxghvfef4tl .

Best regards
Uwe

Uwe Kleine-König (2):
  hwmon: adt7475: Implement support for #pwm-cells = <3>
  dt-bindings: hwmon: adt7475: Allow and recommend #pwm-cells = <3>

 .../devicetree/bindings/hwmon/adt7475.yaml    | 15 ++++++++------
 drivers/hwmon/adt7475.c                       | 20 ++++++++++++++++---
 2 files changed, 26 insertions(+), 9 deletions(-)

base-commit: 4325743c7e209ae7845293679a4de94b969f2bef
-- 
2.49.0


