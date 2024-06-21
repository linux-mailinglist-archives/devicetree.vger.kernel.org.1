Return-Path: <devicetree+bounces-78280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1229911BAD
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:27:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABDE2282A2F
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 06:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8111914D449;
	Fri, 21 Jun 2024 06:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y+ntUOCp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E7D1420CC
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 06:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718951217; cv=none; b=a8P4tbP02BG4LNDeWgs55MYzwYHJ/TxZFBXe54GIh7IlFhlpujFFgqlxp0XSkDyQ8p7pEJeIe2XRht0ZMcyqfjqI47xpDSakCa6PTP7/5wVsb2k/2V4TYQyws1LYxse2eL+PIUGg6fW837E0et5AsekRXtKWj+gf4wFhqITbyBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718951217; c=relaxed/simple;
	bh=zFv4mioop9B0X7lvQYF/BT8imt8BNhs7fZ6tP2Yv38M=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CjUgPaNNG4aSSrSGbK5M1nYCObiUXtCv7DRPDsZEdalhOJARutZ4yojV/w4NaPXoqjzgnoLRoVjlQGg3pfPiqLP5N+2sZ+TxOCVQyOi04NeT1ft1MKiFqWmo60Xx+Loyr2TWl1BJj7UgQXmTXY1Z5xr4BJvsS9Mnc5S5bETmMCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y+ntUOCp; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42138eadf64so15121705e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 23:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718951214; x=1719556014; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7nWgs+bjEPUf8IVnahxV/5glWCv+VYIvB+XUT3ZBU88=;
        b=Y+ntUOCp3FRM+ImTF/G8TWfLTpHh3QV3U2apk2Q58zv753yQr/EtpObJOW8/Y6xiJJ
         yAcE56t5oFSnUUvHI1Mc+4bKgypaMSm15lmr82UE5EzrUImtikyjTMQ9xSHH7SjSUcdV
         bYZ1/yEcxuX8Yq48vBnqqiTCKjudrR9FBlRmmCjzfJp5uDKcCvVu6H515ivPkUtRDyIa
         +7tFnxzHAcExKXnx4OsDGWiJuiLCtX2/FSCEwsQfdKc/dFEjrSVQzBu35b9NdJTcJDh+
         JgxCGQshsWy2RPcVcj0vKxYwinPCGfbOUz+ncA606y/+Oktskax86v+Hf6s2S8acgUCZ
         OGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718951214; x=1719556014;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7nWgs+bjEPUf8IVnahxV/5glWCv+VYIvB+XUT3ZBU88=;
        b=jL5JBiqzGkcFrn8qLtBO5t7PW/5vuCg8UBKfWfEi5ONacbsppne4Lxk66cpiHsn9JY
         EcR+dpLz/eJ/Pgy2bdwYUMF1hBup0PoH7R/F76uqFoKsqKhY6MAZBeZIEn4Z+Jnd8Aq4
         9k/HSt2Q/GC9DyuumVAtWlhAGEqBX8ahjyoDs0gQOO67trZkrGEmrpKWR+2HafEUoGjx
         oigb2wk3bK0PvdT1hj+p4hRsqcn4gfCGR6sHdA6YCxQhypBBa2UjbKT02ojcojFgTz/a
         PWIpyW/vXYuoUiGS7QqKbRRzZE0X56oND5diofeacf3sVKVTxRzw2p4xNhmaJqtDkBi3
         LyFw==
X-Forwarded-Encrypted: i=1; AJvYcCXk1ufF1UoIEOE2QuIkN2YTeu6kHBIGIkmx16zcUFtG3aM7RAZ4Kjy9hjdQyruy0ypRUuJnSc1KjJ9Gjx7mt7X5pPfTqcMyZg8q8g==
X-Gm-Message-State: AOJu0YxamfARSBiKxTgnDnpq+Vz41rTS1mgKuJguXKScEKSWczBdY+FL
	p9tspnhpmpmga+SI8jq+oaH4hhKNXtwOL1XaML/B21IBH3noi6qni4a0BPeHfls=
X-Google-Smtp-Source: AGHT+IFonmbENerID4dVvrf+FLqhGaAMP/UU/IXAT+9b7VYljrDzoGq76BubZlxlU8cuj0D0Dtz4Tw==
X-Received: by 2002:a05:600c:6552:b0:424:6d96:48ae with SMTP id 5b1f17b1804b1-4247517f18fmr58473725e9.23.1718951214007;
        Thu, 20 Jun 2024 23:26:54 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42481910d5csm14424065e9.36.2024.06.20.23.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 23:26:53 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
To: p.zabel@pengutronix.de, abelvesa@kernel.org, peng.fan@nxp.com, 
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
 marex@denx.de, linux-clk@vger.kernel.org, imx@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, shengjiu.wang@gmail.com, 
 Shengjiu Wang <shengjiu.wang@nxp.com>
In-Reply-To: <1718350923-21392-1-git-send-email-shengjiu.wang@nxp.com>
References: <1718350923-21392-1-git-send-email-shengjiu.wang@nxp.com>
Subject: Re: [PATCH v8 0/5] clk: imx: clk-audiomix: Improvement for
 audiomix
Message-Id: <171895121238.3616871.12573343188535489268.b4-ty@linaro.org>
Date: Fri, 21 Jun 2024 09:26:52 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Fri, 14 Jun 2024 15:41:58 +0800, Shengjiu Wang wrote:
> Some improvement for audiomix driver:
> Add CLK_SET_RATE_PARENT flags for clocks
> Correct parent clock for earc_phy and audpll clocks.
> Add reset controller for EARC function, use the auxiliary device
> framework:
> https://lore.kernel.org/lkml/b86c83a520f0c45a60249468fa92b1de.sboyd@kernel.org/
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: clock: imx8mp: Add #reset-cells property
      commit: d7d9ef1f40dc0639ba0901097139fcdc4bedb32e
[2/5] clk: imx: clk-audiomix: Add reset controller
      commit: 6f0e817175c5b2e453f7ad6a4e9a8a7fd904ee4a
[3/5] reset: imx8mp-audiomix: Add AudioMix Block Control reset driver
      commit: b7604e8b805a6e52161ff98728122005e6975a46
[4/5] clk: imx: clk-audiomix: Add CLK_SET_RATE_PARENT flags for clocks
      commit: 163e678c0b24d0e45f617f4496c4ae9b1afd8d63
[5/5] clk: imx: clk-audiomix: Correct parent clock for earc_phy and audpll
      commit: 22fb849ead1b109f868e83b309223d906e4b7d96

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


