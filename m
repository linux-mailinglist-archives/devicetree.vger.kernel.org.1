Return-Path: <devicetree+bounces-232217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BE3C15895
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:41:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20A4058378A
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EF1346783;
	Tue, 28 Oct 2025 15:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fauo+yoi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F414F340A47
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665703; cv=none; b=U6dU0Gml2wuRCpSpnhn0EvyzO2ExpdqSPQONDsb+zS9H9ZY2Kay2iDcgZ/o14foXSl/pilNImVN5vRCpn2sjZX44WfzqWfQuKkle4AbrPFAwA31etRot19Ts4LrX3cE7LkkQeUeBRrSHRx2gco33XTd8WM4BX+C8unIyZ2PzjjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665703; c=relaxed/simple;
	bh=+zf/L6+BpO5HiQmCsVmEtAAefad0gqPlx28ytnkqVYY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BfBJqcQkFZ4sg28hkxwButMbi5+/xSVcE0xolOFhG1IS8Bhs+gYWTtFhaku6jd0iYn0Lx8txU4tYH9XRXthJxnHbvQMkM4ixXD4mCLqkmX/6bWDLhhivHJwBEDl4FRg7dRzvZpVmWYCbUtnZS55Jxmq1R0XUgfHxPuL/V8PE+tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fauo+yoi; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-427084a641aso4513251f8f.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761665699; x=1762270499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+zf/L6+BpO5HiQmCsVmEtAAefad0gqPlx28ytnkqVYY=;
        b=fauo+yoirp03eUxij6gsr0LAqqhr/HhWKvaC3FIuh8uwj8SyK7IfDi3X4a+MqQyQj6
         vsQuvXZfX6bSyFJNf607+vBKeGsgRQ2hYTKOifWoFwNmmkA9DgKFWwltOXJld95CzFl0
         sbdcmF3MVEKm7YadjCGHP2sPQQ9g27OFgU0tXedTRn81zYb4wQ3nF5s8VfxJ8I5U6MFS
         fhXinAeMvKVjHrCkqfjQcwlTKTYdWLXVy8Pak27fT0BtcHHxyfR32xJ+uyPsfwJkRZQw
         yKPYCK+DaLxieqOfk5YvWxjOE3Mou/Tdly/sgBDneytVJVl8SjR4S7KyaC1oltILMsKb
         EHHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665699; x=1762270499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+zf/L6+BpO5HiQmCsVmEtAAefad0gqPlx28ytnkqVYY=;
        b=MFfLaLID/OJm+Lh28PaXa3xXtv/LBOcWKYM4Y1wXbuUwREyuOC0nJ7IU7KrLtXQxxK
         rU/NmblEAjIVApS6Nu3QKQFc88oG2iGitoiLhHQYa3CwPRjkMKUzMZp4s7tV+6EzmRFY
         hwPxQRUybetjhAhZKDv0jZE3I03nTyw0hgAEe3pzi6cdVaU1GTvWz5zXzcGRme9gMOis
         M6scSsnrTnIZM/TlviCpXDCgSDpm2JfsH4BEbeqTtvAB8O9JBBL+Vb20RF4OWDtntR2N
         7b665PSyVQTjMiLDQc1/xSp3Jh8JEVP8b6nLez/+189JDiotAbHSAMc2JxIM7M1sdaJY
         o/9A==
X-Forwarded-Encrypted: i=1; AJvYcCXJUlZ+H8axq84jYXcSPFMF8uUe5tXI5wfiGCCTVMYZmeXtsJ1Cz+5p7GvqBP3utnqvWiQVXuZahxm+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+fk1rJO0pC21Q5n00zK+ohH/4wOxlENl14duDO21SxdlnxiN0
	pqMriV6aj6J4zfK/qNbrQQ80sg7FrX42qaW4G9/Q9jMaXPLO3iP31kYm
X-Gm-Gg: ASbGncv9mD/sBWb3aeEBa4DKOqcjlriqOuGxxvBv1QD2T4iiDUtV1vYqciE2lpMOuFU
	m6A0LKHdpppf8GGO3LqjV8myl/kV+hKfaexLAnzMBV5819aVKdH0RkYfCC+UOFAdqrdx82tIxbZ
	sTGCRXjiK3rUkBpr4S/fTDNIkstIMj3Ll9YZHjLOI1dBObbvA3jV4I+Wnk9C0q780MdeyrFZG3L
	V0+6rmh0gylEff1yz2EItmJUQs/QUc5Uv4l3wE0YF2aUOek6djqKdOZUFJmxqlY/2qftg86C5Xw
	aW6AQi/O5vKErOrEMfga0j3ZlGZ+7tUre4XxaHEpOW0t5Igy+ZRQLgi6dkU5Ank9HQO9JNBNnTg
	SyWbn4J9zWyprQvOn7RE0ZM3bhkZ+aWleeVThXBZ8c4fB3ZhCmsS1nySEm5HsF4dYN9ejOjYPv/
	5MIeJXPBeReSdC/N/TLt5YFNWZuWmjSUp4pAh1I4+SR3PeXXmNMe0AfnV+MQ==
X-Google-Smtp-Source: AGHT+IHQaqAyFKg0dIVlFNzHvuX0zpZSii67laWQ5yWofyqAlv0IPJ4MzzJSDYza6+cEoyhxJ1y+9w==
X-Received: by 2002:a5d:5c89:0:b0:428:3f7c:bcf3 with SMTP id ffacd0b85a97d-429a7e86b07mr3600391f8f.49.1761665698923;
        Tue, 28 Oct 2025 08:34:58 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952b7b43sm21334532f8f.6.2025.10.28.08.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:34:58 -0700 (PDT)
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
 Re: [PATCH v4 03/16] mtd: rawnand: sunxi: Replace hard coded value by a
 define
Date: Tue, 28 Oct 2025 16:34:57 +0100
Message-ID: <2017172.PYKUYFuaPT@jernej-laptop>
In-Reply-To: <20251028073534.526992-4-richard.genoud@bootlin.com>
References:
 <20251028073534.526992-1-richard.genoud@bootlin.com>
 <20251028073534.526992-4-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 28. oktober 2025 ob 08:34:56 Srednjeevropski standardni =C4=8Das=
 je Richard Genoud napisal(a):
> The user data length (4) used all over the code hard coded.
> And sometimes, it's not that trivial to know that it's the user data
> length and not something else.
> Moreover, for the H6/H616 this value is no more fixed by hardware, but
> could be modified.
>=20
> Using a define here makes the code more readable.
>=20
> Suggested-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



