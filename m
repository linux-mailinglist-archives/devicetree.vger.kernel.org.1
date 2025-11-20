Return-Path: <devicetree+bounces-240657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA07C73D97
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7E8BD351BB8
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:00:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 775B3330B0E;
	Thu, 20 Nov 2025 11:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NpaJjxLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A73D1BC3F
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 11:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763639998; cv=none; b=MqrRdQFV7bskVPCAyBBd6hMrtOLTa7N7suOPeRcqFDc0fCyjDRuuOgBQ28gJg/qA853RACKIhKbnoMm47pOUaVfGs1N3KoxjNpYmMt0opntYTaIfq7QTlsu4hDjQOldlZdH27zVcA5S1beO2UNDgS6nSQDYPIqi4JmF1yn+Ez1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763639998; c=relaxed/simple;
	bh=+27EvZGUU7fLobI1Iluq1zH5n6l0zITHqKByAvvXcsg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jx8XNd8QKg8Z+4Rcd+fTvn3yVuZZblDZL9K+Fw8ukV2mveVnK5XjYUH1nDcYw9KNVEGAO0iECQ8EuD5xiqoyJG47cbdVqeoQk3p9EnDQIBsJfUJxbncHapNlW4qHnmBrfxZRoD0mUHRHx0Cdl373OAweF0gQgLDRHaADp9pR2gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NpaJjxLB; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b31c610fcso667108f8f.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 03:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763639994; x=1764244794; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dgb2r86YchJG8dMU5ZJNdIhsSzyhyNbVEjatHJ3Bhi8=;
        b=NpaJjxLBZt9jTS7TJCW7DtGed6Gi4dZ7Eh1k3OdEB5ntqJN9Shgm9qxoaRTODKLkh1
         6FS1wnSCxytzCmlFZhRc4vkbG4dmlcjHzF8/7+mK6fLNDHP7Tm0QBcx2A7zkD+B7dP0a
         eiHcEM2Q9MzwNKqzA6MAVgZZXvu9WAYfTsPEs3ic7mVg2jaAue86e4Wt469mkX30LbAU
         Xvm9b6VMIpwKnhWGV/Bh2n5K4Sfu/w+eoQvBPnoSgGeKD28cH2N36Uda0vQiRLbwHbLM
         nJ8YKM84bdV71TOb0cHq6gSdowe2clB7780mAoQcA17HaJtgaKu/YepaKGdtS0EYzfDY
         LzSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763639994; x=1764244794;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgb2r86YchJG8dMU5ZJNdIhsSzyhyNbVEjatHJ3Bhi8=;
        b=DBog+BlFvcaWXKoO+kxBouglrEJEsFFwfp5siKJbWixU89tZwlTvj1EH8ukmfvSOWd
         kwucHTayVJhvM5LF0Tt6/5rfi1wD4lKq4M/wYmrENTe/aO6dDgyHyI71xaUk9hNKV2BQ
         aOjFy/n4PnfRKr2erhxaXeIUpYhntgmW+ELjao+BbplVguchpaqGarJksVEClwIj2bY8
         3xEN5gmjP7xZmOj8cFtFXmRZHSE012HyaAyx4ggNzLNbers3rNVyXb62l9TdYdDouBme
         nu4VxJAMMl3QkDgeQwObztG+XeCA6qAjE/sYUregETsjjcTcVAPtDhxUdBI4BbpS8KQK
         UfRg==
X-Forwarded-Encrypted: i=1; AJvYcCVu52SZ3SFXsdBJJ0ccsg9PexiFpiS4D/LQ/60TOnEa3DjIG6xll2fK/CQs6pAFCcpvhm5y7c/Gz5WM@vger.kernel.org
X-Gm-Message-State: AOJu0YxcsqeAS1aUzQVjadK4ZcIWDedKG738kklR/xPGy5D+Vp8qlkdg
	TJIEdZQ4rvCE94MHt58p/bDaHPL+9oxlRgwOUXlTO7Shxg33uVqW8GThsLjf4HT2Nhc=
X-Gm-Gg: ASbGncvlB3rXUUp9i2tijiOg0sLQhlhAV/qskoyYYn8Ve8HyXluY8IbHNJ0fFmmfuUR
	NQ8IE7VRoQH028ntVjx38l8hiik9xFPucecU9ZrPc2Wf0JcKogJUGwW91v2QTK54/i/544ptGJA
	3e/+8zMfvnIuWdgqzjz7cdh+2ZWSkGxz5YC6O5hNY9Diey/LjFeO+A2zsjUWbhqv7JrEmtX7ZL7
	DvLNUAOV9SZX7foEC2LHsaH8/LRopU2nBv4P45PHHSeMmvSBpLo8iji8NW76WOyvQwAkYUnJgbE
	cURePAqe/k9tlvCpNmBy3eoED/f0SAgEhe1r/bZABquZClmj8RmA2pwRZYL+EDQ7IOM7ynYmhYg
	zx8oHNdp36vpfzy5/6Q+BRiO9ymUsUUu8fDLinrz1bJeQG6W6ojsVc6+oJt1uaudNTA8iSBCS0g
	9fW+INk3o=
X-Google-Smtp-Source: AGHT+IGnDYCY6mvzq3LLx5gIgFELEuCB5lFAO3VrBiNuZzyVRhfCrMUbnUy68Xx5EliKZpxSKRzFkQ==
X-Received: by 2002:a5d:5d0d:0:b0:425:742e:7823 with SMTP id ffacd0b85a97d-42cb9a197b9mr2617004f8f.12.1763639993821;
        Thu, 20 Nov 2025 03:59:53 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f34ffesm5864356f8f.10.2025.11.20.03.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 03:59:52 -0800 (PST)
Date: Thu, 20 Nov 2025 13:59:51 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: qcom: dts: sm8750: add coresight nodes
Message-ID: <pvfyri6wm4ejrldgm5rfduwnrfeowamly6djbcc5n74iffpm3y@mblfoujoqpbv>
References: <20251120-add-coresight-nodes-for-pakala-v2-1-3f09ec715dea@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-add-coresight-nodes-for-pakala-v2-1-3f09ec715dea@oss.qualcomm.com>

On 25-11-20 10:12:23, Jie Gan wrote:
> Add CoreSight DT nodes for AOSS, QDSS, CDSP, and Modem blocks to enable
> the STM and TPDM sources to route trace data to the ETF for debugging.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

