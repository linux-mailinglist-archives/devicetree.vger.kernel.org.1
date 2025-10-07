Return-Path: <devicetree+bounces-224161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAF6BC1270
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 13:19:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 312104F5838
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 11:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D892DC330;
	Tue,  7 Oct 2025 11:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y3g79q2R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509622D3756
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 11:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759835893; cv=none; b=S1OJEivIwLiEQHOlBa0ZufL+W9NTaf8pJAZR5Zh7wuo5VFMIEzDNQ+SBe7L1CSLSO9MPnqIK9CFG1SIVHCVmRKgFDYI5NhUhhQ9dKPqSd5mK3EeG0iu2hla8NtPwypsTXlKUAPFivpHFkzo4Qzd7XIdQOcvqAS92m8a26S4Mg9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759835893; c=relaxed/simple;
	bh=EBXsHgi+TPtnux5Mjfvq3s8Tobe6+wN+A1W9K6WofCg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ghOoQk+XFSIiby76z/7uURV/mMgLZZ9/DMYOrZKGtkaLUT/9hJThdQB81W4p0/TJxudkOfVKO7OlKfE4PAtbOIkZCmie5nq/Ar8ax0UCsl+Md9C0lEk9gQ4WCoyYReyMmqwTmD5+2pUOZdAHyxUz7YnDs2FPrDL7JTgo1xip8TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y3g79q2R; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2681660d604so63608045ad.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 04:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759835892; x=1760440692; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vfRZW1u7QrD8wKs/E/qokjfPak76+Jqb1NI8oZKYmR8=;
        b=Y3g79q2R3sTwjmbtS6j1kGagio7GsvlTL3JjcMezmmd2BPDZXaSIh0wYudVsmWWL6P
         XnDZb3g1VeBi1JYWZzoeZC2+BG9nuqzkREQwpe/APIv5IwXMM9+cBuqoZwSzoOBkkYxT
         r8hjDnHNLhl0nshZ/E492MPsB4i0PXCKlXvf6ESDuBH+oEmzgGiq8Im0EjjVwIcrMNd4
         2AUPvTvdigr0WsvEpJRhvML+PWunikkSCvqNAbUEeDd+V0bbBr7iB2wv8TO7sjfnwhIX
         iFap+nohZedl2KAY/WcLCdYpG/GIJ3OCkfcwcjzDmeujsMB8b9oW3rfDsUIsO7cNTD5A
         vNIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759835892; x=1760440692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vfRZW1u7QrD8wKs/E/qokjfPak76+Jqb1NI8oZKYmR8=;
        b=s/HQ7FulcQbXSdVjwo4SA8a3c9P3pHuadfAcXVPfcNDevkMbX/pDBLAhb1fRCL8Ele
         KDdMCPUJ4aBgmDKeuUFJ6Mgr6CkMRoXwrjZ3WDJB020ZCtr2NSai67Rp/Vtv4Om8/Ooq
         WpfRE7LxDZqX6qRQJM9wYWP1zLY3u2fzF1vRn0vuUyPrK9+A3HIMOHK21uTEVECKKepj
         fXzuF+tdSKvCusFd2ec2amPEAxtu4u6e/2IjG+grI9+MS9kF+/0CHy3UNDNuPCkK5cYh
         op36My7Ebkx9GU4odBC6WE8uSHtL0LHLjcltIwIYr9b9OW4z4jTb7MhzOVuYXCPUzL8R
         6/0g==
X-Forwarded-Encrypted: i=1; AJvYcCVN3Np3sKtH+4i1IIidk+dyl71b6EioXfNF+uZYt9keSizNHs/rKxnmdMC9pPCaZ0z8zK1rWs0IGgPy@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc3ORjEhunsssAtP7B/+jZHdd7vzGo3sUyweMukdqg5eVYY1uH
	KzD5qFAwhds6+D88+Kn5ncwYI03rP4+zULegM495nTLDTKTXRNR3Ibd3
X-Gm-Gg: ASbGncss0wOt/ANAOVHbkxcdaW9Kx7KKEqOKLh/KMhe9eR7x3JfV2Qm6mMKIY7ZNs15
	5YpOMqKpxZP0Eq/hXAGCS/08kSj83Ps++wt5iSWO9CDrXMJsOwhhjw+oEndPSyizezaj968GcAI
	f/1OsMHANEXDmN+ud9IRTGUyhx+EZJ5be5hq/G1TTKBwicJWNp+KEgC4ROs72SgHCXcfFPjTLUQ
	BLoFJUrRo5jtxWLazrgiIjz5/5oq97xL5wFEgOGgsx/p08ZflyH1I+h36YOAslNJkR2DxVJ8gc6
	eG8zSXEWZ9I/UOjdrj26dw7u+uY8lyEhLq19qKes5tjSzz5yRrhEWJ+c0nYrQT9laZeRdMfmz2I
	lRxclPPvDEbQS7fvJbrK/sIK4ZcvVcMN8sajHHfFHH8IX8KQQEw0DCGYLwsZaEWNu1qqp2yQbFG
	pdlyfI7dz0xzsW8uAKFA184bStQKa/Pu27/fQQWN/G5Q==
X-Google-Smtp-Source: AGHT+IGtobxlQxOmzElmeLrz6XbtLmYqUVeHEzRkuSFLIl/0CLj9uRwuwV2m/uCsqAKd9lcGvF8YVA==
X-Received: by 2002:a17:902:ef0c:b0:28e:cc3a:371b with SMTP id d9443c01a7336-28ecc3a3963mr25458815ad.57.1759835891715;
        Tue, 07 Oct 2025 04:18:11 -0700 (PDT)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d31bdsm162509045ad.94.2025.10.07.04.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 04:18:11 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 07 Oct 2025 21:16:48 +1000
Subject: [PATCH v3 07/13] mfd: macsmc: Wire up Apple SMC hwmon subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-macsmc-subdevs-v3-7-d7d3bfd7ae02@gmail.com>
References: <20251007-macsmc-subdevs-v3-0-d7d3bfd7ae02@gmail.com>
In-Reply-To: <20251007-macsmc-subdevs-v3-0-d7d3bfd7ae02@gmail.com>
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
 bh=EBXsHgi+TPtnux5Mjfvq3s8Tobe6+wN+A1W9K6WofCg=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDBlPvm1dVi8Ud3Oy5Jr9b70ezTox1bZcTX7RxhNtd28es
 6nxv3nxUUcpC4MYF4OsmCLLhiYhj9lGbDf7RSr3wsxhZQIZwsDFKQATWanJyLC3I+z5shiFivn/
 fhV4mitU2Nmznvq/6W5DGuupxz6KdRsZGX6JH93744nU5dT2JfGTeufsYWn+etDq6ZXeTB6t3T8
 s7TkA
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
2.51.0


