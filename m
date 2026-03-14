Return-Path: <devicetree+bounces-275762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBWECIvXtWkn5wAAu9opvQ
	(envelope-from <devicetree+bounces-275762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 22:47:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BA03D28F175
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 22:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DC574302FB0F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 21:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301CA38553D;
	Sat, 14 Mar 2026 21:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XD+VjDtl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA0238A712
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 21:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773524800; cv=none; b=PsPhOTVQhp9MhPq21i8MDqkZMUSQA0FbTQ4F2gfQW/33KKSmoCFN/b7Yg82q30jdKPjPj2jahfEJRJtzR2BgrvQSHpSTEO/7pMFwlpDqcvsO5D3XjuSMH72BuyZcMpgJcHM9ByFjZMhyOh0ATcr/uBnQNu5MGzc9NXRecqCkso4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773524800; c=relaxed/simple;
	bh=wQWIVAu3Y4jDHR5DBLOkg+dc0hKAQmR/KU3X139W63A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DcTzP1TbLnl56CocrcTkClHk/UTjqUrouWgMD5M63m6iTrlczO9XaKW/zE8NhcJGBOcVsjkgdiuC6hXOShmquj3uZ1hFCzD6gmaDFK90FDAw0COme7l+RtshRzGdAQNCIZUSCjWTMtk9jrovVVoToDBUvwDhWj7pep5/usm7Veg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XD+VjDtl; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4853fd7b59aso20072955e9.2
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 14:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773524786; x=1774129586; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bh7FZS1WHQ+R8ev12RVDamAIZTNW5FHsYgbvpBRxNek=;
        b=XD+VjDtlAwFffjv2YtXfudRB87M3a0xL67N2N1F1TgT4gzPoHXsIubU6bH+ZWPu2Lu
         oyB/U25dLKDJuToN8FZTeZwaoCGtUn6lHfLKp3Z6wxDfEyE6CsdoBZZIWSeBOeYBcgTu
         umHK3UkHJbxkGJ7n+L9pkBSNvr5dbQ3gP4WTeJNSeImRnKc5IoH9B2eS2PFq8886PwB4
         WnAcGIJ6xJunJKjkZgsVzCqt7NHNnvcX5lWk15lz1+SF04Voh/8qjfgIaTRhs1LN9lUU
         +Kfa/JkkftROIVDaI/PAI0n1q38gWBIPZ+FJQtmpm9tmUDekOIsolh/iKWbwShsFJZEq
         XqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773524786; x=1774129586;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bh7FZS1WHQ+R8ev12RVDamAIZTNW5FHsYgbvpBRxNek=;
        b=fBJUBBNQZw9H3yWN1ZYEBo6V3YOeDHphTc4R0IJ7+KLnVioTS+BLzeU2sBit0xhiTE
         Yb0z4Pyk+NLrOTHvRprPeaxR3vUxAkqcWIHEwohqtSQ1wi8/TmjZTMbuw5dqwlzl7RMK
         tOwHO+BJgDTeZf8s1NZIpWqGexrmXHK5z4EzDX1JhpuTSz6enG2zI+ayV59jHzVvpyOF
         oXn/+BGHT1n0fTduRm3r/AomOS27Oh66q4cBUE8FtB9P1txeBwxfBxxCPbXjLoOz1Yk3
         FX+5JTkP0UzWxgAwzvvncOlwfuql763eQimQUoxvgzR01dcgjzTS0hz8+nEa2tyHecRF
         YPCg==
X-Forwarded-Encrypted: i=1; AJvYcCW+6bWW/fUt9Aqmi69QDGmGbONHJCRftSif9ac5vnJJy8eMT4ZPM00dkv1AyyxnKBH04AD+SaWL6aIZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzEXlTGlyF92n/+fNHQOQ5/Tk4oY15ZJueyjCJDxTbE5/G7SnrN
	M0cT7N0dk1b4ho7cXMcGT1tqkcI8K4L5XRLZ2pXftCvCFnk68TJxw31l
X-Gm-Gg: ATEYQzxT7XuSqhKqu1Ziz0GW5ZRFRRw7LG8XS/hns+oBWgxfRnpmUhpLt+9KQM38r5u
	nLo1IqDX48M1SF+yhsA1v9IG3vgIADvCbmURxSKy93ltOVlNvz0kmDX800umEKtdgd3+KNEQ+Ok
	CTnLpWOACrdOFIbrFG2XFqQDRPVM+OoiSxN27PQqx/luWyyy/qGT0Be8pCcO4SWRokmMp8KG0X2
	mr5eInlJEfGrAqhukNWWU6IvTBGwLBPhQuNwZ5udomPOEz9QbOVok6MEBbcJgCUrAkjhQSY4Gwn
	VwbYeruv5qr4nuNAZrg8fLBaQBt87DPOJUphy4LG5qx8JRv/ceoALpnUs7W9q8FbaIaJH97kWGy
	xxceLU4wHwqKnKqZrvpwCSlW8lvzz9QlZj5X2h8J8BKolTEdrmK+83oRT9L/xZgS5C56kUqZz7c
	i8q22QEQzeRsXvM2/fXeamvTe7BLj/Lz57npR2r6RE/8z9gdvdqQ8TnvntTAu9vnnzAksYe+dfJ
	Q==
X-Received: by 2002:a05:600c:a4b:b0:485:3692:e8f7 with SMTP id 5b1f17b1804b1-48556707ddbmr131089695e9.25.1773524786521;
        Sat, 14 Mar 2026 14:46:26 -0700 (PDT)
Received: from [10.100.102.17] (89-139-129-65.bb.netvision.net.il. [89.139.129.65])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19aec5sm28756221f8f.4.2026.03.14.14.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 14:46:26 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Subject: [PATCH v4 0/3] Add support for the Samsung S6E8FCO DSI and M1906F9
 display panel
Date: Sat, 14 Mar 2026 23:46:20 +0200
Message-Id: <20260314-panel-patches-v4-0-1ecbb2c0c3c8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/32Py2rDMBBFf8VoXYUZSZZsU0r+o3ShxzgR9auWa
 1qC/72ys2jJoggEd+Ac7r2xRHOkxJrixmZaY4rjkIN6Kpi/2uFCPIacmQChQWDFJztQl//FXyl
 xXevQGoJQIbDMTDO18evwvb7d80wfn1m73I+sp5TsoW2K58Mq96cqZU4oKwMc+Wq782T9Oy3Ly
 Y9j97KrnU3E/dj3cWmKoGrQllDZskWpPTlt0DlUnoLLl9aWGoLVbC9xjWkZ5+9j44pHi/scIR/
 mrMiBG1NqAbUypq3Pl97GLpfoD9Mq/qVFptFpG5TBUCp4pOUvLVE80jLTmkLlAXQAR3/pbdt+A
 LTXkXCrAQAA
X-Change-ID: 20260218-panel-patches-696df7e0d810
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Yedaya Katsman <yedaya.ka@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773524783; l=2780;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=wQWIVAu3Y4jDHR5DBLOkg+dc0hKAQmR/KU3X139W63A=;
 b=kaHaVx1CkItxr7tsnvLvlHc6nISme3slmuCrzRKlt3I2KBENyh+3rgK8qjI47fQGbcrORQvCK
 cuwBDvT0pT8CYMSZEHREfM2DaP4OWtx5KPC4TDgylEoBND0mDoO5I0z
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275762-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,disroot.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,vger.kernel.org,lists.freedesktop.org,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,postmarketos.org:url]
X-Rspamd-Queue-Id: BA03D28F175
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This adds a driver to support the Samsung S6E8FCO DSI controller with the
M1906F9 display panel found in Xiaomi Mi A3 (xiaomi-laurel). The driver is
generated using linux-mdss-dsi-panel-driver-generator[0].

