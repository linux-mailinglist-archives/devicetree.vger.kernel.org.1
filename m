Return-Path: <devicetree+bounces-15680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 426F37EB380
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 16:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 682811C20947
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79A0F41751;
	Tue, 14 Nov 2023 15:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vd+Ic96C"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F44B4174F
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 15:26:50 +0000 (UTC)
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E7EC127
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 07:26:48 -0800 (PST)
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-77bac408851so551679885a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 07:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699975607; x=1700580407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7F8QgjG6LQI/HDtH6YsJ8pzu6k42g4LGlXjrIxXLCg=;
        b=vd+Ic96Csx85sJu/M1HPsJIDkVkkZiDB5e7uauOUL+rFLjxmWH6BOGPBwhITNARXhP
         F7wcNagTf9xnBKXqnQnNsD2aJH5UxkpHGXoJs7PkE/CEM40b2Eh6/+YaQIn+MOLoTPQU
         MRjIpIYNfx3aQPrYeHurWL1u4rfh1o7sAvpZnsHvH6M81LOicWvJTUNbLeSZxLfWa4A0
         SXtAgLjAQnzUi4+yw+Fmo+A9A7lb1KIAHJ7lE5Laz4cBDEipVucyTYGp0VfVxcVXLRj5
         HAF64XvvEHn2uQuvC1n3PO/wjDi0nL0mhy3kwZXl6HbEUH48ikurAo+M3gQlfqKLaYRj
         sQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699975607; x=1700580407;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w7F8QgjG6LQI/HDtH6YsJ8pzu6k42g4LGlXjrIxXLCg=;
        b=IYLv1bXBD2TTEGVhJMj5rN7ihQjYfLuKxf+9xKySpp6qHeHj4AdflO0BBz8ZdvX7Bc
         FhpIHg94debeIoY2gnxzorJ5+WjYFLZKJHP03Mel7QwaOfzHi1PbveEx7G43Nrn74eqD
         MAHC0S5b3kHT17QZRU3bILv3blFtjWK0zbKf2VZqxUFOCZs3yo7u0/3LLaELJI4EEX3W
         u/SWVYCtBlT2KsxBTRM5+ASi7hlJJMDNAx9pfQBntiz7+PRnsnbg345pwFeq6yY0cUTb
         xQsggC20zfSWTf1QdZyheq3Za3R/Ne4wh58503JATfp2U/SlRc9wVQ2TkV35Fge0MDgq
         pSTQ==
X-Gm-Message-State: AOJu0YwMQnpkcvwuVf9xb33z26pSC0UIx6WlxLWDlmcqtTesS3zM3Doz
	SM6ykOK6zFgfhqFIdVkArIC2nA==
X-Google-Smtp-Source: AGHT+IF0Wl1kVxFaBCj1GO4wI262SpQaQZD4Ao8J20Z3un2G8Y7PMNcnaECfZqEqkeoPrGFuvA2i3Q==
X-Received: by 2002:a05:620a:4712:b0:76e:f90d:85d1 with SMTP id bs18-20020a05620a471200b0076ef90d85d1mr4028598qkb.26.1699975607743;
        Tue, 14 Nov 2023 07:26:47 -0800 (PST)
Received: from [127.0.1.1] ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id s3-20020a05620a29c300b0076efaec147csm2716087qkp.45.2023.11.14.07.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 07:26:47 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Jaewon Kim <jaewon02.kim@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231027040338.63088-1-jaewon02.kim@samsung.com>
References: <CGME20231027040435epcas2p4628f9c61d4622ed4c4b62edc4486e2d1@epcas2p4.samsung.com>
 <20231027040338.63088-1-jaewon02.kim@samsung.com>
Subject: Re: [PATCH] arm64: dts: exynos: add gpio-key node for
 exynosautov9-sadk
Message-Id: <169997560713.7305.9969596641933403889.b4-ty@linaro.org>
Date: Tue, 14 Nov 2023 16:26:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Fri, 27 Oct 2023 13:03:37 +0900, Jaewon Kim wrote:
> ExynosAutov9 SADK board has 3 keys to test external GPIO interrupt.
> To support this, add 3 gpio-key(Wakeup, Volume Down, Volume Up) node.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: add gpio-key node for exynosautov9-sadk
      https://git.kernel.org/krzk/linux/c/6479f40a10f773d712f645c3d7bc2ffd5904aa6c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


