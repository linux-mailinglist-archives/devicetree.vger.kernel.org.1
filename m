Return-Path: <devicetree+bounces-35741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA4D83E904
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 02:37:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B94FA1F27E7C
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D80899470;
	Sat, 27 Jan 2024 01:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dCkJjqS0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048CD944D
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 01:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706319448; cv=none; b=DMqlQ9og1V1NQHebj8l9ZJ6yPpdlqeh63vnzJbJ63dZxdqsT4/xg57By4+2JGb9eWdDHa+s4gMgPc0XQZz1+QLFlPlwchDshhioAKy+zrs1cw+s/Eri7sfPL84dBr1wtK/lO4qAnrpCljoiy/GE/WLS7AyC8nvK3uuPbJ+j4JIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706319448; c=relaxed/simple;
	bh=DYj8tn+3Am911Ik0jx3jOUWXXFDXDOrUv1cfVZEFjMY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SKWFho4Oc6iqY4pnOA9W/obPyT9gam1rdyzxTCqWwV39t6Scl5Zyw3jvk4rrLz6VagaEwIh+OCGuLnSBWhpS7DveD+oRcS1XtkSh8JxDAlmc7F1XaYSm+RdZgE8iun6sw7WoK7qNTPtpXDBGcfXTQ8kJMN1UQ1BBvF0HQGiF0ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dCkJjqS0; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33ae3cc8a70so100159f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 17:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706319445; x=1706924245; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zeFz+NtLoAQ99uBFeabvQ2L4PFgMX2DpcEuv5deUslc=;
        b=dCkJjqS0NUJGE1e+H2OGV08Z6njmaesCwefjhnF3aZFh+4MPGtK8Mf/64RqHZFx80z
         iyw71WAHZQDFTDAzZGxlooQikMbWQym6AdX9pWzu/mvo6vfpifL5FsKTZ0wdRBzGf0O+
         SRPnh3+HCDS2lq1uREIxLP21ScEN4ncg8P/w0+eoN1xUR5ym0Y2/mqgOlhyhpt1DO/qY
         YPdE3HcrGioqvHfIqDZvJ/U5UIfSvJCTmA3AcI5+73uc4BArb54YstPB/R/dEhHioqHJ
         CgnoGnxSisFnR4h42CUWhM4GdWpBUeWFIPk4eXhRhwx+ISjHiwg879eTmRw/MhWL94CE
         NFAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706319445; x=1706924245;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zeFz+NtLoAQ99uBFeabvQ2L4PFgMX2DpcEuv5deUslc=;
        b=mNx3DqK+3iriUpCufXAuUZbCDlFiXfj3WlzaZytCSTp4qxba8zmWCcWR+mzdQsv9D+
         2fVsuDqYpm00jYQAhOo33dy1wUC5UMbs56z7T6nBJNh5t6LVcNlXNYed+K1wqiACT85e
         /f+M6idmOkCHTdB8sahIB20FTeFfC4HQsTmcPrFsNOmyvemPECMtiLh3xo7A3a1Uv6Iz
         s5OpjoK2pSQXaruM+N/4avaUlpZucrxb9/1OL4gIoeJ7VTNM0hw9TjjSWXjRMm9HImrz
         kJ0gQWfKTiIjj0iyXPbT6ObR1WLgnu4xbnblMQnAq9+CVKYkHCxGhaMSt9qGJJ8Gh22e
         pRIg==
X-Gm-Message-State: AOJu0YyKB+2idjFoqS6i+T6mNshYvnRTX34IdAAwXqm2+m+i4pSYoNsJ
	cBox11vzKvX2SegEamSQU4W/6u2Oo3vtJnL0ECs7o7Pgz7rC5Tu5B6WtQ7zVV+4=
X-Google-Smtp-Source: AGHT+IG7o3FTd1/T/dXyz8w5kUpeTwkLM76RKnG6DH3eIKmaAhEFR0fu3enxkI/xjOD4tjrr2K/sfA==
X-Received: by 2002:a5d:54c2:0:b0:339:357b:f61a with SMTP id x2-20020a5d54c2000000b00339357bf61amr325905wrv.32.1706319445215;
        Fri, 26 Jan 2024 17:37:25 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id fa7-20020a056000258700b00337cef427f8sm2377408wrb.70.2024.01.26.17.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 17:37:24 -0800 (PST)
Message-ID: <67b2686739e64bad4fb4f84cec0d0f222831a2cb.camel@linaro.org>
Subject: Re: [PATCH 4/5] arm64: dts: exynos: gs101: use correct clocks for
 usi_uart
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: peter.griffin@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, 
 tudor.ambarus@linaro.org, willmcvicker@google.com,
 semen.protsenko@linaro.org,  alim.akhtar@samsung.com,
 s.nawrocki@samsung.com, tomasz.figa@gmail.com,  cw00.choi@samsung.com,
 mturquette@baylibre.com, sboyd@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Date: Sat, 27 Jan 2024 01:37:23 +0000
In-Reply-To: <20240127003607.501086-5-andre.draszik@linaro.org>
References: <20240127003607.501086-1-andre.draszik@linaro.org>
	 <20240127003607.501086-5-andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2024-01-27 at 00:35 +0000, Andr=C3=A9 Draszik wrote:
> Wrong pclk clocks have been used in this usi8 instance here. For USI
                                           ^^^^
This should read 'uart', I'll send a v2 after collecting any other potentia=
l
feedback.

Cheers,
Andre'


