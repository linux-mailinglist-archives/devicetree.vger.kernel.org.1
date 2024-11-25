Return-Path: <devicetree+bounces-124171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0090C9D7CD0
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91DF0162C8B
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C7B5185B78;
	Mon, 25 Nov 2024 08:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lIgl0WCU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7173C5103F
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732522904; cv=none; b=jl86CZWEOUvUUcY2egtzfa9yhmvMAvKA7UA0pQBsejauNHvpZrzIEA/geqBVgPZVtYxMyMph+W5AojX7JxKkb56P3xgGz8GgntbKNpKrTnCU+naahz5j++EjDav1F/sKDTdVyXnv5awKypNaeeGa74fKCXxbHN9aSb5gKiWlRns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732522904; c=relaxed/simple;
	bh=UoSKl7TJOogkZt4o8FxS/fJ8sB2gC0Uf1Z0S6lETcEg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tIwCb4MpEuzpzi5EqMNT7FbclEcYFAe3eMmBz64KNJQk7j1gWXXmqJUDBRBQSOKtUHepEdN7+WFj1awmqmcbGehhLa9zLbG9qV5yMw4m2yuRx/7Xi3xM3GkbUEWWTAv/OgkNelDIS+b15TG1p17eIOkg+XkQjaxkS5uRWx/UyD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lIgl0WCU; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5cfaeed515bso5472745a12.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732522901; x=1733127701; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V/7BP+eiBJ3tguIkvumVtoPzEUTFOBtF5H0ionm7gQI=;
        b=lIgl0WCUZ9tNOV8wf9jNkygrR+jJdOoHqmh0oKg1Q2VBBJjPbbfSv+04MrPKoRsPic
         jERmmnbdcTwFc+8E9QMYvJ3Z8PfcSOeeiNG/JSUsY+NIGl7FAoxnE4WHNhrZYuPtHrXy
         qbOAfCXRaf0k9U2jrKpuF5CycaGW402U+s57w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732522901; x=1733127701;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V/7BP+eiBJ3tguIkvumVtoPzEUTFOBtF5H0ionm7gQI=;
        b=IPvqONHXsIH110VgceIuoTNFtQFTt4S4/JJVd7lKWYtQCV+83dU7ZuvYEHmfoDPbLJ
         QyXZkmWvqHbmvATWTVbJL9JsfX+AJdT0Bw4cgPqraKo/AHzUxjRdAWS/lf2qSQxB72JH
         KX9sFDYhvoTFnSfvhSjBAocUaEEg2iiC1O0OvFCuRNkn32A5GJV84y8LKAFci4C9GT7Z
         oRDxm/rsAgF6iak0LrxGDaKLFraBiVGg9wUzO1b5QSkYJ+N3hYRyY3Ys5VlU8R1nDB3f
         XD3mIhQ1DlVND/rq95iLHK+mSVDnp1Pf/VX7IWxLxJOMp1rohtoSZwRxFm0xVfbwgL0Y
         nQcw==
X-Forwarded-Encrypted: i=1; AJvYcCUO1y99mPhgW81+RoxfLhzYaRJmwoMAXl1v24I5hQjN0r8rnEmcfT+woJEVQ3z0PVFdKTrKfo/+2dza@vger.kernel.org
X-Gm-Message-State: AOJu0YxtS3rQqe21zpljdwT4SmHA+cC1oO6UIGGzaEnTJUEn5PjPuWDP
	DDMCnmoVGU7rG/LSNCWFz2prRQAkvxLwH0cV4cweuyZvPhstWL14vgY0J0qWUQ==
X-Gm-Gg: ASbGnct3Q/ZwLQX12IkkNczruhCnj7PRY0zE3madGlTwGX+k1y6OyWDP6Ka1+lnjFkF
	qr1wTaiA4IidaBauNXVkOcqtOgKniGuyieo1HmMH2eIQh8rqQvCpp9v8MvVsMJt7GSeOCRPp+VE
	Pq48jcB0leKT6A/vLYIWHjcgCvSNlrEDxA/Cq+gr5JUXoLOLOGHIzMb6/3AXtivt0EP6xSKvg9V
	lwsoMHIlxdtjPRxkfR2uEiiDKjxgtUwHurCC4W1SpUtca4D2u77VqcpmzB04LVpaSlU+tv/xKUI
	5dxX9u+f
X-Google-Smtp-Source: AGHT+IGY+FX04mfzxmplompk/IW14NqbgJnlcBAfKd6jUF+oXS9F+fBvE0X/zqk8o3s+U3ZXOSneZg==
X-Received: by 2002:a05:6402:234e:b0:5cf:e894:8de9 with SMTP id 4fb4d7f45d1cf-5d0205c6315mr10497739a12.3.1732522900638;
        Mon, 25 Nov 2024 00:21:40 -0800 (PST)
Received: from localhost (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-aa50b28f719sm430537166b.12.2024.11.25.00.21.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 00:21:40 -0800 (PST)
From: Wojciech Macek <wmacek@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Rafal Milecki <rafal@milecki.pl>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Wojciech Macek <wmacek@chromium.org>
Subject: [PATCH v2 0/2] Add Starmie Chromebook
Date: Mon, 25 Nov 2024 08:21:27 +0000
Message-ID: <20241125082130.2390310-1-wmacek@chromium.org>
X-Mailer: git-send-email 2.47.0.371.ga323438b13-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Starmie Chromebooks, also
known as the ASUS Chromebook Enterprise CM30 Detachable (CM3001).
The device is a tablet style chromebook.

Wojciech Macek (2):
  dt-bindings: arm: mediatek: Add MT8186 Starmie Chromebooks
  arm64: dts: mediatek: mt8186: Add Starmie device

 .../devicetree/bindings/arm/mediatek.yaml     |  13 +
 arch/arm64/boot/dts/mediatek/Makefile         |   2 +
 .../mediatek/mt8186-corsola-starmie-sku0.dts  |  29 ++
 .../mediatek/mt8186-corsola-starmie-sku1.dts  |  46 ++
 .../dts/mediatek/mt8186-corsola-starmie.dtsi  | 480 ++++++++++++++++++
 5 files changed, 570 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmie.dtsi

-- 
2.47.0.371.ga323438b13-goog


