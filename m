Return-Path: <devicetree+bounces-307377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YJNCLw++ImoVdAEAu9opvQ
	(envelope-from <devicetree+bounces-307377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:16:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7DA64802B
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:16:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=k7MaFxVL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307377-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307377-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B0C98302C0E2
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB43041362A;
	Fri,  5 Jun 2026 12:11:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985534D9918
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:11:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780661485; cv=none; b=J53rUa2S8qoMYJHc6pADbP3l0huaLVuw2FsXalfTXoGU3n/4CdoCyfssJSFos2qvMslgxi7wppVLAVQs44e11EVKYctwG4chE4+8DCZdrX8XTma8pyDXv9rXQlECQ9p+Jcky/Z+J9xUn377EfwNu4weYfDZAo7EIkxdDoGzMarM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780661485; c=relaxed/simple;
	bh=5RoN9ngqvHdCpUoddEnCEeh8fZSHGeByQdCtjfNZBdU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Tao9vY0t+Qd0GT8YIUeeUZdQ264lWDABfhN2tnL7q9VtvJbjqlxZAuU7J5pBKjJ5eT/jzCL3BqSfHvDPJOfcdrHV8VSCtQjF3/Yw26poRjQR+BCIrrGVdPU8ARL91HEg5s9zrKUr50bxHSdI9xxAqUghgPcMBLEHaOYHaQcONKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k7MaFxVL; arc=none smtp.client-ip=209.85.216.44
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-36dac5d5d05so940649a91.2
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780661484; x=1781266284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5RoN9ngqvHdCpUoddEnCEeh8fZSHGeByQdCtjfNZBdU=;
        b=k7MaFxVLLkHHjZFRumQ6HJtJtN0CUkWylRKdZx/dInv/cuHogVjAsaINPot+y+il1p
         QEbygVdF0VVeKwZ0xNc/b7shhfX0tD44qTmZMcufmeJ/naFrZS8frCXY9LLyoMrm1ZSc
         qsPDK/YIwQKY50dOy6cyrzWP03v05Jv1ULNLYWwCF12eyiLgZW+YKuGJYGuosVPzWcjG
         3oYwr26PTMtTLQRxnnjRdkKMfMQFd/yd9Z4qmepaJLHRH9oZ/ICarcXH27wvH0h620GY
         +XJcDCVYRg9qa3ud1s/Z9UUWw1JGbipCI7RnFKFpMXwMgGIpO4Qt8vhzq9B29q+tJNGO
         gZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780661484; x=1781266284;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5RoN9ngqvHdCpUoddEnCEeh8fZSHGeByQdCtjfNZBdU=;
        b=HBN3RbGI7r6HOUQdONYMgoyoQ+leWxxBS7QOTghnTQtIw6VZ9nZhux9Zx3VLE8GwCJ
         5poIWWKh0AWPp1FUjL8dROmiMev5iLqUqZDN/kvoIN20+DAUmNMHheY24IxStWxX1ZyQ
         X7JldcQNQ+NtyOK9sH0sKcqF4ahSWjMpldNNGNhrAiV5Hn+KLoZc1Wn4zRwBxxcaqbx2
         Gc65W9LsnCCJsfF76NuaasIxyI/aKsyeLp9FsF0WVkQ/6aZ+vmY+zFLj83az3ZM+Ozrz
         RZ2NWQlxQFX6nTp3RfadaSfdkOL76otjpqQ1qHJ/WQNd2QBT+CbwfyTwPXN5zS0zqSO5
         Umuw==
X-Forwarded-Encrypted: i=1; AFNElJ/1JTt2Sk8Zj7XmlwT71PMibOTLkDWkkENRVNBS4WqpILidJ2psd7UADJcGuXNyUP1SI3s5dOCqsT5e@vger.kernel.org
X-Gm-Message-State: AOJu0YyJuFNMmrEkUBHjawm9rcYX44wUN+RiVMka3/zkBMR8PJXkVYlF
	dEgxNMwQnQXUngehH9vOCdnAIYY0kKlj0Aj23Pvp60z4H8+HO9Btr2WB
X-Gm-Gg: Acq92OH0t0W661CZHu1VhJuMZlNr4InL5mZWhnA5yg0rf6z6UzWJYFZ5Cj5MZQJ+ltZ
	Fvko+wvAAtDZEbRheHfSCrtBxif4slQL0KNlxOPhm5mttryHZ9CbrfxlKVwGNP3g6Kn++ADm8YA
	Ju9KJNWWHcdNPkC4tRH6Y/pxRyiQSsYRL+iHAXs8/whFpVvfNEytbfE30HEDCBSNqVvMlCvmKL+
	MDjnK0whAZrcmPvS42/jY1Fn1PhXjzNB/msqka0jVFGerVcmbTJLAa+bK4DSVVK1neGuuc5+x7w
	Q8KnSqznLghaSGJvznFBYCesJtACkLRQGZct+79W9MxubUpj+dlK4piCCyChGqW0u5RAkQKQIaP
	WJQAse7w/oo8YvK81yJ8VuKbFSUDaDrgX3h1nJDDeho3DDPCBR9h4ZzLCR0DwYIlhZ23mTrGV3S
	NUNLdArYIrsjVpdp8r0A1rURkFw+1eJDP2BgINlrhdN7bZaetzhgtgiZ5Zc6dpdhikBJzwfio4/
	a+P4T/sld+qTZst1d5xIbGYfyvAahRW8EtKOIXqdRMoT0Q6iHwDBw==
X-Received: by 2002:a17:90a:d40b:b0:36b:9798:4f6a with SMTP id 98e67ed59e1d1-370eee04b8cmr3336521a91.10.1780661483873;
        Fri, 05 Jun 2026 05:11:23 -0700 (PDT)
Received: from lord-daniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2405:201:2011:e829:4eb5:db6e:9a22:fd31])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6bf903fasm6300497a91.2.2026.06.05.05.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:11:23 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: Marek Vasut <marek.vasut@mailbox.org>,
	dri-devel@lists.freedesktop.org
