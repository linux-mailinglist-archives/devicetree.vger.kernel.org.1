Return-Path: <devicetree+bounces-168795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F45A946A6
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 06:15:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB30E1893E87
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 04:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F260F14F9D6;
	Sun, 20 Apr 2025 04:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UIZfs1Wd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236253B2A0
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 04:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745122500; cv=none; b=D8FaWZ5jrDxUFwali3z/+3xu8w6HeaN3esjwEls5lryyGmDljR8f83kmiA+t9g1YCFkhEGEnY1JPdg2jm3eCAIYdPWMWou0px285Jj2pIOjQeTVpQD8VQkfeTYEiqglr3HTCbqM+x+EyBoEBK8b3N4Gr/onTvBUaG60iCLuyqao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745122500; c=relaxed/simple;
	bh=vrRK6sdxshe7zgreO0icrsIYu2dpEpBfv0a9U6CA3F4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=F3vBBm+GTyNhGxNWQWgFkHlvGchjS7SKf0FpvLnnj86OiDJB2P0BiwEAid6lKXQNrCJq2j5ns2nkz4EAfikO0iQuK8Ii28odehzxi3zYMu2BUQbU/T1duyWMYzb6DREylWTFb/erfLRfj/iJ/b91KSvSyxVUa6OUHvQaoM6rIi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UIZfs1Wd; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-22c336fcdaaso32679955ad.3
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 21:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745122498; x=1745727298; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gq3eOM5hE1X8uoAe1U581S6eQD3BQ0s7OjJBWEqkBA4=;
        b=UIZfs1WdDR9JtkVUbr5TbTnMtycy+qaNUk8P8qe+zVgKa47nQrTQ99U5WE3ySOErbf
         uofyCPBZRB15GxCeIv4wkcaIH/XCZN7yxY0o5kbkw/XFU70rsgwC6yNCGN5pVSa6PPDN
         vR0PwxNJT3xT7tsV4G4IHUmFoozpFb5jnDkpCx63liPu+xVF2fNUKK1DMzbv57Cx17JR
         lhx2I5BFC4ldGP7qqMTHTx3EO9QCuhD3+9rOTcyQprgTvi+qjY0VAFUKPsPgd5ZuNeMm
         4ge0cY00iEnA4VML1g5V80Dp2jkAQtfHTA/qIPOFa0MdCVb4lq+dJEnph9ClMh3PAVWO
         0Jpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745122498; x=1745727298;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gq3eOM5hE1X8uoAe1U581S6eQD3BQ0s7OjJBWEqkBA4=;
        b=CFbsVm2JnArsqZ46/JQoagFFE5pVdmGO4iD85QSfImXEAlnoIzvHBKp8sgzK59ohi5
         R7FdTEHwacnSFIjr0GJWoMB28tWgGGUuDTk/mcs5iq45nuEck3Uv0F1Zm2aha0sg82nX
         wx6opAFaWNw1dlcxOZxZ85FUKNnI6a4+Y5q39UtEDDJtsT+Fi4LzZozBfyXhbH9v7ZBZ
         U/eR516ApHQ/KMHti2EA+wZqMY0ZXJpxbdDiTnQZvETrYGefVb9PDGe2EjKh4CGUMUl8
         wKnReXLI1OIfiRk11vHs8Wjm8xzgBEDrRDqmbhOlOLZmz/ZtYU2zd+Giz0OSOAgBHtr4
         fNpQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5rI8FSCloUygjfj+ZZUYj3kYTavoWIhtEPTEyGPfJWVgB9FRr4lpBWwm4nFMzm+Q6Co6YXFTjs0F0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1ZF897W0I6Vd7irjvIp3RdJuFKblwQD0GjGF93SRWKkslDvUZ
	1XeFGMQD3zcKq7Is3gIW3wv/UPZjCm8g4OdoymdxuoNUvpmMxcRlkQg0fMUkaw==
X-Gm-Gg: ASbGncuyXtLHeknvG0Z4w0Yp0OfVDFJ+rDcUlCaEvHcASGqt5ZrD8mvBt2GjD1hKd/h
	V9kAe85qmZ3R+UScBCP3nGNIhzV4ga9r7lwhrpa/M3dWtsrPpVDXBNndNugO1nRT3eDUeSHh4NP
	AorSy1hBRcs+esSir/FyaYqpNXyEiyxb414DToXKvHWNXB8uGs7Q9wD2SenyN5vTEzdQdS1RaVD
	7mtwm0YHsyAGR9yohYce6B5YeRan0MBCmhADluwDuma8X4E0rkR6Uvx4tc9NiFnf1NiKuoA+pvQ
	ytdz81Sur0reS+u+BSAX717lJnqlh5kC4ie29cLPD3IfMOJUULD7/+O6AJHMQOF1
X-Google-Smtp-Source: AGHT+IH0Ul9myETUjE6RsaTKjYuEftn6ksNt+XFLIBnkXHJ5m5w5McMSLkUMSv1HgvljYu7WrWw3XQ==
X-Received: by 2002:a17:902:ecc7:b0:220:d79f:60f1 with SMTP id d9443c01a7336-22c536151f7mr112689605ad.42.1745122498412;
        Sat, 19 Apr 2025 21:14:58 -0700 (PDT)
Received: from [127.0.1.1] ([36.255.17.92])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50fde851sm41412575ad.239.2025.04.19.21.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 21:14:57 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250414214157.1680484-1-robh@kernel.org>
References: <20250414214157.1680484-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: Convert Marvell EBU to schema
Message-Id: <174512249494.7011.2708584951288197679.b4-ty@linaro.org>
Date: Sun, 20 Apr 2025 09:44:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 14 Apr 2025 16:41:48 -0500, Rob Herring (Arm) wrote:
> Convert the Marvell EBU (Kirkwood, Dove, Armada XP/370) to DT schema
> format. Add "error" to interrupt-names which is in use, but missing.
> 
> Shorten the example from 10 child nodes to 6 as the additional ones
> don't add much value to the example.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: PCI: Convert Marvell EBU to schema
      commit: 761aebd2d783a068afd7c81925dc8be9df58bf2c

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


