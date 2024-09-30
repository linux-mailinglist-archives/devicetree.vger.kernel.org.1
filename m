Return-Path: <devicetree+bounces-106420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3458D989FA6
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 12:46:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6658E1C222C0
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 10:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B01718C014;
	Mon, 30 Sep 2024 10:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IuoSAus0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3E543155
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 10:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727693172; cv=none; b=eiycUWR8rND2Yoj2VTa1Nk0zW4m7Z6JUOKnQLW1khn6zyvomCwinQGRdeFDXM9njoNUZ5WiHb4MrnViiDDyr2hYwDBOQVsQCU1qBg3fFc9amfQwSdA7SGdmxeT+NOHL03jOljis+3uvz0x197RGCtyMHXgk4BAMbnqDXbGQ/PgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727693172; c=relaxed/simple;
	bh=WgmAWdhnVHJCqthbZexYZzR19w5rQpCuoBowws7Hp7Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Om/7BMMMEu8atTrB35nR9aKBDoRmspTqSKfOXQOSpTzhZv7mtMooRk88CDQWxwVfXseE4HVmgp2M5tn75FuCsRY8vZdKnZ0NWuzhqjnYf/aYFcFdS4Fhk9P62GK9BIQnvZE6kQkRuRsnZWyO283es7qE/zWu3RKhQ/cNA36mUUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IuoSAus0; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5c8835ba4b1so561009a12.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 03:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727693168; x=1728297968; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vbHVTx2eRiNgxrAOA2z8vgvBG35XROi0+GKzueTB33k=;
        b=IuoSAus0fvYAydUb7gbk4CDAtIBCbr7zFsauzP5tDJB6CnMuN6IzPEw8HsHeiPPbXw
         4yaBUONKCsEXD/R4wDQ6v6Vet5aO10uvZUcVI5QEpI2ogMRdvd5/TWtpLDww/UVKkt2R
         CDq5qLGQXPZO5AnHhMp6Nv7aDTAA2J7K7jflStQ9WxBb4HXh6z/lC+/jMrlsVq4ncTkw
         4GdOkouJpzMarezzNzqKV0AbsZZBcYt9/PzelPjRJyYeVDoTz1X6lze6bIWkKk0+iyCq
         Y5uBdiPN6zQ5EtvkvwvCYlkkRMbr0lbhwszLeRjA2PcqcEMU0fTCEC0Qq2aH0bfp9tDI
         np+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727693168; x=1728297968;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vbHVTx2eRiNgxrAOA2z8vgvBG35XROi0+GKzueTB33k=;
        b=d3e8ZKYe9PHM5iWqgDrIjgA/g9er16pMqZ5bzyAqlU/KEHz/Fb04SxNlHcGibSVnAj
         QDECh45LkJsTVTjXn2EcrW58wf+nhdfJPZb4gLesLz46EdOny1B+3Ygko6pS7KWz/oY0
         39dDGlQFf9uG/vJAjspyigpvwpXzGQGL/oraI6WOxXEjBdHIouPqOVs2TQFEJUoLEEQJ
         1RI1npmafDnsOfmItbt7WUynzfLyb7xHIOXdcLE7TIbNsJ/EYyuGDZ5JDj4trzuNQV7+
         1kaCWRGDqdNtIVdLMS8fDbKf/ppsq6ARaL9GyL9wgPx5KPbWlztAOm/JJ4KPBLuRKrQm
         K7XA==
X-Forwarded-Encrypted: i=1; AJvYcCV1AOmAA4caTWlomtGcbg1tKa8/XQdf8EOHvPtw+jkw+NJVTY9ug1Ekhaq3gLXYEm9NcnrWNVFPjwOD@vger.kernel.org
X-Gm-Message-State: AOJu0YylYJh4m9XJ9pmMHpamYwoaiy6mW82HdtC5F+lrdrYtj/kJJ7x9
	Dsoi7B8VThFtokyRUJt+a1DW4kKkS0U6/qtGDmZ7uzZobWxQ2MhGhkhacP/09ys=
X-Google-Smtp-Source: AGHT+IFHembOa8x5rUT1ds4+ai8M6G7orJf5YCQHOpgWKvx3ElxTstOvoPR6aBxDBnte1bb0kpLemw==
X-Received: by 2002:a05:6402:380e:b0:5c8:8381:c2a0 with SMTP id 4fb4d7f45d1cf-5c889b30e51mr2944919a12.2.1727693167742;
        Mon, 30 Sep 2024 03:46:07 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c885f5336csm3387933a12.97.2024.09.30.03.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 03:46:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Michael Walle <mwalle@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>
Cc: imx@lists.linux.dev
In-Reply-To: <20240909165358.2384975-1-Frank.Li@nxp.com>
References: <20240909165358.2384975-1-Frank.Li@nxp.com>
Subject: Re: [PATCH v4 1/1] dt-bindings: memory-controllers: fsl,ifc: split
 child node differences
Message-Id: <172769316609.26942.4799733036157642363.b4-ty@linaro.org>
Date: Mon, 30 Sep 2024 12:46:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Mon, 09 Sep 2024 12:53:57 -0400, Frank Li wrote:
> ifc can connect nor, nand and fpag. Split "^.*@..." into "nand@..." and
> "(flash|fpga|board-control|cpld)@..." to better describe the child's node
> binding requirements.
> 
> Fix below warning:
> arch/arm64/boot/dts/freescale/fsl-ls1043a-qds.dtb: /soc/memory-controller@1530000/nand@1,0:
> 	failed to match any schema with compatible: ['fsl,ifc-nand']
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: memory-controllers: fsl,ifc: split child node differences
      https://git.kernel.org/krzk/linux-mem-ctrl/c/89e6684538f59093d89eda50e30a6f2644b06ab6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


