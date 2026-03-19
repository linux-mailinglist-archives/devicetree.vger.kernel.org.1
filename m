Return-Path: <devicetree+bounces-277688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIwkNivOu2mXogIAu9opvQ
	(envelope-from <devicetree+bounces-277688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:21:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4374E2C9652
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:21:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8131531A3CE9
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F2A3C061C;
	Thu, 19 Mar 2026 10:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jP8Yk35A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529EA3BFE56
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773915489; cv=none; b=V7iOsE6bHNx9tQ+mLJF4JIyd+7p/HwFKOxdlxQjqoshIIv7f9o9hvKnH9sjfuMX7QvKzNw6xV9rIq3hRgpQJGIbuHIcu/N8FsRZjL4eRQZvePjfT4xGdj376ul+6eVq+gCofX5uyFLjgDZZ6HQmz1jMrS62z8XZtD1ITjYtxWBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773915489; c=relaxed/simple;
	bh=zKKSyw5/Du6rnISPQiuZvTUubq+6uQNABijiWwGz2pw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dJYXr9/tqA6ZN4hXluQ5djjyFR3CaLa+1MtyR2nCXHtd9wG4pjsx428A5g5pSF00j0F9WA0KTI07KjCA7ZcOQN1qDmo5dZK6xAEcIkNJZG1vYh1M20Kzdf+StTQ41dG+HKFQ7AcwFheFJvkOSNSFsurDT8MGX/SaIhhfhFWKdyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jP8Yk35A; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-486fb112c09so3707575e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773915482; x=1774520282; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vtI5DygtRvulSb7YE3u7LJdebCzSARmgo/E7HSytGFo=;
        b=jP8Yk35AlMkIYNjWh2CopBtFNDZOVR4KSTb8LED6yGX0vQ8S1w/UAf4RaYgVoHSayP
         tjhLQ2ZZvSjGuPp41Ewxkp/8RwKBeK7M8n+JghBChOKs4jxMQPidTh+Cqh7prY7z7YEw
         j7yowQfzmkhIJtZi1k55AES7tHCcxY8T5KTuRVoFJQEx4ewpE/H89mVezLKsYgXQpXoN
         +Z/lZqXKEeHK83PisM6ma9V9wclFxLe8GhNo1Xdf7BtonWKLptJ2rzHVaxwKxKT93zbt
         4ABJxmjGNbbDc4C/JzAbwJMw3Y4MTxpxbvwhC3eNDDgBj5SPmGWLdrG0jko1+qNMO4IM
         XL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773915482; x=1774520282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vtI5DygtRvulSb7YE3u7LJdebCzSARmgo/E7HSytGFo=;
        b=KH7FhU0cyOtWt6bgjxs3T0xmZNpRTyCyrD50mDrjOZ9BCOF+S/x4C2H1s4Hxq9siNO
         tezxHEbyhyp8LZX+wZfqNT0l6G972EdBLd3MQF2aP3FKyGI2XaUp/FT7TtI66lBQgQqs
         0TYS6hGZENFuhj68qduP4SCv4wf56ozs89kPh5L16LkeFHF1LoPuijvjEVPuW/n3tOcr
         nNd2aDIx4xY1/KUYgrAXRt7uDY7x4FKN/k/6cfVFiXmERoUfUyr6T/wr9n4gIYJv5S59
         e+LaCMDtgpX/kdk8N5rujWZnHnt600yLG15QNLDt9t1pWqoKmOC9bvv6GPo13meubR02
         VjgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhUr+K6j/PPW6A3Tbyy6DVoQ2k4iAmncETfbOZWxlnaHKKqI5CZPz9LYmZtKJCQwE5FfyUA409kbkq@vger.kernel.org
X-Gm-Message-State: AOJu0YwGV0twiXM6iLet9WKRhUBv1GMt969QZlm/dqio7vGsLZYjG2/E
	xNX1GqZlh442s213YS5CrrvToJj1ibYizDUltlgG+cuR2vzhJJ8v8Ux7KClj2gvXRuY=
X-Gm-Gg: ATEYQzyKTRz9Dn2Du3uaYQVtvSPP07+SDJvzQtfLS6UgOMla/c6riuEeoAIxKOGGEfS
	5K2/7OTqeOuT4yz1y3uDq8rE+JihZepctIPnjWCsXmoIsH8WzidYHgPT2yPBuiNZ3xTbBgikiAb
	mG50Gej6jthzGAYz06wN8myehH+uDG1J8KAvy7n4WgCmuF51FbMzSOy1zohhMRbon5RnNtkKL4q
	qWbLSpfOMMBTV90mmPur77NeDsKr5locMggDJg400gVW4GncL+SFJw/9tInGCPGAOnBtsDumnMI
	AVvowdTAEwmlOzNgwbf9uo5LWV1FN/eVTAueIzFtVADq8q6Y9emSFRm+T43mLIdJisua5NAHB8C
	i8YMdsJCFftI4mEB5PRuSQSrGYraPCbjs2+INkf8hsycvaVYqBpkFDj9YdyNG8jj003+fzzWSrl
	PrBUgVhiqeyy2mQCMr5XvNBmfKSLV2ieBM8IZS+A==
X-Received: by 2002:a05:600c:4e49:b0:485:4136:99a8 with SMTP id 5b1f17b1804b1-486f4441072mr98897205e9.22.1773915482135;
        Thu, 19 Mar 2026 03:18:02 -0700 (PDT)
Received: from debian.levillagebyca.com ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bb1b38sm71969575e9.3.2026.03.19.03.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 03:18:01 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: shawn.lin@rock-chips.com
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se
Subject: Re: [PATCH v2] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
Date: Thu, 19 Mar 2026 11:19:11 +0100
Message-Id: <20260319101911.31348-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <shawn-reply-message-id>
References: <7008e941-e4b0-a060-1cd7-55070fd5831f@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277688-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4374E2C9652
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026/03/04, Shawn Lin wrote:=0D
> IIUC, you are using Claude to help generate this patch, please=0D
> describe it properly, for example,=0D
>=0D
> Co-developed-by: Claude claude-opus-4-20250514 [1]=0D
> or=0D
> Assisted-by: Claude:claude-3-opus [2]=0D
>=0D
> [1] https://lwn.net/Articles/1031473/=0D
> [2] https://docs.kernel.org/process/coding-assistants.html=0D
=0D
Thank you for the guidance. I used Claude as a coding assistant and=0D
will use the proper tag in v3:=0D
=0D
  Assisted-by: Claude:claude-3-opus=0D
  Signed-off-by: MidG971 <midgy971@gmail.com>=0D
=0D
> There is a missing pipe clock which should be fixed. Please=0D
> refer to David's patch[3].=0D
>=0D
> [3] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47=
177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1=0D
=0D
Since our board-level &pcie3x2 override replaces the clocks property=0D
entirely, v3 adds CLK_PCIE30X2_PIPE_DFT ("pipe") as well, consistent=0D
with David's base DTS patch.=0D
=0D
I tested v3 on the ROCK 3B (kernel 6.19.0-rc5): pcie3x2 probes=0D
successfully and the NVMe device is detected at 15.75 Gb/s. The=0D
pcie30_refclk clock appears in the clock tree at 100MHz with pcie3x2=0D
as its consumer.=0D
=0D
One note on the pipe clock test: CLK_PCIE30X2_PIPE_DFT is defined in=0D
rk3568-cru.h but was not yet registered in the CRU driver in the=0D
tested kernel build, so the pipe clock was excluded from the=0D
functional test (pcie3x2 probe fails with -ENOENT at clock index 5=0D
when it is included). The gated-fixed-clock node and ref clock were=0D
verified working. I expect the pipe clock will work once the CRU=0D
driver registers it alongside David's DTS patch.=0D
=0D
v3 is sent separately.=0D
=0D
Best regards,=0D
MidG971=0D

