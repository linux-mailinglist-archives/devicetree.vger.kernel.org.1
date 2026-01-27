Return-Path: <devicetree+bounces-260077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBLrCzgKeWmxugEAu9opvQ
	(envelope-from <devicetree+bounces-260077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:55:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A696996EE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:55:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2E04F30DFC52
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C605B346A02;
	Tue, 27 Jan 2026 18:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="epzsbAsv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B716E328B78
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769539720; cv=none; b=ERMgfKlkHP6IwBh/T9074ocX7Vsua/ZYVEkr7APwtO33OZRMaK/oiYtMjZc1xqXQQ5YcFEV2zFU6+qcoGwUHECZp5QxvUyGcUUPSpXSZAUIwS42unLcd9SG6E9mjypauKU7qhTHD2VYf0pdryP0A1BN1zmRqG3Pk7IOcG3v4iqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769539720; c=relaxed/simple;
	bh=nzQYk89pkPHGP6R9yMxHj/NHVae7UpktsR44AHN8qy4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=I46xct8oEWWtHP1i4B/kpP0YbRi+BOs1ZX/3zULZLmhmzHjJy5sbS/wn7Mpb+W/6efafEKCv9ScreQ+Ww8LykoKeuxIiissHDu8wL11W7741I1EY8mqBb+x/FV/U3cp2tzrshdG85cQNvCbNPUEaFDuMMJr6R4IMoWHWkc8YztE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=epzsbAsv; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-480142406b3so41344435e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769539717; x=1770144517; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KIPiKXcszSKqC5Pe05TjPejSszZASfo0tqdtxtTf+sk=;
        b=epzsbAsvIL55VNst4EVV0B8A6Pj6Ad9utKHW3U5Qaz4oZWtEjMc1adQg2ZV3hg5RlV
         btB6VhRTtBxzjWLK1Xm7uB4vxyToe6k0ynlmSZUtvhQJSAcvtSvrR5hZIS0QhtYpX0KL
         Ci7JtBy09t31O8z+aoe04L2A+Z4whwu3kYKtg252SO+7ZGeS1fR96ROGY7jcm/XlcuUu
         ulENLSgkMzCGozi7CTClBGNdLU1XhYOEL69QwsrCdIhJeBWrCqhRsrp3+2/f4yZifjEV
         tW5ipoUEB0qsU9zxP2OVyzPAvLDo3yEc51mZ/7esl5GmPMfKqZJW/bXSXa2yIsLvmYGn
         KW0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769539717; x=1770144517;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KIPiKXcszSKqC5Pe05TjPejSszZASfo0tqdtxtTf+sk=;
        b=UVbk6gMGhUFm8XbUKtE8Gpm1zXUKmA67U8XDMk85zRXTY6y3u0WuxhcQ9jIJFXvmNy
         H7AeGvYfUvHEI+3bec6iJn/aFCNPsqNzMWgBWnmOuFaydkw1JP2e++B37Qop2utzL9YT
         DK0L3Hzht/KV0onAYc5PPmmvils9BrA/Jxop8GAUu1rdmv15AGGgBHR6T0RvA7jtMMNG
         kf4aoSNyfMbN6pXQi5C1gpFzEQ6eNNfvbDhtEU6fycTwOJqpNp9oEfJESjDLTngR/sOh
         7p6Pgh3q3VJ5KyaOyxn0fbo0gMG39LGR//covJNyE+BXyiMFY4Jgf8wLacVoXcOWW+Rb
         +3jQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWCwYXfffVlHN0vBjCj60u1kV7ti7iW+o0CkE5f+KshjUu8/p6VAcirVL4aOq3gi2LqNNAR2BKGpcu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8PeHf+5FGqizq+FgX8u+3N9lwAM0KyaQwt4FOrQt8bpE+msvf
	DdsB0aE5QtnbxTKOjqRyegAYPuWCUWvZWDcScaJrW52T6oXqLWncVp4X
X-Gm-Gg: AZuq6aL9xFDFl2VYbZnVNDfVokKv+92YykfwcQvmHCCRGMPRMyNvvK2rBGv7lP74yDn
	JOxMo6UQuAbWxoIBaAtInweSugECID+xzwG8gzdpK8AuLNO3d5ckfs9b6Qxt4PTULp1Rzf/qttL
	5qY2Os/Ts4BMDciOjNsfdq1M+fPjIrbUDyWZjx6I0TvwWoI+gEKOMRuk8qgL4Mkz/WgzNqAcIoI
	yzZjdD1PRwhFJ/VMNJmJm5I3wDwQIZJUzvGkYgu1i+gz9UUogENeNpMHAWWsSQQyB/g8ftTpJAV
	BNXDrLZFNalKkPzf5af5Tev8UDytzNKRI4H2zWFNaLPJYhIOvrLoyTwUdP9eoQS3pFKLl+ZXUJK
	RGHnFcH1nvRkxNcWP1i3z2+DiXWj3qOkVEjwSwapQRBxgkjtYNxzJ5CTksPogzNEf+OSljcTEn5
	YPmRGmtigsoCLID9JgP6w0HDNIPCb9v1g4ApLJ5OzYV620a9h/OlZvG+Q=
X-Received: by 2002:a05:6000:1a86:b0:431:1d4:3a8a with SMTP id ffacd0b85a97d-435dd02c1cbmr3380605f8f.7.1769539716838;
        Tue, 27 Jan 2026 10:48:36 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10ee057sm903100f8f.15.2026.01.27.10.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 10:48:36 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Subject: [PATCH 0/2] ASoC: sophgo: cv1800b: document DAC overwrite handling
Date: Tue, 27 Jan 2026 22:48:06 +0400
Message-Id: <20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGYIeWkC/x3MQQqDQAxG4atI1g3ELJT2KtLFdOZXA+0omSKCe
 HcHl9/ivYMK3FDo1Rzk2KzYkivaR0NxDnkCW6omFe2k1Z4tR8cP+R++PC7OpoXTZnB+InYSRPS
 TEtV+dYy23+/hfZ4X9B0UuGsAAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769539713; l=880;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=nzQYk89pkPHGP6R9yMxHj/NHVae7UpktsR44AHN8qy4=;
 b=TJUZT6XopIns2Aq1PkC0y8MR1LmYdMKUSI/PbXI4JnKpP2YxaJmJzDyKFryrDuINikpNhjQxd
 iDhtmZXTcl1BljB5y3BIqfBw/HkpuDVmV3Ugvi5lxIm5dhKFwA/yPv1
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260077-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9A696996EE
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


