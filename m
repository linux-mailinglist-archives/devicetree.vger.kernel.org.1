Return-Path: <devicetree+bounces-222709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D774BAC205
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:48:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36F3A320CE6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 08:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09942F83AB;
	Tue, 30 Sep 2025 08:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MCfI3pxz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E972F7AAC
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759222023; cv=none; b=byDTGyRkz1wwk28jjAo9vDPmJE733cASu/eMlIi3hfd6IcJtjL0yBFew5SjWCD+mvDYlaloK6dbbyy9iyTp4D9+3j/7xbW5dapQaSqOgDfUxyguKAV6UWoPVngqN3OYjK9DM/hGtsq4i2j0zeDUCFDK2cUj5biSGJ/1OKjyt6hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759222023; c=relaxed/simple;
	bh=1OJSwnVWIOwJ9ZLoYl+VQDzy0Ex+adY43gmbor4fP/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a5uZ/MNSTJMpfU/JHPXbTMM5TxzoOpOxcuqt5WUq8EDd3spYVGJL5dbc37iyjNSn60LNuknrk9/uAK4JEpC/yALexavvpwPquLqZa/L094aApxW6I1e6fXbf+ylwgXtaPmNF6e+2rmjfIwaUXsiLKI5zJ+NTEv2oekFrl56TqzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MCfI3pxz; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e317bc647so36092725e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759222019; x=1759826819; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lkTVKKAKgDTt3rd0xPFa8W7IH6WaF3o91NFw0CHdy6w=;
        b=MCfI3pxzYEH3eY9ZSthqZjIfb1ci4bivOYw0iO+e8AmVRDzvB0t4frXslikHyRl1Un
         AXpUyxJmUGhBDo97QzVQc8BZFcjWAVyy4/se3QxvC4z66pEIvTp/eOg26YALdrFf3j3J
         wTzzaxG7vY3jpsSCwZzhBgQQW8TmLknEYWyTaddKSZvEw8mPr/gDjdHHRsSdveWrjskM
         OwpeLBrtB76ysXy0rniDB0v5h2dbA4fz5xsFCci531oNEDCri34zOLe0KMSynDdC6kni
         PlrgwV4z476IexAOvSxaidqt6oRecNVfTsCD6o+xFBnDy+gzJmtc+8dyPgR1iVZhSeNB
         F9eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759222019; x=1759826819;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lkTVKKAKgDTt3rd0xPFa8W7IH6WaF3o91NFw0CHdy6w=;
        b=LuAbvXKndnz021qJpfyklscaUlnm9spuVm5dySWbrII4ZV4Z1DXfNy/Az7ZttB1tOC
         8NmDHUN8/7SCsv9YSUzU9T8qbf0+uWOcEuuV12GpUy24R9s3jKcv0ei57RfJF835zlrg
         JKdr1FLUZf7BK6z5mo1h6UcmRvVvDWzI1IZbgWomNa2aqghrVz2XM80CHHNdnGVrrTMV
         U/bIhFnaSfiOF6E30F02zK3Io1qqgyGWwgX/fOUuD69v9Qx5dYpYQxH0GGlkGSAWIIP9
         BAHZpim/nT7Sp6VirQNeo7L4IVApgR7relRl+MJtKeiWL94KIOHt9cvUjlgJhBGoKJIz
         ulKg==
X-Forwarded-Encrypted: i=1; AJvYcCVxZdlRa9xQoDsnh+2Ck8EEtJewg8ZDqvZy+vrOdwe1DS4Ojgq9xc9ot0i3NoJ6xzIhZB1GLZ4CO6tj@vger.kernel.org
X-Gm-Message-State: AOJu0YyX7wnVUh0hEWnI86DIEw2NRHPSxGIelb6AKs5N46zAdvsHaBpa
	DTYZjr35L0NJ1i5AZE37pQTQq8RDKohbJPQH2APOMu/oa5NTbfulmys7
X-Gm-Gg: ASbGncsyGmn/mKxWRO78nJq1dJaS/I7xDCpjUVBUtyZHQYuwq1O6ItOCjK4SD0DlFXm
	bc75e/kRvP4nsLJz2QTjbCmFKkELBVHIBSfVVn/yaSlQ0F1lkkcw3bCpqDmi9QJM2kjPxBlCfdI
	uXXUF3HSTpxsAgtxu+FRxwMz8H0MEqNkmIjDcxr/B87ijitRtmmDKpuF/XCMmXKzk9dlCH3H0Ja
	9eS9aN8Ip5DDYPAh+65AwLKkEE6ETTwxuEQD3RhWceiVMV7Lsl+SwoHpaEscJHZWIgUxEZAHbHN
	NENsi0aqYH+U7O8Gc4JmCJTgnvBZffRsP8XrHyZzNB2+YpMqDa7mOvmSAsYNZ5BkPwWejpa/mdp
	gk98bmev3tyFNH2uK2mGgwGRIcAjLn1oBb8wLdOmFpFvpKekLf59qOFOemz+RRmZi3wlHxxe89O
	GnF4YpNxzTz1RLpqV3uU5QlRhNDdNkjAJy+PsemENI
X-Google-Smtp-Source: AGHT+IF8wHDDTceWxUz+RFjOgHkPZcIHe9m5mYQi6GvRX5Bpn1/rX4YugXhmgUIs5mTCb6j8tM/B3A==
X-Received: by 2002:a05:600c:3f12:b0:46e:42cb:d93f with SMTP id 5b1f17b1804b1-46e42cbdbacmr127109955e9.15.1759222019299;
        Tue, 30 Sep 2025 01:46:59 -0700 (PDT)
Received: from localhost (2a02-8440-7149-a758-f461-9bc4-1c75-ebc1.rev.sfr.net. [2a02:8440:7149:a758:f461:9bc4:1c75:ebc1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e572683ccsm48034325e9.22.2025.09.30.01.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 01:46:58 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 30 Sep 2025 10:46:49 +0200
Subject: [PATCH v8 6/7] arm64: dts: st: add LPDDR channel to stm32mp257f-dk
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250930-b4-ddr-bindings-v8-6-fe4d8c015a50@gmail.com>
References: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
In-Reply-To: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add 32bits LPDDR4 channel to the stm32mp257f-dk board.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 arch/arm64/boot/dts/st/stm32mp257f-dk.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
index a278a1e3ce03..45ffa358c800 100644
--- a/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
+++ b/arch/arm64/boot/dts/st/stm32mp257f-dk.dts
@@ -54,6 +54,13 @@ led-blue {
 		};
 	};
 
+	lpddr_channel: sdram-channel-0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "jedec,lpddr4-channel";
+		io-width = <32>;
+	};
+
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x1 0x0>;

-- 
2.43.0


