Return-Path: <devicetree+bounces-272367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iI1iD5iRq2mkeQEAu9opvQ
	(envelope-from <devicetree+bounces-272367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 03:46:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0B3229A96
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 03:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C6C7302B38E
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 02:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E49F242D67;
	Sat,  7 Mar 2026 02:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RpcT7mIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554541E5B7B
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 02:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772851604; cv=none; b=mRXZmEb9Y6h8ZtE5qgoLkmLLHsfbOjUHk05Ro9Yk7n+56B8fakxwUkWfT8hjmUKkvbcVKuWPHPWqCYIVgUk2biPxaBp+tX4ndWsIacEhpf2gDSLnQldiumOuLbINvJ2RFV2EFeCkN8KN5c77SuNJLQTixvueKU6pd7ONeCE7rJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772851604; c=relaxed/simple;
	bh=qltDKB4UBJV3q00+O7k6Bwo/W1lDrad3Y7PXDd9U5ks=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=s0aSd+bkJRYSqTmJX7F8SjjuFUYxy5u+riUY/zPx1tGOv5Lxw/hgn5N0OUHu+pyZ4ERhJzPFNruq6XXW93rvM2zyWoyK55AXA0fQc7Qv7Hb3t/qOJtu9eoQvNlOoWCLDkvbTzMLutUnxPoY2UeDb7zWWbqRiqCXROq7mcvO802k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RpcT7mIh; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-82748257f5fso5503868b3a.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 18:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772851603; x=1773456403; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g8td1Sjlb+KCtwLCz3PZqZLQsbEXKvM1x0KvB39hIL0=;
        b=RpcT7mIhDY/F3z0lP3g7C/EVqoXXTM921bZe/AaFDCtz8HPPzHJISBKeM2QymypeSK
         fIx7E7Oos2QsmameeV1ZHsRpFhmJeYTDIPLnartcy9tn8Qz0JtORQFM8+AaOnDsrcdeQ
         8Umbp9LZ84R/2yHK3P/x6IZGwXPPOReGZJ4AF98G1zEu5+cVczkHQBUpLb2FtJ7aulI6
         nAOpB4DY/tX6vg1KjZxKAhgvTZKCc8M5vl5lqNn/L+m3RPBl/o4dVY5nQQNtIvKx6n/L
         ZCJkJexjRqIA33PhhzDSC5v8qvIFcWZJRzCLnEEtl5RFzD9R8FtHRG1gNaoayOnHry6+
         xbpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772851603; x=1773456403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g8td1Sjlb+KCtwLCz3PZqZLQsbEXKvM1x0KvB39hIL0=;
        b=U6c6ZPKTlp11VexNG4mBzrDReomn4sEAG1cuJ5k+YVqgoO0gsMwgfgMD7pmE/vyKmn
         2ZalS4Sez4V5bJV/MLNsaNJcZUJ1JbUcwKIxfcXZD74lnnCApTeW7wWiIHHOIqbGsrA+
         +SDyZqsPutXd0W9zm0/UzUB0RdpQJgvZkXllkvXYoIHws/kJapEfwUhyRfvOconsI3gF
         Gf20CMMpBP+RP/M6mQw4Bx+NLzGGJ6jG32ezU0raHQCxtYR/mWiGzF3TCS8uA6sgP4Tc
         PJDdsFYJn0MvtTY0yXid4HAlIqsoneVQoasOOuwmfc1tMndanVvFzGP9FCtzcV2MuUw9
         2Pxg==
X-Forwarded-Encrypted: i=1; AJvYcCUt5OwJKclWgDx3sI1WFepZViSzcdZ5L+9lkmjJ1xOBLZ/UOlqRlBT8lqV67Vdw5EGjqt7HqhK5GUhd@vger.kernel.org
X-Gm-Message-State: AOJu0YxyLxK35hqqvM1NN61m+9cVYdjOpUQ8nk6P9DeH6Z1B3L6rhOK+
	6P5fMcDuK4VVFM88FHT7hLKJqwmcZso3uSq16ATALY/rit5qcgaBpddW
X-Gm-Gg: ATEYQzwbRHFnf/6rp4BfWMlY4aPy5rpn/7Zyo1KEbfNn3bmL4bmzG/gYX2nJnq4DqIP
	Gm2gVQelWbb4LVKN5MOLStkSTel2GT7WejdNdcehyuegh/UH+WCTZxj7A7PP/49wW+ZZmqIYPG7
	XsmtWpwWPSov/XZz87AZ2Fnq6eJ1OG8niVUYESrA3NMixbGtfGGkQ5UI9Ocgm2/CvJ8DFK7yBHA
	lUIcjBm8Xf4z/xaDvS9Pra1/BlAI2x+/kdDg26L6yJahVIA7TfXPqBViXIlXBDDVVOZPsL1Ms2Q
	1WILOpxiJ2x4okj9OxUqdmQazS2h2SgHILypX2V3OPIVSwekNzkZeRVW5mHRxvlQvRrA2zI74Ur
	8LTNBaz7laANR5d2DBocbC7OCcH/cDQYIOVXdMSYhW66pLgz9E6qaSjWvhhzxKZCJnC4PQHez/i
	RKmlgIeivaTQOVkGLCI9UAMnhUkmd7GolTereqnG861NCtlCtf6E9zuEjvKo+wJsyS0FWx94leO
	bOMp0fXNKOY2MN0tfkp1VveKggn
X-Received: by 2002:a05:6a00:2396:b0:829:751b:4b06 with SMTP id d2e1a72fcca58-8298583ccb1mr7469171b3a.21.1772851602731;
        Fri, 06 Mar 2026 18:46:42 -0800 (PST)
Received: from localhost.localdomain ([2001:ee0:8207:3134:c1c0:ef7d:b1c8:1597])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4866763sm3086459b3a.38.2026.03.06.18.46.37
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 06 Mar 2026 18:46:42 -0800 (PST)
From: phucduc.bui@gmail.com
To: krzk@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	geert+renesas@glider.be,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	jeff@labundy.com,
	krzk+dt@kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	phucduc.bui@gmail.com,
	robh@kernel.org,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH v2 1/3] dt-bindings: input: touchscreen: sitronix,st1232: Add wakeup-source
Date: Sat,  7 Mar 2026 09:46:34 +0700
Message-Id: <20260307024634.1479-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <45fc7e39-3174-432a-9994-9de528759348@kernel.org>
References: <45fc7e39-3174-432a-9994-9de528759348@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4D0B3229A96
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,glider.be,wolfvision.net,labundy.com,oss.qualcomm.com,sang-engineering.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-272367-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bootlin.com:url]
X-Rspamd-Action: no action

Hi Krzysztof,

> Do not attach (thread) your patchsets to some other threads (unrelated
> or older versions). This buries them deep in the mailbox and might
> interfere with applying entire sets. See also:
> https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830
>


Thank you for the guidance.

I would like to apologize for the confusion. While I was reviewing v2 
myself, I realized there were technical issues and immediately worked on 
v3 to fix them. Ironically, the fixes I made in v3 were exactly what you 
suggested in your feedback for v2.

However, because I was so focused on the code, I sent out v3 before 
checking my inbox and seeing your comments. This led me to unintentionally 
repeat the same threading mistake you had just warned me about.

I have now carefully read the documentation you provided. I will ensure 
that v4 is sent as a fresh, un-threaded series.

Thank you for your patience with a newcomer.

Best regards,
Phuc

