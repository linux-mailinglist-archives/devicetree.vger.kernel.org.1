Return-Path: <devicetree+bounces-225582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CD7BCF37A
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 12:20:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4B46F4E233A
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 10:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C6DC2571B8;
	Sat, 11 Oct 2025 10:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VebE0nXN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88530142E83
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 10:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760178023; cv=none; b=o2LMRlzqpD7za/ZGmaIHi1Rmv07LwWQwPaODZ371iySzM/dthWZWgD+6qFGwH3cfgHHjPRytYCtiyHAAimWuVX79ZzQvUMUTN8IQuKyqqvjTG4CN32qOSmmwXryc9okzXm8LgVxORAdfhYuh10PxVRS+OFc85Al9tIc8nU5OQJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760178023; c=relaxed/simple;
	bh=kH6m3q9Go+WlNJw/7g8dG1h/aaEJpSAxzZprEUvs9Nc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qmvS7FishRgMD9j7bz529NjfHkCONkLW2BwahtRx5AwLy5gF2FJmT6G3aNlHX4CABpm5cA2O7ed/Jhq4EwdIw087wjMF+TBZkbMzPk60nQuTWWNUC8m0++5fOTm++tSlkdtPYhFpS+htBUlARL1BLaMm5vZp29qHhgUtVAlk8OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VebE0nXN; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b3c2c748bc8so390123766b.2
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 03:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760178017; x=1760782817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kH6m3q9Go+WlNJw/7g8dG1h/aaEJpSAxzZprEUvs9Nc=;
        b=VebE0nXNeIr2YNLJhPwkR7q+thpqkMZoXp6Cjwa451Zw5JlqfiLSuEQ/ltSVXPMp+O
         Ac10saPyWFjLjiBF9Cq9f0Q1cutGOEhnND+PLDeYRIKRhtH3X/PiaADd9pIxLwIw5Vnt
         6v+o5KwjmyDw9bzfSHzYnUsyP4n3OrMCqDicYj/wTpp7loC4MEiPlr1W5V72mOrYbBHz
         lZ9QzfDcLqvRCbz+IGgKYsSt6RwiEntKR1DtQ5z8StmF/ogXIYJvS/UrL5F1BeY8wr1T
         uv79TCQW5rbAswOmdnyho5Cm55FIrS1xoBl3WCaPW5SEq2xIP5RDaW/HtkxKPOe0CIl0
         IaBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760178017; x=1760782817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kH6m3q9Go+WlNJw/7g8dG1h/aaEJpSAxzZprEUvs9Nc=;
        b=i6ErREAOZJ2U85jUCCGSUdGiPzF5xGRr3VI1Zy5YGQxVZuy2F16TwZ1s+OOn8IQoAC
         as0VFMEQ9pQDdmR+uNTTDAS/b7fK4iDYKkOIOnn78epCc2z3llr2jl1rrDIVSuK1QzV4
         txNEoty6K8XecI64K4SDaAc2BMioWgrw9G20/AAbFM0Rbtrzq3goLmdEpAwUFsne7bn7
         O+k6oZT0L7St3Ra1k6ql1SoMRh6s/oB2o4YAuKU1BqOpBloBu7j0Px46ccGgr67rYbhL
         DISyw/I/YD/3kdt/53p7IrwJq98F75egkT1jq6Ux8ebBVPmftgbTkX54AZJkbnR9Z2th
         HpvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLlrCsfUltRRrusStt6dvvJ3HeqoDjYr646U9mRHI5RRGbBjjWWofRjHObHP4WrvElsW2S4kTco9ba@vger.kernel.org
X-Gm-Message-State: AOJu0YzRd4yv/EEgxtQCB3fdS4PJsGIK8paC2JJxwUcltaMzM0Ac5O84
	33Xv4DAGtY6Po0XYNarMck+JKciw7Ku8TU1bMNiV8akd/KRcyxjTJvaO
X-Gm-Gg: ASbGncv4Jmc8bNEFvAdWdSW65BgAQRtxzthdoVriq/MoxdUuM/zUNN5fefbhexUqOMV
	3V/XL9YbMb/NDwBKTipbpj94T6D48mWY25eJyb8taP3i8xj+DfuEKoTVBKWEimTwXJ1axR/4nxk
	obT0aPias1/UAOBJAYP5KzVok2XHuTdYcLVZBi6XtbDdOoBbSbDplNBmQxMy24Zq1MF8DFnM12x
	OkMRRW63LbT+QDQFLfbtjRB73W05mTZxxgDy91BY74GsEF8QUeX3N7mt8BBPDt95f3iURHbXAZe
	gO8vYNme6qv2nlSdEjuEj6ez4LEowhO/hH9OkQ1LseKw2jnFO/+jEt1HQANhIIWQ1ARjYPqinwF
	DS2wNv7WXT66vyaFoISs7+jZtFcsEvgy/+FNokoYkxIq+paCdi45Hd7kg/FWNT18=
X-Google-Smtp-Source: AGHT+IHolFmrbsPL01Gij9mDgcL6wtIFQuNZ62CxZG1hurbWV+WEoYmcgYDEtNQjTwVOdmXwqzHL9A==
X-Received: by 2002:a17:907:6d25:b0:b40:52:19c2 with SMTP id a640c23a62f3a-b50aaa9c937mr1500673066b.20.1760178016637;
        Sat, 11 Oct 2025 03:20:16 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c12a8esm454077866b.42.2025.10.11.03.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 03:20:16 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Wentao Liang <vulab@iscas.ac.cn>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>
Subject:
 Re: [PATCH 01/15] mtd: rawnand: sunxi: Remove superfluous register readings
Date: Sat, 11 Oct 2025 12:15:03 +0200
Message-ID: <12756386.O9o76ZdvQC@jernej-laptop>
In-Reply-To: <20251010084042.341224-2-richard.genoud@bootlin.com>
References:
 <20251010084042.341224-1-richard.genoud@bootlin.com>
 <20251010084042.341224-2-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne petek, 10. oktober 2025 ob 10:40:28 Srednjeevropski poletni =C4=8Das je=
 Richard Genoud napisal(a):
> The register NFC_REG_ECC_CTL was read twice and the result was not used,
> then a third time with a mask applied.
> Removing those calls didn't change the behavior.
>=20
> Tested on H616 SoC, scrambling enabled.
>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



