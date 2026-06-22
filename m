Return-Path: <devicetree+bounces-314175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XnyxFWm4OGr+ggcAu9opvQ
	(envelope-from <devicetree+bounces-314175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:22:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A64846AC807
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:22:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ju4FO5wP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314175-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314175-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B37743009B2F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 04:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44686352036;
	Mon, 22 Jun 2026 04:21:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E8A3502A9
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 04:21:55 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782102117; cv=pass; b=d4o6bKlf5sB+QuCsI9kUV3A9DaRENlPIS+BZPbcJgkkXaAB4EOfz5mYyCgkDYK69rJQR38iMEzF2du+j5jVGPNNAihNQ2fd2UVYLF/TAx6flL2vJR5cyS2oAOt9OBBlr4LVcFPfn7BaJOT4lFUHihHonU8mzVwcoCyvB8zWUpWw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782102117; c=relaxed/simple;
	bh=xgkPZSLQAYYTDOwc/lm7EUbcBNigliopnQ06zjJeR/E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r7j8aPxVYXZ5wL3usMd1NVF5Qw5DQ6zWfCXUxLr9TRuXypl+8wPnlAsDdhQc+c2ylF2IW8wB9UVWUg+Laswbn0M8H/7FXtAfHJs+0v0TuGLXKTByqRiPae9CHmKtcHOESAOA1jho5rXGMk0ggZ/5P6HDnmY0PGWGzwovF9LAQqg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ju4FO5wP; arc=pass smtp.client-ip=209.85.218.41
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-c029505b389so827394166b.1
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2026 21:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782102114; cv=none;
        d=google.com; s=arc-20240605;
        b=fhRLsjLMLD241zJotJjc06hPQWKDk1tuQwnpNrbBpALkZGFiaaBWNYrhk1i1vR8QDR
         O7hPhTyz/awMM8N8eWrmF9Kd36BBSbgly0LwXILm7ilYNXrTkRoRM8i8QEg69bXCLJBe
         oc8VnAikj0+QRgrk9+EBVBVN4wTisievP55qEZW0AusR3WVZvN9dg7fY5f1NIdqIZhEw
         pXwW9bpscX29sjqYXX0GX+E26oRidAsE/bhZ0kiWxL9M/eqo23P9+q2a9XuMg01WD35v
         8dnPy8qS21xGdfHcXaRTmKWbj/4KxjZguhnO6DZ0VdKcDf5vdWUAqdeSZppWkhOcGBRA
         qCIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xgkPZSLQAYYTDOwc/lm7EUbcBNigliopnQ06zjJeR/E=;
        fh=Ooo/4mpo3JwG+4/iGub7p4p7KbNZlvCERUe4IiZjg2k=;
        b=eaXk0xbjfIZ1ayXEO2PAtG5aNEwfLleurvlZDTVMX7lpupSUtyaeyP0GNdKfCko/kV
         vjXt/gnzfZhG+wLl8bGoELeFdeR0g4OObZBoWTlk70SMVbYMvAJPIF/NMPvtcUpOelI9
         Vw2x8VVQJat1Ax0jkSP7VFrua91XKhyAo7VHahGPclxCsGMQNmXVwKJDwAjceSu378a7
         lVHGRPU1LEOrkHKCRPAB1KjTRaFvHEzsNinAH/DkdpfrDbMYFjT5vFhUQs5mexOxCG3z
         ZIKJLKciw91WESWuma1QcjeJLqYPAnZoIB7oNOe5GqS0H35Ou03yzIt2O4b8RMvFYCpo
         3jDA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782102114; x=1782706914; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xgkPZSLQAYYTDOwc/lm7EUbcBNigliopnQ06zjJeR/E=;
        b=ju4FO5wPndnkUF1/Bqy4+nbe2fNBNfoCmzv72n9ygmQ7PvbKHyzfUyzzSl69wbj/wv
         Zr2kt7J+PRExGj+Jn0WVhrG135CLdb+x2ghEiNUTdWI3xmHvGJXvoTezdPBpsPcScWrP
         kG8nQFy3Xtt8ZHhFvCzyC3TKt+cjU817rqN37NonV+FT7p2eO6AHkqPudFoUfOh9JjMZ
         cejVsryXM38Dp6jp8FsXz3MFeM3tqF39RJlOEsmhpKKhuBVo2PcrlWeDWC7tATSTG0Ly
         gZA78oCSwi3Xk6oKbSagd20hgI7yqcgj4QjLpfLcMGaUVI6ixEPtkld+vj57pZpe4Wp3
         bvPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782102114; x=1782706914;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xgkPZSLQAYYTDOwc/lm7EUbcBNigliopnQ06zjJeR/E=;
        b=BEaSJuVqG/9lDSxEXFnhHIYlPtC/PckYPcGFtZgz06lj8iIk62kf9Zq/G8DZzm6d3e
         VS2UAJwtnJzALvyIfVh9TAXNm72vYtBeHiTM0XrG3+bzlsQvSn1vO9c6koG+4cO8UrGF
         Zs4AqCdC+dgfzBd5684N4eksZvx2NBdJkRWCCFuminoRrth78cCnWKpEdf4u5Jbbxb+3
         +v6Gfep+cJTOO4KLcWRZ5piqUAI+9KKOyLL/4rggtjMWnooU7BvQipEuItkx7C7yVFHR
         ojd8L5MJECTCCEiUPyYbT2jB8lLf54s50fBwXJLLMuhJ3EBACHhR2HBg0knHXnL7grqx
         zsag==
X-Forwarded-Encrypted: i=1; AFNElJ8HyDTCcTLvEr3P8aplIRTC9bME5PEa/yPxHsgF9p5DSLuXXZ8bXoufs+lQqm1usFPNJ6JO9p24BEwt@vger.kernel.org
X-Gm-Message-State: AOJu0YwMXmyf7g1Z5iymJEnXi3/D6qzTRzm4hx39IjKiYH0ZBrExdK1P
	Hyfa5G1lFjELDLxd5bGhOQKTBm2KBqL/vzNNXA7/5vPR6HrGghHH7YtQnJvY5n/rMxDcBVEyxVG
	wV5BM2ytZs0xFQnCKfDzb3/qm3LoIahQ=
X-Gm-Gg: AfdE7clnWXf3+CaOEwPhGyAsrEW4P+rbHchKVdBe7+Se+W9bQ4Y05bZX35iLgxqMHR/
	OCLMbEiqNTZgU1UAj+q0rVg2h3H8pbc1FHQzM6vfWn6tkZbog8SoaIwZzByEL4zaS6J23vTj/I/
	26npXWiCvgwU5lN2fqXMQ5SFI41Dg9L6iGGPavD6v3aYyo2EbqIKEHmZB2exkrn/+qVw+3FAO1G
	QvSEhQqRSoIvjCNxLKfdPla4fBNmUd0Kz/nuIgtoR7CoDmyl2N06HWIQJIjGy+wq9NXVz/P2nNG
	Ewaw2MTnZa4Vz5wWHqipasNGqzk=
X-Received: by 2002:a17:907:3fa9:b0:bfe:ed35:e854 with SMTP id
 a640c23a62f3a-c09b9c79152mr574158766b.25.1782102114021; Sun, 21 Jun 2026
 21:21:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260621085209.52651-1-adi25charis@gmail.com> <20260621094312.53655-1-adi25charis@gmail.com>
 <548d66ce-d01e-4c6a-a77e-7d61378a1c74@kernel.org>
In-Reply-To: <548d66ce-d01e-4c6a-a77e-7d61378a1c74@kernel.org>
From: Aditya Chari S <adi25charis@gmail.com>
Date: Mon, 22 Jun 2026 09:51:42 +0530
X-Gm-Features: AVVi8CdPLwVQZLB0JiWV8CFDlR8dIv9xVka_w61GnzYy2nzQqPQ5o65iXNStMmY
Message-ID: <CAKt_FXsiXv7dai+F7cT=GNvETa5_42su9G1ev8+_fph0Bg5EbA@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: misc: add binding for Xilinx AXI-Stream FIFO
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org
Cc: jacobsfeder@gmail.com, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	michal.simek@amd.com, lucas.fariamo08@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-314175-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,amd.com];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gregkh@linuxfoundation.org,m:jacobsfeder@gmail.com,m:devicetree@vger.kernel.org,m:linux-staging@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:michal.simek@amd.com,m:lucas.fariamo08@gmail.com,m:conor@kernel.org,m:lucasfariamo08@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[adi25charis@gmail.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adi25charis@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A64846AC807

Sorry about the pace - jumped from automated lint feedback straight to
a new version without waiting for an actual reviewer. Won't happen
again.

On the staging binding question - I found the driver-removal thread
from June 2 and read through it. Michal Simek's reply makes clear this
driver isn't going anywhere (their networking team has plans that
depend on it), and that there's already an in-flight binding
conversion from Lucas Faria Mendes that he's actively tracking. I
wasn't aware of that series when I started this.

Given that, I'll withdraw mine rather than duplicate work that's
already further along and already has the relevant maintainer's eyes
on it.

Thanks for pointing me toward the history.

Regards,
Aditya

