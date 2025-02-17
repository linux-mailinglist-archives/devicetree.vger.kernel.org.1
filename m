Return-Path: <devicetree+bounces-147290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0C5A37E3F
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3452E3B5404
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82F7F1EA7CB;
	Mon, 17 Feb 2025 09:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FhRwexGo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92E11EA7C6
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739783738; cv=none; b=Gz4LI6U0ctHREGo/f8Fzu0dkUIWd6Zgao4Y+ATgpLaQ9a+LFj/FsTssJfnJnJpbo1GgkQ9GsumVRBwEF5hiAnKTa1B5EXhgiP/J4x9+NCdtu4G3Am8u2cD8adOgjj8ktQeUticrMzFfznGsZ31LAvgLu5hL5w30Ynmv/GEzGMBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739783738; c=relaxed/simple;
	bh=YJdyGIG3my8NO/dJw8isKj90wz38oqmL1O9Qrcc9efk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gimasLTj1sySD5C6TG1JhfcbIGkFU2DbWptddfPjLxcBpNPC6VpOkL9exSocqKife5msgtHLu85qj0f48CYGsQDy5lzugAl2CNBaYQaJo3l+eAvAtK+GxEaUetgIhQ5ukjQeXc9lmUwogVgxHAXEo+tJHDV8ltaooJVUtEwKSFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=FhRwexGo; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-abb7f539c35so323217566b.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 01:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739783735; x=1740388535; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8MCaiuVauVevWTK+5X86VRzOwhbUf69GrvAJNEIq6vA=;
        b=FhRwexGoheaVX761w73eUbiAGgvGiQEYuJAOQBhA8Ok12uLHRd4bNDAogcXEDDAvJ8
         L0rvM5Qxg3cx80sxQMPPvNrnQ4oAx/nFq8Y7hsasPD3S0pb06a4WmNVqnk2rtaHDCXC0
         KBd87FkLyYMNJEKup12HzVMOYWhJ9c3SyjkmVYDUmeViKWXN0ogK02nRvNalR+FdmZSr
         sKZGjgsoVSmQ539fQ80ZTRWF0tXhfmUUNCSwYBMsFyPhTmoSyPAL1yZYntoZi2VYzazn
         zewc58fSXNb1lNW2q8aEbrcNhBOK7XgjhTaeEghNyUuMrNhemqNQXgxct+8CONGbgVyO
         fr5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783735; x=1740388535;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8MCaiuVauVevWTK+5X86VRzOwhbUf69GrvAJNEIq6vA=;
        b=oW8pmGurBeW+MKWMWvQoUICC+2ZS5Jo0eDry/CuvPItKELMBzJc8kIs/r0cVuN09Zg
         woaX3ZCOqfE6aWMFHw+JEBAGVfEupiGw7yF5E8wy+KArt/fXDlcCeASGdZgLb7iTxiEX
         ysEATQHjPYZmUDIWuNoqMC5f2EQtbXoybE5AKPPT5N/Fs7BF0rfv/UNMSH10PHc79kdy
         JP9DD+dj/3gCuY5C0bWtSBJTdN4S2xWvJ/2h94VZCuOdR1S3REocZy4uQQPxu/uDZhi3
         scI5jConFUe6KUV7iedU2/f3ceXYvIeYL8rlPClS4uyXCaTigfU5t4znDqns1AFamtCu
         9iRA==
X-Forwarded-Encrypted: i=1; AJvYcCXYvnXAvzUBhSawk/qKeLKkfIr+2aNdRm78AqYadLdNxx4sJWT3I59Lbk4P2SnA1hkRifJ+41Afgkrt@vger.kernel.org
X-Gm-Message-State: AOJu0YxrHnC1DcVLWOpTYoYmtR+FMADJ5cnGS6EE5a6rGSKdqxanv+LD
	9LD2Em1BNfj3ClgQC+fontHKC9ynJVX32KbVK2cOoGix4sg4brdS+lyNBFhWJFc=
X-Gm-Gg: ASbGnctR0WboIye9G1IlzzmNsTtNkkZ11o4KhkXIFu2+rfsaLWB9E+N4tXm+LL2TQGi
	Yc7U1+OoNaSQlfYcd2XtzqdIMjL0MxomGYU+O2D+0plKrJZjJwhZx3WyjKLmMAIeadwf8jlxt3v
	XxpAUWultWU99ATrvR2tAv1TV48PhlHf8HQo07k4Z+SUmJZgEJ3gpL/QRWmPBUK536PXn7f2PuQ
	rttaL7JKyPPQghqphKiyqr7OwwXBQl2e04zCt6d/GkQYW2ghSZ7HnM7qc1rsLo/p3nxqepUn0dP
	RzPSK6bpjC63bB4IyEH5Qq8=
X-Google-Smtp-Source: AGHT+IHvViYkmUNyNgG7oVYdZhYshZ+I/2VClApfIC6lRoJZIRAdKzNw4ZUWZ73tXd38AkMNqN4PvA==
X-Received: by 2002:a17:907:7247:b0:ab9:76d7:16f6 with SMTP id a640c23a62f3a-abb70c2f4a5mr873259466b.32.1739783735234;
        Mon, 17 Feb 2025 01:15:35 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb9d1a0049sm147226866b.40.2025.02.17.01.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 01:15:34 -0800 (PST)
Message-ID: <86d94a57-7614-4973-bc5e-ab7e70eaf541@tuxon.dev>
Date: Mon, 17 Feb 2025 11:15:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] ARM: dts: at91: calao_usb: improve LED description
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring <robh@kernel.org>
References: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 31.01.2025 18:26, Wolfram Sang wrote:
> Wolfram Sang (2):
>   ARM: dts: at91: calao_usb: fix wrong polarity for LED
>   ARM: dts: at91: calao_usb: remove heartbeat for User LEDs

Applied to at91-dt, thanks!



