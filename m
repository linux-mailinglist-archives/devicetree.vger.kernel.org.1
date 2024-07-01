Return-Path: <devicetree+bounces-81925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2A691DF30
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:28:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C1F0B21D91
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6FC014B94B;
	Mon,  1 Jul 2024 12:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IXRoyQyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450A714B09F
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 12:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719836871; cv=none; b=Odk5jN6Arof6C5o/zgJCjdauH55Bvs9JXnmexuPCxbwBZCjqZMYqKWJNn9Sd/M3/8B9N7vHUvrpfDSzDd16TrvuQJPd2vkvcEF6F1vN+7qZ+OzpRb3bQZIPz5aPCjTxqLFtg6jSlqGJoLH7GX8fc2TTxWVjLzjBkdl06aFEUHyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719836871; c=relaxed/simple;
	bh=3DdxQZVr0+qpQMgAhjl5tJUyr5cxXL57EcunzVjbQCM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MAtpt1DwusEuX2CwIFA6LpkG+MNOmWIcLjH++KQaohrPr3F7vuio/XRbdQy73HXNaSr26kfqr8VjjA8YF5jZOxBp8Q9ZQilmbBiaDnkO7pkQ+KxstSmUNvAUboKmL421bTX2v2PmBzVwRSFc2jN9BULyiHkk6uiulmIZa+PkTa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IXRoyQyg; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-362f62ae4c5so1650234f8f.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 05:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719836869; x=1720441669; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lurBxqDpxMBXgjCUwkAWYVwgxRmMWi6DcwImW1j6GKg=;
        b=IXRoyQygZQJqSZSYh7zhrn8psyOOCpDUMDfoPv1EsqMMlau9J3nbmEEjA1p4+8dvgZ
         s1+igu7UDyCFxQJJJzFhLs6OTcbYZEibGysNjegn1y1x7VOifAsigQzN7jPCetB7P4hE
         sZJwWdLKJu/jIkQ5LuwNZ6ZKDrHJYqPnQoGCCv1HlOfNDos++9N37y+/WRSC7XxK9fgX
         vQ2PVtxfFeQqHQC5yRdLRoCfqq6cCmQZT3VhqpjL+GNoBfe9iN6pGmo0yRulFlfPj8jY
         GI6MtitDM5LZrLcuhinwTpyNFqCF9OhWoOTZjIcSRZOriK8oNQUyf1LUnd0qY2D27TVH
         ixnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719836869; x=1720441669;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lurBxqDpxMBXgjCUwkAWYVwgxRmMWi6DcwImW1j6GKg=;
        b=Z8kzv2W3QY+dNRT1+qOpOYe/k8jUK6qGV2Z45evEOLOH0av4asZxJWeGbbZ42vKkwm
         k7J8r81DgsqVjIoRUbhg6ILJyWDD9j70+kn7yFjOn5VoBZxuMLc+hUJI1SGj4X5RnoML
         9kIhyPd723mzIPu77I2Yqg4Wxet3ECuUrrd6P6TpizhonfYP30tFK7ZQMdV72OQsndVG
         KTSnzaDKcq5TZUfhwY1Qtx81rnJSleaqYWyOl5EDlADEARsDWGJSX9JxwVQSNC1iEw/8
         cEs2u/pFaJvMsW8xNrrWBQecuMnNBJSRPKGeN5hkpMU3qydRp1NcSxrZAkO6GamtKNV6
         Uk8A==
X-Forwarded-Encrypted: i=1; AJvYcCXicytR7M8qwLLU0+YFsEzlFFwQ/zCIxH+2LCWnOcmwL3M+wjdsgvg0MhR5mLttnUPVtgWf8uv6c98dteR42qU7rQWkST8gunQhvg==
X-Gm-Message-State: AOJu0YzVpb6JOiya1yz2VVDIPbPnF4UVFH+IVu29HAJgePwtBfXbyAIj
	ukJvl3Y75LO4w3gD7dhnuisR/DQPFrPhzX4a4KqkRYNo6UOcKNH6YNwrODfxv2s=
X-Google-Smtp-Source: AGHT+IHjC0WpYQaSlJUoHZlk3/t38DJxLAEEJ+bp94YFsESKz3yiXg1R4f6nMTM3n8jGrrFYpWWkpg==
X-Received: by 2002:adf:e58c:0:b0:362:5f91:901a with SMTP id ffacd0b85a97d-36760ab62a5mr7278194f8f.31.1719836868836;
        Mon, 01 Jul 2024 05:27:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b0642acsm156924245e9.25.2024.07.01.05.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 05:27:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20240519-dt-bindings-mfd-syscon-split-v1-8-aaf996e2313a@linaro.org>
References: <20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org>
 <20240519-dt-bindings-mfd-syscon-split-v1-8-aaf996e2313a@linaro.org>
Subject: Re: (subset) [PATCH 8/8] arm64: dts: apm: Add dedicated syscon
 poweroff compatibles
Message-Id: <171983686696.414714.11113016468220652079.b4-ty@linaro.org>
Date: Mon, 01 Jul 2024 14:27:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0


On Sun, 19 May 2024 20:42:23 +0200, Krzysztof Kozlowski wrote:
> syscon nodes should always have dedicated compatible for full/accurate
> hardware description.
> 
> 

Applied, thanks!

[8/8] arm64: dts: apm: Add dedicated syscon poweroff compatibles
      https://git.kernel.org/krzk/linux-dt/c/c0304446611536a771462f27d98db6775d222b38

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


