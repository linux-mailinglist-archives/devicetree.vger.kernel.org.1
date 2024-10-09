Return-Path: <devicetree+bounces-109528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF20A996B3A
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 15:02:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74AA42869B2
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6B31990C2;
	Wed,  9 Oct 2024 12:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MkzoLZmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E45198E83
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 12:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728478794; cv=none; b=i9hHQsm3dfp59xE92euyGJdLIDyaK+zCbzkswYR65iPOOTACRUjDtzoKi3Laugo2bBpPbJ3y9z+1s3QkG2fntpDo5j7eNid9YmKgL9jPXzC/F8SxoYCTOkMzyoFs53Hek8E1NWY8gpXcYV7Tdlook/xBMi+rCFaE1eJQzoVZ5do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728478794; c=relaxed/simple;
	bh=WJmnw1qRfeni2WylSpMM04dAE9lNpOoE5OlZcokay2s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rUFpfmTfOUFRPeOlKDv+huMa/P1bvENf/Z+rsyYL4IIQQsydkjuSd9LChqSzTvvSezwCok2n0Fv20EMWPxKLKuSXxoZ45zgCO3vMGVJAZr2WPjovo/57qWnxMPwmNEKnGNEHL/1BkhlteZuPUXtiULo1Lz66uGlQK1EsjwaJRT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MkzoLZmR; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-20ba8d92af9so51896795ad.3
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 05:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728478792; x=1729083592; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9hxlFPX8eU72F7FwcsQseu7FqbxMilUfVuvRnr1Il9Q=;
        b=MkzoLZmR52SfD4ro5oDLB3iIDA2GelPJmk7ypQZv5SznV60CNSzefcmf3VvbyDezKa
         SDb2xnyFBOTMBaL5ldnDq6cwZbquNdhTDbf10G590Jyonc0ACw9uwpF7ZpjkzSSk/RR9
         kaigmxjZSl9nQMJZWlSRd5r2wyD1vhKORFrOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728478792; x=1729083592;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9hxlFPX8eU72F7FwcsQseu7FqbxMilUfVuvRnr1Il9Q=;
        b=sM6PQJtbZwQRc+t7+h3KWo+6gcN50t4JIEl1nKmlWBhwTUYKxOSv1+p2PntjtxPKXo
         yi99ULoPqZW3fFYQrWbiEuSTsbdA++sjYR5YUKJiCBdyaeC7hLqY8zINQT2NYBVdK1NL
         kbh1sSBdkm3iyw6M5BX+zhy7LcLvXldIKFbR1RIjv73j+Nxc6ymwhwdEMfZf9bugQK8D
         2V62QtXDHfAYAmC/S12keymsLYSTbQ7722HakDN7MnpUHajzMTTBeM8QmeYOo3ib4qUU
         Q2AN4Xpjj0AZeHre8ErTN1biqzeKwJoASfPSBeoIb4DSNETSY0cTWLbDNaDnwYpz0jW3
         ofDw==
X-Gm-Message-State: AOJu0YyDllwP56++K+p1B9TO4kEInifDXk9OHrxl1BOCXlDldgq1n0SD
	TJazrhrafzD230AYL4yPlnwUBpBWsOcMkqzWdD5IC6+FfNs45PqvMW85NvKULA==
X-Google-Smtp-Source: AGHT+IFDu4AhDNmbXgd5KWOArr6Td/4dAJ1kW8iH1FVAygBKnTNX/w2syHGhkwtp4UeSFsqMKl5FEw==
X-Received: by 2002:a17:902:fc44:b0:20b:b21e:db21 with SMTP id d9443c01a7336-20c6377fd21mr35072335ad.47.1728478792207;
        Wed, 09 Oct 2024 05:59:52 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:bfd7:eb4:8571:b3f4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c51c21535sm27434005ad.216.2024.10.09.05.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 05:59:51 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 09 Oct 2024 20:59:44 +0800
Subject: [PATCH 1/4] arm64: dts: mt8183: fennel: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241009-i2c-delay-v1-1-6cf59721c1d1@chromium.org>
References: <20241009-i2c-delay-v1-0-6cf59721c1d1@chromium.org>
In-Reply-To: <20241009-i2c-delay-v1-0-6cf59721c1d1@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>, 
 Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
X-Mailer: b4 0.15-dev-2a633

From: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>

Add i2c2's i2c-scl-internal-delay-ns.

Fixes: 6cd7fdc8c530 ("arm64: dts: mt8183: Add kukui-jacuzzi-fennel board")
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
index bbe6c338f465ee7c11bfbfc30767bdb142706480..f9c1ec366b26607581c116b364cc2f80f8621a57 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
@@ -25,3 +25,6 @@ trackpad@2c {
 	};
 };
 
+&i2c2 {
+	i2c-scl-internal-delay-ns = <21500>;
+};

-- 
2.47.0.rc0.187.ge670bccf7e-goog


