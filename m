Return-Path: <devicetree+bounces-165990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39179A860A7
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:32:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6B00189A066
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3692E1F3FC2;
	Fri, 11 Apr 2025 14:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="L0TbKZhM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDD51953A9
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744381899; cv=none; b=IMCMIrbUULaStiMPdojATWbcUkI0e9UAaZ5eh/8uQ/2ND0VmnPAPv6n/m50TMemaS2cCqDgrnpHspLyb06LTgMdCrxQjOr5AEdK5fjLFOtcqtlDBi/L6dsjoN6/nBXEDT0plIX1ZMCVAjGUgtCwh+6Mt34WPgHRmGNMyCu0+FHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744381899; c=relaxed/simple;
	bh=gG+yNxpOpfRPJR9abjiLvuTWKQwhDhEab2caFrxBD2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I7byBg+uFuLq7hyl4hnEOXONco455uqGRKnCHS8JvHh07T2SBfq7QZcRP8eIt8VNHDVnxwK5s7z8A2XI+6tiSS4rucfwW7ixDlOGiF8ggnMzg+A237ff3SsRfn4DR/NIWt211EmBqGE6PC8jq9GuR2qPyoMEJDOime6uU7txwIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=L0TbKZhM; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so1694787f8f.3
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 07:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744381895; x=1744986695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uX8mZpRv3TaO0XMpHMymYqwqOh4McJjARgLCOSuvF+I=;
        b=L0TbKZhMdFQdekabCuNTvXvahI2TggY5+X9WmSpzcFAIqyIr5L8nSoKDLDsavDmrL/
         coWEpdEARmN3R7hH2WktnT4aSN6QZaCncUtb0UDJlW6DT9HBBnSEpon2XkklW3SPnEC3
         Z7rBP1FFJmkakbm6HLY3OZ/2PcS5ShDReRB1ZRpvfepuzZZx9p9pW7wFqdaE6mKEPKa6
         zybxqLAYX/KHA1akl1OHwhILwhVf+T0WFsr2ACnpcOG5IOq4mMnGkpg1kw1o/r25BMVs
         htbGekHKVfFmkd5kkCcEIMq7jIsKy5Q2HkhHG9X9YV1qmwB/k/EIpD85cppajHTDnGxh
         oBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744381895; x=1744986695;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uX8mZpRv3TaO0XMpHMymYqwqOh4McJjARgLCOSuvF+I=;
        b=P96cLvE99JrdX3AUAOiFIrzk5QrIZTf/CgAvPlwygMc4RQEl6F65QKMPK9ooZoW40B
         o0ENNxU4AH+A3w566ZdDs26QYsQ2Nv8T/tgQ7ObvDJRbSnrI28qnmWzwyADjVPf3xnby
         pKRMVK75UU4gh3pPuFEbsjh7MDx8lF+jUE1ZtWbDqAPlW0xHji8IvMFdAL8ALPaVTKdH
         RCue3izD46dhBg2cW+gQfNx9siCePB7EDcirizu2vh5/mJcnsgfgRlHcJu9sGNI8GToR
         YWGoL8NgWp7KGDzQIBSJgMpOoblvpAG5kmCVi/Vor3ZFTRoO6l9tHMElV7yoVDwD3ccG
         hEFA==
X-Forwarded-Encrypted: i=1; AJvYcCWVkKDSfTnpOYMVMlsEkHumIfQWfH2S/S9QKDuJJ6HXBX/A8Z+tpNrt/Sbc75q+3riM2ohs/TzrC0X9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkn/sO2sGIdpoyFu+ShC55Cx3UThN7LmfX4cBcGbrFUNM+PJVS
	v8ui18JVEZL5vmY+ajJWHo6UnxBt7K0WxA7/ohu6sceBxa/7G2SBOP9ZvnmtXRw=
X-Gm-Gg: ASbGncsuUMDISEz/wfVoe1VRMBFAt+PiGgUodauvjEuv/GxuYY4Q547QXfz+0K95Gcl
	xoHcGG5AquMPzuxyXlV2MlifkAbalsked3ALlmwv6H2U/7+JGCe/zRM4mGmQCeyqHph6bptcePl
	ukZRPBHflwMnOFJohfttElSXQRwpaq2VCgjwSoGL+4YcsGI8u2GHAW5sCeomf/ntypbe0eeO6uO
	Os88liYVKbJVqqUaEvAXvR71fELbp13KiUD+g+6OYlhJljoh+Fv+Kv/91v9zemxOVrG9vZQ63HX
	ZzJEDbT8e3TTPl5ecvbwHbkj+oPy/0P7ciIyQG3KiJMwVLJQ
X-Google-Smtp-Source: AGHT+IF6fQXGohs0eaWkqaW21PZNfzTYkAsJGJdiE3exF19xC5xUoXmH8agbdcKpUbaOpr6LHpdP5w==
X-Received: by 2002:a05:6000:4205:b0:391:3cb0:3d8d with SMTP id ffacd0b85a97d-39ea5201388mr1958557f8f.19.1744381895364;
        Fri, 11 Apr 2025 07:31:35 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96c123sm2239120f8f.36.2025.04.11.07.31.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 07:31:34 -0700 (PDT)
Message-ID: <302173fb-7a23-4ea5-a6f0-fa7318f8b6d6@tuxon.dev>
Date: Fri, 11 Apr 2025 17:31:33 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: at91: usb_a9g20: add SPI EEPROM
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20250403064336.4846-2-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250403064336.4846-2-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.04.2025 09:43, Wolfram Sang wrote:
> Schematics and board layout indicate that versions with a dataflash
> instead of an EEPROM might exist. Let's handle that once we have
> hardware to test.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Applied to at91-dt, thanks!

