Return-Path: <devicetree+bounces-152351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA536A48CFA
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 00:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E20DA16CD60
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 23:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222E122B5BC;
	Thu, 27 Feb 2025 23:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LQ3Odted"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897D2276D1D
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 23:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740700623; cv=none; b=lAVQDcaNACiliacqFJmDoZG8e82TdHeqpoAz/H5UX+FYwGKwLbKaClzmhj9woO3LWXg8op/it+VHjWwdiAyljBBQItXhR9n5FHoKGpxenSwRUdXsJSz/IgByg0iFkA1qMlA+8ci9X/6GcSPJHpLVFcXuMCC2aqCHkxnU1w6wfNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740700623; c=relaxed/simple;
	bh=WtjkeKpgDqAlUNhW5eiwARFwrVU//AkP3VJFqRWu6Lw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=u4Zm9b7QyRUEFZXwa/WGlaao/bezCr+yDf49r5AMvhU90drLlVgmzgPOwS2ebILANcb6PVBLfVGxOnmJ9KZWs2WJIEOiWCO9nmEu4zWGMLKk+lF4ftBmjUyelFV/0PklyEalOPiTFFRCn1Ykv7ru/4+DaI3cbwHlsZjDsGBqadg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LQ3Odted; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7273b01fe35so888823a34.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740700620; x=1741305420; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D9SSAA5SUZ0CJogIz5q0cDzB1Ecy5N6mhChS1/7HJEM=;
        b=LQ3Odtedhu7kUeP3wAvfTdkt2D9r6XaYywKVEQINXvpHh93kwr2hnz5V07lEv5AzaT
         PZRJCACIekfaLmHotOCd2+G7sxpuN0r1nqDRmPfZtewFIp2MBAsNd6RMCy0LZOJWaw8C
         gASAvuvh3pKm53NWYdewqsQ/tjkpe/Y8VsBRGU8H7p8rYQvbc7PEuWcURph1tCGaC1ob
         w1GPAAbWtGdqrCuPy3fj/5Co3VEvNSoBPFE/AIzfkb63HmOntGzWHPtl3z4zDiOhBo4J
         liaQ5Njq1Fuww/1Mf8RjyKWmtEQ5Nd6PKWBl+ODYEA4klt1nIqNf+mADj+l1E+Rnu+PT
         gI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740700620; x=1741305420;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D9SSAA5SUZ0CJogIz5q0cDzB1Ecy5N6mhChS1/7HJEM=;
        b=H99YmQ2UqMhryNML7Flkp4Mx1sbE/oEf1UG8iVMb5FZkFdHybj6IU9tp58VCJWKlpM
         Rp++g7EB2qjV2hVQaVEPC2NRG57g3NemkcanRfO4WitYNIT6kMgq8rZW4B0GWRuUO8iP
         msomqOxgaW5CLb/4sqJjZzLmyildX/37TecCpjF099+nuMnLjom0nBYcVZiIgtDpYk3D
         Djctz/dZ3wJdBDWDxN+av6cPZAiXBxkCuZLSO1B+0W0RbDXdouAvPLc9CLOKOATEdwW+
         pqhWeiKks7HQO0zG9xlLsGUdaFdGJXncoGe4AIkPQtydffJXfwbCgKGZqYlrEJwxHO8x
         6Fkw==
X-Forwarded-Encrypted: i=1; AJvYcCXYE4aOU6G++5Td+XPRqDKyi+eR8Nf/IvMXO5GBxWr8uOJrixA+sSInl6LMRhn5YyKUH/tPgP6Z/vk0@vger.kernel.org
X-Gm-Message-State: AOJu0YxWTcnGR7tloY4nkQ4+NeFwXh/SjQsXTEfZbYOc3iXrjBzYOvJr
	sHtyniU+dBlXRpe6ePyDXzL4M1RyxweLytPxkLTtjnpDcPwntWr/
X-Gm-Gg: ASbGncvusAw6giuvijJwirGYdXZvEBykKhffbElu1U4ahqv7J+wKsQxn2I68yZOkuui
	YKpwuHgGIExkRJDhHZq9b5wmcC4jercpjbDXNLNCmJ50/lupxysWaK7/CcxCaPEYqCbuYHAvtf2
	V6lAQ65HG/zF/BPDjLZm5WAsKZmtTvVAnSzCfFMzp+m/dIUsXoLFSlcvBJ3gEZtycRvSWsMPu0n
	XQMUBOXPiZU2LGY7fEDCOGNA3LfR/SZ1XiaOp/GH7Y9j+zP5o9C1c0e29XRFAW/ZJOgbzbPmXSk
	JqjeQBzmf8c/3wZBy5WdnejChffXIwcSbbs=
X-Google-Smtp-Source: AGHT+IEzxJ3/aDFJMSIXRCVTUCYikYwc7MbgxdmygO8C6wM+9nFe1yFcfZ8GaoUVZ69BjdiyQVU/uw==
X-Received: by 2002:a05:6830:370f:b0:727:42e0:be96 with SMTP id 46e09a7af769-728b82670a9mr820001a34.2.1740700620481;
        Thu, 27 Feb 2025 15:57:00 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:87c8:8ae4:f338:6188])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728afd7694fsm443893a34.50.2025.02.27.15.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 15:57:00 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Florian Klink <flokli@flokli.de>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Ondrej Jirman <megi@xff.cz>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 0/4] Orange Pi 5 series HDMI extras
Date: Thu, 27 Feb 2025 17:56:19 -0600
Message-ID: <20250227235623.1624-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI Audio and HDMI1

Need testers for Orange Pi 5 Plus

Jimmy Hon (4):
  arm64: dts: rockchip: Enable HDMI0 audio output for Orange Pi 5/5B
  arm64: dts: rockchip: Enable HDMI audio outputs for Orange Pi 5 Max
  arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Plus
  arm64: dts: rockchip: Enable HDMI audio outputs for Orange Pi 5 Plus

 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 16 ++++++
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 54 +++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |  8 +++
 3 files changed, 78 insertions(+)

-- 
2.48.1


