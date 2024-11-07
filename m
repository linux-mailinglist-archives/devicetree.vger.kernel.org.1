Return-Path: <devicetree+bounces-119781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3791F9C01AC
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 11:00:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1447B225EA
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 10:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1091E7C02;
	Thu,  7 Nov 2024 10:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mGDFZ0Mv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581E51E3DCC
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 10:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730973605; cv=none; b=rt7tzuIs6AqubXvbW2vKrebfAlVqrBEiJVB2XpBCjEgOI8LLSEIsW5sb0dgBIeuJ7KMpIrc1rn565KCAn/qyL0R/aHnnughOap4r79+vlw1Pl5icsRow1rBa2vICYA+DMGXB/J4TfCodUR7ECvjoOXFcrLfcx5STSup/y01luDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730973605; c=relaxed/simple;
	bh=po4N9CwjBZgXso+4pKcXeUTXi6JnMCQw0mFDrt6dX5o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=BlCMtxqLViCDBMYkOtyMCUrlzD3Q4Vw3VN58qJkKafsYkQBcVBfqun8eUDo6DEXCF0+jEE+5IYXQzlksMw8Ji8lGQoxN3Z83+cKftcsE0RIs0GHAmYNda05A1K0obe2EQqJ2RaQXFegCJm7lP2/5YCrbqqKFWkoq0xIIN8VVPh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mGDFZ0Mv; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso10457301fa.2
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 02:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730973600; x=1731578400; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IN95TsZhKzuxf3wXQLN3cqZMNtXRheqBLbmEr8nS2fc=;
        b=mGDFZ0MvUE/paBZLUgxGbyQWAPUfW/c4iCqJdwRR+SDZhpKwUBwnv8dQq4XlBF94bm
         b0HRrFzeYNGhNLdMWwpwiOYs8JUcn4NN75n3fbHuGDhG4sUpKPGGOGa2EPRmWzKZX/CD
         Ho1tXF6SJU0+NUy9N0icCBhLHiOpqMEc3zydfGTcyHju9REmhXzn+NJ5rO2NSQNtpZF3
         1USblkO7oz4RYi34trwql9KLuJbxG7NyjQyWQXIHu1PmfI6/hzjKHIEO6EWwaNx/z9z9
         CWdqtsd30r2iiazJtH/3d0+cV2qybboyTxH8VvcDR+BkhK9YIETcpIAVilWNmY1DFQz0
         Kd/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730973600; x=1731578400;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IN95TsZhKzuxf3wXQLN3cqZMNtXRheqBLbmEr8nS2fc=;
        b=ZHjqPD7F8eg9ZxUucK/Mpf45K/QnKXmBwG5i0ddbqg8VnQLXQ+X060e5PbMEjBPq4y
         it6yQC2qaO3im7TBaSYlwBfm6n6iXvDFwwKFFTiiureWx120q0QUjGSCKpckZCPz6V50
         bqtPMQWc6VtTlM20vFwjB4U4nQsCbEBfNROFZerA0P2Nxzx3tINNQ5+VgqwVDPRZ8IEx
         xY+yEE13XcBriNGWh3566dg2gdVb5wuAfswySBn+qfuu5fdPiEpqsKMfpWtt0vcLgWgo
         8L2L2d4/M3WutB6p0pIns3MX/EnnB38ykAjsn2d075J1zFtCPR+LWZvMkTMBNpJB4z1I
         cLQA==
X-Forwarded-Encrypted: i=1; AJvYcCWNRbsLOXVjm5SF9J1B33RgbuddBpr/mkHq2yt9gDSz/vNzRAvKGZu8QjxySrNj3+tTHBaz8VhxkxDH@vger.kernel.org
X-Gm-Message-State: AOJu0YyWkafuRB/1xAgMKnkKY8cSGnil5hBk49w7Y/rLRHP2e5U1j1CN
	K4DwKykqGxPcW//wMYbNgQbN9r/ZLK/E3qZ02uUZKdW7IVste0X7rGyiLevJSVQ=
X-Google-Smtp-Source: AGHT+IFCiFNbVvRuQfoFDwv+RPdYoiKrDS08WoKMvLYSNKcFfmHvemOy+zCjZFBgqMyl2WR5wPEciQ==
X-Received: by 2002:a05:651c:19a5:b0:2fa:de13:5c34 with SMTP id 38308e7fff4ca-2fedb7c7ad4mr180086761fa.19.1730973599705;
        Thu, 07 Nov 2024 01:59:59 -0800 (PST)
Received: from localhost (p200300f65f28bb0063ffae39110fa2df.dip0.t-ipconnect.de. [2003:f6:5f28:bb00:63ff:ae39:110f:a2df])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc577fsm70612366b.93.2024.11.07.01.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2024 01:59:59 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: socfpga_cyclone5_mcvevk: Drop unused #address-cells/#size-cells
Date: Thu,  7 Nov 2024 10:59:52 +0100
Message-ID: <20241107095952.73926-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1146; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=po4N9CwjBZgXso+4pKcXeUTXi6JnMCQw0mFDrt6dX5o=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnLI+ZUNMbOpZaUhvAo4+rsYExY3P3TcxuIcfsx yHtGtx40nGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZyyPmQAKCRCPgPtYfRL+ Ti2OCAC6JZMVR/TlHLkoWK1XnqrgoC8ZZ2/KnTklmBleznsLFzrRmKwimHfjj7lBCrchzlbjYfQ KiAKaTL3IJX5dpbfAoJauRk9uEiR0MCl8RJ6C17ScGXwqkI7FyiQYS5G4tkkoK55iHj9Vav+rZS LsxP0DrkXwLrqn9g3K91sYTTdLu9udPA1987cNSIW1m1i93/HOCRZSCnY99emZvVzyUykNo+Y8i U78MceAWFPNbq9lUcuhS/jDDc+T1f1n+IwAzYcI28+roXklobnbT6doOCT+zju7REwT3vbKqokp BLMRbDkITSm5E90lkK8LyDOjlN9eSw/qmyg45n1To/0nJ0r4
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The properties #address-cells and #size-cells are only useful if there
is a ranges property or child nodes with "reg" properties.

This fixes a W=1 warning:

	arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dts:51.22-72.4: Warning (avoid_unnecessary_addr_size): /soc/i2c@ffc04000/stmpe811@41: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" property

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dts
index ceaec29770c6..c1e1264bcb09 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_mcvevk.dts
@@ -50,8 +50,6 @@ &i2c0 {
 
 	stmpe1: stmpe811@41 {
 		compatible = "st,stmpe811";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		reg = <0x41>;
 		id = <0>;
 		blocks = <0x5>;

base-commit: 5b913f5d7d7fe0f567dea8605f21da6eaa1735fb
-- 
2.45.2


