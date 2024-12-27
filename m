Return-Path: <devicetree+bounces-134339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6209FD43B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DBF6188441F
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 12:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD9F1F2375;
	Fri, 27 Dec 2024 12:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YNxutRGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E021F2C5A
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 12:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735303620; cv=none; b=iQTywbg0gye//SAp9WO1NHAr9FbYKlti/QXQyKPZO2c2ppzcOEbo4OJT8xMPWZAQUs0U3EO3VLH9daIYxlbz/XWynj4ZqkdOmh8KGmUOACBhHCUxeBjejTDqyiQ1y1bhxl0sT3y4+loLzpyZJd1BPWJKaeYMGDFxtspdkcNHomU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735303620; c=relaxed/simple;
	bh=Nq96OkZh3I2dZ1KGPOiRpqceVPg6Y6dtZ8YbuLUGboM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uafvdzf5kGmalDm+xRXkVB18fWQoSpUHOpoUnzjl8PPa9T8BHhjrqoBfdzGikB6Ktcg05iu2Alg/TmeLremKLpZhX3CswvuhuHqtwdH7XA0vy5Hv24u7zRpSrMqNuqohDiCW5cIdD7R/asoRTsK4s+o1HxS21XqJWOY4gaTVV/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YNxutRGK; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43635796b48so43697945e9.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 04:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735303617; x=1735908417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UN1PfYXNv5GA5EWcDyG0SuUKxMnngW7vBJ/To7wqj0=;
        b=YNxutRGKIM/J75I6++IRPz/WDJjeWP8tFhcyUElvTZG1+hkszOFlUjtYerDb2KSTcW
         gGOgDdn5u/vEn65PjFIrIh5W6Kmd+4E8R8OaBLGKAaihfAWIzrVKXN379kZWYWRdDopp
         DpjlR2a1IO69MSkZGchEeqjP0/WZ64f3zxtUmvzJir+BqZm+5O/OAyCg5irpj4Hom5HH
         bDQPUPb97FkmFPl5EZX4qfs7ouiUTVFOzsHJD00MPGRKhhxCq5ohwFM9MxXvr+YggDe/
         w3c13OljeR0rY6Qb2uLwGL8hEUXXm6nK706GZxJNGmZBKAe20bFjHgvStcThzUNjvA5x
         mFCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735303617; x=1735908417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UN1PfYXNv5GA5EWcDyG0SuUKxMnngW7vBJ/To7wqj0=;
        b=WfO5DzRFq9soda/iFK8Xy+QuVD0gcvZlKs6BkLQeToIR3IPr/DIVgvIdCbFXJE2pwZ
         K8onlds9O0sqZOUmBYKb2OCJ3Z2MJVZ3bWaKVYQGJQMQT5K5cxOJCKOsuUW1dcimF+Xf
         t8Q3NE7RVn9UlC39/4aRFGKP1jZ1KxOn8xzp6BcKezO9zF2VrHXeLRoJLVHxAQC2KxjI
         uRSe7IhS1pIz6c3O+HLohYLbXQnBFwnK2gsmLTYB8T+hUPDv9AMUaNJs5IWWPQTh90Vu
         aF+s2KWUvRCtbvl5dpOSr+u1VQ2F1D0Hr8sdkkSTmXSSebxhjvZjIaN0FpNLgUP2Adxg
         5epQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWvvxCTakP9l7wj9cmDFtAEWRs16CPXmJbMTJBIpz/RO4L4Fv8ZS6cjvMXM4UOqDouP2XTKzri6RTG@vger.kernel.org
X-Gm-Message-State: AOJu0YzCJhkFUHlcacFlP23Vo8fh1KuVw740PeoE0C0eEmAmTQXNTh2W
	nMbM0T4x9IX2H901sFLi0jZ0/Iu0QgKh7XFNWHA5ucEAUVZCkZy0O1G3n0NAwJ0=
X-Gm-Gg: ASbGncsaueLME0Rv6/HtlB29RWq4OvyFJE8FwnK4fykBZ0/YOKv6KTuLOXdatOAAQzC
	EaGbVge89w6zOqloLrlYkgZ7XBIl3Dkkct4d6jjYulRX30ihNfXD+yrC07h+jTvsb9+UL8arA8m
	43Xn+60VH7rcU97RkO3UNAipAtL29DpBs/68YnE30A2zXoMwepeRqmZkXBAgQ1An3huGW6op0Bo
	X8i7m+f59cECJ2RGCK5VWI7wibfvWB1XCNN/JO0MfSf2vuqWC7nKPJh
X-Google-Smtp-Source: AGHT+IGUz2NO9FEIpAO3AKn3yA2N+FizKlvW523dxOyulaD8vq0KUtWqJu6Qzescg3PJZW/KKP45Nw==
X-Received: by 2002:a05:600c:585a:b0:42c:baf1:4c7 with SMTP id 5b1f17b1804b1-4365c770795mr216692485e9.4.1735303617020;
        Fri, 27 Dec 2024 04:46:57 -0800 (PST)
Received: from hackbox.lan ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b11495sm297172905e9.19.2024.12.27.04.46.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 04:46:56 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: abelvesa@kernel.org,
	peng.fan@nxp.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	imx@lists.linux.dev,
	shengjiu.wang@gmail.com,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/3] clk: imx93: Add IMX93_CLK_SPDIF_IPG clock
Date: Fri, 27 Dec 2024 14:46:02 +0200
Message-Id: <173530350112.4140483.13164625485950770989.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241119015805.3840606-1-shengjiu.wang@nxp.com>
References: <20241119015805.3840606-1-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 19 Nov 2024 09:58:02 +0800, Shengjiu Wang wrote:
> The IMX93_CLK_SPDIF_GATE also controls the gate of IPG clock
> and root clock, need to define them separately.
> Otherwise driver disable IMX93_CLK_SPDIF_GATE will cause
> IPG clock is also disabled, then register accessing fail.
> 
> changes in v3:
> - add fixes tag for all 3 commits
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: clock: imx93: Add SPDIF IPG clk
      commit: 32e9dea2645fa10dfa08b4e333918affaf1e4de5
[2/3] clk: imx93: Add IMX93_CLK_SPDIF_IPG clock
      commit: 6a7853544482e2336b5b8bb9a4b964f9d687f290
[3/3] arm64: dts: imx93: Use IMX93_CLK_SPDIF_IPG as SPDIF IPG clock
      commit: 570b890e66334f283710af36feb2115f16c7a27c

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>

