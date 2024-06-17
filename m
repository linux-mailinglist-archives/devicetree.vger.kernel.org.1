Return-Path: <devicetree+bounces-76346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD7590A507
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 08:16:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DE5628A53D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 06:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4710818F2D9;
	Mon, 17 Jun 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eSmumMh0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2291850BC
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 06:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718604496; cv=none; b=ka7dbdKkW0slY1Eca0xTl3Y1ukVkpmSF/kkhGQj5QcJn4+IE17dDQKmppbuO2nMmhDVlS9FNN0+dGfccjKQupEp5TObOTuYIrjRPiXtIeN3hoqMn4+Tnb7PBMRr5ObdStwcNkR1fyUC65p9D4mRDWyzvnue6aQMKh5hBBx+xNi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718604496; c=relaxed/simple;
	bh=mgUuVohalOi7r0OHx6FioJYNj7swU6RbeOigo3AIq0w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OHEDJVipo2nXpv8Ek2SKFbyH5wPgHAZum14mE8eqAXAo+hSn1K2WK89TrLyt+dBsii6K2Ms0+fta4VaGjWKZ9uMX7Nwhad3rK0I2DWiWH8iRjYKKEOC7h4VyqKXkyQbHuR6L1XtYRlp2L+x5xOqFcMuGZgcDTi2HtTn8t1kB+50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eSmumMh0; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-57c68c3f8adso4736051a12.1
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 23:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718604491; x=1719209291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UKO8P5Czfx1WnhafBBluB8wH3SA6wYMPe7gjBVA/Pmc=;
        b=eSmumMh0yRzDtQ8ou2GMw+/m3arcDoRYRMnYaVdvxXkiz1acB08onHcnaDneWg9aZl
         qAeVNuxEivdSfdX6aauN8KDq2IcJyJjrf4NCXUNiLux+HJwK06K8X48khUaC7NUl0u0N
         l4TJU/qjHtPrv68T9kPEoAyll61CBS2Jn8TZjcvVXoXBBWGihM6FKbOCeJiZBY3GRYdz
         vsHCuGmNhaIrdSFM7wD99lyRFMX5851Ql3jNHSr8LLM3m/8pe1t6Y6t1hz6sPgF7wsWE
         bER4rweoTqIjbwQCNs9Yg/IhHmOggTpGPlBI/KXBbafm+f4xuu5eSf5Ak+WivxuYGKkg
         2/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718604491; x=1719209291;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UKO8P5Czfx1WnhafBBluB8wH3SA6wYMPe7gjBVA/Pmc=;
        b=j4SMtfzAEbd5wWEO2n49BSmdGf6IpbLmRY95idoPvuyxM9CU+f4Ya6JnUFBnaCphJ3
         r4Y1vaERi9k7lrRRgTNcREUkgNvxzD5JrDGeOYdz2GkPSUx+Lao/++/enobDHkvXJ38Z
         EA0HOoWG0gR1EW+7/vr11PVy/I9cjY+I9wLgaEO2tyvi8sgmgb/zjH20OTezObtPeAiT
         GW2hwa9iQeyPyX34n3Xt1T87NzYabvnpDA0b2lzq4+cymt43SQrj5zc/GecmH7LAFcuN
         FE9Fc+W7Hm79236mRnvDAhpmv1iW4YYVpeZIltvt4naE9OSEI5Y50B4W5Gia54JbJLpA
         OYQQ==
X-Gm-Message-State: AOJu0Yyy1qTseUn+c/kj9mqL+dhsvaFrs7jWFEFMWFzB/YvDdAMi0BOU
	6y+bGapLRxC3bGrR41Kd+ZV7eTIikYD0hxiItdC4rXQpKm0kSgsicnNtZq+x+0OBCa6c8bWPP9/
	q
X-Google-Smtp-Source: AGHT+IHRI8/tCYc6BnuV/uya/p/psKWyF0ePa5AAATsxGYnpRVPJ3Wrjsh2wX3DrkHiS5SaLt/GHeQ==
X-Received: by 2002:a50:d6d3:0:b0:57c:6d9a:914e with SMTP id 4fb4d7f45d1cf-57cbd69e7abmr7621408a12.30.1718604491461;
        Sun, 16 Jun 2024 23:08:11 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb743ade6sm5937491a12.95.2024.06.16.23.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 23:08:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Michael Walle <mwalle@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240604142249.1957762-2-mwalle@kernel.org>
References: <20240604142249.1957762-1-mwalle@kernel.org>
 <20240604142249.1957762-2-mwalle@kernel.org>
Subject: Re: (subset) [RFC PATCH 2/2] dt-bindings: memory: fsl: replace
 maintainer
Message-Id: <171860449047.4724.10770903267718231915.b4-ty@linaro.org>
Date: Mon, 17 Jun 2024 08:08:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Tue, 04 Jun 2024 16:22:49 +0200, Michael Walle wrote:
> Li Yang's mail address is bouncing, replace it with Shawn Guo's one.
> 
> 

Applied, thanks!

[2/2] dt-bindings: memory: fsl: replace maintainer
      https://git.kernel.org/krzk/linux-mem-ctrl/c/815cc7715ab183701de42b570a28b4e3d877ef6c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


