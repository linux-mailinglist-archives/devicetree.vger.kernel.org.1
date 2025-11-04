Return-Path: <devicetree+bounces-234708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D697DC2FE76
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 09:33:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 601254E70F6
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 08:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC3A280A58;
	Tue,  4 Nov 2025 08:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="eJyXJ66O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5203423B61B
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 08:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762245160; cv=none; b=RdRlTN2jPceJ2glCiQiD9LWbe6mA4x2WJEgPENHccNp4KuO76lMFVUpeTVL/BGeWwNq8WVr0ecPVK0DpwiW9WA97aI62WUgP/u6mzrCqHYDQSBDDzpCJltawVaikg2BvbJobhugiCyeISikqS02Ri75Um5/gs9jp4SGEXgO3Ljk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762245160; c=relaxed/simple;
	bh=bbnG7EOudrl7NhtpBRMP0fZ+Ba2d12lorrOsYxk1lZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fnp9H473cJKcIAVAX4Gr7rqmppVaWKZQvoO9mJ74lz8++nWaz2866bvNGxTl9E6mUoa4A+jmS10o+qdJ1fyT7KWtlw/d2vZIERjWvo1xi13hTyqueJdjJ9qPSl7MpgI/iMVkdv+qoBLYnxdRMKIWwXsGF0kZjPWTbm9YvCBSJVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=eJyXJ66O; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4775638d819so1314725e9.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 00:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1762245156; x=1762849956; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q/O1TSTyTcVC+LZvOe26uYzr4lGVu8ZW4bCxIjulEb4=;
        b=eJyXJ66OWArUwoYcMG+aXKELa0bZRm51zlmx159+hIVkcJUrgW/AV9NMbM8SD8dAL0
         QNJSeSyvvGTCDtaD77jCr6JEPvJoWrexJ2mJ4KaWbf8RzOUekgiA0DuMvzkcx7QIgn50
         hn6FvZMeZ9T3d11gN1A55t9QBMc3YwjATZz917NaC4lx3EDDo+SrnTAew6vWksSMayEi
         X4UJ/DxdTcdmZzT/wuqeVSt3V8GaTNjnDq5PccT2xfiOmFP+tLI5c8XGwVEPvlsiOWJ2
         kuqy5hTdrDyv551wz2874QuzrExPTdF0xg8uKEZ12u066LC2L6P/xWK2H/0ahlnTpzup
         qPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762245156; x=1762849956;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q/O1TSTyTcVC+LZvOe26uYzr4lGVu8ZW4bCxIjulEb4=;
        b=UJ92zPbvFWD2xi7sd61FOx2dT9K6gUvzksNaSoKoahJM/U2UIA6cB0B0p5HOvrbADG
         OCCRSg2qMQt4/X6EwE6aCVF5Yn+FuHQ+dZoultNOXpKvWpgQe2T7FYY2j5ila1PNDk4m
         689dyH8/kRA00qC729GQAsiln7c5+SsQC2X29VXhVKetRoaAcCnV9aQiwX1ZmyLbK1wW
         0Zb+AP+CNtSR5Cyh7zvKgFP3wxdaiX1/dhEuhpHFmEwLBH1FdtmcyxpZ0Q8P0otGF78x
         FiHahg5+DGEYmdcfyIomZSqdsbGWN63w9n8ZhuAAfATz1y2PV0LVZ5UQAxFE+Q11L8au
         EuVw==
X-Forwarded-Encrypted: i=1; AJvYcCVBvBO1LTZi55wHMgHfHLnCdypYqPGZRSQ1ZY3T268AkZ8ijKCA4hgcGfDGDpREc302EcwjGbt6hgLh@vger.kernel.org
X-Gm-Message-State: AOJu0YzdkYH+qSrKq5aARtczW0Yovk96N6dJE03sEZBKnPNafhlP12Xu
	Gg5F/tEBrbvX3wYKATcAB/MZouYniwiY3ME4zf3p/sLpEmEkrbZw1vAgJ7t0QlDfHmY=
X-Gm-Gg: ASbGncs/FmiJXuNF/xUd4p37iv25en9IKi5UO0K2OiOpjtjgP/k6Z8knhkLNJk65uZ0
	g/OqqDr3EjWtEckX2ToYi17qnpkC93b2AlNHGCBUYdQqcD+qBdLvmk9KulbDnT4kccxn+qxNmpU
	gaNLqqZX7+dr/71bL7OHmkTnkLrwRQZRuxDuYsNLS1p5Bo/AqnyTuwFCJSeAUB6jug7Lv3+pA26
	LZEYI9PrMtrHhOI1j9SmVskBKfrlUY92oY+2s37oQLS6ZHWdrq779D2D6aKMDhkZp5KJFM+P2E8
	SyPTZe5M5f3blG6hzMnBtEjC8SZ/Il4vnlYs9oh22G7P+T7r6e84PXUUdZsXeEFgmtNZLESEW9m
	GeUGqqQQ0yuIrovMZ1Ro7gygrML8FJ5jS8tJZ7acu0zevsdPceJWgj2YViXfLrFesW/lnoJ8wVJ
	0fFk5uS7i/
X-Google-Smtp-Source: AGHT+IEyhEqP/V11SA3HoR4U1HIXN+k13COmzT5HOb54Zc5gCin00HHaDach4NErIK6LqUlRHnvjuA==
X-Received: by 2002:a05:600c:820f:b0:45d:d97c:236c with SMTP id 5b1f17b1804b1-477308a07e5mr152274095e9.21.1762245155770;
        Tue, 04 Nov 2025 00:32:35 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429dc1f5f8csm3188952f8f.23.2025.11.04.00.32.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 00:32:34 -0800 (PST)
Message-ID: <4cb0e6bf-4c46-4e41-861e-9fa80e652e86@tuxon.dev>
Date: Tue, 4 Nov 2025 10:32:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/7] Redo PolarFire SoC's mailbox/clock devicestrees
 and related code
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
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251029-chewing-absolve-c4e6acfe0fa4@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/29/25 18:11, Conor Dooley wrote:
>   dt-bindings: clk: microchip: mpfs: remove first reg region
>   clk: microchip: mpfs: use regmap for clocks

Applied to clk-microchip, thanks!

