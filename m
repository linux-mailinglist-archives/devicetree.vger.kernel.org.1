Return-Path: <devicetree+bounces-271242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLuRHb+OqGmzvgAAu9opvQ
	(envelope-from <devicetree+bounces-271242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:57:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E330E2074C2
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9DA6300E16B
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D2483DEACE;
	Wed,  4 Mar 2026 19:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OF4V1Ie2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280FF381AEC
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654267; cv=none; b=bT/wqkXpfjwRkAUS4uS1hxjedmkvoJlrtjCJDXjhPP50XVkF3kytJ2wPti9ZzpTOUQYZEbzIrp9eCPFVKJpXokjzuAfpbZMWJ6hDMEdGjP8AwnV6xFlEnPfYdFaLxU5TaS0SDKVLQihLYKImhTloSYCqO0GEOFuzoTIrmYzGZNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654267; c=relaxed/simple;
	bh=BgdtRCrG+UT4Wjl3MNPFweAAAvfm5+xVSgZzPOCJs5M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Y+PLtTJp9m1OfWoUzNWqOCBcXptgQviNzSTLRwHsgf1+k2Z30Mrd4wJDEE7gH3LSleEeYuKZJFpIx5cqgLlJV8AoRYGvedIcXKVCxt7xTXyeo9ia+Gu0eQ8mg5IBA/aDrBCXD66S74QrA7+s+8Ol+8yvaJNuqfRwb3oTOKbQpUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OF4V1Ie2; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-89a07f66f4eso33163646d6.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772654265; x=1773259065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kZuBqMqdE2cR1Kb9L+99KXcjTlaXgNSs2txRlLKnKaA=;
        b=OF4V1Ie2vaqPUvtWXOIagQfe3oQZchFCCIEXpik9fK0YwPOeg3Ao1cmYKy29tUZyXY
         J3gOR4oHo0KJkWOkgRZ/Fl30twFijBZL8d4cVAPKZGZYkVY5dc+/S1VMoKaQqhS0rMPA
         s/kR/Y9kAaYLSs5+S4rMJwZrwSzvjdSfZNUUQy5ml9HIkiCL84mGr7sMUlHjtu+1jUwJ
         llxZzfAKu5wn+M2pFdyYz2qGYWPrPZ0usOpbVGk6p290G3sefmms858+0SSRIQ+3O4hg
         WlQSEaB1GL/0uSX2gCVVvYyJFvnxIwuF1vNvMlmMTGqta6ZjN19kCe22YxAphT3uHTG6
         lH0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772654265; x=1773259065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kZuBqMqdE2cR1Kb9L+99KXcjTlaXgNSs2txRlLKnKaA=;
        b=YaTMvKca6Q+4JkgSDuPNnjc/8gW5bn0Sa/hE8yHXOSLDmIdmrYfi+t9LYEo7+ooshi
         qG3U3TRwKaP5Z4JziA7i3E3qOMvFDESJ3aLa0TIEHSf1MNnWRtGVOnDts4YFoY04xPFK
         BGLuJmcVqsmwIVxgOcfeT5O3i8LFjeJYtJDh4tkfAroYVW2TDadRcQpYAqcWTta2JQW7
         tVnWVC2JTJuySkQMMMxKP299pqHrFOWN1FDDk3T6UINdSiWNv8hFwdhxzb2jJ2GfuITW
         omTNwf7rXObiMIvTdZ0uEgjVo2uQ4/zRjYsWrr2YeXIh/c/XhSMUkF4jN9CdL8h3iPtc
         n19A==
X-Forwarded-Encrypted: i=1; AJvYcCXm0XWgNt1F2KV34O/9JXog1nAWuYNSWsR1DLmuLmpqD/lcEKQ25A2EFd0N4yrgkhzrSTcPfH79b5gn@vger.kernel.org
X-Gm-Message-State: AOJu0YyZGiY/pZ3iPwCxdOsRoT7tfMKj4FfhMov0X77k18qexoklM8Zr
	TfqLXqt2vx2susLpxr0m3MD39SIDqkbRDo+llwzE/BvsQvacZcX31YYQrUVERQ==
X-Gm-Gg: ATEYQzwOE4chJPfWkPIBcVQdkPDpargoWSXRs4r9yEvk3xjKkbtVL2IK1OXN+tH9I4y
	JE8/uhR8VyvytZDLllN38aju9ofkKV6NEF4Xeg6v6Imn9JKQUDEktuQFKUJKmrwrQ4MrrBWbzeS
	WahrTSbjylRKq9RrF/2Yd5D3oiv5Jtdwv6LSP3skcNkEsU7+g5eUzTfykVLG57lqCebPdsJmfQ/
	R1J79Y9n9fx/7SFBuvxOi8zjyZmARjYvIuYMssbWHgTWezvT4EuxCO8DrA4qf3R8Vt5P5x0OPKo
	e23NzBx1s5Hj9JhP5PzZE/XeXc6MRNYVqrDm6d08YJVYsq/ssoA6HVXL4TTowZdYfnyUtW3h41T
	PnjldqFzWVtVyp1tF87Nks4Tmzra2jHAiD7hfsGQ8cI3cNG5mv58CldeuWCVa82HXGhyMs4dW7F
	yrmvR6YktpgC101GM04AMwGLhDe3n31RF3gfo6
X-Received: by 2002:a05:6214:21c2:b0:899:f8c4:5c with SMTP id 6a1803df08f44-89a199acacfmr47559586d6.22.1772654265116;
        Wed, 04 Mar 2026 11:57:45 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899fc21676fsm76028846d6.22.2026.03.04.11.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:57:44 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 00/11] SDM660 sound card and internal MI2S support
