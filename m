Return-Path: <devicetree+bounces-326556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ygHSFdC3VmoYAgEAu9opvQ
	(envelope-from <devicetree+bounces-326556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 00:27:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A66A6759391
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 00:27:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b="MAsO/U7h";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326556-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326556-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D80B3142765
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A50423E98;
	Tue, 14 Jul 2026 22:24:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 910DE3DB980
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 22:24:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784067875; cv=none; b=p+Qj/hnn62Hfphw+qB+ik/Mu9Z2fUQeJihCdNpJO0gCRtehp4s20mjiPfnesmnAQDin0aUYcbSIa0xwk1VfWJqhVCDBwiiNfOY8+AJF+FeFcJP5ubwX7WJnS0FUiLluBpnMwWgTLy/ezb1d+dwibFh0kn6Zph1/7glym6b6G6xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784067875; c=relaxed/simple;
	bh=FN81vVRYQfdR/TDhA7SCFC6uiazv8rfChXbSb5+/SD4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=CViuFMT3VCaAq4wfQZjGuj3BkgZRE/xyTH7XfzgTiayuc9OIsyg04Z1NAoBM2kNtwpYRDiH59+dt9swh4yyDOtjdEs/pW1iImhM/7NHgu350C/9oZ/0j9gQ4l3bDtYoJtPWkHTcMIlmp8np4Y2rghp9lGkRcIW93xHOC5EyJUfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MAsO/U7h; arc=none smtp.client-ip=209.85.216.42
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-388b404ea89so1405993a91.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 15:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784067873; x=1784672673; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9tetAXGJGm6WY4YSFyXOkWGhCtbJ9Cx/UiZBqb92zmI=;
        b=MAsO/U7hlK3pr1eklYh49v5qavE1Go/V2C5iBLyGjtj2ZpGCFWp9VCZ5g+TAupXE9E
         ImbuYpS4Nq7etk8+rmMDgIjy7RiowFa6SKZCBBCtNvsNpjCcF/Icr15Dh9LIub7Rqt80
         okEDFaNWGW097XDE+qXr56qMhTItQjYej8mMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784067873; x=1784672673;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9tetAXGJGm6WY4YSFyXOkWGhCtbJ9Cx/UiZBqb92zmI=;
        b=IB4Y+Vaude8RULug70YCMpqXe5lp0MueLMmP+fKHWjlevyLIh3u3Cr3jzhJ9cX6Tb+
         4tIdinoWA4l5AVhv7kVNL2DFWWqPwiry36vasHWknAL2cNZ97BSFjF0LzcmRk/VAlxIP
         qAVJ5w4J14Y1IvpnwU/KvnNo0zgVXV5hVAG0/AQN/T7GJ3nXyIjkclTcCj/uGT4UzerA
         KFA1RyfAnWh82ocptExDI9IwYn/9aCooIDQTMyVZNs03Z1b6yT/FQWaZJVnln04EiBWc
         uXujVM7NvK2tFm9g6GpNkoEs3e187NfueXWqHuIbF8z0Xb0Yo0rHB2XUEqUtN8qyvPBU
         l+7Q==
X-Forwarded-Encrypted: i=1; AHgh+RqkWwaVyqEvi+TE5M26FwOV0PvSk/yzbzYsMfOdFUIAZE36O+it0tc8vmReUtUUK9Mn+NrM3rdmOc5K@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp9S2joPyrvIhbPBYagXCOqhmhjL5T9NMaArOqBu2r7fQT0gkY
	D4ymCyz8hSeeVVK1d8/SPsh5cg/YMf+qZ9rnBPfXt8OS3HzdFjYkrUC8jgXDTUNqFA==
X-Gm-Gg: AfdE7cnuK7RJ0rM1x3TR1HhkMs+A5VZixUdK1xkpglrhw8ir1FZU4VbplPVSZW9sIay
	EGtlXx4dq8pMFxulbBBc67qk5SwnRR1dZDmjKT/Vua3kIKGDBH13ziAegiA1He6IxNFoKrTguht
	Bgzxrhw6jqc5nOxHiLHL9UW+4qtPQOwjWwzkC+pQjpJmTS/UjwEXCLTbPcBAFJwj4oXDAa6aHdr
	Qzuepnd64OZ1Q4jwNT/Pa7zZKkZ6rHatNKBRKiF0vuh/p48dUs1ICgVXpsaobSlJLdNHB+at6Vr
	1Tos0REYvezaE9MPsXb8MFARAfL11UjF7AfnJGPqvb4xkQ7nEM007TrmjWKmH69DOBwe4IUbGOG
	COuEEe42xV0cwc8vtD5TXue6msHEaB8a3OK7raR/vPcZ1dIG04iYTv2g9TRLBJpJlJ12fqNG3EP
	vuUjNRqdJ7g/ckZGEy97FC1lVU42PryzLoIWpo3c6j0EJv57pfuprHKrdyR5WA+a/4yEFbvA==
X-Received: by 2002:a17:90b:4f:b0:369:7491:7b24 with SMTP id 98e67ed59e1d1-38d13f5fb5dmr21455803a91.6.1784067873033;
        Tue, 14 Jul 2026 15:24:33 -0700 (PDT)
Received: from dianders.sjc.corp.google.com ([2a00:79e0:2e7c:8:32cb:eed4:7c:dc87])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31189cd8234sm76540741eec.9.2026.07.14.15.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 15:24:31 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Cc: Joonwon Kang <joonwonkang@google.com>,
	Subhash Jadavani <sjadavani@google.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Lucas Wei <lucaswei@google.com>,
	Brian Norris <briannorris@chromium.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 0/7] mailbox: Improve the mbox core then introduce the goog-mba driver
