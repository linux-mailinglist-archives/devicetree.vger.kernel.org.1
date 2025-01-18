Return-Path: <devicetree+bounces-139452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC8EA15D2C
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 14:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0378916645D
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6889718DF7C;
	Sat, 18 Jan 2025 13:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MKFpKo1I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1E6187561;
	Sat, 18 Jan 2025 13:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737206265; cv=none; b=J7rQCIGKLQvjig4Yogzu4029iHDrGXVX56te+6cajiR6jAq72oIwdzQlXS5102WsP3qHM2GxXPzZpnC9eVLvrRCQJy9JavAWHvxtIDeQf3hNUk7ctbh3I7mbjQSABRO5/wb/7lYQ1nKK44Tcn00vrp8uzms7Vavyej1H6QVexS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737206265; c=relaxed/simple;
	bh=hiOnSt4CDEnLfEOKd8TSh41PVsAYlATlP6ZPgyV9lH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q3msB8tfvVjiQfNsd9kFlHLsnEbtqFs/Eui2NY1QrYIOZA/4pNRQPKsBeltf6Y2p+F6s6jneOssYaMyVNLGtD7ZcR+BkDpTn/aCwkXSp8DS82Cw7KhzvsNy7cHg/Q70BoSrDzIie6NK9cn1kazMroHW57oGXEXT5K9Z+gBHpauI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MKFpKo1I; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5d3dce16a3dso2685642a12.1;
        Sat, 18 Jan 2025 05:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737206262; x=1737811062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hiOnSt4CDEnLfEOKd8TSh41PVsAYlATlP6ZPgyV9lH0=;
        b=MKFpKo1IwGqYudSH7Qd8JGiSzalfoXcRFK4n5YG5iOGjX6i8WJfQV7y1Fxhi/FnsC7
         9B0VsPkuMn/rhAsImrBCkM5eGC1YbU88o3Wo2i/Z2qRNCfB/mv/Iq3JqWh5HDkeHwZar
         LZ8MFJvjhid/XqeqNnn/6QRO0PDn8+Q/att+rcjFop7kGUAii+w/uz/S4UtzST5p3PeT
         vAQmHt5m0l7IckqkoMTSiOY5feUweMxrrkvM7AUW633bRxOVtIDjPr57eXJ5BFtew83b
         fPM9jSgeuBuBhqevB9s0mn7uSsFljoIigNcEsbzQvtaq9Gi+BRVmj65Gzs/TcyofMwAu
         YHrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737206262; x=1737811062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hiOnSt4CDEnLfEOKd8TSh41PVsAYlATlP6ZPgyV9lH0=;
        b=wEU7uuPTba63DCfK2/9R+VdCGtIzFK3TKoSP247MN8tstz0Inq9XN9lJ7ZtJmYaC5B
         4XCUieXWsseQrlK2fj22hq4M2xQ1P/m9VYzNUr3ktWRYutmA2vl88HBVFbtFhtQ48zj1
         wvH9XNT7iYbQkaSjSCFJw0VSs0blnPZm8qleV0C4tXItraH34C4SIO0iHtMDUI2nr9o6
         JvDGx9kBYZ77m7sTVFR3Pt0OJ+vbFUR19PY7ALz6A1irxQByQYVTtUjUwgTdcVZDNBNs
         dpVnIQJTpQOyuE7wbMLXBEspI3Bx2b81GjfY4crLcYDxN/YNKXtm4ms/UKab7MjbJjR/
         q5zg==
X-Forwarded-Encrypted: i=1; AJvYcCUy7YxEvBeBkuR1+06amezxepfMcY/d+124FQtgZk/Q+9D+7l03YjA/oESa7ulz8SghhmqqAVSAmSlaNxI=@vger.kernel.org
X-Gm-Message-State: AOJu0YwGAeqO1T4JrIXLzyQ7f4OBYC9SNHEOutnUqTdxLzrAIIn7PNez
	QVWUVRJS4kC9iHvB1RmDW0txpvabIbe46IKo7NddsDi2OkHknSu5
X-Gm-Gg: ASbGncu2JCMIrXgobFtbG8pU2XZkjyWVdxtbW4r2NexL0XPgrkZfeNgFNPHQaDXmQE9
	aRg0NOhnVLuVtXtPRxmW+zS358oix8YEOgz19LnO+MxARrAD+TzIN9zzPJ+OuBhV4iTp5mqMwM+
	DsfWmAvIplozA2WFl4jIT0mE9CtczuXdcL8Y6rvo3g6sbzKc8XgDoTnRSIpzEy+67gatcSpVQwF
	3KVrufBHKSQiUVm/k97MwcDgEhged8GulXrz2t1Tfb4SpV1yMKaehHyBtDFfPOezC4EZJBwAJW0
	ArohLJNsu7Bfd4/MnzqzkkHExg==
X-Google-Smtp-Source: AGHT+IFFti1/tZj8e1vP90qTGFiWr/GV7Ik5rVsNImRR/WGzUU5tZlbjRu4Ye6eJGZXqi2al2PUGGg==
X-Received: by 2002:a05:6402:27c9:b0:5d9:3118:d0b8 with SMTP id 4fb4d7f45d1cf-5db7dc6b573mr5022930a12.8.1737206261687;
        Sat, 18 Jan 2025 05:17:41 -0800 (PST)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5db73683d28sm3167269a12.40.2025.01.18.05.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 05:17:41 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Thomas Gleixner <tglx@linutronix.de>,
 Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 06/14] dt-bindings: irq: sun7i-nmi: document the Allwinner A523
 NMI controller
Date: Sat, 18 Jan 2025 14:17:39 +0100
Message-ID: <2763297.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20241111013033.22793-7-andre.przywara@arm.com>
References:
 <20241111013033.22793-1-andre.przywara@arm.com>
 <20241111013033.22793-7-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 11. november 2024 ob 02:30:25 Srednjeevropski standardni =
=C4=8Das je Andre Przywara napisal(a):
> The Allwinner A523 SoC contains an NMI controller compatible to one used
> in the recent Allwinner SoCs.
>=20
> Add the A523 specific name to the list of allowed compatible strings.
>=20
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej




