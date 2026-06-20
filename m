Return-Path: <devicetree+bounces-313986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yp5OJ1UnNmqy8AYAu9opvQ
	(envelope-from <devicetree+bounces-313986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 07:38:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B556A85E8
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 07:38:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GRPPOs8w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313986-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313986-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 86E163008463
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 05:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2497432B106;
	Sat, 20 Jun 2026 05:38:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AB640D57A
	for <devicetree@vger.kernel.org>; Sat, 20 Jun 2026 05:38:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781933902; cv=none; b=j9sDMOC+4VTkYxPfIaB04e4atwWjeV6Ml3XJJUpWKFvyV5oL8EZFHOknUVR6QzK4y58QG+cEsDDMGzGgTJwD6mYYYl9A17ldBVICPG8ht+t73s2SJNtoMPEybrhRP0GOLKfKoQ2B85vACueoz0sXF8dsiYZFGhulzYl56l5EKiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781933902; c=relaxed/simple;
	bh=T/7ep4EgngMi756SBUztuInzLdyJ5R5zqqGXrsQMtkM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Rmjr23Wn0ECPnsACnKMukjjqIntLlth04d0KfIvg5jfMsMZ34uyHD62+hEKmKkOboComGbSpIUXyvN2FNJeNZJHcT/ufCFsaNdzKqjEwozKbkukTiBedlXWhyk8Mt40PxMKosvcyd9DKOuftgHeiq16hTjmpBQtP7eGEBv9qYJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GRPPOs8w; arc=none smtp.client-ip=209.85.214.177
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2c69921bd15so12500595ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 22:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781933900; x=1782538700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/7ep4EgngMi756SBUztuInzLdyJ5R5zqqGXrsQMtkM=;
        b=GRPPOs8w/bQIgKx6CbJxbIr3ZXrJQqGKD0R+Xeo/TRHqGgkc7WO+PNokurZOxmr6AR
         5qATIEjVMRMB/R/D4w9Eb4988BTX80Pb9gNguFfRBh5SNK3HNByLYPd3bxAhA8KXTHxc
         olsE9+AyzWh5vwWTLuXMhn8E33tkCo2YmgZqPfC+Xh/BFtok6jQBREGA04qW0gp2BYYm
         B91eGVaQQ9FnVNKm/sfM2cGEaBD9ensPVeTKHQH234GDK4Kub8yAqbl9yq9Bs9T7bXyt
         M03HDR6I7vw2MPA2aKbCYEEKi1wlTDuzNee7S0/gl7/jx6/rbMC6bECD30866Piq5o2C
         FMNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781933900; x=1782538700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T/7ep4EgngMi756SBUztuInzLdyJ5R5zqqGXrsQMtkM=;
        b=oVG3nbBCofKef3jo0g/63U5+3VWLYpFRbAanTtvjp/hfVKT//i989GMIBQH+zMIFRq
         CJYqIsyup2C3/Z86x1IfHbgXNpDY/FLZz4Bo8l9C58yfCui4DAPZ/q3PN3QaWpAEJ/bW
         FyOXN05jSVWvfwRHZc5QeS+IfwfBRapaXvxgFYdzCauwdD3o9oZ48tkHprdVronwCud+
         AnvV0lgT9W35q5AH0QufOZi9uJaD32jW5Lo5GyYbMZGZR3SzXwh5Dg4uRGI46phG6D7N
         onvUliMdvJ1NxVutdxY4Mmh84WwKGb28RsgYsfjR+N4HWf+kPCtZ2JBDr3eYVj6FuWBB
         3XpQ==
X-Forwarded-Encrypted: i=1; AFNElJ/tvC1Si3lGzYymC4FD2MGg/P4DAZBp8VFxUCJMi62dKN82cZI3aHA25YJGXEPLQzVSrBghwMDQvFeB@vger.kernel.org
X-Gm-Message-State: AOJu0YzQy04dBeayM5k0s3NBbpZ61+wSxZtz6pfvzdGEhnfwN18VTJfN
	FzJlCk8ULYdjCzg29p74ZTRCyExcHHRjrFr5nCjUJ0D96tbzK1ez0FMq
X-Gm-Gg: AfdE7cl0DXuF/0RDx09bTcl7lpxufJUEJepok8ffxhVtdFEHrl7EjoaLXzrjpZkC6x/
	QKA/jgPrAvV1hvHDLSdU7uFrjzwA4xmbEl9XcJMUSg2ZDNlNo4Fgc1dR3NCwGwttiXc94XRd24P
	9xRG2DIrBojr31aVwZrmlQp38/T8vLI8A0+YXfmib9rhfesvuoEhE6wXaz4ywqzClRgoIRhu+NU
	AR1I8KUMibQWSNuy8tT/qRflkeELiucAD0NCya33g1N+dzw98L3+xT+ujkBGW7+n5+iPkXXl9if
	n7Pt/LvA/py/6SEmeipFg6RYUibp6kR5+xX6jSVRM1cureYzMRslk42avycTJwQ/vRtR45+uJUp
	i9Enbq84aa+5XvMqpUTEraVrWxtbCc4ju4jBLg1bTwPU+QWkfRX2W1YxOA72iBYfamW/HlGMVmH
	0hOvGcczJko4C0sf+86ps=
X-Received: by 2002:a17:902:ce09:b0:2c1:ef9:4516 with SMTP id d9443c01a7336-2c71904ee57mr70697045ad.35.1781933900305;
        Fri, 19 Jun 2026 22:38:20 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7436f6395sm12161565ad.28.2026.06.19.22.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 22:38:19 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: heiko@sntech.de
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Sat, 20 Jun 2026 11:07:59 +0530
Message-ID: <20260620053759.9841-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260608060940.52549-1-hrushirajg23@gmail.com>
References: <20260608060940.52549-1-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-313986-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 88B556A85E8

Hi Heiko,

Just a friendly ping on this series.

The binding patch has received an Acked-by from Krzysztof and the
requested review comments from previous revisions have been addressed.

Could you please take a look when you have a chance? Any additional
feedback on either the binding or DTS patch would be greatly appreciated.

Thanks for your time.

Best regards,
Hrushiraj

