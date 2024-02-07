Return-Path: <devicetree+bounces-39479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8BD84CE40
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 16:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7950E1F21ABC
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 15:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 317CA811F2;
	Wed,  7 Feb 2024 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v82S3ABL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742B880056
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 15:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707320313; cv=none; b=TGlfftiRV8KTURh1oQSeMvGev0KdvaE5AuBzpXVRQDjShahZlKct6z4cOmdV3BNmsHfw7JcuHTS06TvpYxyyMdqTwzvdM76MO+ZQEyaXRyoGHdUnvWdf4czkAk3vXkKhHD+B8s4AE0zqVl9keej1Qvs3Lo5uCbzc2+b3yt4RPf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707320313; c=relaxed/simple;
	bh=g4C1H2tRbUr26PzO48R96RGinnnOrQPd2HHnIE9XLGA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PHFZmxK32AeUijLWXkG5HjYffqrNRxn5dUqCUhRwvKwDtNuE3FxBbpJJhGEYehNxp9EbDRHVdXLEjPaw5KCw6oB9/paUa0gAVF6KRBB2b4QUJnZ+xo0J9ltNUCpyn8Aj7g9g9VSqOEvJ9B8gWr+UMYUWRoMMo7DseRu3/Co6+Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v82S3ABL; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40fc52c2ae4so6633455e9.3
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 07:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707320310; x=1707925110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vxw67ZbKRim8/vd2giQQBfBgWS65HZ1FfeC3qtnVmQ8=;
        b=v82S3ABLb7wTYPMLxQgln4dy0n3auZ/Isb7oS2m6B7DZ6RIUp9HcO8NgG7S+zTf2f6
         jIBkOEbz0j+2LS/Teeyeejliwi3r7rvU4Wu1CruhqVlIe+KqwBFwTqIH/cw9+LswRdQw
         k5VX7ZOvt3gxY3jrBClC9O0rfjBRjOaEL1q0HieSOuNxY7YGkkJK6M0CIqah/7YOMt8C
         dyGdm5JfhDUgNA+Wj+G+uqE7vzheUK+sGy0jp3mC8mM52N1NkBGPkVb1ZCBFx2+6oPAA
         5BA08PEdcbSRn0esCuUB3FJ/bJTEHa1EbMeUEYfNTHnykIQYJDm3Zed06SVaUlVJdT/w
         p1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707320310; x=1707925110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vxw67ZbKRim8/vd2giQQBfBgWS65HZ1FfeC3qtnVmQ8=;
        b=FNvlAuB91pD80zM/Gwr1ZOTjwZo6QxGlmnBCqmOHEfhu9HZno6wFkTy24WrjT9PdNY
         XA21LBImjDftouFhSSCThMD9igndgHL5zNB8AFVb/DV0qhhhAdyvYUIAe2k3c1tFYteR
         39DQIRzGf/C7m/jZDQsRRC5/zrXWalH1zxsqI/dP/fPPlzVZMZJXHufohqaxi2cSG0NY
         kBvmkKkx+XN8qMmK1pEariVU/93DaJdx/8AbdQ8+zTuvZYF6U/KpLGJo8NfJIBMP2lXs
         HyboPx/8gGc5e/Uql5yFOBQNwwXAk6mb1CjIfFGaAzEdtj/IxYyMbVWN5rGDOmEz2GCO
         0daQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjgBGv4QcKNt6tE0izA3T8rvH63kmlnMd1ep0pXZL4+Z/RUXmmMHLegTx8x8KcPTfe6kuBUb5ypLyQjuQ2WE1FjiJ2jvWCIVSzig==
X-Gm-Message-State: AOJu0YwsISGElZcOWN2RdBafMY+m42Gn8+Qs0EBewfXePzGJDpYpzUTF
	iW7JvWIwOqRxipuhOwbagHOukXnc8+25wDhmtsSQ94ZNPcDWKjVu08YahTB1zOj32a9CfbHMXAB
	J
X-Google-Smtp-Source: AGHT+IEMu/cXGU1ArBvF2FTiayAOgA6TuDu0/ZBQUhutV6196AOaZPjnbnOmLOArK4yVjbmsow1zrg==
X-Received: by 2002:a05:600c:3d8e:b0:40f:e930:9eae with SMTP id bi14-20020a05600c3d8e00b0040fe9309eaemr3649830wmb.3.1707320309569;
        Wed, 07 Feb 2024 07:38:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUZZjAmcOkHoPQq6CM01upKIUo/pCCWeFBeF1QcgVp2d2ZF6XtnKnVUszDKpDtsU1xY97s/hxjAPWXpE9ovntr3TuwdOo9r3ees64mmSUoRBhtyzo58/oBfHxG/5/sBJWa7Q98/FH65tg4bJM1SkFi1v8DHv7ui0AGT4IDjBT55Xt1HO6xhTX2XWJzdkRIwn/ZBCFWKvfNuTG8wyxj+cDu/iOv6VYK91xpY7BaZgxImXmDNmKsk6EpCExjAv87bfuJARoqVzSd9hWO0xWleoYZtV+aBa2HF+1edRQeokDGqf24vcF8ACrvTWgqbiPWFTr7JZ3PFZrL5ZBAI/hZLxCC7FVOvyzrlZ2UgviD2h0ukc8+pdwmpRO/4qKcaYJ436V6+GCez3/FYGgHuSDx+dVV7IaAMvOCStXstwBt3LTfklmtSqBiRqsOUeWzDhUVWvCZt71U6svDC8iX71auMNQYwqGx+CbCHkRMTZ6ksVfS9vytFcYyKCwi/W0gDTvcdafAy6/uhUFUb/9XfN9ytLIdRaGdX9uwIrabNm9oPRVqsuuwfLSOazttlDc16ElLxntKfmt6aVQQemDR2M1ALo5uA3YTIcqYU0GQApWkwX8es24d8oXrZiIkxBYJP/DDnl74RUc7UAyoTv7CRDgn3NQtOLT4pH6plxkrqMJQDDU02uUKo1lsA1qA2PfcZu/kVWrRqCA==
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id 7-20020a05600c024700b0040ef0e26132sm1307678wmj.0.2024.02.07.07.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 07:38:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v3 4/7] dt-bindings: samsung: exynos-sysreg: gs101-peric1 requires a clock
Date: Wed,  7 Feb 2024 16:38:16 +0100
Message-Id: <170732026219.120770.13575234760770994560.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240201161258.1013664-5-andre.draszik@linaro.org>
References: <20240201161258.1013664-1-andre.draszik@linaro.org> <20240201161258.1013664-5-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 01 Feb 2024 16:11:40 +0000, André Draszik wrote:
> Otherwise it won't be accessible.
> 
> 

Applied, thanks!

[4/7] dt-bindings: samsung: exynos-sysreg: gs101-peric1 requires a clock
      (no commit info)

Squashed.

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

