Return-Path: <devicetree+bounces-211297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6597BB3E4F9
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 15:29:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77BBE7B18D8
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E434B338F4D;
	Mon,  1 Sep 2025 13:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DUQmjJWW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED9F33439C
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 13:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756733205; cv=none; b=KapkIzvXi2Hu1DJyRY3nbt2J8Hr3BVBzEXqLm/RoowX8xoK3ESJFHUwP9XYizgDCUekgpkG0nTZc8aot68LHhQBN0rfwUc7m3IOS13kg0jzoJfmRQqoC9a2WhOM3ClFSCI7zrTITsCf5l31OwIxBNZWSvIDvm3pvasmNdATMLlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756733205; c=relaxed/simple;
	bh=9zJLdqtOKjBpkNMI06ViEGQW2gjiowt6JmR/C4Vpi6s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tLp/O+seKGskbz+nDNcE7KB/2f7JCwIulRGe6mMsXt1ADC6597ow9uYuwBP+srBAKYhObAWAZbPdQauLqrJ6G9z0+QhKo6ixavIiHP4ekuPpwwcd6SOgaZIVq8eZVZdPGwowwmff4kcd03y/drzsdJWWuPkjCbirDVWa3hbZ5Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DUQmjJWW; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aff08beb8b8so50014566b.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 06:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756733201; x=1757338001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICiwcLIU71Izuhu8fP8tVO8odVf8d1Nj7kJu4RHQNHg=;
        b=DUQmjJWWhlAgiKNReCDRFHM3BetprA9OPQvbYuNF9TtKpOMoCF7DFpJQhOo+RR2aNj
         ErIvAoB5sPzHHJvjMdYdCWMgfrPAKY4ccw5f/y/uiwnuJruxfIOzy3XsAS8/fRzxX0Mq
         2my0fE0uvKgsWMAyr2UIozPa0x5xzvOB/3ZkDd5COAspgM1VvBpKnUlK++0WHRuRsPK0
         z7u/UiBIhBeNhSOVT2Ok2EcpxpFRN9qnNXioEO6rGmOHvGdMP3DG0WtPPXYyD7L93C3C
         IyPeKkxA40Xsf+yJcA2lU4VoWxsree4YBoUJq9U+EatiAvDzW5Tir4KUysgpuAKbMuvN
         RmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756733201; x=1757338001;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ICiwcLIU71Izuhu8fP8tVO8odVf8d1Nj7kJu4RHQNHg=;
        b=QEMjhqrgasvuarSflVJb6jTVwm05R2zNRUCmp7HNEoHUJjU5Ej/D4WWsS9nPwG905g
         lzjiltZO3/7cYpv3/9dCLZ+ZR1u3BvU+if1gzNoLM0tw8ya7wenRtMMFHJpVIKsgphMa
         bkZj+mXVpOtxc59lACXUgEjg9jLuDL16RmDhp20W6MHMrN7WwkN2tazmQ27RjMFraSXR
         FGKMFZ/tvTRMgNeTeezYfphlNOSfP84ZWkgFy2xbQr6NB2RSra5EH17Ey/hYPe3oxrjC
         xIzh0RLIp/gLv3MejHjTNN1NC9GUpUT/M94gtR5TGph3ZDzF2DGwu0aoYVNYPmVkZie4
         Jccw==
X-Forwarded-Encrypted: i=1; AJvYcCVQ45iiHlRfN+ldKSjnhgnv84TjLFkFg7HkQSk9T1PPNysNDxDjzmnU+6RmRgyqtZHazO5I7erZS8OE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0NZBoy+Yt/sW/QSfLTHaFI9E2SUEi/DtgZCzniajtTLve3sOQ
	1QC05qtPw4xX+EsCYa+PSY5XHei0Iz75nCW7hbzA55wPQJ7+LZbRykRab8rCAWpdzXk=
X-Gm-Gg: ASbGncv1IbeBTXSUYw5MkCt7eT9AsNesXIZyP9nFPBt07U8ABhVBP+gcQcQySvn0vq5
	MgCr1VQtEZAGDpiRYJT2cksPuVXzaPYSc7NdaUDyu453UyCdGg139aal3+elCtKm3NFyJ1yp27U
	GHp3CGV7ezBMvg7G7n5GilV6GTnNDSRF35IGWqauyUZwu9R3aL+Xe/2Paw9oDMAzy/bEPkBMHuD
	UVJBY4GRS1HXT3XmvwjX7yrrkhpg0QGzBhh+JzwjQd3TOL84CZt/VbmLHFaouhKpyoyd0tlGUKs
	EklEA2HsQYerikWeXQivigivrsaURIwqnz/9e/w86PYQJzf4dCX+pDY4h87TZwA4CV3j2B1sX9M
	yNTo38FhetJtKwiWUqAqk6IBa7jFtOkIhcqgdaFU=
X-Google-Smtp-Source: AGHT+IHQTmAvbsKv0D4j4Hvyh4K0kyRVksjF4qrxn2f9tAR+H9KrYnWzvnDmgth3oDHi6jyc4O8txA==
X-Received: by 2002:a17:906:16da:b0:b04:1fc6:1347 with SMTP id a640c23a62f3a-b041fc67c80mr223542566b.0.1756733201076;
        Mon, 01 Sep 2025 06:26:41 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04241b2e7esm305997566b.43.2025.09.01.06.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 06:26:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
In-Reply-To: <20250830-s3c-cleanup-nand-v1-4-05b99ef990fe@linaro.org>
References: <20250830-s3c-cleanup-nand-v1-0-05b99ef990fe@linaro.org>
 <20250830-s3c-cleanup-nand-v1-4-05b99ef990fe@linaro.org>
Subject: Re: (subset) [PATCH 4/4] ARM: s3c6400_defconfig: Drop
 MTD_NAND_S3C2410
Message-Id: <175673319874.45844.111501190462962489.b4-ty@linaro.org>
Date: Mon, 01 Sep 2025 15:26:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 30 Aug 2025 19:01:12 +0200, Krzysztof Kozlowski wrote:
> MTD_NAND_S3C2410 driver was removed from the kernel, so cleanup
> defconfig as well.
> 
> 

Applied, thanks!

[4/4] ARM: s3c6400_defconfig: Drop MTD_NAND_S3C2410
      https://git.kernel.org/krzk/linux/c/ae6f637a456c1de75a582afa9cb6169813e89b83

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


