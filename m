Return-Path: <devicetree+bounces-135613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F68A018DD
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:33:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80C5D16275C
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 09:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D4513BACC;
	Sun,  5 Jan 2025 09:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mri7TO9I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9C71F931;
	Sun,  5 Jan 2025 09:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736069594; cv=none; b=tDsDdlY+alK4/pv7mExAiFtX1CfV2sLu+qJT7nCe3WnEJjlHPu1jMlTkN7KrlVnyILnsyRWNxCiT36wGqjqSGWNTzPVVPNWgIN6BWm7ZX6gNzGUWSuhF/K+3D0HmhUSAtJicyX+e4xo1rb/IPfOFq84L3omFRnOMoLw+8XLVuiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736069594; c=relaxed/simple;
	bh=SeWNPpilrrsIpWj7R/oAqD5RZryyQLssjBJRWjksWlE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 In-Reply-To; b=ZFje3JfbqNNiD081OfAkGCcUaAFw+icDeqiRnncFpniUYAb8CShZznXMBB+qSUSqeKo+nOXFkUIweYItSwp5Vq2cMbxLxqx9e33fDBaPTCqbOIfCYY1snNu+xY4UcbInAGjtu0rHp6PP/IDqC35nlta8GC760zQEF9Iz4h8qFFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Mri7TO9I; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5401c52000dso15191762e87.3;
        Sun, 05 Jan 2025 01:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736069590; x=1736674390; darn=vger.kernel.org;
        h=in-reply-to:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cAfbM0Jbk/gjeLLcZ5ja/lJYA1YUlZW4eHX0QXqR1cs=;
        b=Mri7TO9Id5u0wEuAs69FEtSp2UEsKfDUxlKvVpSfLqgpzcuaGNBVji/YvbK/9AStTx
         qyDtR3VDfkX0ICyB2zH0lrpd9BtRZVAQCVcIMeg/YLcXhm2zsm4q7yW4yFLcDZyhPJ1s
         osM4mwerWUNhjN/TxtpelhJLMu5f1csHpIj38anlFXPnDtInYMWvixsX3h63GSgbxrp6
         DXEhaGvwzlSV0WMBtPQK/LqswY9WdJwQyaGNkSyCyKLAi03wWvP9vB6q1IsfiVFz09bv
         VBM6fNYXSAvMWVw1pO65a9HZxjgtLYTDFYOxn+SeQfpGeG1I9lYxJWbfPz2+jE/mfCoI
         IC4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736069590; x=1736674390;
        h=in-reply-to:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cAfbM0Jbk/gjeLLcZ5ja/lJYA1YUlZW4eHX0QXqR1cs=;
        b=q5aTPRq3WuBj4EXHGWJ+YGAA/b6QYD4rKHn/IOmAn5t4XjTCt4Ca5uij5j3+OpDvHl
         lSN6DHDxul64CLxjCfG5oh9I1uvaEQZnhf8VKa/RpjuOtc1RbTeH7XgJcUI9QEOx54up
         YsbVgPmJPD/JnZ1pHAwxSepHG3YSl8zwtJUpr1G4iK95pWOQlQWBR2cgWp9elupBeLLP
         X9AA2ggcpce3lrED1NYw4f591XuRkI7kqSfUdg7ggxwHQ/PZ/h6pPVF8V7ONlOWkfmSF
         WyfbioV9tN/MiMYU8Jgdc8Pq/TjPeAUeKReO/zkv8V+RIK+Sg54Mqxa/3b+ZQoxN/lUM
         cASw==
X-Forwarded-Encrypted: i=1; AJvYcCUnpFnbozDlKjy+Q3X8LGnSj0XhyNlw/PmFCAsX27IllO1ylMcuKSdHqR/Mv05do2kTpbrMdU39yjacvDQt@vger.kernel.org, AJvYcCXV7uHvR2+M7L409hLfvToFRaEMXumQcl6ixIYjLNsqfNKPRMa62cHnJ1uOd+Ezbms2b36J/iJNKvVq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz6eiN1Dr321IKAwdxac3EvHzpAEjz5EVEXXHPz3qn2v7Q2BY2
	rFaoe+iKlj21pshhXSOVatxWkkPR2eLE53zqFt94U6uEhOwjlMk=
X-Gm-Gg: ASbGncummNy42Jby4NtgrTg149wlLUYV643i8rsB41xPaVVc67xiCbqgiEvF81/Yi2f
	64ueh1U1+PWBbbU2i0EBUIJ7M8sz5zV0f1AOhKZ9R44DcqhiXguAlhyihLEAT+6r0pGRf0S4tmo
	AauIS/nQ4DHr2zPnzR24VS51R8TnPI4d25BO+MkPWadrqLODOi4I5DB1Q3mt7ev5eKS6W0h6aN0
	uzymK+Ia4CEr1F2yPWf3PmeHhIs2kKmdrufk0EN/A==
X-Google-Smtp-Source: AGHT+IGXrFQ3c/4Xujd3mtsXoH+NCwI31P0XPVu0rR/SPGx4mopJY4igEbtUZxPjkGCE52fgrLrTlQ==
X-Received: by 2002:a05:6512:3a90:b0:53e:3a73:6ddc with SMTP id 2adb3069b0e04-5422953c384mr17544794e87.33.1736069590126;
        Sun, 05 Jan 2025 01:33:10 -0800 (PST)
Received: from localhost ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238136dfsm4692186e87.160.2025.01.05.01.33.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jan 2025 01:33:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 05 Jan 2025 12:33:09 +0300
Message-Id: <D6U1B36JH3HU.WQ8GEL7M3HRW@gmail.com>
Cc: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, <heiko@sntech.de>,
 <ivan8215145640@gmail.com>, <krzk+dt@kernel.org>,
 <krzysztof.kozlowski@linaro.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v4 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and
 Pi2
From: "Ivan Sergeev" <ivan8215145640@gmail.com>
To: <robh@kernel.org>
X-Mailer: aerc 0.18.2
In-Reply-To: <173558214299.2262675.7745978856834508715.robh@kernel.org>

Preparing a v5, fixed the phy-supply for usb nodes, but I have questions
for the other warnings.

> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: /i2c@fe5c0000/ns=
2009@48: failed to match any schema with compatible: ['ti,tsc2007']
> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: /i2c@fe5c0=
000/ns2009@48: failed to match any schema with compatible: ['ti,tsc2007']

Using `grep -r 'ti,tsc2007' Documentation` I can find a schema file for
that `compatible` value: Documentation/devicetree/bindings/input/touchscree=
n/tsc2007.txt
Is it an invalid value or not a proper schema?

> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: wireless-bluetoo=
th: uart1-gpios: {'rockchip,pins': [[2, 13, 0, 187]]} is not of type 'array=
'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: touch: touch-gpi=
o: {'rockchip,pins': [[0, 13, 0, 189], [0, 14, 0, 187]]} is not of type 'ar=
ray'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: wireless-b=
luetooth: uart1-gpios: {'rockchip,pins': [[2, 13, 0, 187]]} is not of type =
'array'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: touch: tou=
ch-gpio: {'rockchip,pins': [[0, 13, 0, 189], [0, 14, 0, 187]]} is not of ty=
pe 'array'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#

I don't understand how these nodes differ in structure dcompared to
other pinctrl nodes. Am I missing somethign taht is causing this
warning?

