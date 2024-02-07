Return-Path: <devicetree+bounces-39480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E62B584CE44
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 16:39:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0A3628AD59
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 15:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D01D981210;
	Wed,  7 Feb 2024 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sIKzYJDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BA8811F3
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707320314; cv=none; b=WAJWBavK87zTXzLwIOyMuY9KijiEDKrhpBg62BwyyhJgwM+8lQTbXap/sDwlBLgMP+07+GiLXZ75DMoZ3dsdad/NRbm0jjEYzlDyrZoRBxcqka3aUUvVHsIPMISJiKyVtb6Zt1sAby0BGoM2bJtsd8+DAmTsmhMWpgGYc7MrhBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707320314; c=relaxed/simple;
	bh=oFGTh2OhIvPbiv0dHz2+sLUdT0AGdS+r+fNSNWcO/FA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=geMnXBjCyMXfsnMYtkbWSJw9SBF4bkuglL2qX4t79yOYUx7W6dbsWS6CLbM84jbl4a+rmCaR297IDU6dNRq/GZOqjllasRPC6xccIbP4ywyCM1hlKUN6thbk+TcF3QBTK91wUWgP3t9U3zP4Xyh18q441Y/qiDPrJyV1A6ArA4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sIKzYJDv; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4101565d20bso5536345e9.2
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 07:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707320311; x=1707925111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MbvJWnlre9MH2EiIqsIcJXmUPZrjG2BFAN9G+36KKP0=;
        b=sIKzYJDvJiOKRktNfD+DW6VYZo1ONAQDl6JFUZYQiDqgZhxxUO/iF7okwYdwEFai15
         EMN6EKIf5E6xf2qWRrdeIamfD0VLItC25dCbahqqxmHo1kUDlqZqOGn+ljqdwMqVz1zb
         l+yNRrcCf67V3vGr/lsJ+tYSv0zdiW/IzmHod6PhFPlQuEYjBHtWGZbBXJxEIN97t8W8
         eKKXhm3QoYhdov/JC+RNY8I24cAq11SeOvzwcRS+jreqXhfUHil0DhPp+6YLn3G52OfI
         rCXq0PmkbEK4RBcg1xa9rjipE+h4R7w5bFboqpbd6D6gZ0BDwbyL4ysHxk2HgM7tvmWJ
         R+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707320311; x=1707925111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MbvJWnlre9MH2EiIqsIcJXmUPZrjG2BFAN9G+36KKP0=;
        b=HfsKKZbH+QATUr/cCaldJnyACsJDtv2vgW5MwIuGwmsCWvQQuP1gKhKdvzIa3aIydI
         skomLf00Fn4EId3A/fmYBCvWU9DNxkPi/GXhB5k6a/8T8+WSt7oSWSyh1LrHb9pXOgdp
         B6JantEZWy1OZ7UcZWAM9geY77IhGGYA5XB7KxMikitXw2gre2ZTTubp1ZLFhXu1Ov25
         z073FU/lOzntV6z7M7ea5kr4eFrYpig/mUlqdiLmPxWBzKbkm48HJt26paPyS9/e9FIf
         nMG5IFuudNUx7+MS29Enfq4I5xEYc0BQgHRyIim2eZpBUl8ntk5H5HkfFe3paYLoGh23
         W7iQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnUOjZN1hv76qOe3qIL7wG+UetDRm0kcS43iiFpsd3Zg8aZ10PGoGf+fOknxw0kPB5fRFiJ1QSlNaksQ9SoMjAX9dBbfHcNJTYyA==
X-Gm-Message-State: AOJu0YyrjeWIOiMKFJqAPNxBOcfbVpQFjNUpSFgGXwDcknSLCQ/rM3RU
	VLB+rcyzjzc5+55XVqtbzJAGP2+ySm4rtaIiV7bjmbBuflusaNK202mB6S+v3eY=
X-Google-Smtp-Source: AGHT+IGQqN+oRZ7J/ps9lkhJhgapJAFv4WN+VBydvkUTR/5OO834y+bRQjfqeYO9wqApvQHvaXOT7A==
X-Received: by 2002:a05:600c:4f0e:b0:40f:dde8:1663 with SMTP id l14-20020a05600c4f0e00b0040fdde81663mr4975194wmq.19.1707320311617;
        Wed, 07 Feb 2024 07:38:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV1eYcUrPqoJ6E6XV63qXxSYuCmEy5u7Q6f5kaxMmJHILTmsgmwZdeYb1N7dcO3xGbdLEY5CdhZLczTPv8NkietV0vOOMOmNBm176mTYdh7nIZbtf2zzqNV+T3H5MOOZaCBW9yHJDykb3qEXQr6Fv1K/1RV/hWBir/thm9wO883n+ZxXl++LJv01xdCdRaLKdYvOx6g1WRd01SCDRNvNrNvTVhdpK2vVaxtBnyc/vH+pJ5qpgXcBuRIz+ADEGkO8qAeylKtbKwdcrmlLXuIX/EMRrCw5w7grPbxlWKZPgpVbfP0XqhDKiSHz2dWSAjh/CzbYeQPvgq5YFiGujLSsdG5Gjd2TeAoOAz6wpFT7stqzPJKupJpORClGMp77eZEDA9zkNxAZWVJZ23fMtBnY8bCfMAM
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id 7-20020a05600c024700b0040ef0e26132sm1307678wmj.0.2024.02.07.07.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 07:38:31 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Henrik Grimler <henrik@grimler.se>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2] ARM: dts: samsung: exynos5420-galaxy-tab-common: add wifi node
Date: Wed,  7 Feb 2024 16:38:17 +0100
Message-Id: <170732026212.120770.6589907576886281410.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240206-galaxy-tab-s-cleanup-v2-1-89025c6c66c5@grimler.se>
References: <20240206-galaxy-tab-s-cleanup-v2-1-89025c6c66c5@grimler.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Feb 2024 17:02:27 +0100, Henrik Grimler wrote:
> By using brcm/brcmfmac4354-sdio.bin from linux-firmware together with
> nvram.txt from vendor firmware wifi works well on the chagall-wifi and
> klimt-lte.
> 
> 

Applied, thanks!

[1/1] ARM: dts: samsung: exynos5420-galaxy-tab-common: add wifi node
      https://git.kernel.org/krzk/linux/c/60f1164e21cc04666d23b63e1153af74e7a5650d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

