Return-Path: <devicetree+bounces-38532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F0D849638
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 10:18:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9BAC281CD0
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 09:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB4C125B3;
	Mon,  5 Feb 2024 09:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N13ui3uE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482E2125A1
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 09:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707124709; cv=none; b=E7NsxoQDRvon3gyOfA2scAs31MeUOUdxzVo0M9u5FfrvAam2ootyKVsaevkhThk3JzRg+P/gA06/vIR87txDaQzcQ5Z6rTaTfpeppzI7AlLfwVQ8CCp7O5Te1ZCb45lvW8F5C+yQj3g9PoDTeP32fv13EXM+zThf4ZFX4tx8oms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707124709; c=relaxed/simple;
	bh=zcJ9LF//GW5gngruuBq+/DN+eg+jnVZkYBCYYt8IVvs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q9m3wlafmAoU+KsZWkRt3xk1UJIpzPrbczh3LperqlUi0yB1iwGoxvEvjyZZrQqLYPfPCPi7mDWqhuRmVVUdpbTsXNMcrs0DUmRFvmfp9YjJJwx9QtWYdtu+FhfWrpqxSvgjh9iSZoNky86lQjXSmgKGOXHL/HQDIVe6oRO8gkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N13ui3uE; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-5bdbe2de25fso3998164a12.3
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 01:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707124707; x=1707729507; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K9tBb8wA8cuKxI0a2uCc7JSsTrpv31u6vIMwCxBstE8=;
        b=N13ui3uENNKIDIo4PsvNhNMm4X1tq4ILiDjyV7CLOxHrKC8ZKuToab4bAOX2bJ43by
         LA41nVoq0BLWzEU6CAxFB9lNjh8qNChdJTHvRJgz8LYHqMl+ysRXJrYmplY/+RPRJhcK
         g5Q6sHkmgj1GD8Zx/kZr+NbV4gWuQ/vQkVBZrd4K4V788jdYEJjVPZSbAysWhJG8xRq6
         SCGiX+ZJWaqwdm0MLXnhb8dIP7NAFxCUmaFTxev0biZvhwiQMcUhTgqJ5vQUBC7HDadV
         2T3nT3IDQBkx/9IVru6rq5CpEvYTcIN5fsoCts4ZQhtJ70jx4JEcTL/KVz7xuPcUN1IW
         98rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707124707; x=1707729507;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K9tBb8wA8cuKxI0a2uCc7JSsTrpv31u6vIMwCxBstE8=;
        b=cyc5blfr9ZM9gsmbQEvPtLBP4fCittWRHz73/QK6XHf4KyRHIOMAAGfu/fKSRqligS
         NUrKJ46OqYGDMzHiEU9LxsTpXZIAXEX6JqXwH8/gogEiV+lfT1qpIp0nkMMB1gEk5JW7
         2rYjrSpT1w1Dryw/O37nVJMzvK/NYTgGtDKUdLUvtGSoFMZfZpBoAMAy7Kd4Qn21z527
         DmD8TN8jubKE+bKxCQDyPM/PJzs27kyld/fy5SsQ9BOcgdVl1RpSWBtvlIdtp9wHfTNA
         R0wKNGIJg4f09PAwm2/KI+CEiRumPU1u0haClavfoF6nqzPWLxy/FChIqg+Nlr/K6gJA
         wOyg==
X-Gm-Message-State: AOJu0YyCkVi75OdYJVkgOCSBNfOZaSOjH0i2nOhc0M+bz5kgCVjMVAKL
	eQlC0VMwFmz9hCcxrWnyIgTteaGjwWPKZWAJQ4rPL9uw81T4Rl5A
X-Google-Smtp-Source: AGHT+IHnFVi12NMauIxEA2FvX4QAfDFkWpmgGUusavJI/KUUoKwyAMerWh0t7eSwkymKedKSttr96Q==
X-Received: by 2002:a05:6a21:6711:b0:19e:83f0:4300 with SMTP id wh17-20020a056a21671100b0019e83f04300mr4864155pzb.35.1707124707523;
        Mon, 05 Feb 2024 01:18:27 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUTFVuI+JOcIhMN/HfCmXtrgZJ+PP+5jOkr9FtaWQxsHFLIr3zKpFTyZyYvPapAVjaL1I9Oy2S9jAzCJZk6/KtqrzGC+Gi3sD6YDsz6fVoXRh5YXZQLtiahbJbX6W+1vcWpDUHPMEJN0lUNC/xhKFCsxceA8K/JbjUpJVulOAJ68A8ei3+iZ++9Bybl2H68fFsepfw968p+Csb2gHK8CIueD1jzeiybBS/Dw6Rkd2gjiCwxW69BTmfq4eEvm4yu8U8LcM+hR2I65jcj0FVI9cHjE7QEZWHZp20ATBt0klspDV6PfRKY9cq5eR+UwyZGPEzg4xPS1lsjZw89/0pgalUhCSemex/dvzQ6jKQ44v6dwq9fXw==
Received: from t480 (89.208.247.201.16clouds.com. [89.208.247.201])
        by smtp.gmail.com with ESMTPSA id g16-20020aa78750000000b006dda103efe6sm6178706pfo.167.2024.02.05.01.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 01:18:26 -0800 (PST)
Date: Mon, 5 Feb 2024 17:18:23 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: reparent MEDIA_MIPI_PHY1_REF to
 CLK_24M
Message-ID: <ZcCn33sNLofPNVWQ@t480>
References: <20240110100048.478001-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110100048.478001-1-alexander.stein@ew.tq-group.com>

On Wed, Jan 10, 2024 at 11:00:48AM +0100, Alexander Stein wrote:
> This is already done in dsi node, introduced in commit eda09fe149df4
> ("arm64: dts: imx8mp: Add display pipeline components").
> This needs to be applied to csi nodes as well or the clock might be busy
> if both csi and dsi nodes are enabled.
> Fixes error:
>  clk: failed to reparent media_mipi_phy1_ref to osc_24m: -16
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

