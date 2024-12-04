Return-Path: <devicetree+bounces-126865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFA69E3695
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 10:29:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A53516925F
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 09:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F4471AC459;
	Wed,  4 Dec 2024 09:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EqisiMma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500B81A76C7
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 09:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733304545; cv=none; b=j8FeToUe5KApuTsctK+BxSQ7SIDi2oAtKqjNpYj6cbTZpcedblSsqpXv5Lq9dCWIdiNQSPXhw8HMjhlYR+EvWv60Y35tV5IlMkz1Gb0EO8MyxgMHF5PB1XqaMyW2kTnkWinYKqXCgRIHOgyfueF5NLZ/y0M2ozCeZ3Bdlh6mXf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733304545; c=relaxed/simple;
	bh=pNiUJqMvkF3meLNvGaIv4zqxKa3SDQGFsOEQTo+IM0U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hNKSAru3/SvQygJeBvNYWVlN+wrfLyAqVlDIeBwv+8W2Kr+qiOoUYU8Wzrb+0Xw288sSDMqKkHDdqZKNE+yYQLZjq7oQkV96UMeXdLQpeqxbsNaqzkMHJHLXGqN6Tblg9jA8D93bNrbrLw5vfn2UlwuRTBUNICUan3LDdNJwwh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EqisiMma; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-71d54fc1944so3287114a34.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 01:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733304541; x=1733909341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rSvjzybcpgZsvOT9TlMKPiZLpA7cHiGiwj+87vtqrQI=;
        b=EqisiMmaW5U25z7UrOhCsxY3tp5oIIAcFWVlkvU6fSL83i6z/WOItnSXIZIU54pbK/
         /JVOk0WuKXYEi1MVb5MNyOSfAd84JhU7d2T3+s9QWMXJGiCDU4JnBYKUJpGc0fiVvs1n
         1Wx9oxS6s69Fy5u8z5np4OE9Tn2vCA/fbBP40=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733304541; x=1733909341;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rSvjzybcpgZsvOT9TlMKPiZLpA7cHiGiwj+87vtqrQI=;
        b=smYMA5JSUYcTRoqDkDm5Z6D+SccmMkUzZST93+2+tKYnp1oyRjoFCiLhWW88gm3r4b
         TMjxyn2PG6lxxHi8J+tVC3tu31b/QzsgqXUg/QnevCZj3ih47UgxrW3qtDWdJrKCiCVu
         GAoTdddQVUuHN6H/vEYOPTAUXDMP46RLSMOX2i03l840RFwcnD8Hdyxc/0NmoYoGYQVk
         JDZpr+gZbx6pMH544cUMJtAyhDHyiJwioHZdfJ0TNMQLtPRbgX6PSyDi3cPa03hVoFyp
         EF2SS3lTbNXn8pEzjVSJ3kMJGfFoWhV9zyq8cosletHZOZTttkyPBCMvmy8+LjF8dRv6
         p1jA==
X-Forwarded-Encrypted: i=1; AJvYcCXYX3d387KV3jdEN3VbW86q1ZNzRjibrkD8bsVJDp4nWayg3mFeR4/yiwTGcpSmkIEdNWOmdd87auT+@vger.kernel.org
X-Gm-Message-State: AOJu0YzqVBxix80+ryJBt8htNkxnTMHhH7LJ4kl9R87kSUE9SEgYnEu/
	3Ny7YTfJZIw8kHtN2cmPysLsUDu6YsRgAUCbrcmkkfNV5rCbDWdE5J1BjiY56A==
X-Gm-Gg: ASbGnctkcB2rrTrghjq53mlLZOvePMYCQKlcgKGah5N7TlaM9m280rlmbbqp1BbCNqW
	mZzKBlc+1LVDUOFrn6IOIwztrMT0d1ImO9Sb0zf0jbekiRrwwDB7sS0VAi9W9Q7NZecAbTF3KBE
	1RCq3i5kO437kbWl0UzRJa1ouTDL3RDlx30nGnzUSgJ5I/pRQ2PUyiRaW/5T7NHHysnclOLxwcI
	0jeDaJaqY6AX052S9EPFRo1EVGAUkXDeaco0hNT/GpYebpAhFN8bFryhZAWgn95F4li
X-Google-Smtp-Source: AGHT+IEDEK2nhMPbAOsuMuh6j108aGwGF9PHLhxq9QdnWZtG1dV+KYKtrNgMaqBZ6YJiiA1s1lmFsw==
X-Received: by 2002:a05:6830:b93:b0:71d:5a8a:1a37 with SMTP id 46e09a7af769-71dad652b13mr7062531a34.15.1733304541404;
        Wed, 04 Dec 2024 01:29:01 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2eb1:a68a:2625:b944])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fc9c2d38dbsm11049024a12.15.2024.12.04.01.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 01:29:00 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Chaotian Jing <chaotian.jing@mediatek.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wenbin Mei <wenbin.mei@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Andy-ld Lu <andy-ld.lu@mediatek.com>
Subject: [PATCH 0/2] mmc: mtk-sd: Limit second register range to SoCs requiring it
Date: Wed,  4 Dec 2024 17:28:51 +0800
Message-ID: <20241204092855.1365638-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently the usage of a second register range for MediaTek's MMC
controller is seen only on a few platforms. However the driver tries
to grab the register base regardless, and then ignores any errors.
This makes all the other platforms that don't need it produce confusing
error messages.

Instead, make the driver only grab the register range for platforms that
actually require it, and correctly handle the error. Also fix up the
binding so that validation of the "reg" property is as strict as
possible.

Please take a look.


Thanks
ChenYu

Chen-Yu Tsai (2):
  dt-bindings: mmc: mtk-sd: Document compatibles that need two register
    ranges
  mmc: mtk-sd: Limit getting top_base to SoCs that require it

 Documentation/devicetree/bindings/mmc/mtk-sd.yaml |  9 ++++++++-
 drivers/mmc/host/mtk-sd.c                         | 15 +++++++++++----
 2 files changed, 19 insertions(+), 5 deletions(-)

-- 
2.47.0.338.g60cca15819-goog


