Return-Path: <devicetree+bounces-232195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFD2C1560B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B9BB7340398
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7DDC33FE29;
	Tue, 28 Oct 2025 15:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="YCSOK9tt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5A333F8B1
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761664673; cv=none; b=NBzt23P1O2YK7j65T/BSk++mu3vHAa4+zNfrfrVedxdYq0jYdJFWnUdtYSiw4RcinRZ0so7+e8FEUW23CqfByR3Hg9czNJKBsMt5QYt+QH6DVZfj3hUM3/iDU7/xD2oscvLpChmJ0Iwo5dNFTUlMhDaV/er0w1m1FhRu7fZr2E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761664673; c=relaxed/simple;
	bh=MMaMHTb4Ah2CCrUzmnNSZ0wgi0JyjgLlM6vbEvp2sbk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KUilgGnKYmCr6O9qZOkjZftJDJ+Y5Fgms9+38RWjZxotMfgd295lhfktitTwHcRpR67bbYrgfkp1xAXWs4YSewi3Lhg/uZqAc98x/7l3ttJ5lqHSj9RPAH6Yn2ZatUby42bxz8N+HPM2IUQL0/6WAgXAngbYq1XdA5AJIZo5HhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=YCSOK9tt; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b550a522a49so5109870a12.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761664671; x=1762269471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MMaMHTb4Ah2CCrUzmnNSZ0wgi0JyjgLlM6vbEvp2sbk=;
        b=YCSOK9ttSSGanTt51EsKsqwqq8wteU+FncXeGl3p7zWom7oOtmLbMB4jwLwccPuYHU
         luuCrzTrwXIyaa+yC/oPFsoebtAWun3X9LuEWw1AXx5aBWH3sF6Xr8UDCYzK/r7T8HsC
         HyC2cCrsbGkvSeuekO6ztDd5klOuk/KQ8cwWR0rJlqEqBENaMguPCYqwRbPGtEnPP6lE
         FtqeFBvD4lBseIn7LhpOYgnO6H8zKgsn31u4QpgjoAqr7QgQr5SpfcUjo5/rhc01mdp6
         Xj1CIuTtWajxV1h8C0IXLdBicXs5jsEC6cVLhaMDrtoEnow9+ziEW8QFQxRYptx9gXTc
         mCQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761664671; x=1762269471;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MMaMHTb4Ah2CCrUzmnNSZ0wgi0JyjgLlM6vbEvp2sbk=;
        b=Zlo9NYx00ZsE8UOpeVbTiJLE4LmSBCdHMzq6Zzjwk2E5nIXExN2uJss3D48BpDHI7z
         rTNwvFFkO315pGGCzrPPFAtul3ay/DzLKzvRLLgUMcV1w+7eSQTYLiJvuJCFRx413BoI
         X3Q/GqCXUqLqiBv/Z2DU+PFop/liciKBX35JqkU5l0rPoOh8zgT/W6e++2hWY6gmlUJQ
         lYOV6L7BTqb3+QG+MunlEbZFwohjJqRaAv/ZFRbDMK2dyYmoKAevP7+cBhTDB7OInlLS
         RtlIuYIEHG1jyO+wuGrgjHx3SSqp65Oga8pcLeC/Hs/qKAthAaVJgdQPdaVvPJKqR0oO
         mSCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUg/K8hkTefsm7LHCP/Fsj1jSr0mbs46z2Vh9pyQgPLDHzDeaWknhr0jFlgILRXEYPE6yrBA1M0r2i4@vger.kernel.org
X-Gm-Message-State: AOJu0YwCuocq0md1/8EKqxCeVyrOPFVsruKjtqY02hbAJWFo7rUnB81h
	VL+Z9UxjgHx78z7s6aIhyBguK9cmLAkr4i3EQQmllRk57ykF15l35jfeDGMY1lniEvM=
X-Gm-Gg: ASbGncuQmtvGkiaEvGEWWV+IZkEEtCinVsudTuTDTJoPb7A1lOu04hbQ6cGYEs8ocZ/
	vQrjqTJoyngqJnWlFwu5z2GpyVSenSoAniTgi5UD0hQz0QN1ItQvx22BlkQ2z9BoqSAYF5HYfZ6
	8b/moC8zjpDqdpUa7xt+c7+kep1X5evsT6S2hAMWFHdjN2nFanhpHMj4QgCsc2CfgbsrBEfht9n
	vz4786GfTW5Ft0IKcQonqL68r/YsyAQZ0fnJMPR3qlU66/rBtqOV00lKFF6ONWTPn6oa2YSH9z2
	w0k6t/+WyZO9oi6/BWCDzJP1f4l1aFfUJVV29BX+0/l5RQFtFMvYDMatH3bfpJNSwqqrO3u4LeW
	RIgij+Ks3mjynV9f6O7wLspSZs2OT53xCx9eMe++7UEbyZiVPe9ikBNmpL4kYXx1L1VOYAd4US3
	splZ4rPLtJi+hlvEZbDA==
X-Google-Smtp-Source: AGHT+IH2TaPyS4w0bOjLoYbINLXI1oqC6DBGXJhehW0z/yn2CnV6ID73kQc6DVG+AgvO4fXzT9O+Eg==
X-Received: by 2002:a17:902:db11:b0:272:dee1:c133 with SMTP id d9443c01a7336-294cb39de3bmr44858755ad.22.1761664671204;
        Tue, 28 Oct 2025 08:17:51 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:647b:c9a6:1750:9275])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e42afdsm118620375ad.99.2025.10.28.08.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:17:50 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: robh@kernel.org
Cc: conor+dt@kernel.org,
	corbet@lwn.net,
	david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	krzk@kernel.org,
	linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@roeck-us.net,
	skhan@linuxfoundation.org
Subject: [PATCH v2 1/2] dt-bindings: hwmon: Add support for ST TSC1641 power monitor
Date: Tue, 28 Oct 2025 08:17:47 -0700
Message-ID: <20251028151747.663000-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027191425.GA1403533-robh@kernel.org>
References: <20251027191425.GA1403533-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Understood. The bit in question controls the alert pin polarity on the device side,
independent of whether the pin is used as interrupt or not. I'll drop the property
for now and revisit if there's a board that actually uses an inverter or needs to
program the bit explicitly.

Thanks, Igor