The mdss reset dependency makes the screen work more reliably.

[0]: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
Original tree with patches: https://gitlab.postmarketos.org/SzczurekYT/linux/-/tree/laurel

Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
Changes in v4:
- Use exisiting binding instead of creating a new one
- Mention dsi phy power source in commit message
- Mention only DSI controller, not panel where it makes sense
- Remove VIDEOMODE_HELPERS selection
- Collect trailers
- Link to v3: https://lore.kernel.org/r/20260312-panel-patches-v3-0-6ed8c006d0be@gmail.com

Changes in v3:
- Make driver, bindings, compatible specific to M1906F9 panel
- Adjust brightness scale and default
- de-mystify some dsi writes
- move pinctrl for mdss into panel node
- Rename regulator nodes and names according to schematic
- Treat vreg_l9a as input to vddi regulator
- Add myself to copyright header, remove years
- Link to v2: https://lore.kernel.org/r/20260223-panel-patches-v2-0-1b6ad471d540@gmail.com

Changes in v2:
- Changed commit title like Dmitry asked
- Fixed copyright header years
- Link to v1: https://lore.kernel.org/r/20260223-panel-patches-v1-0-7756209477f9@gmail.com

---
Yedaya Katsman (3):
      dt-bindings: display: panel: Add Samsung S6E8FCO-M1906F9
      drm: panel: Add Samsung S6E8FCO DSI controller for M1906F9 panel
      arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Enable MDSS and add panel

 .../panel/samsung,s6e8aa5x01-ams561ra01.yaml       |   5 +-
 MAINTAINERS                                        |   5 +
 .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  |  94 +++++++
 drivers/gpu/drm/panel/Kconfig                      |  13 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 .../gpu/drm/panel/panel-samsung-s6e8fco-m1906f9.c  | 301 +++++++++++++++++++++
 6 files changed, 418 insertions(+), 1 deletion(-)
---
base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
change-id: 20260218-panel-patches-696df7e0d810
prerequisite-message-id: <20260303034847.13870-1-val@packett.cool>
prerequisite-patch-id: 3fba84f11111406e0d530013fd45ad0eb389786b
prerequisite-patch-id: 81440b7f28f9101d3dc5d4bad6dc86e39b81a026
prerequisite-patch-id: 53469d8c9810169d058f1bfd27ac8399038aae74
prerequisite-patch-id: 80809bee71eb6434f6699d5e5f8c7f9d4bcd1ca7
prerequisite-patch-id: 0269e01c9c54a37bb92983635cd516342189aee5
prerequisite-patch-id: e2bbf7c452d4da6d71b1a5194e0d7ce46584e113

Best regards,
-- 
Yedaya Katsman <yedaya.ka@gmail.com>


