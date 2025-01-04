Return-Path: <devicetree+bounces-135503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD875A012B2
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 07:19:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 238821883E44
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 06:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4F715B0F2;
	Sat,  4 Jan 2025 06:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aENNKscR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4655C156C6A
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 06:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735971567; cv=none; b=kCMlFL2c2VBHe3WyYBsx4kajkavhmiEWn2iNPTnHVrS6UV/Iz4cfUVD6L5HkjGpcZZtImzbv1HS5eJk+PIMCvtvNTHWdXibCI/QK2CO0qd9YM+3m7iVZylihGTDbSyjKru/yJ/Aq6niIg6RW+EIZkdexfzGIExa/QRSUZSktJm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735971567; c=relaxed/simple;
	bh=sGP/szOES38d6mStd7Xz/BDPgQX6Jo4hmwT1BUTmpOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gjofdM+5efGz2HWSSd26qY7k6Z/aJL1QP3yYo9s6F/SwBRel4TUswBdFuo44im+G3mu8qD5GPY04jzGsG4SfEXceRtnAqDaTsuTfRRvUgbFGR0AxMxTVlj6d4UH0U1UU5uxt2v8HpEo6nEukgZmWRnbD4tsKke0SEtYnoXvFhtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aENNKscR; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53e3a227b82so12004941e87.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 22:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735971563; x=1736576363; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZNBBuqUNiSerF8kPaEtDmkW48TvvfeL/ZUEeQFP+MhU=;
        b=aENNKscRUCm+oyE1NpJ4Tp1uYaTeHsrm13WQ0xzqXyd0n46m2D7cFOYO5eZTjAkP3W
         ByPbXonJkLSp6QLj/6+w22/wRVCz9p34jHqMY5E9axspMpQMBnXAwC8nduIfUcQm5XOD
         b+GXOVt1plW9B+m2NPYJ9W2C7CQ4GcmFqDZxtD0Loa5jt4NQJUTRpnjFN+RAZIyNVJBc
         sW4RRqBrgiMP+FPYt5d34c5oxWuYPMMGxcfBDZhieoMRIiNv6u5BsEWl6JgJAFkJfjU8
         4d/tt+EtjBoOcuVJsEAIFXn8+snKESY/E7/igF+yUlGEkpntmHa0xfAxOmIo5BiI7o63
         yTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735971563; x=1736576363;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNBBuqUNiSerF8kPaEtDmkW48TvvfeL/ZUEeQFP+MhU=;
        b=UGFeUHoDZnO7sodfHmkXWoKDo3oYJm08T1/jjP5b7h3tKEjMPCucbBiHklgGBS9e0C
         B9ACU77aK/pLkZ/R3PPBe8YOKFlNj5/jBzHv5Cl9GFJRAvIJo6FwCjNevTZ+OXY8T+V+
         k95KZhewvac9bBNIE1fgFzUXBQgNXXspzC18U9hUCugYfJ9EcpQj+36nmT1KqjAeHsSi
         VNLG2PTsBA+yMX3R1urJEldT7KXHU6Pawvz4lA5Snv0BHl6Ch+X2qPdnBXhf2/eGkMBf
         cxaDmjwFMpdmlkRVaipfGC/ZjHdhPBiwDt7lYIYytkYJqyKcpCvINYXpSXdyraiqQu+s
         Z1VA==
X-Forwarded-Encrypted: i=1; AJvYcCUuSYU7AJxqVE7BXzgDeIpGIWsAqzfgpjRccx6ip43E9uBB5UgVo1HLvY9WNCzr58L3k1cFFMmKj1KX@vger.kernel.org
X-Gm-Message-State: AOJu0YyphzMhZF348Md/BzZRIfsp4VhWJq3ZMujhaZ8wCjF1QYe63qc0
	5HkHStDIseBdpD3wwSFSHP88xLZYsZXkKKuwwA9zB0GDewyEtaRtW7orlY6b3fY=
X-Gm-Gg: ASbGncteuxZMN92aXtUzH+jh474sIL6nacx08/3LJTOFoj5mZ10e7Lh3kOJJehnPfAV
	93h5yFT50NDOMFc9anCrflmKRqqEtot1UAKznWk87BFDmq2voEpfALaGyDpIqF3ysfhLROmKsRw
	P2Wti5sro0mviIOSgEz1AYhtAs9a50X0NtCMa3cJ2fJEbZb5WI77CzxwnTU7YkG5rh4p8Gsdvh2
	/QDNuRqNrGXsXHNyHM7Wu4v2qJ2Fh2eGZV62MeTDv2JtqX4AfzCQwY1vkNPbQjh7JNQS4FhMCQy
	5Bqv8BJBI1sDj4z2DTVsvwis
