Return-Path: <devicetree+bounces-62157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 804B58B029E
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:56:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C71828566F
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 06:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594C4158218;
	Wed, 24 Apr 2024 06:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VBwv+W1w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C677115667D
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 06:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713941668; cv=none; b=SgCk3Nrn00vLFJr/NU0btMb/xXOkpVccoXmzp4582HzGnsW1kllBd8q7KcXoe0EAVOBFrXCw3hGC1AW8QIaa0lDI8t1n+mqsEzeQjTyimHhCFTkPd0ZqVioYNWsN31je5YPIIN0RSFIX43dhJ1c+177VzsHfstGfs7yOvn42DJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713941668; c=relaxed/simple;
	bh=f0q/SCjHyB4l4+9ylReVyT+7OsDj9yahqdv4cGOry+E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oWeHDOAmwMjen0ePVG9zX1ldZTW1PokgYuL1plYtYePz6QHU8ke/4FwRLugWmsUEGgTl0oM5KXe8UjIHqHIcZLx3fVjx9RuuiW1CX8qWnEFQaXn6OFWe1YF+LhwGL1R3CTa1sEXUMQxbRXCTSE6AeIepHi36uE41UrMtpZ+AZvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VBwv+W1w; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-343c7fae6e4so5717470f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 23:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713941665; x=1714546465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRaUQ45Y0lfdRSPs57mWxmiIj6o5tQ/OckUEdj0Rduk=;
        b=VBwv+W1wsh0TXRgwqWNyJ9nAc6jhaDLehi2aCKskmBofBCRpgrGhrtPBZJMpUmTCo2
         PbepKz87g+QzODOUP5Ak/qt/Mw686iMmqRUJXfhGF5W0oifNUyrNyjTtzHB8ZP/bkPU5
         OZ/hRqV/dCbkrDeuNOirIflkRJqz8Aw2XVRkYxTKB2LtCyfztfoIpNijLz0QUUs1AVoL
         U1WHXcQiwDaJ7M4J9Rbiihnx+GjQ9wQZ7jPqxkopeYQjSzV5EoqFRtYKhcyfGGnpzqQA
         lwow7yMpwbCf7xiLCR4Pjsa6lMhWuyGc4viD9jIsE8Ht/MPhADCmX1pUv3i0l3ZlM0mY
         jK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713941665; x=1714546465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRaUQ45Y0lfdRSPs57mWxmiIj6o5tQ/OckUEdj0Rduk=;
        b=OWpE4W6xtWUqvfejxkWed0o1p9Ikht5wG4FLFPDefRxzEAuUtZuDzQK9+vWRJcGICH
         OH4EouHIh5U7d2gZeuqMnZw1nM/0q0YyaGYUk43hr+fNOCirdWSfqyFe/i4uiUqyKu3g
         J6lKQHEaSHZuST5klsl5RQhum99p1wFAR7Am+JyLXMv6lTZUyVljXL5W/oxdXpuZ9WJr
         ftLf0QV+XpxXhrpz3HyYISjxt++ncEKCF0yLdbFMzzIyoCr25BGqvBhU6a/2orLpZ66x
         G+1OQl7gSbJSm6J/CvEjNeS4yb6zR5WKpE3Ozx4IDWSWWCp4AMhTC8/JWe2dizsbpQQU
         nKFg==
X-Forwarded-Encrypted: i=1; AJvYcCVoYTfNrD1Dp4WaEzoHjOSPxTXR6yr1R/AaAOP6EBSghIbAXnuy52s+Avs+ur5F2CweBrBVvEPWo0ccAgOEVYMitiZMPPlibf/fDg==
X-Gm-Message-State: AOJu0YzKTsxB90JGMjH4wbL/Sp06c+1jVcTKp3rY3k0kg30jzhCMuquq
	7jFylv4NZged3JtOPKnFwX02Rmp6277UP6X+TWuzddcodq8Hy2s4l6UylSs/qGM=
X-Google-Smtp-Source: AGHT+IHTPfHRbyq2KsOrRsnnboCgi4RGpC8RuiQEReCnEX2cD9AXY1JepKvPGaDosUa2U60ZxbBjhw==
X-Received: by 2002:adf:c00e:0:b0:33e:800d:e87a with SMTP id z14-20020adfc00e000000b0033e800de87amr815222wre.34.1713941665228;
        Tue, 23 Apr 2024 23:54:25 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id t18-20020a5d6912000000b0034997769ae4sm16338534wru.15.2024.04.23.23.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 23:54:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Khuong Dinh <khuong@os.amperecomputing.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: apm: storm: move non-MMIO node out of soc
Date: Wed, 24 Apr 2024 08:54:12 +0200
Message-ID: <171394159880.43787.1062999487824080581.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240402200818.79446-1-krzk@kernel.org>
References: <20240402200818.79446-1-krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 02 Apr 2024 22:08:17 +0200, Krzysztof Kozlowski wrote:
> Non-MMIO devices, like fixed-clocks, should not be within simple-bus.
> 

Almost a month passed, no replies from maintainers about picking it up. Dunno,
looks abandoned, so let me grab this. If anyone else wants to pick it up, let
me know.

Applied, thanks!

[1/2] arm64: dts: apm: storm: move non-MMIO node out of soc
      https://git.kernel.org/krzk/linux-dt/c/0fbadd0568e4dab360d4d3092d236ce5fafb24ed
[2/2] arm64: dts: apm: shadowcat: move non-MMIO node out of soc
      https://git.kernel.org/krzk/linux-dt/c/4a3e011b7b9955f030df1423c7a54f7e4bd874bd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

