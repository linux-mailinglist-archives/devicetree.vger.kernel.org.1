Return-Path: <devicetree+bounces-318711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fDIhKnUoRWrq7woAu9opvQ
	(envelope-from <devicetree+bounces-318711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:47:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2113E6EEEEF
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:47:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=KcLIFROv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318711-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318711-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D856A305CEBC
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA5B34C134;
	Wed,  1 Jul 2026 14:37:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D62349CFA
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 14:37:05 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782916626; cv=pass; b=m71m++r2iXK7bLOvrbKKFqLKrSmA8CRblBqhunsbV1umMbJd5zVy6daoEJTRB+4G9NcE1GBQcFqP9XZVXHT7y4s4fkRtCSrNW1kcgPesS7Bhp/3bNsu0vK2jAuk/Vee1wqCZc2fjN08FrvaM6vp1GGr1z6WzpA6OI992bKhlWIQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782916626; c=relaxed/simple;
	bh=uxK3787kwBaK3XoNUtICKMe+9KxBA8wczg+LhmRdR0w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d2wf6Orm2qOyox9kKnfAoALUBhSwbPF6BbsilhDmNvbA3bJq3zXR06COBUsQZvlQ+bqcjZ3WgICW1LX9prrOkukN+d2D4vKgmyFu9BCj400eQAnS0EClwA+nbDjveVLQcCGzhpc4ZKlcqYSr1z9kgOq4gE8BmU2Ri5RYuunHU4k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KcLIFROv; arc=pass smtp.client-ip=74.125.224.43
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-66493875766so917336d50.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 07:37:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782916624; cv=none;
        d=google.com; s=arc-20260327;
        b=Kdsx0NMq4ZM9LH8st29/cD5/A5xAKHrJgX/ricGWcjBYqMPLigANwCvqXdVu8lMn9k
         Y3N/jesURyzjbLlf+VqaZFlFGNJzpa3IXEuyK50CCM6pPEctEFS+/Z3JfiNsE/iZ4B1I
         prLM+J04hu1z3bP71JFpISJhj3YG2e+9dlRZ9d9VQUTirwhAqKfxu4GY54oXYx7mJyMH
         WV+0GrdAOriQBnMQvBS4cxIo8dPwH6vLtCjz07C0hy7StFrj5cLjpaoNUEaMkV+LQmY8
         quMMhbYpH5hj6uwzwvYEutWGcFv0ob/xomKWr5jKDoTAjK8pWesU+U/53wTMDBu4OF3r
         nrjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=uxK3787kwBaK3XoNUtICKMe+9KxBA8wczg+LhmRdR0w=;
        fh=MZOo2501NXIp+r2MPvAKD3/AFCaLiaYPDpQmR8TkzVE=;
        b=Zl+mAX1CWAS5tbiquIoHVS8OFG3vF3H6G+uoI0hjS4RHvpBVV6QcRy3nwrwnpReZuE
         7B6S1pjE8Pe08YCy7Ae2Cl/yGdgAWhFPuqhTxV23lFw4dmB50dPfu8s0Ska8dIIxnh2b
         w8CFsS5bOrXT5lBZX6t0IaP3BR57jErYHURZvi4B3PtHQdQSHra1fYPAN9SgPtYkAWPN
         b4rPr6UVugSkxST/2f/OHS8L8r4eW1ckr6ekqyZzQ3uHk91kGSZQ8cgd3zyuw9WcJfif
         as1FtwKBBqjQ2D95u584pOvHLYpq4rfi9tgypsRFkMHVekQ5MBsZEYKpzFjvltdxySAI
         BcKg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782916624; x=1783521424; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uxK3787kwBaK3XoNUtICKMe+9KxBA8wczg+LhmRdR0w=;
        b=KcLIFROvJOuzpWsxD3ti13L4keeANGdVaWBLTeTr8HcrrPCGnA7hEYXnYHsfmC0UCT
         4qe/nkVaFEoiIftiwmCPHaBqpwxB1zt8++SWv38/OW/OkmDhknmRj6vwiCFDNt6T7XhC
         RwkbTfREvitX+8MgL3YCwQ2GRe92P7XVm5m/cv83JhH1UeU1g33at7fSeDN60z6Arneg
         8GcmQmB/YjmXh4JtNPQ6VBTr+Vl0GC+vLisyr2oPtnrtlZ9xjQJ6RKe27l5RKZkF1GXR
         bCqc7FHJC53wBVdmAIt7xe6GTO9B1prI46HvGBLMxN6B6LfXX1Hm815rTv8wk6Ij/TGs
         sYcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782916624; x=1783521424;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uxK3787kwBaK3XoNUtICKMe+9KxBA8wczg+LhmRdR0w=;
        b=dhsOZ8W1OtVptaaUneQR6KrVSQYDPHR0DOOuYAceRC/fxSMP+Lk1mGJcGr/BD21Way
         p84NAytl9h8ae0iSIGNPAyG6iFau7Ro9gjefbAT3xvVMKkPoN12nUd+u/U5SJJ4xGBBy
         kdEdRVQzzyPe1W25R0Xl6TrvktEd8uLUiUJgHMG3mD+0um0YQJs1JWLLO/Qdg5LwiB9r
         S40SMCpuTWA6PYEloba7v7zTgWN98L8xTmToC3FVYtSsaZgndu8SJk3NaBrbn1ocIQuA
         W0/wJ5ZosLQyVqibPHc/CsjPQ7yNK4tA0XtXzIjgIC/sbvPLfRXNlzZw1NZFv6tJcekG
         WBxw==
X-Forwarded-Encrypted: i=1; AHgh+RrVrSeZepOPzbFH2t2r5pIQ6XykHXaENzh8r3UIef9TEFx9SgPKqde2zxRENK+s8qYGH222E1r3gZUi@vger.kernel.org
X-Gm-Message-State: AOJu0YycVVub4yAmr2NYBrukPn+d1pP8svJIVj5+cHrtKcGPq7zp+cOE
	yWGZvH3pYYzX4Z/3++FV6wFmC8GuBEGWgzyv2FIWXeKvyNljlGWvnxU7At4Diao7dwHvG8G8ndj
	RuyBBXH5R7tNpxLstgfaf83cuW7B72GY=
X-Gm-Gg: AfdE7cknK7GJBQR0zTO2uTKf7xgi+o5KKDJdWqKsDpB9/RMRqbCqK1LzeJZyNIlnY9K
	4URhlinCBxaiGBqlZecaC/dSsEhk+83/x+ZY/RlQOL54XON5lSZ+P3XHiQ21W6jFPYyxC1atLFn
	aacfG71zWFh1HPCvAIehijPUQ8G5Dq7vUx42UZLKWjPnP/8T3z8dukZgOcbX+SYtLAQldLt3TYu
	xQRwcq+r9YPUvl77xoIoMErDLoMAh56dQT5tfdTk80BSradFBj4KuHJ8YqAfsH8ejrF1lhZoyKk
	HOn/DF+i0jV3KFSDSiEmy6WFO+kgRb4E8j6yESYtAgyprJ8rA9UdFoKu0O4lKA==
X-Received: by 2002:a05:690e:b8d:b0:664:ae68:33b0 with SMTP id
 956f58d0204a3-66521d75bb2mr1788278d50.81.1782916624248; Wed, 01 Jul 2026
 07:37:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
 <20260630-apple-mtp-keyboard-final-v1-4-506d936a1707@gmail.com> <20260630-halves-magnesium-856f9c7d60b2@spud>
In-Reply-To: <20260630-halves-magnesium-856f9c7d60b2@spud>
From: Michael Reeves <michael.reeves077@gmail.com>
Date: Thu, 2 Jul 2026 00:36:52 +1000
X-Gm-Features: AVVi8Cc_Z2Ec3ueDKeRbjSSEO7FpMbGiHoLBEK8cPVlZ9DBrXWtcjp1MzslxPtM
Message-ID: <CANpmGNs9PuH52ngbZq6jGHuJkoZ=Jz+PRk8Bq7Rn21g9KsotEQ@mail.gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: input: apple: Add DockChannel HID transport
To: Conor Dooley <conor@kernel.org>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hector Martin <marcan@marcan.st>, "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, iommu@lists.linux.dev, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:jassisinghbrar@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:marcan@marcan.st,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dmitry.torokhov@gmail.com,m:jikos@kernel.org,m:bentiss@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-input@vger.kernel.org,m:krzk@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318711-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[michaelreeves077@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michaelreeves077@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,jannau.net,gompa.dev,gmail.com,marcan.st,8bytes.org,arm.com,lists.linux.dev,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,microchip.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2113E6EEEEF

On Wed, Jul 1, 2026 at 3:08=E2=80=AFAM Conor Dooley <conor@kernel.org> wrot=
e:
[...]
> > +++ b/Documentation/devicetree/bindings/input/apple,dockchannel-hid.yam=
l
>
> Same thing here about the filename. Looks good otherwise, so please
> change that.
> pw-bot: changes-requested
>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>
> Thanks,
> Conor.
Thanks again, will also adjust this name in v2.

