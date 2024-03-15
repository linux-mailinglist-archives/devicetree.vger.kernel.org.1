Return-Path: <devicetree+bounces-50695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B787CC1A
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 12:16:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A3E01C20F02
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 11:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A26A1A5BA;
	Fri, 15 Mar 2024 11:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DSR6Lkko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD351B7E1
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 11:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710501389; cv=none; b=Y3HYdJ8BCTUKodu2OrVjkv5jxRGkyc27OCIdHGuHnMe8cFFRctwYvHaPY+sjHA237PgOr/VXWQI5wOCrJ9npozlDBKMKrLGvmG7+SaYMahsd/w3G8XoAJAMPF/c82Gl9ArNa5rj++x5C4FlAbblrEaqf3iVyC4sVHhVJmokKOW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710501389; c=relaxed/simple;
	bh=RFtAB0IdanX6/2yYH8hYW+p9AP7BVygvCgvYrd2v3Ow=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=te3iMcR2twzXj8VlprRezHKeRD9WYZpn4xAO9tP1tdXjRkwRD/rnGZA/+SyclS+CAbziPBiFbNQvG0k4fFNOTj6kHinegJMOE154+DljvmRU93Pa+Zgd/CnGwmy/+QROq1QtkPLZtpc1faDjS4+9Jxx1tsH7V0zzrrDBl8SPDJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DSR6Lkko; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-5dbcfa0eb5dso1640171a12.3
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 04:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710501387; x=1711106187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0MYemMVXfcwym4dqzvAuTYbxf7jh51PQWqcbKiVUnPw=;
        b=DSR6Lkko371ncsU7k+hd8p41xRVFhvM+1XeSCRbn56WWTTWtfDJSyr6xVaCLwztT2R
         K06f0bVtx/70LEQMGlpczYqnxIb3m31c0lmJ2IZD/ND61nVhQBRBU2sN+5+9wB1Le4/C
         7bdpWUx06mpIiOMs0dyM7QRnhNJMCxySWTUn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710501387; x=1711106187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0MYemMVXfcwym4dqzvAuTYbxf7jh51PQWqcbKiVUnPw=;
        b=FleQCaVoOnkj/BTjuKTvgZx0U4jK+ObR1zfXbE0QuJND2wo8Stu3Cpsdcp9MIlc/bM
         eF2y3T7qXgQUxjWkvmqobv3xSS210bO94ItSWtHMxbrnIepZC4vNCz7yY6D83URKyCUj
         SlSUQqql2PtnQUy/G35UP5jNRIppqpkvngVK44pgQjt9HZXDK0GE5wv6WCp5VEVxMPyF
         88FXQA1GWLgm0WdR3i8iTcf6Roo6AVrhkiQLlGiEk5dakOKzIWcJN5JM7cYuQ6oMovix
         1WTdR0fUt3BW411+JoZjMeI2LRFJp8YrHIsszECk9l24TvT74R6eTvhFg7C9NEy62Iug
         ce2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUpQ/RsSIU9V46s2aBiY8nADO8HRzRUyUk299KyXteJaPTLMLivPYM0nGM3S8tcCg+TDoSkXv1YJmkPUO/jvqW3BJ7qjNr1Cbbcbg==
X-Gm-Message-State: AOJu0YxbK6Mar3LZkIptGE5xbX64UzONpVxOYh2hsIOdUdA3y8rESkJC
	uvgU4hmR65YEVkaY4eCYK9l6qvkXpm7uc05R7w7VM7/jnvIgThP04m2KoxUysQ==
X-Google-Smtp-Source: AGHT+IHkV6rWNk9VP1u+5Gar92wJ+6cA36TJ/sdDtyUb7G3JlBmUL/yk8qKG8iSNBDStFe511ywLaA==
X-Received: by 2002:a05:6a20:d387:b0:1a3:4a1d:10a3 with SMTP id iq7-20020a056a20d38700b001a34a1d10a3mr2847412pzb.35.1710501387166;
        Fri, 15 Mar 2024 04:16:27 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:2f9c:c00a:bf1f:e53c])
        by smtp.gmail.com with ESMTPSA id c11-20020a62e80b000000b006e6aee6807dsm3122683pfi.22.2024.03.15.04.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 04:16:26 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	linux-mediatek@lists.infradead.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v2 0/4] Update Vgpu minimum voltage for MT8183, MT8186, MT8192, MT8195
Date: Fri, 15 Mar 2024 19:16:01 +0800
Message-ID: <20240315111621.2263159-1-treapking@chromium.org>
X-Mailer: git-send-email 2.44.0.291.gc1ea87d7ee-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Use the minimum voltage listed on the Vgpu regulator datasheets instead
of the minimum value on GPU OPP table. This is because the requested
voltage could be lower when the MTK Smart Voltage Scaling (SVS) driver
is enabled.

Also update the incorrect MT6315 regulator usages on MT8192 and MT8195.

Changes in v2:
- Update Vgpu min voltage for MT8183, MT8186, MT8195
- Fix other usages of MT6315 buck1/buck3

Pin-yen Lin (4):
  arm64: dts: mediatek: mt8192-asurada: Update min voltage constraint
    for MT6315
  arm64: dts: mediatek: mt8195-cherry: Update min voltage constraint for
    MT6315
  arm64: dts: mediatek: mt8183-kukui: Use default min voltage for MT6358
  arm64: dts: mediatek: mt8186-corsola: Update min voltage constraint
    for Vgpu

 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi   | 1 -
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 2 +-
 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 6 +++---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi  | 4 ++--
 4 files changed, 6 insertions(+), 7 deletions(-)

-- 
2.44.0.291.gc1ea87d7ee-goog