X-Google-Smtp-Source: AGHT+IGZzBjoPqp8zB7YtaJvtnPfNwQjVbPCbpOSeyTRDGEni5rygswYpBQTFVQmeI6IzffnJ81I9A==
X-Received: by 2002:a05:6512:1296:b0:53e:368c:ac48 with SMTP id 2adb3069b0e04-542295229femr13726743e87.11.1735971563406;
        Fri, 03 Jan 2025 22:19:23 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832c1bsm4261655e87.280.2025.01.03.22.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 22:19:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 04 Jan 2025 08:19:14 +0200
Subject: [PATCH v3 3/5] nvmem: core: update raw_len if the bit reading is
 required
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250104-sar2130p-nvmem-v3-3-a94e0b7de2fa@linaro.org>
References: <20250104-sar2130p-nvmem-v3-0-a94e0b7de2fa@linaro.org>
In-Reply-To: <20250104-sar2130p-nvmem-v3-0-a94e0b7de2fa@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=988;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=sGP/szOES38d6mStd7Xz/BDPgQX6Jo4hmwT1BUTmpOs=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBneNLhnI1BmYlLUpy4fF+XLb8R2QFmSkEfV5UmG
 /LjBx6bNX2JAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ3jS4QAKCRAU23LtvoBl
 uGRmD/9bD0kbhu5WeN4Ztgm4a92xL0AeFcVDBzoOR6adZJs7p9cQhPJUPOgjs8G+REiMml0HYdk
 04+xsExMBEtQgSHm/hTMpJhkDg3jI5D90ytAVW1MPRfx8AMnwABLVtsZxl6APE4AwT16VNMOE28
 T4UKxIfkdjS+wkxKUDT8FkvQ06h9E7d+1biBPSJhPinRcPmDv6asN81gR01/ulXKOJlOivRms+B
 khi6g/xLcF82i16A+EVfOCEemf5jqYKj5tv5G1tM4OsCKPH9ptS33l9FRJTtoVmfWw+iQVnVyFj
 ZXVQJlrYtenhJiV1nHZ60iK6FlpfGmMJAjQuXI9c8tLfqbXMCYwiGpqDc0HLhWGv7qHnDDnUh/l
 z4FQgMjhVHOyQaAfJ74NNyyLccBJZ6YQPilIpy0qN5yxHDaoa6fKUeObYqfSxQqEEahb31Icjnt
 F602eTkkoxGQCy6nyqoDDq3hSrKu00M3fYrE4Z8APsTvOqq9b690QAVBlGVfP3MlZ2EBYs/ybGO
 x4RlurwWAw0xmjFnaVZ7RTdCoJL3Wpc+egBXhO9/kXfNC+qlETJ56Ek3OMHbcO8NAVWt2qj9Q+n
 aUiUreS9bjgfmLrtmoQLkOg92ZsD2KUVBOuLmZhltbKnlT6DavoQQhEm3HdEHTI5s0NwzBgBaxK
 jh6suB/pYTS3AAw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

If NVMEM cell uses bit offset or specifies bit truncation, update
raw_len manually (following the cell->bytes update), ensuring that the
NVMEM access is still word-aligned.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/nvmem/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index a03a3006bd611ea6e91703cd19c2842bd4f56659..17b320bcbe207aed8a32aa2cc7d8dab9b58c13cf 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -591,9 +591,11 @@ static int nvmem_cell_info_to_nvmem_cell_entry_nodup(struct nvmem_device *nvmem,
 	cell->nbits = info->nbits;
 	cell->np = info->np;
 
-	if (cell->nbits)
+	if (cell->nbits) {
 		cell->bytes = DIV_ROUND_UP(cell->nbits + cell->bit_offset,
 					   BITS_PER_BYTE);
+		cell->raw_len = ALIGN(cell->bytes, nvmem->word_size);
+	}
 
 	if (!IS_ALIGNED(cell->offset, nvmem->stride)) {
 		dev_err(&nvmem->dev,

-- 
2.39.5


