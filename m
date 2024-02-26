Return-Path: <devicetree+bounces-45853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C39A86708F
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BAF51C2816F
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 456AC537EE;
	Mon, 26 Feb 2024 10:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cIxFLjrP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BECC2032A
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 10:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708941766; cv=none; b=eTmykoTmYAtbWp3ce8nQI/+ENFuvX2bHl8erV0aBydSq6O5BLvN418bnX3fwx8W4cPdEq29wGlQFBsItuCXeM/li1a7k7KvDX7RI1X9/a03zleSk0A1SWA0q6XtSkjQqzyp/IFMBPysGlWEXeHzHhfcaJK8++R/1uet7ZiMjAYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708941766; c=relaxed/simple;
	bh=FMXE677AO8wWequWg/647kFxLIZ8WzSQjNdPcXIe84c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gQVCMmfU7i1XFMfvcKrz6LXTB9sp22lEEvy5LoP3y74Pjcvfu/iP/sOBTf2pRCvpiMUuqq7c+HEGDotQYS/0CC0r97Y6LCkMnzODmbZZJ3W0wzfPnrJsRE2cW91AU51vLavgVGPDJqU7crpxuakgZtpvUygoi1o6I3+PgJXz2EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cIxFLjrP; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a3e891b5e4eso322828866b.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 02:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708941763; x=1709546563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jsfybu/J7fq2BKb3fyxEbQKzNC70FxEDrNxyD6UJV2w=;
        b=cIxFLjrPrCsa1o1j4ZxDCcrXDY3oIwHYHWfsjLfsYW4zO8z+BiPdvY+MpgFOGjml78
         lktAZHqkGofhJfv9AUF6CZ6Vp7cYDm+PZl7y4nbpyG1KApvRT8tdUOA6y4ai29J7ZoI8
         lZGrzIOVgocFIPQraye2IShvGesgv1W5cJAjHtu8JSQGjXr7wEIRZq6JWoHfOtA5lKqS
         mt0AHBvnvkJsYUZ7ukM7ZEXhFJnBNJeFFdlls7OyX20FDYILlXpC8ENUKgsHq3T9RdJ9
         gSHAc4ruYOWyQLRTfrpBApjSflT1nZqMur6n+uNZgCW0yCOrhWVQkB865bcM29fTSuk+
         dW7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708941763; x=1709546563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jsfybu/J7fq2BKb3fyxEbQKzNC70FxEDrNxyD6UJV2w=;
        b=VYIRh7bZUj8wwO2cI1WdeIQjDb1xmWtYAdJs6pJJJRwex6PLsRbfMHS/HP2WQnI6JD
         zCSikiO5o0ErXSNLW0dpIcUevOhS907aTPeBHcs/j3svwS/+S2G2N2OkIaWyrwH+B3on
         tUfOs5LFV+PdtGeVG6iEvt1M7SoLxFEaNDiJp4JJyS3iBKfR63p3ku+bDNXUM+j0Bgcj
         JMX8pBfvu1qOZFn6wDDxmfcmwIsY6e2k7keFSK/13UhZXeFsJ+PfuK4KYjYCiRv3rfm9
         4qre/YKPXYRq73iF6EGgp79bA3yNXN7a6aD+39nw03IimwtC12aOqatFQGdZEu0/o886
         m05g==
X-Forwarded-Encrypted: i=1; AJvYcCU3ybeLHeKMtPgC7XHXwElorasDQPz/XJgPRrgEj3r18MWRPhLCCB0nKIDRd7w3ds8X6brPljddf7eChv4Kkfrc2eiIoGednrd/Pg==
X-Gm-Message-State: AOJu0YwYzdmkosV/Y37dTYgVANOsXi+JAwzzlqwPM9vm8yz9I7+fuH9/
	akMXbBetS/+cIJEeEuAUyQNr07k9StRmz9A9RwFq2GML8av+5+OE1SvHOUyJmeU=
X-Google-Smtp-Source: AGHT+IF5ob2nxmdMYoXYiTfxoywwvzuSWhSgCcUYqYf7yAuMkb9+/iKNXTtfGae++7reeSVA5ElfRw==
X-Received: by 2002:a17:906:4f95:b0:a3f:52dc:6a21 with SMTP id o21-20020a1709064f9500b00a3f52dc6a21mr4306694eju.14.1708941762699;
        Mon, 26 Feb 2024 02:02:42 -0800 (PST)
Received: from 1.. ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id jx20-20020a170906ca5400b00a3d777aa8fesm2258764ejb.69.2024.02.26.02.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 02:02:42 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Pratyush Yadav <pratyush@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-mtd@lists.infradead.org,
	Josua Mayer <josua@solid-run.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7] dt-bindings: mtd: spi-nor: add optional interrupts property
Date: Mon, 26 Feb 2024 12:02:37 +0200
Message-Id: <170894175149.30146.3207560853406450700.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240219-mtd-flash-interrupt-binding-v7-1-206e30a656fa@solid-run.com>
References: <20240219-mtd-flash-interrupt-binding-v7-1-206e30a656fa@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=590; i=tudor.ambarus@linaro.org; h=from:subject:message-id; bh=FMXE677AO8wWequWg/647kFxLIZ8WzSQjNdPcXIe84c=; b=owEBbQGS/pANAwAKAUtVT0eljRTpAcsmYgBl3GG7RxwRnOerZC5wsNaIk5lFzF4BjDuzFg+Dj BY7/tk64LSJATMEAAEKAB0WIQQdQirKzw7IbV4d/t9LVU9HpY0U6QUCZdxhuwAKCRBLVU9HpY0U 6Z7+CACw4HgtlaW+WJ9I5b9WPhh6l/AMqhDc+vLlwQrd57Yfz7D54Pxvh1e3LRlJNTUU2Sf4PYy KUbirTSAaVvrBrPHXkMwr2dIN6aF42j1s1xZBz5Cvykcs2m6sEXnSKQlHyONVnV5cP7zw4w6YPZ 2wE6EyoxLkfpvZSAHIMjpOXkVDcETLwtdHGpctE1ORRSHksUc52TyMWs+6WWuYqGnt2q2Nff4m5 /NoZB38BMW38A01SCil6lc0uV+E/tXvO/sPSS8eEVBSsQkreIAevUNpus5Ltg/x7X5UuTG9DVwt eDg6FGQxEjDwPmZGYGEX+ctOOocmWo4OkSp2pyalupIBcbKi
X-Developer-Key: i=tudor.ambarus@linaro.org; a=openpgp; fpr=280B06FD4CAAD2980C46DDDF4DB1B079AD29CF3D
Content-Transfer-Encoding: 8bit

On Mon, 19 Feb 2024 15:41:19 +0100, Josua Mayer wrote:
> Some spi flash memories have an interrupt signal which can be used for
> signalling on-chip events such as busy status or ecc errors to the host.
> 
> Add binding for "interrupts" property so that boards wiring this signal
> may describe the connection.
> 
> 
> [...]

Applied to git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git,
spi-nor/next branch. Thanks!

[1/1] dt-bindings: mtd: spi-nor: add optional interrupts property
      (no commit info)

Cheers,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>

