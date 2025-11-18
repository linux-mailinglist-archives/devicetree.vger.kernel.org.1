Return-Path: <devicetree+bounces-239739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A06BC68ED0
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 636D94F22C3
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C796634E764;
	Tue, 18 Nov 2025 10:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zi9HNipW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1AC34CFC1
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463216; cv=none; b=B6D/F0dfbpGvOJTj7k6sVhxW7VKD9SD84hExCvcV8XUXqqL2Joh8ZrSd5kKyPi3wyrIlX4XVmhgul//Moa7SjOopmmwSahAGN0cJ0LHyYWNmbTbOPSHdGtVEcoDoheZZPWfFIqK/5d/t8BsYT5qUtxFJd01Mw5iKhidmSx/AZmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463216; c=relaxed/simple;
	bh=V8hyqVc8AxjSIpi8Rf3ei8SCie7TL3OVm+o7PWaDSjI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ea7QaQB82R5A+1/ttz8zrzQqgU2VHBVp5uMsNTgR2b0JhaXc51Xw0oSLCxdjuVMtKuB0T/ULQUQz3NuBB7FEjqaH0tWtafYNPTVR2+8kY5fHqSlC9xMzQtMpvzijScp3Gfh5suUS9TgWexIXyCI1p9yW6IhAcBNFZ5O3vcAepkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zi9HNipW; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-343dd5aa6e7so5961567a91.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763463214; x=1764068014; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jrmpJ7r5olEuuHW8bES57a8T6LK6exu5hSOQkrAzRxY=;
        b=Zi9HNipWOs/cRdgQ5CX8K2Qjxeig+95+j3O0ivqvu3Exo9wjvb41XuE0kGbRzhEaqA
         Q80WSOFYDeC9vD253PbCKaBYOx/SKiAoew5Gbm6e0CmPjSy+g27426wcvAvyx9rBjQWm
         7PSS5kAPmi7Jy6mxPdeld7S45HILrY9ddbdisFtq+NYrFpTVl7Tp1sqZSkfmPlYUOUdF
         NqGEQBSnf1qaROx3626whK9wxfxvVswyPeOsoQCGaWfNuMmTWAhGNJc4pIXtXfCNdz+w
         4530JKeA+aKEgKxi+ysQXxthFMKE0MeGZ8m6RybQ3u92sgsOpucdB1hQ5LyJS59cpuL+
         DQeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763463214; x=1764068014;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jrmpJ7r5olEuuHW8bES57a8T6LK6exu5hSOQkrAzRxY=;
        b=dL7mmgPo2HLu747zaYvjdSmzfum+TIL5iTEmRd4PBqKNJKDgxoFqMNh2fC6t5r9jqJ
         saZpjRWwei6wV7Nh6N16Wa2tugWCPYC/tnjMzGbve6fKNsoLIRb7XBoc/kaEiRCsSUQb
         7hIy9ygBebDNCpQJLUAT4jkDBQMTxwk9i0+Dp9xFIuXz3B24kscTSMXGSpTaZ1WHF3FI
         I+cXvrCYBTLgQ1nxZbGyslMWo0HdjgZQIk5WQUl/sefgLn7y7iBv0YgCBUS9jjXNj4HZ
         pmr1NKPaeaVSl/iRUPVJGhJDlZ6yNaXhDag9NPCRaQRrkx6fS2hdmwtsPGTaeFK5Y2f3
         ngtQ==
X-Gm-Message-State: AOJu0YwXsSXK64Si8AoydTG6E9DnI3g68q7TcfAUnZj0UFfxLSVbH1mn
	UY2L1eX/bituh+T5vMv5ltnDRgzQrCINAn2Hv6rCWCjaGtUsFWlumcL4
X-Gm-Gg: ASbGncu9+K/V++VFXtkE5IfLBtjWTYgqiwF5NEpctkDHVyFOs+m2QsdAPaXBuxjhkNf
	CUI7ZiT0YWkVhwmk87cSIvobwtza6HFjqU9DwjMsuG0xY+41GhKHPpE/75Gd4YFawxaNrxQLhdU
	sm5U/q4zVf+6El+X3reAqR2wkkqSDre9y5/VKiBht4e3QGo/7dq/dI06+8CyuOM5xuxoCLaWeuE
	iDCEI3BW0jNG2tZg3gPimXXBnh9jxAu5oUrVy0VG5//vnfIjCQDZY9E76Zeyz9AUbB+h+1S/ATj
	ai5r6y5QasUQEdIaF5TDqQIyI6hEOtpDpv+y5J7+kLNu5z98yQ5p+33Kz3yVpKyOtOAWJch0pzP
	zBbloNCagYk8yGR28zBFNxhV4BoFknPEe9tQ144NmwKKR5wRP6erYE9FlnKId30EvgLVQcQhx2j
	Nih/SxT7csf3A8/mbWLe2Q6K5K5d8mM+5aCO/uwcfOTz+0VwYOUJroH5Wqyb0ZxWSR93h2tvtuB
	b95ANFMTFnniyN1y5aw2ZsGJGYyGPLDd1KdR2APSqVnkwaIb0aT0cffH90L+EWAPy3g1Zg0szd+
	MnqF6eE+SN7lhT7b6XYR
X-Google-Smtp-Source: AGHT+IF2voj8h6VBZFwIEhidYuX7kxZ+HtyxeIJgX87w+aBlexyKiWI8vQ8KfVgjLMBTqVzQwR2WDw==
X-Received: by 2002:a17:90b:564b:b0:339:a243:e96d with SMTP id 98e67ed59e1d1-343fa796a3emr15961735a91.36.1763463213843;
        Tue, 18 Nov 2025 02:53:33 -0800 (PST)
Received: from 2001-b400-e30c-5507-a914-c4dd-0879-41e4.emome-ip6.hinet.net (2001-b400-e30c-5507-a914-c4dd-0879-41e4.emome-ip6.hinet.net. [2001:b400:e30c:5507:a914:c4dd:879:41e4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b924be368bsm16274111b3a.9.2025.11.18.02.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 02:53:33 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Tue, 18 Nov 2025 18:53:18 +0800
Subject: [PATCH 1/3] ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12 bus
 speed to 400 kHz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-yv5_revise_dts-v1-1-fcd6b44b4497@gmail.com>
References: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
In-Reply-To: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763463207; l=1020;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=V8hyqVc8AxjSIpi8Rf3ei8SCie7TL3OVm+o7PWaDSjI=;
 b=yTLo22srLoWN9l+075TqUif2qS7lg3gob+kFc4OjeXJUO/YBHZ72RwuTKPHKn3l6CUs3SlW4+
 J6OpEW19//0Aq9exBxEepLLubirjgzAcXrA2O791MxNZOKzZMQ6ItH3
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Configure i2c4 and i2c12 to operate at 400 kHz instead of 100 kHz.
This update aligns the bus settings with the hardware capabilities
and improves MCTP communication performance.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 2486981f3d6bd36f3fe780b21e834b85242f8aa9..7991e9360847532cff9aad4ad4ed57d4c30668a0 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -231,6 +231,7 @@ sbtsi@4c {
 &i2c4 {
 	multi-master;
 	mctp-controller;
+	clock-frequency = <400000>;
 	status = "okay";
 
 	mctp@10 {
@@ -782,6 +783,7 @@ adc@4b {
 &i2c12 {
 	multi-master;
 	mctp-controller;
+	clock-frequency = <400000>;
 	status = "okay";
 
 	mctp@10 {

-- 
2.51.2


