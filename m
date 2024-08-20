Return-Path: <devicetree+bounces-95090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2119958085
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69C7A1F214B2
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 08:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0DC189BBD;
	Tue, 20 Aug 2024 08:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jpJmUfrN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504A618E345
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724141230; cv=none; b=M+k9aJe28DIRHao5yNZnrtTpKfZ1BA8asASv/wK8Lw8lvf+ajz4MQfHe4x6lVvwrEV6TcdzfRvFBYP4aRsFsDJpRfA1JZEUUJXuvkh/Yq+QxMWn/NalokhnzOD5tQkSc6XZPfTRfpH4+q0NAVykleakxUJDuA5Oy1fBqo8jFcDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724141230; c=relaxed/simple;
	bh=YjQggNK3a1c5Nxtby5Wzg4cKRlAk1TEEfQVSC7mhJF4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TIcxNOUwJi5vYhc1jI37C5vamN0XQzSYAcF5FAryw+OI8Ev44z6cDzXJCHTA3H6uqu3yGfFIaN+6CBkiMVBcGAvYlUMwJEfqak4aRpzBLd0AW4No0NSvZ4cst4T46KKx12vK9j14CnM4GlUBuKTVPctK+aMZ/3rTGgNtML6YLp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jpJmUfrN; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7a18ba4143bso3301774a12.2
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 01:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724141229; x=1724746029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2IqJ1+bkvBcuO0rX2Lm5C4OmqxXFYhn4ccngQPHsmSU=;
        b=jpJmUfrN1HehffPPNS89CZVvmntTPQqMFUs8YLJmER+I6X5QQbsVJYI1IvVBg5ZzGl
         8QCT43T0t0emWHxKeCaF6gMguEfdrg7yVlBRbUHjy2tlMtBydk4eICkPVrtpqfD4pdwT
         qHWqwX35F8QTZ4njmUFxWaeWETOcdY/7aYn1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724141229; x=1724746029;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2IqJ1+bkvBcuO0rX2Lm5C4OmqxXFYhn4ccngQPHsmSU=;
        b=kniq1TTcNz/4Lt54ZHaXLhOUFAOCNaR0GBb2cAyA5lh+XmR8a+h2jai5co8bjP9elU
         ywl2Ux3pc25oZx83/118KRvd+OKJA8INQUDwGaYvf3nALqVigNJEikhR0Wi39OQ5rumY
         7BxM2LPEjwomZZRPbJDF3mrPg8mxyhjziUUuzSlBeTsDLmL2OWLq0DLcJN9K1EQ6DJQL
         FK3Ek6+aRugL4KJEwjwZg4u2x0ewUEoLsiKigR/NrOMqBSLanL+ZMEvM+kgW0T9sWNod
         stthduninDFX7J2KTKuiDToIaHa8SKjwzThN4dQzFG9JZ2+PHIwAMeh5nXMLvZLpiTLO
         Ew8g==
X-Forwarded-Encrypted: i=1; AJvYcCXW1730OBTxr7zd7VaoXHrTe7ROYXDsWlftLZClZ73bdqEN9BRL815AZka7VaOlwShTGWDfMUvLw7iRiqLzHUrxnv4FpQ3kqi3uAQ==
X-Gm-Message-State: AOJu0YwtvQiBn0XCnoLbCTWb5ntwg0CiSqJRxpyvF5ZMLpTH4iuXGWkU
	kl7MhHxMSzsxPNTgXi6qgO1kvT9agEjnCUWS336be0y9sIIP95GVirgtnqZX0Q==
X-Google-Smtp-Source: AGHT+IFsp879gvOCuiWqNYPlJhONwAUWVejcI/mL94YGseUTQfzsKn3hYBaN2GBrQLgP+qt+XwaKyQ==
X-Received: by 2002:a05:6a20:e68d:b0:1c3:ff89:1fc6 with SMTP id adf61e73a8af0-1c9050586f7mr13067519637.53.1724141228509;
        Tue, 20 Aug 2024 01:07:08 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-201f0303435sm73051755ad.42.2024.08.20.01.07.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 01:07:08 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH 0/3] Devicetree updates for MT8186
Date: Tue, 20 Aug 2024 08:06:56 +0000
Message-ID: <20240820080659.2136906-1-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This series updates the DPI node to add power domain and
adds the Mediatek SVS node as well to MT8186.

Thanks,
Rohit.

Rohit Agarwal (3):
  dt-bindings: display: mediatek: dpi: Add power domains
  arm64: dts: mediatek: mt8186: Add power domain for DPI
  arm64: dts: mediatek: mt8186: Add svs node

 .../display/mediatek/mediatek,dpi.yaml        |  3 +++
 arch/arm64/boot/dts/mediatek/mt8186.dtsi      | 21 +++++++++++++++++++
 2 files changed, 24 insertions(+)

-- 
2.46.0.295.g3b9ea8a38a-goog


