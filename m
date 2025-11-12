Return-Path: <devicetree+bounces-237556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C65C51F82
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:29:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 732CA3BEDD7
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E078431196C;
	Wed, 12 Nov 2025 11:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aU6cMCxK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22A4310624
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762946310; cv=none; b=U0aQYgWpcMiXug7zjR3jjarzBXEusduqnBfluY/wANGMuLTp34dG8eC+JmsIp1p9qgxzu2vMlpSWbgYqul6IufJ90VH4WDzgjltRyDG3srhr/j7bN0wpRTsa9uatN/phc250Vz0LmHpioDLCwx+dlRqJxtwORq7Q+4LfjoARgDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762946310; c=relaxed/simple;
	bh=KDo5qf6VinF0dcocAqVHp8Ouk8wH3LA0jZpPa6Inudg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=firhAcPiNZRQTX2h5u6lzRYMDmt4PfgAJOKXTr6aqTt2JpUZv1LDGJTcyA+IabuLZc8REYUGohy8/ovGFy2T/aEw9tpz1hwvLIjSPSrMxXTEdCdXCDvwRY4KOxFoFZdyx7vsDs3dgHIAoDTgMTbFBrm7w98Bla6bBpWIxrdnU1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aU6cMCxK; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2956d816c10so7547505ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762946307; x=1763551107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lo9J4PpQIlH3VY5/mtPONGxIrnhCSXs3KQrxmVaTEns=;
        b=aU6cMCxKtR+CE944lWsCiO5Dv1DxnTnVmxFZ7J4TcQLZZvjBVkHwz0xcu72s0og5Dg
         xbZgzyyjWlirg3gL3kmcknVELZshT9neYBuko4L6oQo4dRrEf5SJ0+MGCUky2xjlC8QB
         4pIGakWQJqEH7qjPnAeHmXUD6mOtPrvWWvTYpR3YgQjiz9e2THUxS7P3LZ6XVmpklI6Z
         QHHhBAoYDElCWToX5rTSG6ptOAJUBOIvWFe1FDBcw8XLh9HAVqrFCBv5UljjHgASg1iA
         J1i9Zf4J9CDWnmZvjsJVv9jI2kN3mXOC/x1qnNhVSA4MYOOjrVubVdUudeyLSb+HnZjy
         W67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762946307; x=1763551107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lo9J4PpQIlH3VY5/mtPONGxIrnhCSXs3KQrxmVaTEns=;
        b=psnd88Px0zR4YLuao/28DdRQaeMuXIe7/WmMfPOpUS0/H15FL++6yAAd9ACC8R3eu8
         GNmKWn0eTwropvP6jwPRttoAyhJhUYUrhCpnj5ajgvBAX8kofc84MaC9/kuFvdK2GGCI
         bf3GWRPNI1AJ9vde821NxZQSSBgu7i6EcwI/hlvTYehAzS7Zvrb7Oq08FangRNsKDPL2
         Kws5FEcWfg5/6HXiTICrE51jgEZiTSiVCocurfY6b72gdzrXuPo/ecQZti2wflxhRCF8
         Mdj2LC5okQg0Q3F2nCE3y9KYT2MjbaC3YD7csSCy3TLBNYRsCErhtsZSyRvqOWbbqXOX
         2hyA==
X-Forwarded-Encrypted: i=1; AJvYcCX03PH2p5KQ41TYld48eA9rG7dO5Wqd5+UhRmJiWda7NTnKp5+g7YF8ufI6POnuAxMIgk4pyR/ccuYr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6VfH6HdTf6tZvhWAImPY5mIUCN/F0TKDGdpQbmsrdmENklA1R
	ODd02JoySn0gayfNXpvpWfAFNB5DGx1EPdnHa0nkYRbbTiIasXJbEJyy
X-Gm-Gg: ASbGnctBsVV1Zoc6ApjqkqiyPOEQ3qp07+PvV5XC6XMsc5P+FuOBACk/457tmObRIUs
	UEjMRNuGjpDHMV4lvNim2yC7rPI+wB3P8BJHufQ2binmm3DlQCGRE/t6zw6jJdaNt1VNfy3JhT3
	zAVvH8EwTR7M4G6Tgzq7P5yOutuWU1xva3e8lMKKbsSHG3jumv/9YeJx1TlU3FsbiMUYS5qNilW
	eyebs1g4C2hUlSv4tir/th3GA+x8Fh6ojlAcuXc8NBD7prZF9rxbUDcVnkHXAUnZkeaeArh+OD9
	u1yE788nqee3g3ZDWKNJZD2mbTGz92mdj8T+3acV/gwep2dwuqh8tN4QQoCpYMBAakAZwpgc0os
	qUNL9dI9Rs2DjeTocZyOqN7V2SJsXzR372H4/G96c0GDg1vO2zjZIG9VQ8FRwGGJDm7nBjqVwfe
	mfkvqTxkh3JuJiw3SrzdPr/0QbyTPz4rPN66FKc/eyicy5XEMt7mCyXJNarq0HdzQCv9ax/ZZBa
	XJJthO9wDVMdOkNpB9mRR24qIo7uJA23byHFlkakLnz5dTDmTvdQHOByaB8e0V7pA==
X-Google-Smtp-Source: AGHT+IEImt2oq5AVyAyincVqTizrLP2oINP9hgu+RQmDQEbV/h6h5zM29LTMvGX0qa1Tj+zk9/lS9g==
X-Received: by 2002:a17:902:d60b:b0:294:fb21:ae07 with SMTP id d9443c01a7336-2984ed92d45mr33420405ad.21.1762946307045;
        Wed, 12 Nov 2025 03:18:27 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dca0f28sm27386695ad.60.2025.11.12.03.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 03:18:26 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Wed, 12 Nov 2025 21:16:53 +1000
Subject: [PATCH v5 07/11] mfd: macsmc: Wire up Apple SMC hwmon subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-macsmc-subdevs-v5-7-728e4b91fe81@gmail.com>
References: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
In-Reply-To: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=744;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=KDo5qf6VinF0dcocAqVHp8Ouk8wH3LA0jZpPa6Inudg=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJkiOUdZA4+/VDxp9c31mWLPB8Z1xzU9H8o5bWfLi7zwL
 fz9vPJZHRNZGMS4GCzFFFk2NAl5zDZiu9kvUrkXZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNQx1jFi4OIUgKkumMDwv+iDSLuozZuJUz69v8Z79VyVRceJ3QsUthr+n/mbd2rAklWMDLfnfll
 6aovjr827RbynnHifxf4lfqXZyn/z+aa9YGbaXM0MAA==
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add the SMC hwmon functionality to the mfd device

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 drivers/mfd/macsmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/macsmc.c b/drivers/mfd/macsmc.c
index 500395bb48da..51dd667d3b5f 100644
--- a/drivers/mfd/macsmc.c
+++ b/drivers/mfd/macsmc.c
@@ -46,6 +46,7 @@
 
 static const struct mfd_cell apple_smc_devs[] = {
 	MFD_CELL_OF("macsmc-gpio", NULL, NULL, 0, 0, "apple,smc-gpio"),
+	MFD_CELL_OF("macsmc-hwmon", NULL, NULL, 0, 0, "apple,smc-hwmon"),
 	MFD_CELL_OF("macsmc-reboot", NULL, NULL, 0, 0, "apple,smc-reboot"),
 	MFD_CELL_OF("macsmc-rtc", NULL, NULL, 0, 0, "apple,smc-rtc"),
 };

-- 
2.51.2


