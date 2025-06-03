Return-Path: <devicetree+bounces-182562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1207ACCDB2
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 21:42:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A43C3A3297
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 19:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C12619F471;
	Tue,  3 Jun 2025 19:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AjhtJZ5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CC35FB95
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 19:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748979721; cv=none; b=Gtp9g3q4PwoLS2Ko08hCU0OYCES2B9OMgYT8sjS7h9BnbeCZjyzL5EJctmZaCvcsQ3Xw5qDdFW8TpN69Y05OjXNrilc7XPL1dBkcFatuJh12iUw6gyt6l/u1lU6HnaPGN5ta+olnB+uVSnEBFsVktsHRQn4eVUyxmDOMo111Upg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748979721; c=relaxed/simple;
	bh=y3hUk3KYAnrDSrk0dMC5pxV/zHXdhowmY0xVYeIq+Xs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MqMCFXZ2C2xdFrveQsH11EeCs6FJ3IeAgdWWM6dftqFVATcpcMdv3XXL5B0mfNMaPEf4DqBU20k+m9BKtwt+Y+k2mQmUEynP8adjrj+tH5q3R4pI5xEDf1AP0EZFvKLNfgU3wmrHE4nkm1z3cx29/ZXnF55oSkdTo0h1PkSkytQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AjhtJZ5R; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-4067bab37a1so3629766b6e.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 12:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979719; x=1749584519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MSyG5GucZ6AHzHmHwEn8qWQPSg1ugWMZS3LrrRmBg9o=;
        b=AjhtJZ5Rt+i4JJeWcKNgSM0lDjNMtvknU497xTBMG9HlTUbLlL47C7Lc3XNdtgtm9M
         wGWTF2ayWd0vG9+TGkMLooZ0LSw3/Pl+Et3Ob9Z2msZcuaMHY6lOuldx2z4tTZhzudHI
         KdcY2oMCsG0ugV52ShLBJpKhU95qRB3jA8lgsbR3tyYiPpGtUHGIAfY65LL5MI9pHaVm
         8C8Gv4JwpG0KblIVeU36SfG6uS4VCZvlEDwB0So/XGMmpDHDkD8KkwerujL3klBdwI+s
         ZDhTswPPAdjFe2sjliP8skLjcYAZSlSbn6n9khFcSWKGig4Xya2CWTI/INmBHaASKekA
         al9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979719; x=1749584519;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MSyG5GucZ6AHzHmHwEn8qWQPSg1ugWMZS3LrrRmBg9o=;
        b=kxk54cMAkBGDievENW9FTSpbaLCBhwyaGNcLdyf1PDfsypVt8Pcbfjh5H1DDVCoDCL
         OcVqSw0UiMABMr7SezVhG06j61w/c3hDLDcfkfwzkBkfHWz8AErzSpC+E3d4wqVhWxlx
         yUL8INc4dYYg2Sm38RHaT50RWdT+G/mJS0tWcu+xVBXn+Z5PUsmK1odCiyt45oGOBJM7
         mFQf6i7Wd5Wmh0qieKOrQBJO5Oi4N5LISlQS71KgwQEJE/teAaKK4aXqu+Ld40MqdvG6
         k6bH1xVB9BI/7PoPHChJhAH7gQjJq8i3kpHjqTvp5ufRD5tncbIy/Qc7hN9niraNcdV5
         /41g==
X-Forwarded-Encrypted: i=1; AJvYcCVHKjXIQcXsK2dDXnhFTWacQ6fpqWwbLmzccGs4WgFzcBSenAB0GG0JdxZvdzVsZE/1v0nQkAXmol9e@vger.kernel.org
X-Gm-Message-State: AOJu0YzizBXSdYpC5gVzavyw6tdKykuEtTzF61Q0fX7Xk7AQriEwUJqw
	75NdFU2099vXPRkVLbaYZAc/8KQpRYzyPUNz8UVKQ5RfkycFMHIsJXgjvt5Uiw==
X-Gm-Gg: ASbGncu8zPzQJ6t55j4+2B/8KAcGGw6AJl9xea1JYSM86tL1Ej0c2pPBbtXzAW9ARGj
	dr5vtRG8UC8HcuzTmc2jXt/Xi/HEAjfF6glgajSa8ePYzBAEz6wLicIYS/fBl6wWRSXZzw1Zzlq
	3Tmg7NfL4tsDRkPjIBRw/h1lKpES6hwa+cI0WSk2oGDZ5p4DnYYXVIc8+NYcS+lx6afbOWhj9gI
	kLl5ua2eLx4oDlSsPMPjnkz9JHUcnSkTF50pr97uwwzo0z7pnotUDSI2uMSiMzzjgNjGYhSqvrK
	jCT5XpuCFmFY2EI+JrQiyHrdgA+4mgwep643khxOG/kDEj48uRcIG2l7wuJU+kchFvUkrdA=
X-Google-Smtp-Source: AGHT+IElN/Ck5z9ng0Rakn/a4qKt/JIiKWpHTNjCGckeAoEv0oDayE2LOTvb/CPVlFlHYkXf/jaksg==
X-Received: by 2002:a05:6808:1c06:b0:406:7a50:948c with SMTP id 5614622812f47-408f0ff6cb0mr301894b6e.21.1748979718893;
        Tue, 03 Jun 2025 12:41:58 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:41:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] Add DSI Panel for Gameforce Ace
Date: Tue,  3 Jun 2025 14:39:26 -0500
Message-ID: <20250603193930.323607-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the DSI panel as found on the Gameforce Ace handheld
gaming console based on the RK3588s.

Chris Morgan (4):
  dt-bindings: vendor-prefixes: Add prefix for Huiling
  dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
  drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
  arm64: dts: rockchip: Add DSI panel support for gameforce-ace

 .../bindings/display/panel/himax,hx8394.yaml  |  17 ++-
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../dts/rockchip/rk3588s-gameforce-ace.dts    |  66 ++++++++
 drivers/gpu/drm/panel/panel-himax-hx8394.c    | 142 ++++++++++++++++++
 4 files changed, 221 insertions(+), 6 deletions(-)

-- 
2.43.0


