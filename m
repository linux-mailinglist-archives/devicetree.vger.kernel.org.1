Return-Path: <devicetree+bounces-109530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D54996B40
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 15:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F295F289C95
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A4B19993C;
	Wed,  9 Oct 2024 13:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ABkBS4+o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C531993AF
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 12:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728478800; cv=none; b=QD6PcbXNX0QBdL3uIf1hMqxAk2j26m9JdncdLcgGBihOAaEDtUaQVx/8/J/aLtepicYICpulW6D8BGOr7W6jxdp9BMX89XTmJscQknMzP1K7iQiyBbL2en+dY5AYjvNrLEjWVqvUPsd8srpYTVmomu3xIeHu4yihidYpMmWWsmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728478800; c=relaxed/simple;
	bh=QZF7oz52Lx4QdhDSpwuBO9GcMSyvvJS2uzxUYPoiJiY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fkDSdsDHnuZshckRBfjWACU+8v4rvE9bxglYis619mCiQQ0ecwJ82HRn+VvECsRiylZV4PHkECb+b1B13JkDjI1Z4iXJFPDdlgNfBhKn3neJK3POXAYlQ6C1J0rYvFscax6xbAia+8e1vMVwnsKBWeWGk/sSvNZfswerHo8vEQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ABkBS4+o; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20b7259be6fso75319315ad.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 05:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728478798; x=1729083598; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iI/qf58LmUA8momT4giUYnjiWk7hGMnms4c27DSsHjk=;
        b=ABkBS4+oQCqQWg6Em4LDh75RxfRW9P5OdShZw5KD/g9LqvL+hkYLU70goNLcPPB2cC
         gcAytIoWdh5pt0UzBojx49OMICOuvtohoHvYLRlEoGUxssCQ4ZD5hmiC2VRprB7ANIJ5
         DDDAVWFxE1CFbXoMadn3OfvswC1cvPiWSFOVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728478798; x=1729083598;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iI/qf58LmUA8momT4giUYnjiWk7hGMnms4c27DSsHjk=;
        b=XwGuAfElpWexXQCabGSC/V8MsL9sWLP15WqPZ0lwdnfdub9nquagMnPnf45C5sTKNF
         XV7itYzkGDSe/ADFv5d566AXRTvM+dgqE3mv6AfZD3sYnFTRDqRqYT6tgjtv4jWpa8R1
         A/HpcnT6DRGsAcsIr0Seydp7BhRhD/H+8UjLR3JqYLejNULYNVOQ70LewGwtiukzJjJ1
         DVwFbFDKIYNtjYLi5IC3V26Qbyc/UW1fqOccvBLb+yxajv2o2b2leingg+b1oD9qYnph
         bVpyEfNZZ2ubspQTs9JstsFyjfDQJJrsqYuf9XZ/t+JKCtlmxsSKo0g06Oj4q8ux8bwO
         mCMQ==
X-Gm-Message-State: AOJu0YybT6/C14Qbr6m7FPaxzsP3Xx3DqvV4qAvlhC7hjbA9QZW+HK15
	+64g+qqVX9LOJgaImp/a4g1kCmH1n85JdypAkgtJ/c0AjQnA8SUaj8bJrjud/Q==
X-Google-Smtp-Source: AGHT+IGVQbp9AMZDcYNINvFve/A6sPV0aMBAnUCzOdw6BflJ8wMGhXYCVLSldMttzoUEOvs/NA60EQ==
X-Received: by 2002:a17:902:d484:b0:20b:751f:c9ca with SMTP id d9443c01a7336-20c636d6b7dmr30492745ad.5.1728478798539;
        Wed, 09 Oct 2024 05:59:58 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:bfd7:eb4:8571:b3f4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c51c21535sm27434005ad.216.2024.10.09.05.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 05:59:58 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 09 Oct 2024 20:59:46 +0800
Subject: [PATCH 3/4] arm64: dts: mt8183: cozmo: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241009-i2c-delay-v1-3-6cf59721c1d1@chromium.org>
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

Fixes: 52e84f233459 ("arm64: dts: mt8183: Add kukui-jacuzzi-cozmo board")
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
index f34964afe39b5353de7b17e82d14d1fba88551ab..83bbcfe620835ab6d34cd2f4c2183fbdf11d0909 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
@@ -18,6 +18,8 @@ &i2c_tunnel {
 };
 
 &i2c2 {
+	i2c-scl-internal-delay-ns = <25000>;
+
 	trackpad@2c {
 		compatible = "hid-over-i2c";
 		reg = <0x2c>;

-- 
2.47.0.rc0.187.ge670bccf7e-goog


