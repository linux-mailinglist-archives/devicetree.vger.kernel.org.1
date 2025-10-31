Return-Path: <devicetree+bounces-233547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E1AC23828
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:14:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0BD27344F8A
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 07:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DBEB3271FF;
	Fri, 31 Oct 2025 07:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lVV3yd2J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF773271FA
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761894859; cv=none; b=FtG6sXkXOuEu6aqPp1oQmdENZ74Vv108Fl/fMQs2f2AvcqxNxmiFDeoKdHjpO/1UUbiJO90uV1yWuAcOXUkumqfchhiojBYeiw0N17RBiqaAs1tn85PR4+pbwbgAWg/uaKSY2z5vLfdGEEagd7KD1mgtuvAzQDrCYqsbug5uu6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761894859; c=relaxed/simple;
	bh=8+WhJyitrbTeGgxZoKEsA3Xi9RoN5HyOhUdLoDNVsaI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UyG3W9ndLmrxDiBK8gmR+U3JlDLj+WtxIbfgU/QWfT/Y7wPaZJIH3tfBdn9OchJUWf5259ZZMu8SQvQcLSpYUFCWrmHzLgtzswio509ut42gO+Rnc/Em2UUn6wrg1Hv2apdTMFKyvY76FbVSG6kIOH+IUctSsk9GOluvn0gyrI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lVV3yd2J; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ecdf2b1751so1226072f8f.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 00:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761894855; x=1762499655; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F01LUjN81T2gEebzFvJeRYUSPOsICmfNBzp6TVdzeN0=;
        b=lVV3yd2JyyAbEBkevywl1AinDE47ZC4SaYnmFPu577PBVp7aktF9rXCtMEjm3PphFz
         G4mIjC4PyJRmwB8VP20Btq2pE9FylDJQ32kng+SWijQltfPu0gF3Dk0sve5+nnPFuMFj
         TkTf5ARVcDUkV9eup3RCSkvikx9xuAvlrWvlT+U+DrgxM1otiYsMEEX0VXLjhlOy/c10
         eiYRrnQU3AQH/VHOq88jGD4FCDGeWdWOmmD+iIHC4w8XbfIV5QmDA04HUMVLn7gFvody
         VOmeDZ8z9uqz52KmS38WpFvActV0cU4PDXeAegYzV7UBuqkgwT2yn7joe/l1RrTJIVhq
         PUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761894855; x=1762499655;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F01LUjN81T2gEebzFvJeRYUSPOsICmfNBzp6TVdzeN0=;
        b=kPKhhK7ZYO01+WTW6lOujjE4HFXdOBXS+UFPwqyTIzSCHBZm8iOVsHVwbWqBHa3z61
         /OL9qk5GJKAGzBnPgjC8dziEKJZbbXHQr1YuqRzGgWy62jvgflk5yZwRVLeLv5uxFFJB
         DPrro2Y1tFknIqrhqMZ3y0jt/opHVRYldfscPaxNloXiuDU0Ln+sU+cMjOdKTVwpSsTO
         39hgAJNhuoU+Jll+1OHRKdgQOu8+dSrdSABjXcUuT8Qy8yeID29+AXQr/LMpf0kWcVAk
         2W5lGNFVGP/93vYcGhrK+1DMCHX2nnUvngsbyPgZjEBF40gkk4MSlluEjUJxYHtMl+0u
         juAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVW4ycI7Ly7jgJQ0EtBsMRADAizmaJ4x+GgtH7YRCj4SZhV0Ih1Pni+UQItJRMH5XllHhnxlrTp/0p0@vger.kernel.org
X-Gm-Message-State: AOJu0YyolvGtgey33xDB14SZ8SxLiz86ckRVVXUXEi1mQUXOwTCBg0K5
	/usubapmjulGS6q8nMHziLR0H2P0cF0dpLpJYn5NkMS4BwCY6l17abPUBv9csF73zCs=
X-Gm-Gg: ASbGnctGCrUvx6Mi203mxlvmWvkKuxbgeMzGlZAzrXaTMSaCVNvZkgEHxli0BppOIm1
	pIY/dg/lO/JcULs5hnMp1Ua4s37b+I4OUjK9sGmsGpsOIIfo5DWdBko2aqOGLxdjD+5hlpNRRTQ
	fBo+AhcN0NUGfruJm51j0W2pAqDSqBeWGwk6b/RuzS0YKVQxdHDxGEYcSGda+vhbkjA9Fk9CxG2
	qMd3d6cHO3ES6TaNXwND+h707EbECaiy/CQuUPseRPNMhxMUOq+GODhukkx1Nx5qb+SVskHDPTf
	3FXVAQhDKN8PZYokJWq2H6ATRPs/u3IPnaDPT8v7/RSsDPjV38tAC05qihMqA34GSUfUc9tMgue
	WMgPjhQkge97WRl++9tfYBjkv9XrEk6W0DbwGMSl6+Rqanu4/aKUbloBWdlzG8LXRmxEOviqnVx
	iFGjaZg8k=
X-Google-Smtp-Source: AGHT+IGFXoXIYQM0033JrSO0/egQMm5kDokRkBfCt8uk6iJ6QGivvStg+2qhnCmO5P2IzbdiAPo8og==
X-Received: by 2002:a05:6000:2288:b0:427:5cf:a284 with SMTP id ffacd0b85a97d-429bd6c2d51mr1752732f8f.60.1761894855232;
        Fri, 31 Oct 2025 00:14:15 -0700 (PDT)
Received: from [10.31.13.216] ([82.77.28.160])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c114c944sm1868250f8f.20.2025.10.31.00.14.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 00:14:14 -0700 (PDT)
Message-ID: <62133fe3-cce8-4405-82b9-8ded092c7eea@tuxon.dev>
Date: Fri, 31 Oct 2025 09:14:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/7] clk: microchip: mpfs: use regmap for clocks
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 pierre-henry.moussay@microchip.com, valentina.fernandezalanis@microchip.com,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251029-chewing-absolve-c4e6acfe0fa4@spud>
 <20251029-surfboard-refocus-ca9b135ab123@spud>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251029-surfboard-refocus-ca9b135ab123@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/29/25 18:11, Conor Dooley wrote:
> From: Conor Dooley<conor.dooley@microchip.com>
> 
> Convert the PolarFire SoC clock driver to use regmaps instead of iomem
> addresses as a preparatory work for supporting the new binding for this
> device that will only provide the second of the two register regions, and
> will require the use of syscon regmap to access the "cfg" and "periph"
> clocks currently supported by the driver.
> 
> This is effectively a revert of commit 4da2404bb003 ("clk: microchip:
> mpfs: convert cfg_clk to clk_divider") and commit d815569783e6 ("clk:
> microchip: mpfs: convert periph_clk to clk_gate") as it resurrects the
> ops structures removed in those commits, with the readl()s and
> writel()s replaced by regmap_read()s and regmap_writes()s.
> 
> Signed-off-by: Conor Dooley<conor.dooley@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

