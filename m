Return-Path: <devicetree+bounces-138677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AD1A11B32
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 08:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30BD8168D8B
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 07:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0CC22F85A;
	Wed, 15 Jan 2025 07:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="FlNtMGcU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9040B18952C
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 07:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736927038; cv=none; b=WRP+zkPhaWmgK7OcBrhwnh5hsN+NYGIBWAE0Tlvt1CvKMuID8gAJBvdlutxoKyuzCeaoXRqcbFAMIVhwyT/JQKKp+tKcZZozPPhKJY0ILaEmc5KdFWNnPHoQMtdCX8xZK7fhXa73vG0d4PTRh2e1b2eoNfSTz/iAlvOc8KCMMvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736927038; c=relaxed/simple;
	bh=/+Z8KHUk8nxKTdR7QqzSkQ25mOSdeiem6+Sovxdi8D0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PiVQLZurnrVCeZCneMBMicz/DydEOS01VnZblHTAqQOiBoMEslzB3eIJlGIpBwFW2xVchD6lIPkQ876U565B+tZfnjXwlgxTfeDsbaG5URJ3MjJiIwIA1ncyhWpcsrVHtu8mFHhawyqxUJpGZH+OZT77Yt8e3IVj/c7JA87WEqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=FlNtMGcU; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2165448243fso139600185ad.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 23:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1736927036; x=1737531836; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YFdfy+1xjTxfVlkEQhDUp9pn/DCv3HCHlGHCvqvBZtA=;
        b=FlNtMGcUpYbR4Rm8CMhBSf4ciLgsmwa/5V/CKlqMxogckDHdpYa9EVSFUS0/fJIA/p
         ObAm5ye0jYb12CbqsUgHV79uSGZmZAHOPTpfpNmoVzXPyoE2t3W17dSl2SvpENEQesSV
         FctdIlS8Ey+vZ1BQgxsQC0u6exOO5NCI21iH2poS1DbukPYeuXgY/aERmWDH7W1wwbU9
         PE71nBaALjAfMwgczNDvvZcpHGI8yyCrnQDkXK+YYoRnQkWrXiOWyG+1xOg3N6UychH/
         s5DlhiT1aoC2BqFM0YDIa963Cg/zUqHe0OM6mKG6yft128guWHf5noI41jU6kjPJyZ5G
         v78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736927036; x=1737531836;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YFdfy+1xjTxfVlkEQhDUp9pn/DCv3HCHlGHCvqvBZtA=;
        b=r5X1z178sf7jddK22iuxCVoDcVwPpFnbNhM9uX2yHrCUi/wPGXa8udRuqc6e7fAiI+
         oHuw/KsfUmpL6c81hgfZwU9ZbTtgB2RBllmwwSDfQCxVZwcel7IEnOMwraFM+w/c5Qgh
         TPyqSqlJ51NJzkG9R/b/f1mTsu4cNNS8K7Vu9AEDX8uGvJfWQPT+LaORBsTFqhEppr/z
         EUyI3opwnDs7Bcwsa4WW9Fq6Fcjv88CrvcYbyx4kY3tFy7RdbYFO7nKaKyRpC57UWr9r
         Uo8phcd/Gf7OyRSZMTaFm7sdSUuXWOG3KGUIsVBRanA/4hr88Wl5M6cJqlMucyL+d9V8
         zn/A==
X-Gm-Message-State: AOJu0YwNz75JT7UBEvdK+UurDIwoUPNvjnuR0NJe/2p298UJZyOOLBaF
	ltSWv+4LVJ44TioUBXwUeqN7hWQF79R/c0M8U1DzVUX2pwerMMtxqzxkBeTbZbg=
