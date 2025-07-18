Return-Path: <devicetree+bounces-197541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42193B09D0A
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:56:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4420D16E0C9
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F00B1293B7F;
	Fri, 18 Jul 2025 07:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Bsl2feXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529A3292B2B
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825379; cv=none; b=nz0hcSQkCfPxnT3AS1AYqWwFqim2ynWIFfdswxSLW8Kou6rRCFmWi+lSQNBwfZM0M/4GmJ6KFtggzjcUsLpcWwzOec6kp3C6Fb23I0tF5k6Xuzsz7W7z1tImXdhG/7IDnisZ9MuBkWzjwAeCPg6Qd4A2YELBtFG+VJ3LmeTC6tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825379; c=relaxed/simple;
	bh=NJZN8hgycw4KG6QsQ9rNrS+Y6LgwUbbQtk6jxgqvXjQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ay2OSGiRMMMsuH5h1zpQqbnFu+UUISJtbca83yDalprlWW6cKKsF5PgDisx2vEIHa5JztrCpTqfz9IpeddTRsrYpI2YOrJfVPm/hx4tPtzVbkhsSgHctQzVMH20xy18XbLjMWBBwtW8plKjB5f6D9oE+niwpopCT3fzig7OIykQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Bsl2feXb; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a57ae5cb17so895295f8f.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825377; x=1753430177; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWfUo/6dDFw1FM+gvXLgmmRPvDTEti2xWIYY3nBbLRY=;
        b=Bsl2feXbkRBu4wzKtk4iEhxvvpClzwYV4eaboiCowyw+EqCXe+x9VTWpakOnKRx7K9
         kqwN3SSRuoQgUwhifTGozE9VL4cfcMVkIKVZOMnOg+I/bn/6tHMj+91gtPkXuaZPZxeX
         AXYd+YD/iqaJzm+KsS+5DW08h3GyFAonc3csTaEOlRJ/EYYXK9SjZzt3iQtcnw+8AaOf
         sR0VrTAZZBKKLf0o33g3+8Tt3ZC98tK20dxBh36A+JHfhk1REr9n/63RjWE62juf+37S
         jvnTKdSqoyzdcZgPpcbaYmGpgKAqUIecw0lKmiOj0cr+QB88mmN95h5B9h7QjnVKx5g6
         nzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825377; x=1753430177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iWfUo/6dDFw1FM+gvXLgmmRPvDTEti2xWIYY3nBbLRY=;
        b=DU+1WtzS4xoyAvqX9HKdYHYm6xqL9mRghPx6TgjrfA+9XK1wBX8nBkQT7qni4pKkS1
         InOtzRNSwpi/KFdYftCypRK9qgdkgdCNU1mwGiMNIkciayMERvsC3nH4DFZhhNKDZzGC
         2/PeswYIDcEdq30ThoTJ+DdlHDqczpc50aBlCTe1b4wQIJ20jZE9L7wdcjQZOKFnOc4J
         TihHNlRMdKQgsumj9bKnjbnA1PEwUybBLHbgN5Qkm0TGoS/D6H5FdOiBfZVv9R2mnFlH
         Cuj5dHqCTr4qVBuH83w/Ro//ZOVP8Lzkjh9ld8RzxqXA/sW78GLqyk62oTJf/Mi9pzn2
         NZyg==
X-Forwarded-Encrypted: i=1; AJvYcCUVAl3y2XQoL695KfNGPfLlAwf1Vn/hj5yE/shpf2aq1RmOha9Gh5S9F+SgBtpZdANCUwdX7GR8EfCO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvd4cd5PWuweBQrBjpu4aWpxaCfYN8tyB8GoHN1Vfz0lkos8sb
	WYE6AI/zLQ2WZBppTyi4tWrjY4akftC0gT0zoxDX+WcuyAKnRrVkuSgF1njQ6jQ3CWA=
X-Gm-Gg: ASbGncsZGr7RppkfFjH3hDp4Paa3mOK9wCUpP8e5hg0bxFBJ258s9NketroSG94oO7X
	J549DZS52UkmIfx+PoUMkJ2YwgehlowFdfyxqRkvdyJ2y+6XI7HBqouOGCf+CtC2aTrk5MV4vWe
	j2OAy1bTcz3Yt/eC431jezBFCEhD4g01UCi7KaqVSI7ahx+hP1rArMquMzItXsGuV+g8jQhW8YL
	VDzzneNoDhTH4x+327voWvPSoZHlU4QPHfW27F1/1e8/7C4Ej+MpnCPRMmXwBSO9Yie5P+HJeIn
	/j/8twvaWODStqmWwq8bVT5tVrA4z+5pn6bA3Fvvnw5bjVa5qinbfg9ks9MOhB9keUSpD49Wywf
	7ABgCpSEFIvhdYGRjjjms
X-Google-Smtp-Source: AGHT+IH8XUyHLBPZMCRZz4IjMyxBspWPxDe8Oe7fxSSb9/becL+d2Pfo1KQXdCUI234Fqguoxcr0kQ==
X-Received: by 2002:a05:6000:40de:b0:3b6:1e6:c9fb with SMTP id ffacd0b85a97d-3b60e4c510dmr8574712f8f.11.1752825376620;
        Fri, 18 Jul 2025 00:56:16 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:16 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Mathieu Malaterre <malat@debian.org>,
	Hock Loh <thloh@altera.com>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: Convert altr,pio-1.0 to DT schema
Date: Fri, 18 Jul 2025 09:55:48 +0200
Message-ID: <175282531513.45055.13269786357124112170.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202905.3012386-1-robh@kernel.org>
References: <20250714202905.3012386-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:29:04 -0500, Rob Herring (Arm) wrote:
> Convert the altr,pio-1.0 binding to DT schema format. It's a
> straight forward conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: Convert altr,pio-1.0 to DT schema
      https://git.kernel.org/brgl/linux/c/695f375b2a881544d112edbb60a35a884c7604ae

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

