Return-Path: <devicetree+bounces-23059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F185580A1A8
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 12:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68872B20AA3
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 11:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9209314A89;
	Fri,  8 Dec 2023 10:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t9Lc24Iz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE65BAC
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 02:59:53 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54f4f7e88feso654747a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 02:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702033192; x=1702637992; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JBtOfqY1WlN9GBQQli+p+rn+QI0FDUmKBYiqjzj8q7Y=;
        b=t9Lc24IzQiVtyrnT+eD3MJq68eBD0A19hXCUvUBAN2NMCpfhdoXAHaSlTZiQUsCC8j
         xIylLg9+baIYb2hRPKOCZZAjpp0Gtfq04xTx4n5nBVdgIIBKmHeGSKYm54fS73SX9ZFX
         OFFhH+O2/XWzT5hDpFi+aCOUQjMCYWMXSGCd4jERHTNx3s9GrDDc7bMCHAjPhijOPjcJ
         1CzlJdmrggJVl4Le6kEVThhdHW0eIxsbGKpPrnzr5oc+jt8XbTdgr2pi/fVgItnbS59Q
         yPWdE3SjcLm8nklvPT08FGRGtxOSfXWFwC0Ezql4519re8gZWABwxdc0718mI/oeD7pI
         VKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702033192; x=1702637992;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JBtOfqY1WlN9GBQQli+p+rn+QI0FDUmKBYiqjzj8q7Y=;
        b=CkUgq0mVjaHaDbjTCykYNiHc+9mXNu71SC0KkW8T3AxlPlaPgta/wzz4jJV+DRkPln
         NVSoi5AmXtBRGPQ6f+EvQnx2TP9CvN23t1DoYYYrrHUX25Hbyyh3RaNn5PPiK36HNF5H
         F1T0BaODNoRbgIOKj+R6iM4DNK4p0YZwm21jpRqj0oCpGDXQ4xx4vBWYgeyRnxCA8d/e
         6bH1eFfX30n2/vjoxNWuJzLTub31F0qdVqVqPi5uvWWSv8RftmmSVx9sWi9fSb2WAbv6
         P5h/ZU8sr6oJDC89F3eWT61ncW/DIPotR+CRw/KrTjHqYq3I/61ir63FSb7d38/Ndl8+
         AV8w==
X-Gm-Message-State: AOJu0Yy9x/MSEzYTLctLI+ZRiDbOwGGHLMewbdaEtZDVuGpXd4Ejc9lM
	VIKmK8EOgH2XPftmb499Namy6A==
X-Google-Smtp-Source: AGHT+IGxL4X7R+6Ds0SlzakkcIo2XyB24LIRIJPhpgPO+ndheV53m2k+cTTEdxenTVFlDWsGZucvPw==
X-Received: by 2002:a05:6402:619:b0:54d:1dbf:b7c8 with SMTP id n25-20020a056402061900b0054d1dbfb7c8mr2764106edv.26.1702033192310;
        Fri, 08 Dec 2023 02:59:52 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 28-20020a508e5c000000b0054b686e5b3bsm712159edx.68.2023.12.08.02.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 02:59:51 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20231207101659.2496154-1-festevam@gmail.com>
References: <20231207101659.2496154-1-festevam@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: nvmem: mxs-ocotp: Document fsl,ocotp
Message-Id: <170203319147.19447.10192597758196822617.b4-ty@linaro.org>
Date: Fri, 08 Dec 2023 10:59:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Thu, 07 Dec 2023 07:16:59 -0300, Fabio Estevam wrote:
> Both imx23.dtsi and imx28.dtsi describe the OCOTP nodes in
> the format:
> 
> compatible = "fsl,imx28-ocotp", "fsl,ocotp";
> 
> Document the "fsl,ocotp" entry to fix the following schema
> warning:
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: nvmem: mxs-ocotp: Document fsl,ocotp
      commit: 46a8c57f38fd50b26c74c2663fc9262668d364f6

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


