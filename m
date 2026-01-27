Return-Path: <devicetree+bounces-260090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FgcAX8NeWmHuwEAu9opvQ
	(envelope-from <devicetree+bounces-260090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:09:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DCC99A6C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 00F8930347BE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3389E365A06;
	Tue, 27 Jan 2026 19:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eni8G+8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6340E2F1FDB
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540926; cv=none; b=SkRuWIoXnEkxJjtBEH1YT4MpwqEowjlPplxjPw7vf73SLW9RnnACjqobF0Y+HnVAfDhI4tZyyieTQwMq96a6TusQvPU9pnbc40eo5WXKqm5HMTtlPIwvsBPSHmKVxQRpPzaa+6MygqW3k63EtjhHpYnVvm5sVRe68nO5ukydXVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540926; c=relaxed/simple;
	bh=NJPV83aALQ0kqd42SvBkY3VtRID2IKOpShixJK7N2m0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cFKnEo3iVmf4WnEau+bmsuA1DGCEMUlefvlSorOGu7qonsN5jwQDkmr7d6jQmBcIVPk+Nffz9f4gxaZGmjnaVGXV3uaoI0+jyMsrwACSlnfTHrO4B6+8I7jk/u9r0xXxwLLeaKWBA50b/ewdWkFVl7DtIQ4Jc8mj9ckzQYEX5lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eni8G+8h; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4801d98cf39so46103355e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769540920; x=1770145720; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zXFv6WOP8W3azboFkG7Bd/jPVLZoa2VMLxSLFbmHKbc=;
        b=eni8G+8hmfbWfh3zgRnbblix2bTQHHjGH2iJPamoVpnEs8XRD3h0XGhz1oIhFC88kP
         DsZMGkJD3SXjetET3gYu2TfZjsvRZszyIynWKvILtesxsXImwtKOxdgrZstytKNpoKh5
         2MkFghL/8atSQJUlG4b8vwSZTv+oHtzWD9k52msfxR/OyqisnxQRg7mVBU7LVhk3t4UG
         kGa8MdARQsXziNzJp1Unw5JGYnjWVWfp16UuUZNoDetDgfQOE1zV3c+CVCDK5q/DzSc/
         zysvDAhw9vxFJY6W6cbhwfeb0fRblo3q2+R1dMcmvQQIWAp8IhlY0rMxx4fcqSW8UzRu
         w6Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769540920; x=1770145720;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zXFv6WOP8W3azboFkG7Bd/jPVLZoa2VMLxSLFbmHKbc=;
        b=kmLCnMgyM+yQWjLENlbQI85XuwyAmUsBTuXwTqWc67O3KBELJ1d+HQ/hYOOMNsl01M
         mZl1u1HtW/nPIR9m+lOg1MTAyC0ABYKcUsfSKaR9lwfl+e6bOzIMbumj9Vc82kccK0/Z
         b3uHRTkZr9oy480/DmGPladt7N+gpJXHfVqley+527rjrRGwENhXRyS+O/gX+dsQcQyf
         E5XZdZ4Lq4kACfgNBA3OO3j69wSSYkhHrSG6FSOmtxKM0YA6ZxImUDIinizcxi/dbG/i
         +N0LNtzCuiAPaVTbThIKmG7IVSmENijkLy895Aw7YMbAQPPjVkqqC51NJleoCS/3LXJb
         8O2w==
X-Forwarded-Encrypted: i=1; AJvYcCUY9v+FPF0todj+AcoxX/J2o1JlGc0jdpxm9NrJrnN9rk30OabBUR9+GH9lwjFZsJHb60iR91v9RX8E@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl7s0YnGdQATAzeKnhiX6UirMWQj53/MzJbcIyzpMBuVUtRl3l
	bs4QW2alxcZb/CgplJlaFXVL9ewuM1cMb6um7eKPN+lB706pEUFnqCtK
X-Gm-Gg: AZuq6aJ7hVvGPWUPTm5dhGIju6daPWz7iTyO98F+HLeBch34ZA9i3QR8tLB9VNrEbBw
	cqhYSwCPMB39UFfhgmcC/JZlGZ7i6jLSeWNZJa5RRn4UoQjKsZW0HFJUmAf2W6hNUfd7dcY0DbR
	mApuykXPsbfgCEtDazAr2SzEuytIIJo+umfTKyz4Dnol04wtGev5wgncVAzrHK1h2LEp5m+FNXI
	AjARaGQ0rTFJkqBb7TYAS4o2YNWA1MTJo1Ricrx7PYJcggsW+99fhIBNB2kr0LmQClQ5R6qyDc6
	2FIMgrB/DBXEAfBdnqriK9I4dfwEzjgxLZGH1dO9SKe6S03Jv67jDcqhSYjgdDh3kGWl6FcwTVs
	NDzwt2eW0ogDoofnTHlgRTf2k1vEOqhRLjlN5Pozh/ZLWG+KoE6dIovs7FhJ0nCaV0+4btbFvcS
	aZVuBPhFMC26KO297qBt2A7RurB61xZPqb1Jt4Blf1p+2B
X-Received: by 2002:a05:600c:699b:b0:477:8b77:155f with SMTP id 5b1f17b1804b1-48069c3f914mr33405045e9.8.1769540919784;
        Tue, 27 Jan 2026 11:08:39 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066be77b5sm74577805e9.2.2026.01.27.11.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:08:39 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Subject: [PATCH v2 0/2] ASoC: sophgo: cv1800b: document DAC overwrite
 handling
Date: Tue, 27 Jan 2026 23:08:18 +0400
Message-Id: <20260127-incremental-for-i2s-dvier-v2-0-5f66b841f63d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACINeWkC/42NQQ6CMBBFr0K6dsy0GBRX3sOwKO0Ak0BrpqTRE
 O5u5QQu30v++5tKJExJ3atNCWVOHEMBc6qUm2wYCdgXVgZNg9pcgYMTWiisdoYhCrBJ4DOTQEu
 uQYtoeu9V2b+EBn4f7WdXeOK0RvkcV1n/7D/VrAHhUuv+hq1rauMf42J5Pru4qG7f9y+xnVTvw
 gAAAA==
X-Change-ID: 20260127-incremental-for-i2s-dvier-9ec60a002bdd
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>
Cc: linux-sound@vger.kernel.org, sophgo@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769540916; l=1049;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=NJPV83aALQ0kqd42SvBkY3VtRID2IKOpShixJK7N2m0=;
 b=BALvBEZkSNpptOqmEwB5MQtyO80EUcfyeXUyMbbmVZzVuUmopwgYKeiywgJJKQXQ00KP8BFtq
 7AqNTbv+MOoDiQh6P42kT3FpzcGOcasc24nWIxMoajEBf8soCo5aPTH
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260090-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 72DCC99A6C
X-Rspamd-Action: no action

An incremental patch on top of 
"[PATCH v4 5/6] ASoC: sophgo: add CV1800B internal DAC" 
adding the explanatory comments as requested.
https://lore.kernel.org/all/20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com/

changes: 
 - added description for cv1800b_dac_mute function
 - fixed "extra change" from previos commit

Thanks

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
Changes in v2:
- missing Signed-off-by for the commit. 
- Link to v1: https://lore.kernel.org/r/20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com

---
Anton D. Stavinskii (2):
      ASoC: sophgo: cv1800b: document DAC overwrite handling
      ASoC: sophgo: cv1800b: tidy Kconfig spacing

 sound/soc/sophgo/Kconfig             | 1 +
 sound/soc/sophgo/cv1800b-sound-dac.c | 6 +++++-
 2 files changed, 6 insertions(+), 1 deletion(-)
---
base-commit: bdc79da6c6206a12c9a13ed5e4eb1360d62b321e
change-id: 20260127-incremental-for-i2s-dvier-9ec60a002bdd

Best regards,
-- 
Anton D. Stavinskii <stavinsky@gmail.com>