Date: Tue, 14 Jul 2026 15:21:39 -0700
Message-ID: <20260714222338.2965707-1-dianders@chromium.org>
X-Mailer: git-send-email 2.55.0.141.g00534a21ce-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326556-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:jassisinghbrar@gmail.com,m:joonwonkang@google.com,m:sjadavani@google.com,m:tudor.ambarus@linaro.org,m:lucaswei@google.com,m:briannorris@chromium.org,m:peter.griffin@linaro.org,m:andre.draszik@linaro.org,m:dianders@chromium.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:from_mime,chromium.org:dkim,chromium.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A66A6759391


The goal of this series is to land support for the goog-mba (MailBox
Array) IP block that's present in Pixel 10 phones.

As can be seen in the device-tree bindings for the goog-mba IP block,
the mailbox IP block in Pixel 10 phones is fairly sophisticated.
Notably:
* It has hardware features that support queuing, meaning that more
  than one mailbox message can be pending at a time.
* The "channels" in a given mailbox array aren't homogeneous. Each
  "channel" in the mailbox array can have a different amount of memory
  for messages. Really, the "channels" in a mailbox are considered to
  be full single-channel mailboxes and a grouping of mailboxes is
  considered a "mailbox array" (hence the IP block being named "mba")

In order to cleanly support some of the sophisticated goog-mba
features, improvements are made to the mailbox core. Specifically,
support for mailbox controllers that can queue is added and also
support for mailbox drivers that have more than one sub-node is added.

This is a fairly big rewrite from the downstream MBA driver shipping
on Pixel 10 phones, which awkwardly makes due without the improvements
to the mailbox core. It has been lightly tested both by porting it to
an experimental downstream tree based on 7.1 and also by running it
directly upstream against a stripped down Pixel 10 device tree.


Douglas Anderson (7):
  dt-bindings: mailbox: Don't require #mbox-cells to be 1
  mailbox: Allow #mbox-cells = <0> without specifying a custom xlate
  mailbox: Find a matching mailbox by fwnode rather than device
  mailbox: Simplify circular queue math with mod arithmetic
  mailbox: Add support for mailbox controllers that can queue
  dt-bindings: mailbox: goog-mba: Add goog-mba mailbox bindings
  mailbox: goog-mba: Introduce the goog-mba mailbox driver

 .../bindings/mailbox/google,mba.yaml          | 216 +++++++
 .../devicetree/bindings/mailbox/mailbox.txt   |   6 +-
 MAINTAINERS                                   |   8 +
 drivers/mailbox/Kconfig                       |   8 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/goog-mba-priv.h               | 108 ++++
 drivers/mailbox/goog-mba-trace.h              | 183 ++++++
 drivers/mailbox/goog-mba.c                    | 567 ++++++++++++++++++
 drivers/mailbox/mailbox.c                     |  84 ++-
 include/linux/mailbox/goog-mba-message.h      |  38 ++
 include/linux/mailbox_controller.h            |  15 +-
 11 files changed, 1209 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/google,mba.yaml
 create mode 100644 drivers/mailbox/goog-mba-priv.h
 create mode 100644 drivers/mailbox/goog-mba-trace.h
 create mode 100644 drivers/mailbox/goog-mba.c
 create mode 100644 include/linux/mailbox/goog-mba-message.h

-- 
2.55.0.141.g00534a21ce-goog