X-Gm-Gg: ASbGncukxFLLcmYKwLyJh1nG+phyqyUzLXMGwD5cGL8Lg5TBIKBTyRJuOBvQST9jJ43
	8SojesqAqmBfigi/f8U889Bb1FYWPEsqcGGcpFha5GAezEqptTEjltnpvk90BHWc5CynpSvD4xJ
	PnorFNVJxE+/xLOx5xWS3goILJvzyAvxl+QgLiRAYNXduMuEuTxW9SggTfh9aJq6N+SucqXBfs6
	asHrhFru0OeOsZiYeyI5SlNRXZURLr5XMDpin1M2bkFmUX+AQmDaHckDi8saWS5KKAtIuGtI0Iy
	mTXQdlo7Qyyp2pFdCYjCkuLoEhHL00E/4FXb7Zlr7mSPeYyE8TfcGC2TIXjEC7i5xF7qZjagSVS
	OETRJCAXtTyObd6rc
X-Google-Smtp-Source: AGHT+IHRN+bPuv53sQRVCdT8bOyRQsVcd7XdkoTww3PedpE8oGS5o/Jnv0ml8LdStXcOalfS26Un6w==
X-Received: by 2002:a05:6a21:38b:b0:1e0:c50c:9842 with SMTP id adf61e73a8af0-1e88d361a43mr51144117637.31.1736927035895;
        Tue, 14 Jan 2025 23:43:55 -0800 (PST)
Received: from [127.0.1.1] (2001-b400-e25f-ed65-f855-8c86-b103-448b.emome-ip6.hinet.net. [2001:b400:e25f:ed65:f855:8c86:b103:448b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a31d5047ea0sm9335482a12.58.2025.01.14.23.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 23:43:55 -0800 (PST)
From: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
Subject: [PATCH 0/2] EDITME: cover title for skitty_kernel
Date: Wed, 15 Jan 2025 15:43:42 +0800
Message-Id: <20250115-skitty_kernel-v1-0-6ef2086858ba@pegatron.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC5nh2cC/x3MQQqAIBBA0avIrBNU0KirRETkWINhoRGFePek5
 Vv8nyFhJEzQswwRb0p0hArZMFi2OazIyVaDEkoLKTVPnq7rnTzGgDvvRGuc0doqtFCbM6Kj5/8
 NYykfoWAi418AAAA=
X-Change-ID: 20250115-skitty_kernel-9076f655d2ed
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 herbert1_wu@pegatron.corp-partner.google.com, 
 Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736927028; l=912;
 i=geoffrey_chien@pegatron.corp-partner.google.com; s=20241216;
 h=from:subject:message-id; bh=/+Z8KHUk8nxKTdR7QqzSkQ25mOSdeiem6+Sovxdi8D0=;
 b=E80o+hiJ6quRwt12oN2OEIzPHAHmB8oXQUkBYK/7jHHv2xx3TS9h/D+9MCn7GGpKdJxyPBlxr
 wx5fXB7E56vAUgnMi5jDRZA7JSG396+S358Q3SYk1wOYray5qBQjhdH
X-Developer-Key: i=geoffrey_chien@pegatron.corp-partner.google.com; a=ed25519;
 pk=P8X+ifKsuR9w8T8cIa35nudXKmZX6qk0iS+5EcuwtrU=

Signed-off-by: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
---
Geoffrey Chien (2):
      dt-bindings: arm: mediatek: Add MT8186 Skitty Chromebooks
      arm64: dts: mt8186: Add MT8186 Krabby platform based Skitty

 .../devicetree/bindings/arm/mediatek.yaml          |  8 ++
 arch/arm64/boot/dts/mediatek/Makefile              |  4 +
 .../dts/mediatek/mt8186-corsola-skitty-sku1.dts    | 92 +++++++++++++++++++++
 .../dts/mediatek/mt8186-corsola-skitty-sku2.dts    | 82 +++++++++++++++++++
 .../dts/mediatek/mt8186-corsola-skitty-sku3.dts    | 93 ++++++++++++++++++++++
 .../dts/mediatek/mt8186-corsola-skitty-sku4.dts    | 83 +++++++++++++++++++
 6 files changed, 362 insertions(+)
---
base-commit: 619f0b6fad524f08d493a98d55bac9ab8895e3a6
change-id: 20250115-skitty_kernel-9076f655d2ed

Best regards,
-- 
Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>