Date: Wed,  4 Mar 2026 14:58:04 -0500
Message-ID: <20260304195815.52347-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E330E2074C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271242-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mainlining.org,quicinc.com,linuxfoundation.org,kernel.org,opensource.cirrus.com,renesas.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This adds support for the SDM660 (formerly "SDM660 internal") sound
card and support for WCD codecs over internal MI2S.

Like on MSM8916 and MSM8953, some SDM660 and SDM670 devices connect to a
digital and analog codec. The connection to the digital codec is through
special "internal" MI2S ports. The digital and analog codecs are used on
the Xiaomi Redmi Note 7 for headset (playback + capture) and earpiece,
and also on the Google Pixel 3a for the headset.

This series does not include devicetree patches.

Changes since v1 (https://lore.kernel.org/r/20260211020302.2674-1-mailingradian@gmail.com):
- rename sound card to drop "internal" (1/11, 10/11)
- use common headphone jack code (9/11, 10/11)
- remove no-op code in sound card driver (10/11)
- remove inaccurate comment about clock consumer/producer (10/11)
- add review tags (3/11, 4/11)

Nickolay Goppen (1):
  ASoC: dt-bindings: qcom,sm8250: add compatible for sdm660

Richard Acayan (10):
  ASoC: dt-bindings: qcom: q6dsp: add internal mi2s support
  ASoC: dt-bindings: pm8916-analog-codec: Add PM660L compatible
  ASoC: dt-bindings: msm8916-digital-codec: Add SDM660 compatible
  ASoC: qdsp6: q6dsp-lpass-ports: add internal mi2s support
  ASoC: qdsp6: q6afe: add internal mi2s support
  ASoC: qdsp6: q6afe-dai: add internal mi2s support
  ASoC: qdsp6: q6routing: add internal mi2s support
  ASoC: qdsp6: common: support headphone jacks connected to internal
    mi2s
  ASoC: qcom: add sdm660 sound card support
  ASoC: msm8916-wcd-analog: add quirk for cajon 2.0

 .../sound/qcom,msm8916-wcd-digital-codec.yaml |   8 +-
 .../sound/qcom,pm8916-wcd-analog-codec.yaml   |   8 +-
 .../sound/qcom,q6dsp-lpass-ports.yaml         |   5 +-
 .../bindings/sound/qcom,sm8250.yaml           |   1 +
 .../sound/qcom,q6dsp-lpass-ports.h            |  14 ++
 sound/soc/codecs/msm8916-wcd-analog.c         |  63 +++++-
 sound/soc/qcom/Kconfig                        |  12 ++
 sound/soc/qcom/Makefile                       |   2 +
 sound/soc/qcom/common.c                       |   1 +
 sound/soc/qcom/qdsp6/q6afe-dai.c              |  46 ++++
 sound/soc/qcom/qdsp6/q6afe.c                  |  56 +++++
 sound/soc/qcom/qdsp6/q6afe.h                  |   2 +-
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      | 200 ++++++++++++++++++
 sound/soc/qcom/qdsp6/q6routing.c              |  78 ++++++-
 sound/soc/qcom/sdm660.c                       | 192 +++++++++++++++++
 15 files changed, 681 insertions(+), 7 deletions(-)
 create mode 100644 sound/soc/qcom/sdm660.c

-- 
2.53.0


