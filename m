Return-Path: <devicetree+bounces-257344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFLxGzVWcGlvXQAAu9opvQ
	(envelope-from <devicetree+bounces-257344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:29:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5FD51048
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5FEE782A4F0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5359B421EE7;
	Tue, 20 Jan 2026 11:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="la5SSmEy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD72423A97
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768909460; cv=pass; b=nvrlN4R7jX5ocXYFaayUz+WhgDdlRUZHlyZRvzpjwKfzv91Cn9vI1kXWVIX2QDqm8yCXmBQT1xoITj57wSdWmwPkaIuYlRUm1Qkfyh8dYUgbhhL0qmgJDuXQeK9bQHNw2dFNAsoLoS2zOZCpD790cTkrZc2toVPeNsTK9WGhRMQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768909460; c=relaxed/simple;
	bh=AUhavbCRTVZ0M2XesfwWgyVlj2jeTPMDpiBDidw3pYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lRaGyxyz0ccr+duSCauW+uYpnkki4yQ3jmvOlamFXGMx3ajNBO7cYGqIizcCP8oCoVd2qBAGlaNQO2mKJef+Ctg7VJog98sgRoALdphjpAsQkzLPRx87DvF+Wh8IsbRB8XdTirCH7s2xXz4BIo5KbL5W725CVzjVvTQza9/tD6g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=la5SSmEy; arc=pass smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-11f1fb91996so11884157c88.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:44:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768909457; cv=none;
        d=google.com; s=arc-20240605;
        b=LaDx5t0QaEWwg3Xlt9E8NVgY5CSFeV6i5LVj6gCxiCMYFjcT9npoQTuyrDtX/8au/u
         VnkGU5vOh49cX+lFm1ssHTiZhZ4l3OQ4NJb3/9LcG0kkheRCBMrYqpwX7n2uWrMoab+3
         9iUEo6h8CKFRTD+Ux1Qe/Mz6H2kCz8DvsVZVefB2vUYMQ6qdU0gqBMn6qXp96cZriX+t
         pTfcgiX9CKbr/uFB+zStw0w+W+z6sC2Kewv84DDs+4VHr/K2MXrbH0BSUE9ln5Qr0SKn
         CkupB8bFP+1Uv8/hYUoIOPJW8h7LJAmS5kQrJsgxW3GJyNfXbcBWWVF65l487MRsDjQE
         ETjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=E86ZXdE770Xwovkl6IYgj3eO0oOM7/ipyrSNGJ5VLkk=;
        fh=jJazgd1dw027/BaTTmLHi4+MywdoDoyKHjvWnit+VRo=;
        b=DOPXa7Y+sMYICw0FLC9K+QpQc5zzwRT9uWUQpbuI/PmpU58nH39cOcpdroTK4jTegI
         HnbbTieyjgB6DCkL/g/P1GNegNl8h/xZ/jnhMgKHB7t9e1JS4qdqSeQqUWqbQXIHjkR1
         xbFU3IFzfl8thR8c+spUICKfU27ODaSybpWuL3MDkI+IGfl28xhRE057GuE//K5hqIIm
         Aekt1ZMhpvNXdb36R6J5l8oqv1OBNyVUoxRxffYMJPU6IG3sVKRgvzvsyZKaoaatbMJ8
         mJzjCxqKehHFcffjrrbsB2u25Rh/y42MvG+wm2WIVOpamLVse5Rm0ALg+Cdu8eB8qNiL
         hhZw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768909457; x=1769514257; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E86ZXdE770Xwovkl6IYgj3eO0oOM7/ipyrSNGJ5VLkk=;
        b=la5SSmEyKIDq+dsnQAqIHzeFPTd3f6jvinmkd/z/W4HvtTau6eKz2uQrmkeycxmQ75
         JYOORjcLoJH4l2Sk84ps9xNlsnm/0Jip+Z4gAXvMA8AJJawm6YlnVuf07KprMlK225qX
         41rTZVfEVKhGtGeQynTFpOpOeNk6nDseLB6QgxQE4zmCKuhRPjJFzt9kf9uAxiBQXPAe
         Y9Wd3Vp7OhggEdOC38TrgxXmjvJ+d+ELzKYoaxR2Ix+4uxjvD9P98vjxF17kaxS05du4
         KiI0uGI9yQqr++9/rB29xK2itIW3kpxCkmDSJhu8dQZoLGR8BMsJMbGiqj9RCl3FTTj/
         Rxuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768909457; x=1769514257;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E86ZXdE770Xwovkl6IYgj3eO0oOM7/ipyrSNGJ5VLkk=;
        b=xPZZpwwqo5j3knmET9NMIQCH2qwDEC+NJJbxGDqQ8JtYpXzwCb8Y5jYF/OAgl6s0j/
         mUJYIeZXahp6Z9mrFfQqDbo+6rR+zkgkFn8pk1mSAfoL1kbrTT3oPEcB26Eio6WBHarp
         xoynB13cQWuFFz5oB1FzOyI4UO+IkOKRMCWt0tJymopDUT9o4ZRY8UjRWtZjkAYZADMN
         5w1rVVHpqLz7DWRw9tOjbmhIBNrOyfx4j/F9Kb+sqA+8RZdBtx7FwlSxXzLF3QGEm2Y4
         QHr8BpzMVK4KeTuIkK1Q7iQKwcQAKZ+cx7MegqDTJd/R2QAZvsJ6ZrICaVYq6Uy3afq5
         qU2w==
X-Forwarded-Encrypted: i=1; AJvYcCX1U/nmSqJZnK415OudTn7brz7aTzTN1geKA4BH0+rJZHyoMGkt3RSc0s22PkW6hpzZ8UIST48SlGJC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9b/5WPJHma34vux/q6/BIwWT4MCZuOHCOJ8KXK27pF7QCK+31
	D5idH2V5ClkP1fs1antBKE+kHVU0QU1JzZj/W8vvQ81bLFoEdBdG0OhpRxGrNMY7vdVohSCzN4e
	wXVeCWxac+fY82Zk/BPCuTy9+iE2G/yI=
X-Gm-Gg: AY/fxX7+hqAdrwghPRP0NTe6PjpZan+7q2Mb3wQLuZ3cwJK5ACs61KXDm/u/HCS5SAR
	4mikbeKT2cc3aIwTMWWgMvmjtRkkCd4F5xzvLQC12HSPVDWXB59fmpXrzVE9eR2VvZDu/DYWQgH
	EwMac48nlZfPIHGIAypncSHIDW7Rgi04mpqrryrRzYWsz0N/AVmyRF5I8h+vUqxCfhKoAfEn2Fo
	Y8QWS1TkhcUWq2NFOpnFmYKS4WkVbmT7Y4qu29WMIJty06fgF0XDGa422sv19i4WIR+JwAHZ1pc
	4AOkeo9xA0zPEEsdEfHp+DSZ/40U2UgggkjMS7vRsAs0C9N72xa71bO4LgodGlTHH4JGtth3SAX
	eEFZEwmqyuw==
X-Received: by 2002:a05:7022:4184:b0:11d:e40f:ee69 with SMTP id
 a92af1059eb24-1244b380f9dmr12491059c88.36.1768909457416; Tue, 20 Jan 2026
 03:44:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120011757.1387140-1-hongxing.zhu@nxp.com>
In-Reply-To: <20260120011757.1387140-1-hongxing.zhu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 20 Jan 2026 13:46:57 +0200
X-Gm-Features: AZwV_QhZ2tV6-Vbghh15PVnUEIiWGUBvMJOKoCcTwI3NHHV2_Ne1DbptDmWuXU8
Message-ID: <CAEnQRZBpLxM289h=OoZA5Dx_pDdG6Ude2wam+sULb=www68uow@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: imx95: Add fsl,max-link-speed property for pcie-ep[0,1]
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, frank.li@nxp.com, s.hauer@pengutronix.de, 
	festevam@gmail.com, kernel@pengutronix.de, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257344-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nxp.com:email,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: DA5FD51048
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 3:21=E2=80=AFAM Richard Zhu <hongxing.zhu@nxp.com> =
wrote:
>
> Add fsl,max-link-speed property for pcie_ep[0,1].

Hi Richard,

Can you explain in the commit message why this change is needed?

What problem does it fix.

fsl,max-link-speed  is an optional property with a default of 1.

So it is perfectly fine to skip it as the initial patch does.

Thanks,
Daniel

