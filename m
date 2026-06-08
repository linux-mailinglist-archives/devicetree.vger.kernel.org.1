Return-Path: <devicetree+bounces-307919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OX83FVEPJmqMRwIAu9opvQ
	(envelope-from <devicetree+bounces-307919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 02:39:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 97400652067
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 02:39:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nexthop.ai header.s=google header.b=eBl7kdVV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307919-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307919-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nexthop.ai;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B2863009CE9
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 00:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58EC32DF701;
	Mon,  8 Jun 2026 00:39:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE1029B8CF
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 00:39:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780879182; cv=none; b=Ha1Yhzamkj03baAQlc82C104N8MGu5dnfJrKRsjNHkT/xooDWlHZYNIFHO5vsXW+LOc2ryrmJ/ND2a9uj8floB77zxUbowrKptTPe6v2weojJsXekDQa2V0e6aZMsWULDpN59bITqHjpYjmLBV6Ayvc9CVktkeO43iyN+OMWZEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780879182; c=relaxed/simple;
	bh=RJL0Dbep6IrG0PYgc93NRjCz7SfzICawS1LMvoLyf2U=;
	h=Content-Type:Date:Message-Id:Cc:Subject:From:To:Mime-Version:
	 In-Reply-To:References; b=MNF8lBZdADRVxSdGYfma+BxAzMxJJ1Mjz1FcV0+h0tzejqgxTcgXoY6hzW4IY/6gxqD4y7y5yVg8PLQ5U+wxjMwPgkCwQwALVXXNLGhyuSwDHD2obpS0UCvrA0edmRqIYV1PKyPhK8gTY72AD/dV/GMfvi5VUqVzV2HCcDwuS8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=eBl7kdVV; arc=none smtp.client-ip=74.125.82.181
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-304f590dd91so3966830eec.0
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 17:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1780879180; x=1781483980; darn=vger.kernel.org;
        h=references:in-reply-to:content-transfer-encoding:mime-version:to
         :from:subject:cc:message-id:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LC0cBs3wjxXy5zOKfXpkaV2SGZVYDHStwYMg/Do3oGQ=;
        b=eBl7kdVVis41wGqRBOQ2eDZQrKdCf1ya574z+Bgl0HEyH/YKwV0mjkGt5yCIKhgvm+
         rLJEP6I6oG4ujUUvtliO+8XX2l+jCeCE1nqRC4E2MI4lu9XrGupDuDKAN+c+74ylmBKj
         trp/BzW+6SVMAzkdCpwRnSeTqc3ZGGpwf99lLDL+/OLNa4CXkYpTceFOQKA9vjDeihKe
         0ZH+OuwIQHd+hJ6CJP3t2HUpTRYK5/m2ql1qwcD+NCNZDTnrxZcZgWW7ofraCE1HP0lI
         ee38Y/e4fqHmZeV5LY9WIpp/zdQIxXISEUrieAc5nH1A56F5ABGqPKuIYQ4E574ieixt
         Oc/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780879180; x=1781483980;
        h=references:in-reply-to:content-transfer-encoding:mime-version:to
         :from:subject:cc:message-id:date:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LC0cBs3wjxXy5zOKfXpkaV2SGZVYDHStwYMg/Do3oGQ=;
        b=VGPaMAXtks+GpP5sZMb7SsLctA8sFQcTeM9Uwh+CmCscEJL10katVJiDWalsXJHNcD
         lqKt+XtvTwbPA/6HBIe6JA+cbrUxa5shGgU72wTEA7LhLwnkbLsleivU4jemJQHWdlDQ
         vK21A64OBwkuV+y1XygAqskHmgf6TPtBQs32NEgm2oljbiKgkQjWjJ+YeYXNOzJwz7Nh
         TPvRgyuMgXk9MB76G4g7tMYiafjAsLbXXShXUA3nIOwh4662/PkW+FizXhetkxyT+Sud
         Lw0ceBV7VcSXYYaqy732+WMylS5WJE4dXmwjLbdFyjTmhAGr+XzAtT3cw7pHNUrj3tk/
         l3mg==
X-Forwarded-Encrypted: i=1; AFNElJ9Aa1kZXDGnROoTitvHMwyq/oWr03zFZHrg2CuQiUmihXQlbxBqO3P6bfZ/0Mdcb2q/otyhU76njN4Y@vger.kernel.org
X-Gm-Message-State: AOJu0YweMU4S/VJYuZTXNmBjkT5e8f9dWB1pWnycTZsY7Kg7tx17iI8i
	h4sdHk4pYTl7YOsXG3PDqZapBSZf2kCVXVe7Ci91qr1RBpUFPmu3kdaKPhjoJk11m+E=
X-Gm-Gg: Acq92OFHnKqgqUp+UZp4FgV5qUgE1bv4JfYVNmIFN9r7zprqeJSh6GU5sM7MwrbC4HP
	K1KD7T5m8f0jfifZxC7c1XurQgyCyuNTFLjkzo6MryBmyC6oCeYeRDqkATwr7kOv4enhZ2kAf0M
	bjauFL4vJYEl8ivoLSRXyaD2/FTUl+41un1xfKP/VgDUeIN0CC9qyXPGKRSELRMY8tYxN9/mnkq
	EyBDpPecLyLuAcPStI6pkSeyitA8v5dTP5VB2pd2/BZVRN4aqDunuhn8thlDeTDYqBHYHDo/RPt
	eyB8P8QPwHqpMEffo+YvNdzz7JolksFduyHp20LYQwzqhhsbpaMGSIto7HvOKhikP9FyCiOqg7h
	sc5rGIxodXq1PsyYtvRJrupd1dA5AhdiDBbhaIjji2D+pIYH0qKu43H8sIC8ewDQxlZqNOAT/Dy
	UDAv48cHa8DI5vw+ppWixk5hzwbDPyYVDZTQ==
X-Received: by 2002:a05:7300:2327:b0:304:5db8:da95 with SMTP id 5a478bee46e88-3077b7855c1mr6751775eec.23.1780879180170;
        Sun, 07 Jun 2026 17:39:40 -0700 (PDT)
Received: from localhost ([50.145.100.174])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3074df64eb9sm13583356eec.25.2026.06.07.17.39.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2026 17:39:39 -0700 (PDT)
Content-Type: text/plain; charset=UTF-8
Date: Sun, 07 Jun 2026 17:39:38 -0700
Message-Id: <DJ38ZCHHJM9O.17UCPB969XXB8@nexthop.ai>
Cc: "Peter Rosin" <peda@lysator.liu.se>, "Andi Shyti"
 <andi.shyti@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-i2c@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: i2c: convert i2c-mux-reg to DT schema
From: "Abdurrahman Hussain" <abdurrahman@nexthop.ai>
To: "Conor Dooley" <conor@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260607-cozily-majority-edb0ae263c0b@spud>
References: <20260607-i2c-mux-reg-base-bus-num-v1-0-f193b5a8fedc@nexthop.ai>
	<20260607-i2c-mux-reg-base-bus-num-v1-1-f193b5a8fedc@nexthop.ai>
	<20260607-cozily-majority-edb0ae263c0b@spud>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nexthop.ai,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307919-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97400652067

On Sun, 7 Jun 2026 15:06:43 +0100, Conor Dooley wrote:
> I think it is fairly likely that this property won't be acceptable.
> The conversion itself looks okay to me.

Thanks for the hint -- I dug into the i2c core and realised the case
I was trying to solve already works on OF without any new binding.
i2c_mux_add_adapter() sets the child adapter's of_node to the
matching i2c@N node (drivers/i2c/i2c-mux.c:330..367), and
i2c_add_adapter() then honours of_alias_get_id(dev->of_node, "i2c")
(drivers/i2c/i2c-core-base.c:1657).  So in DT, the existing aliases
mechanism already pins mux child buses:

  aliases {
      i2c16 =3D &my_mux_bus0;
      i2c17 =3D &my_mux_bus1;
  };

  i2c-mux@... {
      compatible =3D "i2c-mux-reg";
      ...
      my_mux_bus0: i2c@0 { reg =3D <0>; ... };
      my_mux_bus1: i2c@1 { reg =3D <1>; ... };
  };

That's clearly the right answer; sorry for not finding it before
sending.  The only wrinkle is that of_alias_get_id() is OF-only, so
this doesn't help the ACPI/swnode platform that originally motivated
me -- but that's a Linux-side problem (udev rules, stable adapter
names) and not something a new DT property should paper over.

I'll respin v2 as just the .txt -> YAML conversion (faithful port,
no new property), and fix the silabs,si5338 example that Rob's bot
flagged.

Thanks,
Abdurrahman.

