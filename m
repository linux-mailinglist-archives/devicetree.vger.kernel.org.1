Return-Path: <devicetree+bounces-235306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA87C36AE5
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:27:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30F5F643883
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18C57334C2B;
	Wed,  5 Nov 2025 16:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K++iMOE3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68112322C77
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762358722; cv=none; b=hVxczowzceJwJtHO2uL+q+jmSCG9OYp67zmh0Gur7VfcgJTndX3xWGN2Tb0486pmv6S+xxHF2fwVCoLof3PTL+G7CQayzafDuq3uCRLgrOlhQFMDfqg75e6+I4upC2pCMTHvuQxtPrAMWGHyrRCILtNOAcYfFMxVimrodR1CDCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762358722; c=relaxed/simple;
	bh=EwG+dbhxi8tKQPwOTOX4S9P5M6dlpqzhm+2MgD2X0Qg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TNSAMF0i1a+woaBTapgAUct8X8Z/wg9DNTaOWSNTSbs1FnL6Up8PEl82WtHdR7oDU6M2QELWUZQHeqjpjMFI1eoqwThcKXJR1lpdF6zw4v8LsgIBgorQvVm0ISuqhdgQ5dRJo5DxF39o6L0NO17nlZxOfGcLdc/dV7awkH4A/4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K++iMOE3; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47754547a38so19500195e9.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762358720; x=1762963520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0gPRO8ltjGC//EqHEd+0CranNOCKlhYc2rOlxmM4oY=;
        b=K++iMOE3hfIlKdnEHZuB2lklM/MxA8ECQJbG4TG86UEuLjJEwf6nacCCdDjWucI5eP
         BhD3YRdgwBi6NU4z1RWLu829NFdGh1v6unXo+vwjy/627iO4jGKc8XGDBg22HD1W1ObT
         FcBe5dXrEpTBw+DK34zWkpKR10oNintnh+NaUitsAvq7NKqAoFc75C3NHF48vAJROnHu
         i3PC2A38747CKz5zsUyDYzzvSxB89s7CTCDRYLllZXMFe9ZaD4CgDj2zhk+V8QvNT97b
         y0BthVgiH/757c5qW4541TMhwr7eixTElIrqbWBOMgh7RAbJEQHpQEA13wWYLj+/DWYk
         9exA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762358720; x=1762963520;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y0gPRO8ltjGC//EqHEd+0CranNOCKlhYc2rOlxmM4oY=;
        b=fwS9Grt2h1SuW4mvx9GIZlDwEjr36iJ5RgNpdCGakDmyjC5GJ1RZqSFElggi7CSEO3
         4zrLdYo33k/q+PJdGJoYo/NgqG8mOHWbNmfXHqkxdnS4jT39McVjnHttzIZDVU7KIzfn
         BRPKirTvhxDXjfHFNsIMvPJigwQVdSidYAm0flTDTKtY7ObIWIlENmP7oEx6Qr4QK60d
         oo8BkSLf5JhfyIzgthVgePyKZEUES4Ts1U5QtWiPNwKeEEkARPYSMar4gRsL3qSz4PRk
         jjmAcSA7jNPpHlLRT7mjphRqOpItUnmDT1wtRQDAYvnb0yMadnc7xSlHNR/PD70/G+mr
         PLRw==
X-Forwarded-Encrypted: i=1; AJvYcCVOxS2mKZsQ5E+/oZYHIOKytEQ5Br4SR/xd/Po/XLzUqg1u3vcNxlvUZHfH8nyljJ3qhsRXEUS+JPH8@vger.kernel.org
X-Gm-Message-State: AOJu0YxxG2W6J1LskSBQzrPKHks0apYMIfK2q8VwTkmIxI610F8a+30B
	+Xd2TK8ik/QoeZaA2xsqNsVkBjlXm/MJdcdIze9a4dC8tmT8pKVZKdI0
X-Gm-Gg: ASbGnctXWF4l8vwiUyIqmIXLtjmv9tN34bj7FzPnyV8GdJGMg7061VbZW/rWy1Zh1o1
	Y8YbuTyJ78PG2D8pZfMCuYuxsH+cjiGrg9THfPcSKmzlAcDg3gPo4zd/FblXJ3zFWYrobE7m+5x
	Z65JNBjEBKjxLUQz1IpZT8q1YUSxw4KlFeMWrg60zvqk/9h3bopv8eUqaiUKW9z9I+VnajfMVa0
	waMzAhycPN6myGxg3dqfNFGQtpmXntQSkXW3UA1ItwlpKjlwsGXixf9+Li7LoGo6I5Cs732Xl46
	rzK2J2YJgDqARZ5zL8xBhT61V36m7/BbwxXSycsCgqlfAUXHNsgJBQv/v9sRHkYfpwAoG3mehFE
	ImOhpjesbN8JzR57oUP8eAygtmlvIp9O8EcU8GUmkiQXmyWaYXTVjLTbs7CSHx/8W7AJEM4BzIy
	aZFPQhLte5XXuX1ZE0UKV0Hf2e6C8njJ3DVwvCdqbCtRxHdrD+tvf1lVuBFgchHY2pQtcHYhv2G
	TtNnhg=
X-Google-Smtp-Source: AGHT+IFmyNYl5xXskz/5ll5ztpvyfmC6oBvsYVoGB2HdYWWuVi8c9xmV9W/09ZNuLsTpWfK2LkUrSA==
X-Received: by 2002:a05:600c:5291:b0:477:c71:1fc1 with SMTP id 5b1f17b1804b1-4775cdf76d3mr37635975e9.19.1762358719486;
        Wed, 05 Nov 2025 08:05:19 -0800 (PST)
Received: from localhost (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775cdee765sm68471675e9.15.2025.11.05.08.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:05:18 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/3] arm64: tegra: Add DBB clock to EMC on Tegra264
Date: Wed,  5 Nov 2025 17:05:10 +0100
Message-ID: <20251105160513.2638408-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

Hi,

Tegra264 requires the DBB clock to be enabled anytime an IP block needs
to access external memory. The external memory controller is the right
place to put this logic. This short series of patches adds the DBB clock
to the bindings, adds code to the driver to use that clock and finally
passes the clock into the EMC so that it can be used.

Thierry

Thierry Reding (3):
  dt-bindings: memory: tegra: Document DBB clock for Tegra264
  memory: tegra: Add support for DBB clock on Tegra264
  arm64: tegra: Add DBB clock to EMC on Tegra264

 .../memory-controllers/nvidia,tegra186-mc.yaml        | 11 +++++++++++
 arch/arm64/boot/dts/nvidia/tegra264.dtsi              |  5 +++--
 drivers/memory/tegra/tegra186-emc.c                   |  8 ++++++++
 3 files changed, 22 insertions(+), 2 deletions(-)

-- 
2.51.2


