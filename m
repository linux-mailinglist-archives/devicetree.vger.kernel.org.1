Return-Path: <devicetree+bounces-89548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B52F294207B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 21:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E67731C23EC6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 19:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12BA918B473;
	Tue, 30 Jul 2024 19:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IysQTljJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117253FE4
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 19:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722367347; cv=none; b=iXv5ZK5Zt9Xx2zPnZtVJxrLIS/1DeVXl1d/PRA+Ta8/7cGcakFUoZdVB4m3MJsaYoUi7wo3/YPGXIPiWc72WoGuaNGXLNmKB7qkRx06SyAapULp+uLXRgnAkllqbX2xd46PeeReB0NIrdd+FXEzaCgxENIiAjJcpcOP0X9ULOUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722367347; c=relaxed/simple;
	bh=Gii+wpRpwvBV79w0JpC0AfUAbmfnP0nh/hhYh6g6VV0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eTROSveTgf2nALIkwcCda+JoYfqdmP9hrNvDopFwWqqreWmFQhiL/aXzrqFEFIoe5pzwfplVrl8rbUP4pOUU+bYRAqlOAvcl7mtJ1h4cd3NCSuRlS8F1RlQUfoOwajOkNqqJhBKZCSLwYuQfFfdL1WgPOJblPlqTO3jW5zP+VxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=IysQTljJ; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-70d1cbbeeaeso3519170b3a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 12:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722367344; x=1722972144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u5Mbo7f/0r7FhjXKubpQaTwbLv4cdtUfsKj1TECykL4=;
        b=IysQTljJeA5Tfos5VQucWJPTOenZ6KLqsoeVLIaIP7vedRCoIfYpxvCrpSkZYhbzxw
         QFnXkNbovXjeAsvWOs37hByr2UZhZiipUO1A5T+82WeEniz056ULVdfu07xPvCg+fLaK
         eWQ9fCFtEBofIBYP8A71RvS7Lsc/4ha4NZs0mq7QiRatUP/PCcfIfizPkSfh6RiTZ9xG
         oBSL3xfjP4Q+I05Hba3GGApFQ+lA5RbIKm+gRZt1c7+rUGUz96WV+unRjlv2UXFwhG5w
         8r0pDz5xOHDIbHkKK+/pNsBhIQDo3ARuYVA3VNddyL3QGhagXo8ClAfnNOeaPnZmxlN/
         Zh3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722367344; x=1722972144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u5Mbo7f/0r7FhjXKubpQaTwbLv4cdtUfsKj1TECykL4=;
        b=eJzSLs9tgjuulC1Bh2XuNZ7dvxfpsXlqp6o8vH9Cp1lTXesWX/5dANuRA3QEFXhE7A
         CsHUPCVusxg0xgsCogWArwSLJS91Ei4IQTGwWsOhgniCBplyEDgoZqU1uTyMBD2zxfYH
         3lbRZjkH9kNbSAqxmW31Av7+aoZak2jnh7Pr9yQRd2tvHmGi3g0Ee7SK4CuhKLrMIzfC
         nbAFB3XJDTXbmIRh97s4o8fBjcGFVSD55xsqbDtTyuODrUubbEdM/6I1CWQSPk30vFl+
         8NQwnZGj5kla5szJxFZwHaY7bdDgZwQ4nm9UOaC2DhKTQzeWe3gFfJGeBvxCy9/TNDhy
         rgYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyKeqcT7WWzzGlWFnjNnHzKqn4cBsmjzVzw1Ae9dDwswDMnApQ04PdEZZAzIm5boL5MtM72yq7JzAuoV+YQtd0M1FQ/l4E+uM9Uw==
X-Gm-Message-State: AOJu0Yz9o07dvFHf7YhozpT+R03BHYzZ3UU9mqau3HO4nAgxZU2SylDA
	bSIXnS5oDUmoOjRGFRL1mUL2+0Oa0o6JOhDkEpYSRu/UwgnI12b9j4li935ee3I=
X-Google-Smtp-Source: AGHT+IHjJy5D9afJWCeHuNtfQRJmpcnz1EesxrPh3ouVuLJUp/4bnMSQG5+i6ItxbqVTfDLzd4D1fw==
X-Received: by 2002:a05:6a00:3cd2:b0:70d:278e:4e92 with SMTP id d2e1a72fcca58-70ecea12f40mr10581424b3a.12.1722367344154;
        Tue, 30 Jul 2024 12:22:24 -0700 (PDT)
Received: from localhost (75-172-120-197.tukw.qwest.net. [75.172.120.197])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead8af1c3sm8749224b3a.208.2024.07.30.12.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 12:22:23 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: omap: convert NVMEM content to layout syntax
Date: Tue, 30 Jul 2024 12:22:08 -0700
Message-ID: <172236731467.2210764.16397085645843049493.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240523042750.26238-1-zajec5@gmail.com>
References: <20240523042750.26238-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 23 May 2024 06:27:50 +0200, Rafał Miłecki wrote:
> Use cleaner (and non-deprecated) bindings syntax. See commit
> bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
> details.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap: convert NVMEM content to layout syntax
      commit: 0f7d5b53a0fe94a890f1854c978d2a5b43efede3

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