Cc: Liu Ying <victor.liu@nxp.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Peng Fan <peng.fan@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Abel Vesa <abelvesa@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH 00/39] Add i.MX95 DPU/DSI/LVDS support
Date: Fri,  5 Jun 2026 17:41:05 +0530
Message-ID: <20260605121112.27866-1-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251011170213.128907-1-marek.vasut@mailbox.org>
References: <20251011170213.128907-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,lists.linux.dev,lists.infradead.org,vger.kernel.org,kernel.org,gmail.com,pengutronix.de,ideasonboard.com,suse.de];
	TAGGED_FROM(0.00)[bounces-307377-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:marek.vasut@mailbox.org,m:dri-devel@lists.freedesktop.org,m:victor.liu@nxp.com,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:shawnguo@kernel.org,m:festevam@gmail.com,m:peng.fan@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:l.stach@pengutronix.de,m:Laurent.pinchart@ideasonboard.com,m:tzimmermann@suse.de,m:abelvesa@kernel.org,m:kernel@pengutronix.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB7DA64802B

Hi Marek, Liu Ying,=0D
=0D
I brought this series up on the i.MX95 15x15 FRDM (IT6263 LVDS-to-HDMI on=0D
LVDS ch1). It mostly works, but I ran into a few issues around DI routing,=
=0D
LVDS format handling, and DC enable sequencing which needed rework before=0D
HDMI would come up reliably on the board.=0D
=0D
I don't see a v2 of the series and things seem to have been quiet since=0D
November. Are you planning to post an updated version?=0D
=0D
I've accumulated a fair amount of rework while getting this running on the=
=0D
FRDM. If you're not planning a v2, I can clean things up and send one based=
=0D
on the current series.=0D
=0D
Thanks,=0D
Piyush=0D

