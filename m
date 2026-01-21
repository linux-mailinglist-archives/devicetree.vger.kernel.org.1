Return-Path: <devicetree+bounces-258131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMmjIdpCcWn2fgAAu9opvQ
	(envelope-from <devicetree+bounces-258131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:19:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 786145DF1A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F41E8700DEB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1128633B6E3;
	Wed, 21 Jan 2026 20:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ENUOTtrM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FD72773DA
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 20:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769027413; cv=none; b=N7IzGpQsE85kwjQy7bG62gS9tf8vLYxudbP9vyDzdfbBujQNDyGPxPUmaJviBDXnXByrRjHiD9PpZxI4MmIMWNEZ8d9JUpXd7pR7bmgV4HSl3ZHE7jhPWfF/YHVgT5zkIsryZ5uJ415KO9ZIxM4SkQ/7QywtyVibpPrfAW5RpKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769027413; c=relaxed/simple;
	bh=4lsasK6r3BFurkvyjTpKnNoGgY6pcxvhJBgLLF0gQQg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=keh+lS/lY4B+Vneic2DTFltDPMLJxuefIN8Vur696GXx/2qC+6tLsKCkHrZb7OrpZHxH7wLQibdq0+MVqLrZOY3z0tkh+gughOwwYfJyd4HvlJovGSi6FMckYpPmrbr9ArFA1NWUON628VAzV67TdhREAhpl1QYu+EDt520RQ60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ENUOTtrM; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4801bc32725so1905235e9.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769027409; x=1769632209; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lsasK6r3BFurkvyjTpKnNoGgY6pcxvhJBgLLF0gQQg=;
        b=ENUOTtrM7LMgTbJw08r96I1IElNAbuB22zq9uP+lYaKauF/UNBszeXTgSpSDwlWI6K
         E2ZjeA0Ntr6MhaDEmFoNGyV8mPLADdM/NQ6WrEDr7Kc6RCARE/HXEWc6/aIgEOzAi2/x
         NVjPvwFjNvkFF2QNqc9nzPLti2ZOLdchFLZ0Xmc7llgE/LX8YC5dNlpemY8eljuHWukt
         gfMLzSQoP7J5okZ1U7FgoparaSJNgkB63aACZn7dnMuDkbX5xR2g/zbWXSoWdlJXQXa5
         AKCjj8otuIROi0blH1DiDIq3MrGjB9LBODgnmjqD7QwylTtOyI4a/fXlBVa8bcyqmJfP
         ucDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769027409; x=1769632209;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4lsasK6r3BFurkvyjTpKnNoGgY6pcxvhJBgLLF0gQQg=;
        b=uJ8ODQSfaaKs/Qo6SBTg85k0edKIPFEfHi+K8HGgX+ixm1PKBqNtrY8d2aoRSBugJi
         z4L/5DVZyISBGwP94hFmG2o6I02NVIho4MCN6TtrGx3xTOrptSytVCC2C3pmKmY9w6JH
         Ztll0BNvty3mZrztHpiKkFSHSn58Bps4mRewJYx2Yc7IGREZhWzy+AAB/Lh56g1I4upE
         0GpGDkMIC9rBVD8SH3sn2Xh3nt3jwpWF3oVK7ZozFZLqn4yKDgXcmiWF4mb3FW0xZ/s0
         Osi45ECpz/kMFzwdZ/mikWCQFtJHWGDqBcoGCzckDnBT+pkhBccQ8oABpgBFhEJgnWve
         5G5w==
X-Forwarded-Encrypted: i=1; AJvYcCVXAhCDpBgphYKsbbb5Qkk/0GA0I+ft7vh9Ck3K2uzpFCgj+sIzgRHxOLhw/oY5h+mjhoVVSVgksfzD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx99B/2FIu5iAjXLUW6Xokr/gEYhEK9TycUUsS1z4uu1IN9l7GO
	iIQ5r5MoRo83NeoJSSSfJsfcRw+LpahYHCdpSUfHHJhRQtaXXAcFxweu
X-Gm-Gg: AZuq6aIU7GXdIgqISZ0Bq8Ece0hYAq/XY1tq0qdHQMMPX7CVbqy928IgsRdUrWcR+H/
	90Bl8x8WIAqsUIzV37fhqymB5TfLd4/xjxEcrFnSi1lu7vZ6orXiwoLpJNH+o/CCKNGh3Or4OWe
	oA44O3WJOdudP3394Iv7Uc6syKatV3rBv+QUwuL/hnFzqJMUEdZnhQcOE3wOMq+Yb5/3YUkDd0f
	mcGZGJpMyjmES5Zm4PoAQFAUPr+fwKNn7pth1sxqP6DDFrwncSCCz5w9Gegs7rrUWrkpA6vvk8B
	+IhY+LW8IhaFGkRsy65y/uCUBxIuF3Lspssd0MO5m0BGZN1jK7XY5KQ1zjbcbWp7ggm1fjACV++
	blsRJgQLEW0tgk21P7yF/PWnh0A9s/Y59CILezpT9Qxt44681v+OUWMIM5ucevJopyONim0kui9
	zvohUbCfz3mzGmbKzUtQYVZwFKmw==
X-Received: by 2002:a05:600c:4e15:b0:46e:37a7:48d1 with SMTP id 5b1f17b1804b1-4801eb181a8mr273892025e9.34.1769027409096;
        Wed, 21 Jan 2026 12:30:09 -0800 (PST)
Received: from unknown.tail46804.ts.net ([78.209.12.160])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4804703b59esm13706835e9.4.2026.01.21.12.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 12:30:08 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix regulator and SD settings
Date: Wed, 21 Jan 2026 21:30:05 +0100
Message-ID: <20260121203005.13529-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com>
References: <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258131-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 786145DF1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 21, 2026, Konrad Dybcio wrote:
> Why regulator-always-on for l3b?

This regulator powers the touchscreen. Without always-on, display
initialization fails during boot. This matches downstream behavior.
I can add a comment explaining this if preferred.

> Why isn't sdhc_2 enabled globally in common?

jasmine and platina don't have SD card slots, so enabling sdhc_2 globally
would be incorrect. Only tulip, whyred, and lavender have SD card support.

Gianluca

