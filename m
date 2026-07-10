Return-Path: <devicetree+bounces-324330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JLdUJve+UGr14QIAu9opvQ
	(envelope-from <devicetree+bounces-324330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:44:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E90D739368
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:44:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324330-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324330-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9570301348A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2AA73E3D90;
	Fri, 10 Jul 2026 09:43:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1193EEAF4
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:43:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783676599; cv=none; b=rdxRLXEunbHvKi8RLX7ui8gwsmtsoefPWv8QvrbOg2j+mtvhtO/6SRXtlh1oaICj+8lq5BmoBV0Qv6G+e1aow1/rzE0kWhgVX501EqrYsFTCfbS9OozwRP+7Aozo6TdU6/F29mRzHDpcTMfi0VpjhtOjg9cM7rxiHqgq+3hM4qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783676599; c=relaxed/simple;
	bh=g8x9dhwFyyvlvTkxK6+R/6CliWApPEOeK/YoKDP+uMY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sGCu6/8mODuLkjrULL1ogM8dwKNvoj6dXP0/DbIok8sqBvxWtuEShwGo9iA+SXQtssRlm4X3D8+DOJ/C7LfVDMAbu3oajApCMWRc00ukq0DNBPiAYIJA/AULy5d5El6el3/lqWpERNS906uc1eDKs/ZazBV77/TpuZAOIX7mRik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.46
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-966e7380109so107186241.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 02:43:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783676594; x=1784281394;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=OJUbLwMEIOBZTFEvOkGzQdLJGFR8K38bCJj4Tk6Zpnk=;
        b=adUKrKuMCMqEBEXm2kUCsGXZU1+YsypZLXvxKH7Rb7Kz945+b7VgY3pX1XlQfKYgtu
         qS8QxK7kVUZUPue5jr+CtrKVCCiPuFSB69fRt/SIF7hqJwTZEzRKkYBvGU/nF8ZwQEjM
         XuqceGcqGbG7wiaInsnyy3VaeruotCdNPPdVxGcUQNP8Aiv5i688UcRAX+Md20IvypCI
         7DDqv9mq42ZXswUk0PqSse4PnycaAIIaQuWZuNf7C8cswLe7ltcTgNkxYQdu9vYYfR0X
         DBIkbliEEcL/vt0Z8hwGtQVhM+62NL+yFvQN+Kr68uIgvMmgeg7awpiR9wV/ZSvthOYE
         13nQ==
X-Forwarded-Encrypted: i=1; AHgh+RoF/F52k5wE/m44/6f0+SmYAHaxPIsnramjb2UIlQJbmlMrCq53me5xjWqAHsLYbP5lw+t/Xr1AIYKf@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz59X/QPssnAX9OIB/oWID9eQnwwjmjCL5zqraUiSCs1s/oBH9
	GAyBqlJmpfS1+PHEyei5HTxCIqj7cI8Aefq6WktLJk3RKatzdXzjXmwurkfXEq8Htug=
X-Gm-Gg: AfdE7cmyBYtHWnw9yQN93MxuKYgO1UzCaq67MgrDNMMEiUS667psH5vN9lwxhFzHlt4
	aIarUx4P0Gs7gD9Au0NAeIlPGy/ML83itkAARJ4ckkTsyEsrvyUI+/N+YbFdg/KPDsm9Cxd2Cgl
	2xwe/h5xVEy+q/SoFmwGKFXIUYU6pZxD/xYndnsbXtPFh4ZhMSmyxZedSy3xd0HFxu5QTWYh5Bz
	7Y/Iu0DLil7hLqog02frAiyOaoQME46mi26zIIOV0av+zlFZinavy8PKHrJX2/x0opbnNu6sZON
	p/+mpGKea1ITfzfoGr2hs4nuSOtHlcIrxt/fVA7NhFd1AvpttzIxfDmOAKexn7HfPMWHm40Dja6
	3lus1XXhPeswuCshuHWWz7bz9zahubBRrQUE19wBOQFNkLT6XsFz9vegJ9Rx2VwbJrzRk0RCxEZ
	AFMS3vV0uCYyA1u6cRdSULA+FTv5Ez5PIKvu6nE13TNrJa32lI3w==
X-Received: by 2002:a05:6102:390a:b0:738:fa95:fb5f with SMTP id ada2fe7eead31-744e01c13b0mr6999518137.17.1783676593839;
        Fri, 10 Jul 2026 02:43:13 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-744d6deb2a3sm4942554137.8.2026.07.10.02.43.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 02:43:13 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-735f73287e2so546238137.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 02:43:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RouXbXrHRR/rDtaSRFB0dQh6DScQQr4wCW0VAnLUMRdFlZpcAZ9b+3jZ6Bnfq2T3ItOGg1N1dm7LMX/@vger.kernel.org
X-Received: by 2002:a05:6102:5494:b0:738:3525:43ff with SMTP id
 ada2fe7eead31-744e01c148dmr7640472137.13.1783676593488; Fri, 10 Jul 2026
 02:43:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260710085744.430340-2-manuelebner@mailbox.org>
In-Reply-To: <20260710085744.430340-2-manuelebner@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 10 Jul 2026 11:43:02 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVZeNfzsN5=b_v4ociTYYxLUFT8YM0nLZ6FZE2y198U_Q@mail.gmail.com>
X-Gm-Features: AUfX_mwSwZvpHCNyboZJL6Dr0sUh2j3LLuURj3GixHiR77P7hS7W9LcUOCBov34
Message-ID: <CAMuHMdVZeNfzsN5=b_v4ociTYYxLUFT8YM0nLZ6FZE2y198U_Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: qcom,coresight-tpdm: fix bracket
To: Manuel Ebner <manuelebner@mailbox.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324330-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:manuelebner@mailbox.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:yoshihiro.shimoda.uh@renesas.com,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,gmail.com,renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:from_mime,linux-m68k.org:email,mailbox.org:email,mail.gmail.com:mid,vger.kernel.org:from_smtp,glider.be:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E90D739368

On Fri, 10 Jul 2026 at 10:58, Manuel Ebner <manuelebner@mailbox.org> wrote:
> Add ')' and fix sentence structure.
>
> Signed-off-by: Manuel Ebner <manuelebner@mailbox.org>

With the patch subject fixed:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

