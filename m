Return-Path: <devicetree+bounces-232223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FF0C159B8
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 280891A2253B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E295340DA0;
	Tue, 28 Oct 2025 15:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WDl5YH+/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B68F34679C
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761666310; cv=none; b=uNx8cYrhuw+r7apBmKf0DDeZGmZ2TbWztolz7MnSfrKQypJEId4Wq7HA06lhPc+pNT6kNRbSrsfbTpvXgOdomRDf7X3Ka46BhGch+La6wRE/lLl5syfFsCM2aNH/FMnaJZVrz4ZJS1z+ttClOLGc7FAIqCFPMczXAMx8VQn4rUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761666310; c=relaxed/simple;
	bh=GAqSgVsTThU3vtmlukZG8xLx1H3wk+zWeretWdrZ53k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OLa0cRtADSAKmDgaGSC6LeTBKUmHi/M+Sju5VYtSdP4WXZSWkpRWX/CnqGk4w0QyXyaXZhxmif9JUw9bMEuqx1EXY/uMYKEwvV8GqvEQgI/1f3XBzKG6L1eSkEG0kCwrgxk7fTihUlhtSqxIwLfF0DrAzc4iX3sqUWFvemYO3W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WDl5YH+/; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4711810948aso45863545e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761666307; x=1762271107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GAqSgVsTThU3vtmlukZG8xLx1H3wk+zWeretWdrZ53k=;
        b=WDl5YH+/pbuValcQE1Sr+SxsHz6ZU/VU4R9tLGeuIUaILWa8+NDKxuTGIreIyzqBiD
         0XPg2pPhpCaLEN/f8Scf9NUUcFBekB6qJk61LKr8T1FRoqmecGFSFzh8z/RsT375jita
         /uuN6gQJCaO3CCn3EQS/Ka5mbx3j15df/bnBySsQ779EcslSs8fzCDnZit+2hwW4nWEo
         ez034qVGwslYFtqyAQfVth0X0yr2nW4swX0SWwbWe9cY/8AXRgAVZ5DFWstZyrQgg9LS
         3Ve77jQpVL0oaM514ysm2AfYzjdncFkF6SFK0JlxTm1qTqCdBCkyQnsoT3xEZHuQMaFh
         8Dqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761666307; x=1762271107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GAqSgVsTThU3vtmlukZG8xLx1H3wk+zWeretWdrZ53k=;
        b=gSKE4dJLFCP4wfEv5t7VeDeMc2MCHAtNyYMfBqXByn6ewzTlhzp6YjBkycStP6x9SF
         sfCz8e9+bWBWl7j/X9VYUY1A9Rz3N1zfjQ++D/KuaVziIbtnVBhRDVR1DiR9dn36FVkS
         R1L+mEjjAMh0OSEmdLyzM/OPfYRIHy2szSTBBYNQDq03qi8cgcoxtVXIGVnG05YzO4Gj
         t5zhk//FDqs/pDPP+IC9Nl9+g+G57dVUyP1RYQiZipMQQKHp4yAngQwNOwqfM96Fy2nH
         eskGrmCWgV/NAW/CNH/WIgAaDuY6SCpGvqsk4W7DwUeniWZ7GGx5rRGlu8KPe/npwhjF
         vh0A==
X-Forwarded-Encrypted: i=1; AJvYcCWXvTYIG4eS4cMGn4UsjF8abkxPGRIeL4wDQyQkowp4ILbjEEcIggY9YiUDLQfcElLZeR4XEJZTVruw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy405RaxgoFAd/2ZVSYMKnzu3uGPtN/+u5828awm0oNzR/TP0Rq
	v9vb3caDAbEUgXNYDQnRdZEx6rIiQL/dvbz7cF10JVbetFTY6Uud5KG+
X-Gm-Gg: ASbGncvZRes7MjGPF+iN6+NQrbL8skgkVD0EEY194/VPqkslT8vC8Jka8YqVhN6+1yc
	QT4PUlVRmIvS1Lj3Nug4lvxRAAGjtbD/A+dtrd5E4DZpZqcD07cmjIc+0OZWYnmwY0PigTe72ma
	a/ihBl4pAR63zJnreKBIEFOSHimEypCFavoTG07cxwvjw3TExTiy4xg/RAYvbwqQ29bT/RSQvCL
	BWxjX2ShtBulD5kGbT+iWxeEDxLmaI34VRgbzOHW4EKMjDS+JzaTeiDroox1Ppq8qKw6/uu5Ysy
	tKUXBFu1JKobD3Z5mwezDtr+V8j9bFfslNZ4W1C77HvoySgsOrJIbCLmYkQ3xd+hQQ0azWm4TS/
	AuEDw0gfLMPRKse9F53oDizQHfLOddJ7CQ6H7G5Z64/LjI35kt0zme7z3kV6c/hZtwhXjGDGJZr
	PxcJjc928mjusz3UtzLs89SWBjPbRBDVrX2Byn9cVIy3KRKlFVC45Le3VExg==
X-Google-Smtp-Source: AGHT+IHar4ykqVMzVnQnpMNRdCULBt0TW79PeUZzYouW3L2ifb97HosTgMs4SMM16AylRCMZ0rMIQA==
X-Received: by 2002:a05:6000:1862:b0:428:3ef4:9a10 with SMTP id ffacd0b85a97d-429a7e8500cmr3696482f8f.54.1761666306579;
        Tue, 28 Oct 2025 08:45:06 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952ca569sm20562147f8f.12.2025.10.28.08.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:45:06 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Wentao Liang <vulab@iscas.ac.cn>, Johan Hovold <johan@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>
Subject:
 Re: [PATCH v4 11/16] mtd: rawnand: sunxi: introduce reg_pat_id in
 sunxi_nfc_caps
Date: Tue, 28 Oct 2025 16:45:04 +0100
Message-ID: <3574896.QJadu78ljV@jernej-laptop>
In-Reply-To: <20251028073534.526992-12-richard.genoud@bootlin.com>
References:
 <20251028073534.526992-1-richard.genoud@bootlin.com>
 <20251028073534.526992-12-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 28. oktober 2025 ob 08:35:04 Srednjeevropski standardni =C4=8Das=
 je Richard Genoud napisal(a):
> The H6/H616 pattern ID register is not at the same offset as the
> A10/A23 one, so move its offset into sunxi_nfc_caps.
>=20
> No functional change.
>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



